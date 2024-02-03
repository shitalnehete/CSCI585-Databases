{\rtf1\ansi\ansicpg1252\cocoartf2639
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 /* DB Software https://livesql.oracle.com/ */\
\
CREATE TABLE ProjectRoomBookings\
(roomNum INTEGER NOT NULL,\
startTime INTEGER NOT NULL,\
endTime INTEGER NOT NULL,\
groupName CHAR(10) NOT NULL,\
PRIMARY KEY (roomNum, startTime),\
CONSTRAINT Check_time CHECK (startTime<endTime));\
\
\
CREATE OR REPLACE TRIGGER roomavailabilitycheck\
BEFORE INSERT OR UPDATE ON ProjectRoomBookings\
FOR EACH ROW\
DECLARE\
count_room NUMBER;\
BEGIN\
select count(*) into count_room\
from ProjectRoomBookings\
where :new.roomNum=roomNum and NOT (:new.startTime>=endTime or :new.endTime<=startTime);\
IF count_room>0\
THEN\
  RAISE_APPLICATION_ERROR(-20001, 'Error in entry');\
END IF;\
END;\
\
\
INSERT INTO ProjectRoomBookings VALUES (101, 9, 12, 'A');\
INSERT INTO ProjectRoomBookings VALUES (101, 12, 15, 'A');\
INSERT INTO ProjectRoomBookings VALUES (101, 1, 5, 'D');\
INSERT INTO ProjectRoomBookings VALUES (101, 13, 16, 'D');}