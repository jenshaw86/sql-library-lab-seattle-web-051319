-- -- * 2 series
INSERT INTO series (title, author_id, subgenre_id)
VALUES ("The Riftwar Legacy", 1, 1);
INSERT INTO series (title, author_id, subgenre_id)
VALUES ("The Lord of the Rings", 2, 2);

-- * 2 sub-genres
INSERT INTO subgenres (name) 
VALUES ("Sword and Sorcery");
INSERT INTO subgenres (name) 
VALUES ("Sword and Sorcery");

-- -- * 2 authors
INSERT INTO authors (name)
VALUES ("Raymond E. Feist");
INSERT INTO authors (name)
VALUES ("JRR Tolkien");

-- * 3 books in each series
INSERT INTO books (title, year, series_id)
VALUES ("Krondor the Betrayal", 1998, 1);
INSERT INTO books (title, year, series_id)
VALUES ("Krondor the Assassins", 1999, 1);
INSERT INTO books (title, year, series_id)
VALUES ("Krondor Tear of the Gods", 2000, 1);

INSERT INTO books (title, year, series_id)
VALUES ("The Fellowship of the Ring", 1954, 2);
INSERT INTO books (title, year, series_id)
VALUES ("The Two Towers", 1954, 2);
INSERT INTO books (title, year, series_id)
VALUES ("The Return of the King", 1955, 2);

-- * 8 characters
--   * 4 characters in each series
--     * of each of those 4, make 2 in all of the books in a series, and 2 in just 1 book in a series
INSERT INTO characters (name, motto, species, author_id, series_id)
VALUES ("Gorath", "Unleash me!", "moredhel", 1, 1);
INSERT INTO characters (name, motto, species, author_id, series_id)
VALUES ("Squire James", "Fighting is fun", "human", 1, 1);
INSERT INTO characters (name, motto, species, author_id, series_id)
VALUES ("Owyn", "I wanna try", "magician", 1, 1);
INSERT INTO characters (name, motto, species, author_id, series_id)
VALUES ("Pug", "Omm", "magician", 1, 1);

INSERT INTO characters (name, motto, species, author_id, series_id)
VALUES ("Frodo Baggins", "I miss the Shire", "hobbit", 2, 2);
INSERT INTO characters (name, motto, species, author_id, series_id)
VALUES ("Samwise Gamgee", "It's all wrong", "hobbit", 2, 2);
INSERT INTO characters (name, motto, species, author_id, series_id)
VALUES ("Gandalf the Grey", "You shall not pass!", "magician", 2, 2);
INSERT INTO characters (name, motto, species, author_id, series_id)
VALUES ("Aragorn", "I do not fear death!", "human", 2, 2);

-- -- * Note you will need to insert values into your character_books join table
INSERT INTO character_books (book_id, character_id)
VALUES (1, 1);
INSERT INTO character_books (book_id, character_id)
VALUES (1, 2);
INSERT INTO character_books (book_id, character_id)
VALUES (1, 3);
INSERT INTO character_books (book_id, character_id)
VALUES (1, 4);

-- INSERT INTO character_books (book_id, character_id)
-- VALUES (2, 2);

-- INSERT INTO character_books (book_id, character_id)
-- VALUES (3, 2);

INSERT INTO character_books (book_id, character_id)
VALUES (4, 5);
INSERT INTO character_books (book_id, character_id)
VALUES (4, 6);
INSERT INTO character_books (book_id, character_id)
VALUES (4, 7);
INSERT INTO character_books (book_id, character_id)
VALUES (4, 8);

INSERT INTO character_books (book_id, character_id)
VALUES (5, 5);
INSERT INTO character_books (book_id, character_id)
VALUES (5, 6);
INSERT INTO character_books (book_id, character_id)
VALUES (5, 7);
INSERT INTO character_books (book_id, character_id)
VALUES (5, 8);

INSERT INTO character_books (book_id, character_id)
VALUES (6, 5);
INSERT INTO character_books (book_id, character_id)
VALUES (6, 6);
INSERT INTO character_books (book_id, character_id)
VALUES (6, 7);
INSERT INTO character_books (book_id, character_id)
VALUES (6, 8);
