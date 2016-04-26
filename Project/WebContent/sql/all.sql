CREATE TABLE sales
(
	memNo                 NUMBER(5)  NOT NULL ,
	salesNo               NUMBER(5)  NOT NULL ,
	salesName             VARCHAR2(30)  NULL 
);



CREATE UNIQUE INDEX XPK영업부 ON sales
(salesNo  ASC);



ALTER TABLE sales
	ADD CONSTRAINT  XPK영업부 PRIMARY KEY (salesNo);



CREATE TABLE RESIST
(
	memNo                 NUMBER(5)  NOT NULL ,
	submitValue           VARCHAR2(10)  NULL ,
	readyNo               NUMBER(5)  NOT NULL,
	NAME				  VARCHAR2(10) NOT NULL,
	EMAIL				  VARCHAR2(10) NOT NULL,
	TEL					  NUMBER(12) NOT NULL,
	GUBUN				  VARCHAR2(20) NOT NULL,
	JOB					  VARCHAR2(30) NOT NULL,
	JOBINFO				  VARCHAR2(80) NOT NULL,
	TIME				  VARCHAR2(10) NOT NULL,
	PAY					  VARCHAR2(10) NOT NULL,
	CONTENT				  VARCHAR2(80) NOT NULL,
	PASSWORD			  VARCHAR2(30) NOT NULL
);



CREATE UNIQUE INDEX XPK수강신청대기 ON RESIST
(readyNo  ASC);



ALTER TABLE RESIST
	ADD CONSTRAINT  XPK수강신청대기 PRIMARY KEY (readyNo);


CREATE TABLE student
(
	stuNo                 NUMBER(10)  NOT NULL ,
	roomNo                NUMBER(5)  NOT NULL ,
	memNo                 NUMBER(5)  NOT NULL ,
	admNo                 NUMBER(5)  NOT NULL 
);



CREATE UNIQUE INDEX XPK학생 ON student
(stuNo  ASC);



ALTER TABLE student
	ADD CONSTRAINT  XPK학생 PRIMARY KEY (stuNo);



CREATE TABLE studyCur
(
	curNo                 NUMBER(5)  NOT NULL ,
	curName               VARCHAR2(100)  NULL ,
	curLocation           VARCHAR2(200)  NULL ,
	curDate               DATE  NULL ,
	curSupply             NUMBER(5)  NULL 
);



CREATE UNIQUE INDEX XPK수강 ON studyCur
(curNo  ASC);



ALTER TABLE studyCur
	ADD CONSTRAINT  XPK수강 PRIMARY KEY (curNo);



CREATE TABLE stuRoom
(
	roomNo                NUMBER(5)  NOT NULL ,
	tchNo                 NUMBER(5)  NOT NULL ,
	curNo                 NUMBER(5)  NOT NULL 
);



CREATE UNIQUE INDEX XPK강의실 ON stuRoom
(roomNo  ASC);



ALTER TABLE stuRoom
	ADD CONSTRAINT  XPK강의실 PRIMARY KEY (roomNo);



CREATE TABLE teacher
(
	tchNo                 NUMBER(5)  NOT NULL ,
	tchName               VARCHAR2(30)  NULL ,
	memNo                 NUMBER(5)  NOT NULL 
);



CREATE UNIQUE INDEX XPK강사 ON teacher
(tchNo  ASC);



ALTER TABLE teacher
	ADD CONSTRAINT  XPK강사 PRIMARY KEY (tchNo);



ALTER TABLE admin
	ADD (CONSTRAINT  R_50 FOREIGN KEY (memNo) REFERENCES member(memNo));



ALTER TABLE attend
	ADD (CONSTRAINT  R_48 FOREIGN KEY (stuNo) REFERENCES student(stuNo));



ALTER TABLE grade
	ADD (CONSTRAINT  R_39 FOREIGN KEY (roomNo) REFERENCES stuRoom(roomNo));



ALTER TABLE grade
	ADD (CONSTRAINT  R_49 FOREIGN KEY (stuNo) REFERENCES student(stuNo));



ALTER TABLE member
	ADD (CONSTRAINT  R_24 FOREIGN KEY (authNo) REFERENCES authority(authNo));



ALTER TABLE sales
	ADD (CONSTRAINT  R_51 FOREIGN KEY (memNo) REFERENCES member(memNo));



ALTER TABLE signUpReady
	ADD (CONSTRAINT  R_43 FOREIGN KEY (memNo) REFERENCES member(memNo));



ALTER TABLE student
	ADD (CONSTRAINT  R_8 FOREIGN KEY (roomNo) REFERENCES stuRoom(roomNo));



ALTER TABLE student
	ADD (CONSTRAINT  R_42 FOREIGN KEY (admNo) REFERENCES admin(admNo));



ALTER TABLE student
	ADD (CONSTRAINT  R_52 FOREIGN KEY (memNo) REFERENCES member(memNo));



ALTER TABLE stuRoom
	ADD (CONSTRAINT  R_12 FOREIGN KEY (tchNo) REFERENCES teacher(tchNo));



ALTER TABLE stuRoom
	ADD (CONSTRAINT  R_45 FOREIGN KEY (curNo) REFERENCES studyCur(curNo));



ALTER TABLE teacher
	ADD (CONSTRAINT  R_53 FOREIGN KEY (memNo) REFERENCES member(memNo));
	
	
