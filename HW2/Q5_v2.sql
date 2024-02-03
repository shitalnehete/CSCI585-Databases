{\rtf1\ansi\ansicpg1252\cocoartf2639
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 /* DB Software https://livesql.oracle.com/ */\
\
CREATE TABLE InstructorInfo(\
    Instructor CHAR(15),\
    Subject CHAR(30),\
    PRIMARY KEY (Instructor, Subject));  \
\
INSERT INTO InstructorInfo VALUES ('Aleph', 'MIDI controllers');        \
INSERT INTO InstructorInfo VALUES ('Aleph', 'Sound mixing');         \
INSERT INTO InstructorInfo VALUES ('Aleph', 'Synthesis algorithms');       \
INSERT INTO InstructorInfo VALUES ('Bit', 'EDM synthesis');\
INSERT INTO InstructorInfo VALUES ('Bit', 'Electronic Music Fundamentals');\
INSERT INTO InstructorInfo VALUES ('Bit', 'Sound mixing');\
INSERT INTO InstructorInfo VALUES ('CRC', 'EDM synthesis');\
INSERT INTO InstructorInfo VALUES ('CRC', 'Electronic Music Fundamentals');\
INSERT INTO InstructorInfo VALUES ('Dat', 'MIDI controllers');\
INSERT INTO InstructorInfo VALUES ('Dat', 'EDM synthesis');\
INSERT INTO InstructorInfo VALUES ('Dat', 'Electronic Music Fundamentals');\
INSERT INTO InstructorInfo VALUES ('Emscr', 'MIDI controllers');\
INSERT INTO InstructorInfo VALUES ('Emscr', 'Synthesis algorithms');\
INSERT INTO InstructorInfo VALUES ('Emscr', 'Electronic Music Fundamentals');\
INSERT INTO InstructorInfo VALUES ('Emscr', ' EDM synthesis');\
\
CREATE TABLE Subjects(\
    Subject Char(30),\
    PRIMARY KEY(Subject));\
\
INSERT INTO Subjects VALUES ('Electronic Music Fundamentals'); \
INSERT INTO Subjects VALUES ('MIDI controllers'); \
INSERT INTO Subjects VALUES ('EDM synthesis'); \
\
SELECT Instructor FROM InstructorInfo join Subjects on InstructorInfo.subject=Subjects.subject GROUP BY Instructor HAVING COUNT(*) = (SELECT COUNT(*) FROM Subjects);}