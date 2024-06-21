INSERT INTO author (aname,asurname)
VALUES ('Brandon', 'Sanderson'),
('Ursula','Le Guin'),
('Steven','Erikson'),
('Patrick','Rothfuss'),
('Joe','Abercrombie'),
('Camilla', 'Lackberg'),
('Remigiusz','Mróz'),
('Frank','Herbert'),
('Sue','Black'),
('Sarah J.','Maas');


INSERT INTO genre (genre_name, genre_description)
VALUES 
('Fantasy', 'A genre of speculative fiction set in a fictional universe, often inspired by real world myth and folklore.'),
('Thriller', 'A genre characterized by excitement, suspense, and high levels of anticipation, tension, and anxiety.'),
('Crime', 'A genre that fictionalizes crimes, their detection, criminals, and their motives.'),
('Sci-Fi', 'A genre of speculative fiction that typically deals with imaginative and futuristic concepts.'),
('Young Adult', 'A genre written for readers from 12 to 18 years of age.'),
('Fact', 'A genre of writing that is based on factual and real-world occurrences.');


INSERT INTO client (cname, csurnam, cmail, cphone) VALUES 
('Jakub', 'Kowalski', 'jakub.kowalski@example.com', '+48 123 456 789'),
('Anna', 'Nowak', 'anna.nowak@example.com', '+48 234 567 890'),
('Piotr', 'Wójcik', 'piotr.wojcik@example.com', '+48 345 678 901'),
('Magdalena', 'Wiśniewska', 'magdalena.wisniewska@example.com', '+48 456 789 012'),
('Tomasz', 'Kaminski', 'tomasz.kaminski@example.com', '+48 567 890 123'),
('Katarzyna', 'Lewandowska', 'katarzyna.lewandowska@example.com', '+48 678 901 234'),
('Michał', 'Zieliński', 'michal.zielinski@example.com', '+48 789 012 345'),
('Agnieszka', 'Szymańska', 'agnieszka.szymanska@example.com', '+48 890 123 456'),
('Marcin', 'Wojciechowski', 'marcin.wojciechowski@example.com', '+48 901 234 567'),
('Barbara', 'Kwiatkowska', 'barbara.kwiatkowska@example.com', '+48 012 345 678');

INSERT INTO publisher (pname) VALUES
('Mag'),                 -- For Brandon Sanderson
('Prószyński i S-ka'),   -- For Ursula Le Guin
('Rebis'),               -- For Steven Erikson
('Czarna Owca'),         -- For Camilla Lackberg
('Czwarta Strona'),      -- For Remigiusz Mróz
('Znak'),                -- For Sue Black
('Uroboros');            -- For Sarah J. Maas


INSERT INTO book (title, author_id, genre_id, pub_id) VALUES
('The Final Empire', 1, 1, 1),
('The Way of Kings', 1, 1, 1),
('Warbreaker', 1, 1, 1),
('A Wizard of Earthsea', 2, 1, 2),
('The Left Hand of Darkness', 2, 4, 2),
('The Dispossessed', 2, 4, 2),
('Gardens of the Moon', 3, 1, 3),
('Deadhouse Gates', 3, 1, 3),
('Memories of Ice', 3, 1, 3),
('The Name of the Wind', 4, 1, 1),
('The Wise Mans Fear', 4, 1, 1),
('The Slow Regard of Silent Things', 4, 1, 1),
('The Blade Itself', 5, 1, 1),
('Before They Are Hanged', 5, 1, 1),
('Last Argument of Kings', 5, 1, 1),
('The Ice Princess', 6, 3, 4),
('The Preacher', 6, 3, 4),
('The Stonecutter', 6, 3, 4),
('Kasacja', 7, 3, 5),
('Zaginięcie', 7, 3, 5),
('Rewizja', 7, 3, 5),
('Dune', 8, 4, 3),
('Dune Messiah', 8, 4, 3),
('Children of Dune', 8, 4, 3),
('All That Remains', 9, 6, 6),
('Written in Bone', 9, 6, 6),
('The Skeleton Cupboard', 9, 6, 6),
('Throne of Glass', 10, 5, 7),
('Crown of Midnight', 10, 5, 7),
('Heir of Fire', 10, 5, 7),
('Mistborn: The Final Empire', 1, 1, 1),
('Elantris', 1, 1, 1),
('Oathbringer', 1, 1, 1),
('The Tombs of Atuan', 2, 1, 2),
('Tehanu', 2, 1, 2),
('The Lathe of Heaven', 2, 4, 2),
('House of Chains', 3, 1, 3),
('Midnight Tides', 3, 1, 3),
('The Bonehunters', 3, 1, 3),
('The Slow Regard of Silent Things', 4, 1, 1),
('A Little Hatred', 5, 1, 1),
('The Trouble with Peace', 5, 1, 1),
('The Girl Who Lived Twice', 6, 3, 4),
('Wotum nieufności', 7, 3, 5),
('Listy zza grobu', 7, 3, 5),
('God Emperor of Dune', 8, 4, 3),
('Heretics of Dune', 8, 4, 3),
('Chapterhouse: Dune', 8, 4, 3),
('Queen of Shadows', 10, 5, 7),
('Empire of Storms', 10, 5, 7),
('Tower of Dawn', 10, 5, 7);

