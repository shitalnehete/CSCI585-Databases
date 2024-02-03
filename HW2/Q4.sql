{\rtf1\ansi\ansicpg1252\cocoartf2639
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 /* DB Software https://livesql.oracle.com/ */\
\
CREATE TABLE InstructorWages\
(Instructor VARCHAR(25) NOT NULL,\
 ClassName VARCHAR(50) NOT NULL,\
 HourlyRate DECIMAL NOT NULL,\
 ClassSize INTEGER NOT NULL,\
 PRIMARY KEY (Instructor, ClassName));\
 \
INSERT INTO InstructorWages VALUES ('Aleph', 'MIDI controllers', 20, 20);\
INSERT INTO InstructorWages VALUES ('Aleph', 'Sound mixing', 20, 15);\
INSERT INTO InstructorWages VALUES ('Aleph', 'Synthesis algorithms', 20, 10);\
INSERT INTO InstructorWages VALUES ('Bit', 'EDM synthesis', 30, 25);\
INSERT INTO InstructorWages VALUES ('Bit', 'Electronic Music Fundamentals', 30, 30);\
INSERT INTO InstructorWages VALUES ('Bit', 'Sound mixing', 30, 15);\
INSERT INTO InstructorWages VALUES ('CRC', 'EDM synthesis', 25, 20);\
INSERT INTO InstructorWages VALUES ('CRC', 'Electronic Music Fundamentals', 25, 15);\
INSERT INTO InstructorWages VALUES ('Dat', 'MIDI controllers', 23, 25);\
INSERT INTO InstructorWages VALUES ('Dat', 'EDM synthesis', 23, 20);\
INSERT INTO InstructorWages VALUES ('Dat', 'Electronic Music Fundamentals', 23, 10);\
INSERT INTO InstructorWages VALUES ('Emscr', 'MIDI controllers', 28, 25);\
INSERT INTO InstructorWages VALUES ('Emscr', 'Synthesis algorithms', 28, 30);\
INSERT INTO InstructorWages VALUES ('Emscr', 'Electronic Music Fundamentals', 28, 55);\
INSERT INTO InstructorWages VALUES ('Emscr', 'EDM synthesis', 28, 10);\
\
SELECT MAX(SUM(HourlyRate * ClassSize * 0.1)) AS bonus FROM InstructorWages GROUP BY Instructor ORDER BY bonus DESC;\
}