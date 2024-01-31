/* Think about your favorite apps, and pick one that stores your data- like a game that stores scores, an app that lets you post updates, etc. Now in this project, you're going to imagine that the app stores your data in a SQL database (which is pretty likely!), and write SQL statements that might look like their own SQL.

CREATE a table to store the data.
INSERT a few example rows in the table.
Use an UPDATE to emulate what happens when you edit data in the app.
Use a DELETE to emulate what happens when you delete data in the app.

What does the app's SQL look like? */

CREATE TABLE daily_yoga_app (
    id INTEGER PRIMARY KEY, 
    workout_name TEXT,
    duration INTEGER,
    feeling TEXT);
    
INSERT INTO daily_yoga_app (workout_name, duration, feeling) 
    VALUES ("Full Body Easy Stretches", 18, "Awesome");
INSERT INTO daily_yoga_app (workout_name, duration, feeling) 
    VALUES ("Lower Back Pain Relief", 10, "Challenging");
INSERT INTO daily_yoga_app (workout_name, duration, feeling) 
    VALUES ("Beginner Spinal Flexibility", 14, "Awesome");
    
SELECT * FROM daily_yoga_app;

UPDATE daily_yoga_app SET duration = 20 WHERE workout_name = "Beginner Spinal Flexibility";

SELECT * FROM daily_yoga_app;

DELETE FROM daily_yoga_app WHERE id = 1;

SELECT * FROM daily_yoga_app;