INSERT INTO book_desc (book_id, series, n_in_series, M_n_in_series, description) VALUES
(1, 'Mistborn', 1, 3, 'The Final Empire is the first book in Brandon Sandersons Mistborn trilogy. It tells the story of a world where ash falls from the sky and mist dominates the night, where the Skaa labor and die under the oppression of the immortal Lord Ruler.'),
(2, 'The Stormlight Archive', 1, 4, 'The Way of Kings is the first book in Brandon Sandersons epic fantasy series, The Stormlight Archive. It follows the story of Kaladin, a former slave who becomes a leader in a war against the Parshendi.'),
(3, 'Warbreaker', NULL, NULL, 'Warbreaker is a standalone novel by Brandon Sanderson set in a world where magic is derived from color and breath. It follows the story of two sisters, Vivenna and Siri, who are thrust into a war of politics and magic.'),
(4, 'Earthsea', 1, 6, 'A Wizard of Earthsea is the first book in Ursula K. Le Guins Earthsea series. It follows the story of Ged, a young boy with innate magical abilities who attends a school for wizards.'),
(5, 'Hainish Cycle', NULL, NULL, 'The Left Hand of Darkness is part of Ursula K. Le Guins Hainish Cycle. It explores themes of gender and sexuality on the planet Gethen, where inhabitants can change sex.'),
(6, 'Hainish Cycle', NULL, NULL, 'The Dispossessed is a utopian science fiction novel by Ursula K. Le Guin. It follows the life of Shevek, a physicist who travels between two planets to achieve his goal of creating a device that can allow instantaneous communication across space.'),
(7, 'Malazan Book of the Fallen', 1, 10, 'Gardens of the Moon is the first book in Steven Eriksons Malazan Book of the Fallen series. It introduces a complex world of magic, gods, and epic battles.'),
(8, 'Malazan Book of the Fallen', 2, 10, 'Deadhouse Gates is the second book in the Malazan Book of the Fallen series. It continues the story of the Malazan Empire as it faces rebellion and war.'),
(9, 'Malazan Book of the Fallen', 3, 10, 'Memories of Ice is the third book in Steven Eriksons Malazan Book of the Fallen series. It follows the aftermath of the Malazan Empires battle with the Pannion Domin.'),
(10, 'The Kingkiller Chronicle', 1, 3, 'The Name of the Wind is the first book in Patrick Rothfusss The Kingkiller Chronicle. It tells the story of Kvothe, a legendary figure known for his music, magic, and adventures.'),
(11, 'The Kingkiller Chronicle', 2, 3, 'The Wise Mans Fear is the second book in Patrick Rothfusss The Kingkiller Chronicle. It continues the story of Kvothe as he searches for answers and confronts dangers.'),
(12, 'The Kingkiller Chronicle', NULL, NULL, 'The Slow Regard of Silent Things is a companion novella to The Kingkiller Chronicle. It focuses on Auri, a mysterious character who lives beneath the University.'),
(13, 'The First Law', 1, 3, 'The Blade Itself is the first book in Joe Abercrombies The First Law trilogy. It follows the stories of several characters in a gritty, dark fantasy world.'),
(14, 'The First Law', 2, 3, 'Before They Are Hanged is the second book in The First Law trilogy. The characters continue their journeys through a world of war, politics, and betrayal.'),
(15, 'The First Law', 3, 3, 'Last Argument of Kings is the third book in Joe Abercrombies The First Law trilogy. It concludes the stories of the main characters with epic battles and shocking twists.'),
(16, 'Fjällbacka', 1, 10, 'The Ice Princess is the first book in Camilla Läckbergs Fjällbacka series. It follows writer Erica Falck and detective Patrik Hedström as they solve crimes in the small Swedish town of Fjällbacka.'),
(17, 'Fjällbacka', 2, 10, 'The Preacher is the second book in the Fjällbacka series. Erica and Patrik investigate a new murder that has connections to old crimes.'),
(18, 'Fjällbacka', 3, 10, 'The Stonecutter is the third book in Camilla Läckbergs Fjällbacka series. The discovery of a young girls body leads to a complex investigation with roots in the past.'),
(19, 'Joanna Chyłka', 1, 12, 'Kasacja is the first book in Remigiusz Mrózs Joanna Chyłka series. It follows lawyer Joanna Chyłka and her junior associate, Kordian Oryński, as they take on a challenging murder case.'),
(20, 'Joanna Chyłka', 2, 12, 'Zaginięcie is the second book in the Joanna Chyłka series. Joanna and Kordian tackle the case of a missing child that presents many challenges and twists.'),
(21, 'Joanna Chyłka', 3, 12, 'Rewizja is the third book in Remigiusz Mrózs Joanna Chyłka series. The legal thriller continues with new cases and personal challenges for the protagonists.'),
(22, 'Dune', 1, 6, 'Dune is the first book in Frank Herberts Dune series. It introduces the desert planet Arrakis, its valuable spice, and the struggle for control over it.'),
(23, 'Dune', 2, 6, 'Dune Messiah is the second book in the Dune series. It follows Paul Atreides as he deals with the consequences of his rise to power.'),
(24, 'Dune', 3, 6, 'Children of Dune is the third book in Frank Herberts Dune series. It focuses on the next generation of the Atreides family and their challenges.'),
(25, 'Sue Black', NULL, NULL, 'All That Remains is a memoir by forensic anthropologist Sue Black. It discusses her career and experiences with death and the human body.'),
(26, 'Sue Black', NULL, NULL, 'Written in Bone is another memoir by Sue Black. It explores cases and stories from her work as a forensic anthropologist.'),
(27, 'Sue Black', NULL, NULL, 'The Skeleton Cupboard is a collection of true stories from Sue Blacks career, detailing the science and humanity behind forensic anthropology.'),
(28, 'Throne of Glass', 1, 7, 'Throne of Glass is the first book in Sarah J. Maass series of the same name. It follows Celaena Sardothien, a young assassin, as she competes to become the kings champion.'),
(29, 'Throne of Glass', 2, 7, 'Crown of Midnight is the second book in the Throne of Glass series. Celaena navigates the court, secrets, and danger as the kings champion.'),
(30, 'Throne of Glass', 3, 7, 'Heir of Fire is the third book in Sarah J. Maass Throne of Glass series. Celaena travels to a new land to uncover her true destiny and face powerful enemies.'),
(31, 'Mistborn', 1, 3, 'Mistborn: The Final Empire is the first book in Brandon Sandersons Mistborn series. It sets the stage for a world where ash falls from the sky, and magic is wielded through metals.'),
(32, 'Mistborn', NULL, NULL, 'Elantris is a standalone novel by Brandon Sanderson. It tells the story of the magical city of Elantris and its fallen inhabitants.'),
(33, 'The Stormlight Archive', 3, 4, 'Oathbringer is the third book in Brandon Sandersons The Stormlight Archive. It continues the epic tale of Kaladin, Shallan, and Dalinar as they fight against the coming darkness.'),
(34, 'Earthsea', 2, 6, 'The Tombs of Atuan is the second book in Ursula K. Le Guins Earthsea series. It follows the story of Tenar, a priestess who meets the wizard Ged.'),
(35, 'Earthsea', 4, 6, 'Tehanu is the fourth book in the Earthsea series. It continues the story of Tenar and Ged as they navigate a world of magic and change.'),
(36, 'Hainish Cycle', NULL, NULL, 'The Lathe of Heaven is a standalone novel in Ursula K. Le Guins Hainish Cycle. It explores the power of dreams and the consequences of altering reality.'),
(37, 'Malazan Book of the Fallen', 4, 10, 'House of Chains is the fourth book in Steven Eriksons Malazan Book of the Fallen series. It continues the epic saga of the Malazan Empire and its enemies.'),
(38, 'Malazan Book of the Fallen', 5, 10, 'Midnight Tides is the fifth book in the Malazan Book of the Fallen series. It introduces new characters and storylines in the vast Malazan world.'),
(39, 'Malazan Book of the Fallen', 6, 10, 'The Bonehunters is the sixth book in Steven Eriksons Malazan Book of the Fallen series. It follows the Bonehunters as they face new threats and challenges.'),
(40, 'The Kingkiller Chronicle', NULL, NULL, 'The Slow Regard of Silent Things is a companion novella to The Kingkiller Chronicle. It focuses on Auri, a mysterious character who lives beneath the University.'),
(41, 'The First Law', 1, 3, 'A Little Hatred is the first book in Joe Abercrombies new trilogy set in the world of The First Law. It introduces new characters and continues the dark, gritty story.'),
(42, 'The First Law', 2, 3, 'The Trouble with Peace is the second book in Joe Abercrombies new trilogy. It continues the story of the characters introduced in A Little Hatred.'),
(43, 'Fjällbacka', NULL, NULL, 'The Girl Who Lived Twice is a standalone novel by Camilla Läckberg. It follows the story of a woman who discovers secrets about her past.'),
(44, 'Joanna Chyłka', 4, 12, 'Wotum nieufności is the fourth book in Remigiusz Mrózs Joanna Chyłka series. It continues the legal drama and challenges faced by Joanna and Kordian.'),
(45, 'Joanna Chyłka', 5, 12, 'Listy zza grobu is the fifth book in the Joanna Chyłka series. Joanna and Kordian tackle new legal cases and personal challenges.'),
(46, 'Dune', 4, 6, 'God Emperor of Dune is the fourth book in Frank Herberts Dune series. It explores the reign of Leto II, the God Emperor of Arrakis.'),
(47, 'Dune', 5, 6, 'Heretics of Dune is the fifth book in the Dune series. It follows the story of the Bene Gesserit and their plans for the future of humanity.'),
(48, 'Dune', 6, 6, 'Chapterhouse: Dune is the sixth book in Frank Herberts Dune series. It concludes the story of the Bene Gesserit and the future of the Dune universe.'),
(49, 'Throne of Glass', 4, 7, 'Queen of Shadows is the fourth book in Sarah J. Maass Throne of Glass series. Celaena returns to her kingdom to reclaim her throne and face new enemies.'),
(50, 'Throne of Glass', 5, 7, 'Empire of Storms is the fifth book in the Throne of Glass series. Celaena must rally her allies and prepare for the final battle.'),
(51, 'Throne of Glass', 6, 7, 'Tower of Dawn is the sixth book in Sarah J. Maass Throne of Glass series. It follows the journey of Chaol Westfall as he seeks healing and allies.');

