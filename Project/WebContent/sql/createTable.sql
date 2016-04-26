CREATE TABLE admin
(
	admNo                 NUMBER(5)  NOT NULL ,
	admName               VARCHAR2(30)  NULL ,
	memNo                 NUMBER(5)  NOT NULL 
);



ALTER TABLE admin
	ADD  PRIMARY KEY (admNo);

CREATE TABLE attend
(
	attdNo                NUMBER(5)  NOT NULL ,
	stuNo                 NUMBER(10)  NOT NULL ,
	attdValue             VARCHAR2(10)  NULL ,
	attdDate              DATE  NULL 
);



ALTER TABLE attend
	ADD  PRIMARY KEY (attdNo);

CREATE TABLE authority
(
	authNo                NUMBER(2)  NOT NULL ,
	departName            VARCHAR2(30)  NULL 
);

ALTER TABLE authority
	ADD  PRIMARY KEY (authNo);

CREATE TABLE grade
(
	grdNo                 NUMBER(10)  NOT NULL ,
	javaGrade             NUMBER(3)  NULL ,
	webGrade              NUMBER(3)  NULL ,
	frameGrade            NUMBER(3)  NULL ,
	stuNo                 NUMBER(10)  NOT NULL ,
	roomNo                NUMBER(5)  NOT NULL 
);



ALTER TABLE grade
	ADD  PRIMARY KEY (grdNo);

CREATE TABLE member
(
	memNo                 NUMBER(5)  NOT NULL ,
	memPw                 VARCHAR2(30)  NULL ,
	memId                 VARCHAR2(30)  NULL ,
	memName               VARCHAR2(30)  NULL ,
	memAddress            VARCHAR2(100)  NULL ,
	memEmail              VARCHAR2(100)  NULL ,
	memPhone              VARCHAR2(20)  NULL ,
	authNo                NUMBER(2)  NOT NULL 
);



ALTER TABLE member
	ADD  PRIMARY KEY (memNo);

CREATE TABLE register
(
	regNo                 NUMBER(5)  NOT NULL ,
	memNo                 NUMBER(5)  NOT NULL ,
	submitValue           VARCHAR2(10)  NULL ,
	name                  VARCHAR2(30)  NULL ,
	email                 VARCHAR2(50)  NULL ,
	tel                   VARCHAR2(20)  NULL ,
	gubun                 VARCHAR2(20)  NULL ,
	job                   VARCHAR2(30)  NULL ,
	jobinfo               VARCHAR2(80)  NULL ,
	time                  VARCHAR2(20)  NULL ,
	pay                   VARCHAR2(20)  NULL ,
	content               VARCHAR2(80)  NULL ,
	password              VARCHAR2(30)  NULL 
);



ALTER TABLE register
	ADD  PRIMARY KEY (regNo);

CREATE TABLE sales
(
	salesNo               NUMBER(5)  NOT NULL ,
	memNo                 NUMBER(5)  NOT NULL ,
	salesName             VARCHAR2(30)  NULL 
);



ALTER TABLE sales
	ADD  PRIMARY KEY (salesNo);

CREATE TABLE student
(
	stuNo                 NUMBER(10)  NOT NULL ,
	memNo                 NUMBER(5)  NOT NULL ,
	roomNo                NUMBER(5)  NOT NULL ,
	admNo                 NUMBER(5)  NOT NULL 
);



ALTER TABLE student
	ADD  PRIMARY KEY (stuNo);

CREATE TABLE studyCur
(
	curNo                 NUMBER(5)  NOT NULL ,
	curName               VARCHAR2(100)  NULL ,
	curLocation           VARCHAR2(200)  NULL ,
	curDate               DATE  NULL ,
	curSupply             NUMBER(5)  NULL 
);



ALTER TABLE studyCur
	ADD  PRIMARY KEY (curNo);

CREATE TABLE stuRoom
(
	roomNo                NUMBER(5)  NOT NULL ,
	curNo                 NUMBER(5)  NOT NULL ,
	tchNo                 NUMBER(5)  NOT NULL 
);



ALTER TABLE stuRoom
	ADD  PRIMARY KEY (roomNo);

CREATE TABLE teacher
(
	tchNo                 NUMBER(5)  NOT NULL ,
	memNo                 NUMBER(5)  NOT NULL ,
	tchName               VARCHAR2(30)  NULL 
);



ALTER TABLE teacher
	ADD  PRIMARY KEY (tchNo);

ALTER TABLE admin
	ADD ( FOREIGN KEY (memNo) REFERENCES member(memNo));

ALTER TABLE attend
	ADD ( FOREIGN KEY (stuNo) REFERENCES student(stuNo));

ALTER TABLE grade
	ADD ( FOREIGN KEY (roomNo) REFERENCES stuRoom(roomNo));

ALTER TABLE grade
	ADD ( FOREIGN KEY (stuNo) REFERENCES student(stuNo));

ALTER TABLE member
	ADD ( FOREIGN KEY (authNo) REFERENCES authority(authNo));

ALTER TABLE register
	ADD ( FOREIGN KEY (memNo) REFERENCES member(memNo));

ALTER TABLE sales
	ADD ( FOREIGN KEY (memNo) REFERENCES member(memNo));

ALTER TABLE student
	ADD ( FOREIGN KEY (roomNo) REFERENCES stuRoom(roomNo));

ALTER TABLE student
	ADD ( FOREIGN KEY (admNo) REFERENCES admin(admNo));

ALTER TABLE student
	ADD ( FOREIGN KEY (memNo) REFERENCES member(memNo));

ALTER TABLE stuRoom
	ADD ( FOREIGN KEY (tchNo) REFERENCES teacher(tchNo));

ALTER TABLE stuRoom
	ADD ( FOREIGN KEY (curNo) REFERENCES studyCur(curNo));

ALTER TABLE teacher
	ADD ( FOREIGN KEY (memNo) REFERENCES member(memNo));


