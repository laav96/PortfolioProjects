/* Create table about the people and what they do here */
/* REQUIREMENTS:
-- Contains at least two tables with at least 15 rows total.
-- One of the tables contains a column that relates to the primary key of another table.
-- Has at least one query that does a JOIN.
-- Has no logic or syntax errors. */


CREATE TABLE psychologists (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    specialty TEXT,
    college TEXT);

INSERT INTO psychologists (name, specialty, college)
    VALUES ("Martin Seligman", "Positive Psychology", "Princeton University");
INSERT INTO psychologists (name, specialty, college)
    VALUES ("Steven Pinker", "Evolutionary Psychology", "McGill University");
INSERT INTO psychologists (name, specialty, college)
    VALUES ("Daniel Kahneman", "Behavioral Economics", NULL);
INSERT INTO psychologists (name, specialty, college)
    VALUES ("Albert Bandura", "Social Psychology", "University of British Columbia");
INSERT INTO psychologists (name, specialty, college)
    VALUES ("Jordan Peterson", "Personality", "McGill University");
 INSERT INTO psychologists (name, specialty, college)
    VALUES ("Christopher French", "Parapsychology", NULL);
INSERT INTO psychologists (name, specialty, college)
    VALUES ("James Alcock", "Parapsychology", "McGill University");
INSERT INTO psychologists (name, specialty, college)
    VALUES ("Susan Fiske", "Social Psychology", "Harvard University");  
INSERT INTO psychologists (name, specialty, college)
    VALUES ("Girishwar Misra", "Social Psychology", "Deen Dayal Upadhyay Gorakhpur University");
INSERT INTO psychologists (name, specialty, college)
    VALUES ("Jonathan Haidt", "Positive Psychology", "University of Pennsylvania");
INSERT INTO psychologists (name, specialty, college)
    VALUES ("Rodney L. Lowman", "Consulting Psychology", "University of Oklahoma"); 
INSERT INTO psychologists (name, specialty, college)
    VALUES ("Richard Wiseman", "Applied Social Psychology", "University of Edinburgh");   
INSERT INTO psychologists (name, specialty, college)
    VALUES ("Roy Baumeister", "Social Psychology", "Duke University");    
INSERT INTO psychologists (name, specialty, college)
    VALUES ("Joseph G. Ponterotto", "Counseling Psychology", "University of California");       
INSERT INTO psychologists (name, specialty, college)
    VALUES ("Barbara Fredrickson", "Positive Psychology", "Stanford University");       





CREATE TABLE books (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    psych_id INTEGER,
    psychologist TEXT,
    title TEXT);

INSERT INTO books (psych_id, psychologist, title)
    VALUES (1, "Martin Seligman", "Learned Optimism");
INSERT INTO books (psych_id, psychologist, title)
    VALUES (1, "Martin Seligman", "Helplessness");
INSERT INTO books (psych_id, psychologist, title)
    VALUES (2, "Steven Pinker", "How the Mind Works");
INSERT INTO books (psych_id, psychologist, title)
    VALUES (2, "Steven Pinker", "The Language Instinct");
INSERT INTO books (psych_id, psychologist, title)
    VALUES (3, "Daniel Kahneman", "Thinking, Fast and Slow");
INSERT INTO books (psych_id, psychologist, title)
    VALUES (4, "Albert Bandura", "Self-Efficacy in Changing Societies");
INSERT INTO books (psych_id, psychologist, title)
    VALUES (5, "Jordan Peterson", "12 Rules of Life: An Antidote to Chaos");
INSERT INTO books (psych_id, psychologist, title)
    VALUES (6, "Christopher French", "Anomalistic Psychology: Exploring Paranormal Belief and Experience");
INSERT INTO books (psych_id, psychologist, title)
    VALUES (7, "James Alcock", "Parapsychology-Science or Magic?");
INSERT INTO books (psych_id, psychologist, title)
    VALUES (8, "Susan Fiske", "Social Cognition: From Brains to Culture");
INSERT INTO books (psych_id, psychologist, title)
    VALUES (9, "Girishwar Misra", NULL);
INSERT INTO books (psych_id, psychologist, title)
    VALUES (10, "Jonathan Haidt", "Flourishing: Positive Psychology and the Life Well-Lived");
INSERT INTO books (psych_id, psychologist, title)
    VALUES (11, "Rodney L. Lowman", "The Ethical Practice of Consulting Psychology");
INSERT INTO books (psych_id, psychologist, title)
    VALUES (12, "Richard Wiseman", "The Luck Factor");
INSERT INTO books (psych_id, psychologist, title)
    VALUES (13, "Roy Baumeister", "The Power of Bad");
INSERT INTO books (psych_id, psychologist, title)
    VALUES (14, "Joseph G. Ponterotto", "A Psychobiography of Bobby Fischer");
INSERT INTO books (psych_id, psychologist, title)
    VALUES (15, "Barbara Fredrickson", "Love 2.0: Finding Happiness and Health in Moments of Connection");



SELECT title FROM books WHERE psychologist = "Steven Pinker";

SELECT name FROM psychologists WHERE college = "McGill University";

SELECT psychologists.name, psychologists.specialty, psychologists.college, books.title FROM psychologists LEFT OUTER JOIN books ON psychologists.id = books.psych_id;

SELECT COUNT(*) FROM psychologists;
SELECT COUNT(*) FROM books;
