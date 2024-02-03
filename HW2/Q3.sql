{\rtf1\ansi\ansicpg1252\cocoartf2639
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 /* DB software https://livesql.oracle.com/ */\
\
CREATE TABLE ProjectStatus (\
    PID CHAR(10) NOT NULL,\
    Step INTEGER NOT NULL,\
    Status CHAR NOT NULL,\
    PRIMARY KEY (PID, Step));\
    \
INSERT INTO ProjectStatus  VALUES ('P100', 0, 'C');\
INSERT INTO ProjectStatus  VALUES ('P100', 1, 'W');\
INSERT INTO ProjectStatus  VALUES ('P100', 2, 'W');\
INSERT INTO ProjectStatus  VALUES ('P201', 0, 'C');\
INSERT INTO ProjectStatus  VALUES ('P201', 1, 'C');\
INSERT INTO ProjectStatus  VALUES ('P333', 0, 'W');\
INSERT INTO ProjectStatus  VALUES ('P333', 1, 'W');\
INSERT INTO ProjectStatus  VALUES ('P333', 2, 'W');\
INSERT INTO ProjectStatus  VALUES ('P333', 3, 'W');\
\
SELECT DISTINCT P1.PID FROM ProjectStatus P1 , ProjectStatus P2 WHERE P2.Step = 0 AND P1.Step=1 AND P1.Status='W'  AND P2.Status = 'C'  AND P2.PID=P1.PID;}