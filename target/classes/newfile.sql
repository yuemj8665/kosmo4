
/* Drop Tables */

DROP TABLE Border CASCADE CONSTRAINTS;
DROP TABLE Calender CASCADE CONSTRAINTS;
DROP TABLE Reservation CASCADE CONSTRAINTS;
DROP TABLE CarpoolBorder CASCADE CONSTRAINTS;
DROP TABLE Hospital CASCADE CONSTRAINTS;
DROP TABLE KidHouse CASCADE CONSTRAINTS;
DROP TABLE KidsCafe CASCADE CONSTRAINTS;
DROP TABLE ReView CASCADE CONSTRAINTS;
DROP TABLE Map CASCADE CONSTRAINTS;
DROP TABLE Code CASCADE CONSTRAINTS;
DROP TABLE Partner_Carpool CASCADE CONSTRAINTS;
DROP TABLE Members CASCADE CONSTRAINTS;




/* Create Tables */

CREATE TABLE Border
(
	No number NOT NULL,
	Title nvarchar2(20),
	Sumnail varchar2(20),
	Url varchar2(20),
	PRIMARY KEY (No)
);


CREATE TABLE Calender
(
	Cal_No number NOT NULL,
	Title nvarchar2(20),
	StartDay date,
	EndDay date,
	Content nvarchar2(100),
	Type nvarchar2(20),
	ID varchar2(10) NOT NULL,
	PRIMARY KEY (Cal_No)
);


CREATE TABLE CarpoolBorder
(
	No number NOT NULL,
	StartPoint nvarchar2(20),
	EndPoint nvarchar2(20),
	Type nvarchar2(10),
	Content nvarchar2(20),
	ID varchar2(10) NOT NULL,
	PRIMARY KEY (No)
);


CREATE TABLE Code
(
	Code number NOT NULL,
	Code_Name nvarchar2(20),
	PRIMARY KEY (Code)
);


CREATE TABLE Hospital
(
	No number NOT NULL,
	Subject nvarchar2(20),
	NightCare varchar2(10),
	Map_No number NOT NULL,
	PRIMARY KEY (No)
);


CREATE TABLE KidHouse
(
	No number NOT NULL,
	LimitCount number,
	TeacherCount number,
	Map_No number NOT NULL,
	PRIMARY KEY (No)
);


CREATE TABLE KidsCafe
(
	No number NOT NULL,
	Map_No number NOT NULL,
	PRIMARY KEY (No)
);


CREATE TABLE Map
(
	Map_No number NOT NULL,
	Name nvarchar2(20),
	Addr nvarchar2(20),
	Tel varchar2(20),
	TotalScore number,
	Code number NOT NULL,
	PRIMARY KEY (Map_No)
);


CREATE TABLE Members
(
	ID varchar2(10) NOT NULL,
	PWD varchar2(15) NOT NULL,
	Addr nvarchar2(100) NOT NULL,
	Tel varchar2(20) NOT NULL,
	Email varchar2(20),
	PRIMARY KEY (ID)
);


CREATE TABLE Partner_Carpool
(
	P_No nvarchar2(10) NOT NULL,
	ID varchar2(10) NOT NULL,
	CarNumber nvarchar2(20),
	CarType nvarchar2(20),
	CarSit varchar2(10),
	TotalScore number,
	TotalCount number,
	PRIMARY KEY (P_No)
);


CREATE TABLE Reservation
(
	RS_No number NOT NULL,
	Score number,
	Finish varchar2(10),
	ID varchar2(10) NOT NULL,
	No number NOT NULL,
	PRIMARY KEY (RS_No)
);


CREATE TABLE ReView
(
	RV_No number NOT NULL,
	Title nvarchar2(20),
	Content nvarchar2(2000),
	Score number,
	ID varchar2(10) NOT NULL,
	Map_No number NOT NULL,
	PRIMARY KEY (RV_No)
);



/* Create Foreign Keys */

ALTER TABLE Reservation
	ADD FOREIGN KEY (No)
	REFERENCES CarpoolBorder (No)
;


ALTER TABLE Map
	ADD FOREIGN KEY (Code)
	REFERENCES Code (Code)
;


ALTER TABLE Hospital
	ADD FOREIGN KEY (Map_No)
	REFERENCES Map (Map_No)
;


ALTER TABLE KidHouse
	ADD FOREIGN KEY (Map_No)
	REFERENCES Map (Map_No)
;


ALTER TABLE KidsCafe
	ADD FOREIGN KEY (Map_No)
	REFERENCES Map (Map_No)
;


ALTER TABLE ReView
	ADD FOREIGN KEY (Map_No)
	REFERENCES Map (Map_No)
;


ALTER TABLE Calender
	ADD FOREIGN KEY (ID)
	REFERENCES Members (ID)
;


ALTER TABLE CarpoolBorder
	ADD FOREIGN KEY (ID)
	REFERENCES Members (ID)
;


ALTER TABLE Partner_Carpool
	ADD FOREIGN KEY (ID)
	REFERENCES Members (ID)
;


ALTER TABLE Reservation
	ADD FOREIGN KEY (ID)
	REFERENCES Members (ID)
;


ALTER TABLE ReView
	ADD FOREIGN KEY (ID)
	REFERENCES Members (ID)
;