INSERT INTO library_stock (book_id, in_stock, possible_stock) VALUES
(1, 3, 3),
(2, 3, 3),
(3, 5, 5),
(4, 4, 4),
(5, 4, 4),   
(6, 2, 2),
(7, 2, 2),
(8, 3, 3),
(9, 3, 3),
(10, 2, 2),
(11, 2, 2),
(12, 3, 3),
(13, 3, 3),
(14, 2, 2),
(15, 2, 2),
(16, 2, 2),
(17, 2, 2),
(18, 2, 2),  
(19, 2, 2),
(20, 2, 2),   
(21, 2, 2),
(22, 3, 3),
(23, 3, 3),
(24, 2, 2),
(25, 3, 3),
(26, 2, 2),
(27, 2, 2),
(28, 2, 2),
(29, 2, 2),
(30, 2, 2),
(31, 3, 3),
(32, 2, 2),
(33, 2, 2),
(34, 2, 2),
(35, 2, 2),
(36, 2, 2),
(37, 2, 2),
(38, 5, 5),
(39, 2, 2),
(40, 2, 2),
(41, 4, 4),
(42, 2, 2),
(43, 2, 2),
(44, 1, 1),
(45, 2, 2),
(46, 2, 2),
(47, 2, 2),
(48, 4, 4),
(49, 2, 2),
(50, 3, 3);

