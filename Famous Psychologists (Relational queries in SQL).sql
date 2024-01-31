/* Create table about the people and what they do here */

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
      
    
CREATE TABLE books (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    psychologist TEXT,
    title TEXT);

INSERT INTO books (psychologist, title)
    VALUES ("Martin Seligman", "Learned Optimism");
INSERT INTO books (psychologist, title)
    VALUES ("Martin Seligman", "Helplessness");
INSERT INTO books (psychologist, title)
    VALUES ("Steven Pinker", "How the Mind Works");
INSERT INTO books (psychologist, title)
    VALUES ("Steven Pinker", "The Language Instinct");
INSERT INTO books (psychologist, title)
    VALUES ("Daniel Kahneman", "Thinking, Fast and Slow");
INSERT INTO books (psychologist, title)
    VALUES ("Albert Bandura", "Self-Efficacy in Changing Societies");
INSERT INTO books (psychologist, title)
    VALUES ("Jordan Peterson", "12 Rules of Life: An Antidote to Chaos");
    
SELECT title FROM books WHERE psychologist = "Steven Pinker";

SELECT name FROM psychologists WHERE college = "McGill University";

SELECT psychologists.name, psychologists.specialty, psychologists.college, books.title FROM psychologists LEFT OUTER JOIN books ON psychologists.name = books.psychologist;

