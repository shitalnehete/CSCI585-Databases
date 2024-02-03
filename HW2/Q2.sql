/* DB Software https://livesql.oracle.com/ */

CREATE TABLE ENROLLMENT ( 
    SID INTEGER NOT NULL, 
    ClassName CHAR(30) NOT NULL, 
    GRADE CHAR,
    PRIMARY KEY (SID, ClassName));

INSERT INTO ENROLLMENT VALUES (123, 'Synthesis algorithms', 'A');
INSERT INTO ENROLLMENT VALUES (123, 'EDM synthesis', 'B');
INSERT INTO ENROLLMENT VALUES (123, 'MIDI controllers', 'B');
INSERT INTO ENROLLMENT VALUES (662, 'Sound mixing', 'B');
INSERT INTO ENROLLMENT VALUES (662, 'EDM synthesis', 'A');
INSERT INTO ENROLLMENT VALUES (662, 'Electronic Music Fundamentals', 'A');
INSERT INTO ENROLLMENT VALUES (662, 'MIDI controllers', 'B');
INSERT INTO ENROLLMENT VALUES (345, 'MIDI controllers', 'A');
INSERT INTO ENROLLMENT VALUES (345, 'Electronic Music Fundamentals', 'B');
INSERT INTO ENROLLMENT VALUES (345, 'EDM synthesis', 'A');
INSERT INTO ENROLLMENT VALUES (355, 'EDM synthesis', 'B');
INSERT INTO ENROLLMENT VALUES (355, 'Electronic Music Fundamentals', 'B');
INSERT INTO ENROLLMENT VALUES (213, 'Electronic Music Fundamentals', 'A');

SELECT ClassName, COUNT(*) AS Total FROM ENROLLMENT GROUP BY ClassName ORDER BY Total DESC;
