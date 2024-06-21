--Tworzenie procedury automatycznego zmianu stanu posiadanych tytułów - zmniejszanie
CREATE OR REPLACE PROCEDURE decrement_stock(p_stock_id INT)
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE library_stock
    SET in_stock = in_stock - 1
    WHERE stock_id = p_stock_id;
END;
$$;

--Tworzenie procedury automatycznego zmianu stanu posiadanych tytułów - zwiększanie
CREATE OR REPLACE PROCEDURE increment_stock(p_stock_id INT)
LANGUAGE plpgsql
AS $$
BEGIN
    UPDATE library_stock
    SET in_stock = in_stock + 1
    WHERE stock_id = p_stock_id;
END;
$$;

-- Tworzenie funkcji dla Triggera zmniejszania stanu
CREATE OR REPLACE FUNCTION trigger_decrement_stock()
RETURNS TRIGGER
LANGUAGE plpgsql
AS $$
BEGIN
    CALL decrement_stock(NEW.stock_id);
    RETURN NEW;
END;
$$;

-- Tworzenie funkcji dla Triggera zwiększania stanu
CREATE OR REPLACE FUNCTION trigger_increment_stock_on_return()
RETURNS TRIGGER
LANGUAGE plpgsql
AS $$
BEGIN
    IF NEW.return_date IS NOT NULL AND OLD.return_date IS NULL THEN
        CALL increment_stock(NEW.stock_id);
    END IF;
    RETURN NEW;
END;
$$;


-- Trigger dla operacji INSERT 
CREATE TRIGGER before_insert_lended
BEFORE INSERT ON lended
FOR EACH ROW
EXECUTE FUNCTION trigger_decrement_stock();

-- Trigger dla zmiany w kolumnie return_date
CREATE TRIGGER after_update_return_date
AFTER UPDATE OF return_date ON lended
FOR EACH ROW
WHEN (OLD.return_date IS NULL AND NEW.return_date IS NOT NULL)
EXECUTE FUNCTION trigger_increment_stock_on_return();

-- Funkcja zapobiegająca wypożyczeniu książki, której nie posiadamy
CREATE OR REPLACE FUNCTION check_stock_before_lend()
RETURNS TRIGGER
LANGUAGE plpgsql
AS $$
BEGIN
    -- Sprawdza, czy książka jest na stanie
    IF (SELECT in_stock FROM library_stock WHERE stock_id = NEW.stock_id) <= 0 THEN
        RAISE EXCEPTION 'Cannot lend a book that is out of stock';
    END IF;
    RETURN NEW;
END;
$$;

-- Trigger przy operacji INSERT do sprawdzenia stanu
CREATE TRIGGER before_insert_check_stock
BEFORE INSERT ON lended
FOR EACH ROW
EXECUTE FUNCTION check_stock_before_lend();