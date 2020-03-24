CREATE TABLE players(
ID SERIAL,
Last_Name varchar(50) NOT NULL,
First_Name varchar(50) NOT NULL,
Position varchar(3),
Jersey_Number INTEGER UNIQUE,
Weight INTEGER NOT NULL,
Height INTEGER NOT NULL,
Date_of_Birth DATE NOT NULL
);

INSERT INTO players VALUES (1, 'Fisher', 'Derek', 'QB', 2, 210, 74, 'January 2, 1999');
INSERT INTO players VALUES (2, 'Cunningham', 'Reginald', 'DE', 55, 240, 75, 'April 3, 1998');
INSERT INTO players VALUES (3, 'Jackson', 'Stephen', 'WR', 13, 184, 76, 'October 13, 1998');
INSERT INTO players VALUES (4, 'Colton', 'Ryan', 'K', 81, 238, 74, 'December 12, 1998');
INSERT INTO players VALUES (5, 'Wright', 'Alexander', 'RB', 23, 190, 70, 'March 13, 1999');
INSERT INTO players VALUES (6, 'Smalls', 'Elliot', 'OLB', 33, 215, 69, 'February 23, 1999');

ALTER TABLE players ALTER COLUMN Position SET NOT NULL;
ALTER TABLE players ALTER COLUMN Jersey_Number SET NOT NULL;

ALTER TABLE players ALTER COLUMN Jersey_Number CHECK (Jersey_Number > 0 AND Jersey_Number < 100);

