CREATE TABLE management
(
	admNo                 NUMBER(5)  NOT NULL ,
	memNo                 NUMBER(5)  NOT NULL 
);

CREATE TABLE attend
(
	attdNo                NUMBER(5)  NOT NULL ,
	attdDate              DATE  NULL 
);

ALTER TABLE attend
	ADD  PRIMARY KEY (attdNo);

ALTER TABLE ATTEND ADD attdValue1 VARCHAR2(10) NULL;
ALTER TABLE ATTEND ADD attdValue2 VARCHAR2(10) NULL;
ALTER TABLE ATTEND ADD attdValue3 VARCHAR2(10) NULL;
ALTER TABLE ATTEND ADD attdValue4 VARCHAR2(10) NULL;
ALTER TABLE ATTEND ADD attdValue5 VARCHAR2(10) NULL;
ALTER TABLE ATTEND ADD attdValue6 VARCHAR2(10) NULL;
ALTER TABLE ATTEND ADD attdValue7 VARCHAR2(10) NULL;
ALTER TABLE ATTEND ADD attdValue8 VARCHAR2(10) NULL;
ALTER TABLE ATTEND ADD attdValue9 VARCHAR2(10) NULL;
ALTER TABLE ATTEND ADD attdValue10 VARCHAR2(10) NULL;
ALTER TABLE ATTEND ADD attdValue11 VARCHAR2(10) NULL;
ALTER TABLE ATTEND ADD attdValue12 VARCHAR2(10) NULL;
ALTER TABLE ATTEND ADD attdValue13 VARCHAR2(10) NULL;
ALTER TABLE ATTEND ADD attdValue14 VARCHAR2(10) NULL;
ALTER TABLE ATTEND ADD attdValue15 VARCHAR2(10) NULL;
ALTER TABLE ATTEND ADD attdValue16 VARCHAR2(10) NULL;
ALTER TABLE ATTEND ADD attdValue17 VARCHAR2(10) NULL;
ALTER TABLE ATTEND ADD attdValue18 VARCHAR2(10) NULL;
ALTER TABLE ATTEND ADD attdValue19 VARCHAR2(10) NULL;
ALTER TABLE ATTEND ADD attdValue20 VARCHAR2(10) NULL;
ALTER TABLE ATTEND ADD attdValue21 VARCHAR2(10) NULL;
ALTER TABLE ATTEND ADD attdValue22 VARCHAR2(10) NULL;
ALTER TABLE ATTEND ADD attdValue23 VARCHAR2(10) NULL;
ALTER TABLE ATTEND ADD attdValue24 VARCHAR2(10) NULL;
ALTER TABLE ATTEND ADD attdValue25 VARCHAR2(10) NULL;
ALTER TABLE ATTEND ADD attdValue26 VARCHAR2(10) NULL;
ALTER TABLE ATTEND ADD attdValue27 VARCHAR2(10) NULL;
ALTER TABLE ATTEND ADD attdValue28 VARCHAR2(10) NULL;
ALTER TABLE ATTEND ADD attdValue29 VARCHAR2(10) NULL;
ALTER TABLE ATTEND ADD attdValue30 VARCHAR2(10) NULL;
ALTER TABLE ATTEND ADD attdValue31 VARCHAR2(10) NULL;

CREATE TABLE authority
(
	authNo                NUMBER(2)  NOT NULL ,
	departName            VARCHAR2(30) NOT NULL 
);

ALTER TABLE authority
	ADD  PRIMARY KEY (authNo);


CREATE TABLE curriculum
(
	curNo                 NUMBER(5)  NOT NULL ,
	curName               VARCHAR2(100)  NULL ,
	curLocation           VARCHAR2(200)  NULL ,
	curDate               DATE  NULL ,
	curSupply             NUMBER(5)  NULL 
);



ALTER TABLE curriculum
	ADD  PRIMARY KEY (curNo);



CREATE TABLE grade
(
	grdNo                 NUMBER(10)  NOT NULL ,
	javaGrade             NUMBER(3)  NULL ,
	webGrade              NUMBER(3)  NULL ,
	frameGrade            NUMBER(3)  NULL ,
	stuNo                 NUMBER(10)  NULL ,
	roomNo                NUMBER(5)  NULL 
);



ALTER TABLE grade
	ADD  PRIMARY KEY (grdNo);



CREATE TABLE management
(
	mngNo                 NUMBER(5)  NOT NULL ,
	memNo                 NUMBER(5)  NULL 
);



ALTER TABLE management
	ADD  PRIMARY KEY (mngNo);



CREATE TABLE member
(
	memNo                 NUMBER(5)  NOT NULL ,
	memPw                 VARCHAR2(30) NOT NULL ,
	memId                 VARCHAR2(30) NOT NULL ,
	memName               VARCHAR2(30) NOT NULL ,
	memAddress            VARCHAR2(100) NOT NULL ,
	memEmail              VARCHAR2(100) NOT NULL ,
	memPhone              VARCHAR2(20) NOT NULL ,
	MEMTEL                VARCHAR2(20) NULL,
	MEMGENDER             VARCHAR2(20) NOT NULL,
	EMAILAGREE            VARCHAR2(5) NOT NULL,
	joinDay               VARCHAR2(20) NOT NULL ,
	authNo                NUMBER(2) NOT NULL 
);

ALTER TABLE member
	ADD  PRIMARY KEY (memNo);

CREATE TABLE register
(
	regNo                 NUMBER(5)  NOT NULL ,
	memNo                 NUMBER(5)  NULL ,
	file1           VARCHAR2(50)  NULL ,
	file2           VARCHAR2(50)  NULL ,
	name                  VARCHAR2(30)  NULL ,
	email                 VARCHAR2(50)  NULL ,
	tel                   VARCHAR2(20)  NULL ,
	gubun                 VARCHAR2(100)  NULL ,
	job                   VARCHAR2(30)  NULL ,
	jobinfo               VARCHAR2(350)  NULL ,
	time                  VARCHAR2(20)  NULL ,
	pay                   VARCHAR2(20)  NULL ,
	content               VARCHAR2(200)  NULL ,
	password              VARCHAR2(30)  NULL 
);


ALTER TABLE register
	ADD  PRIMARY KEY (regNo);



CREATE TABLE sales
(
	salesNo               NUMBER(5)  NOT NULL ,
	memNo                 NUMBER(5)  NULL 
);



ALTER TABLE sales
	ADD  PRIMARY KEY (salesNo);



CREATE TABLE student
(
	stuNo                 NUMBER(10)  NOT NULL ,
	memNo                 NUMBER(5)  NULL ,
	roomNo                NUMBER(5)  NULL, 
	attdNo                NUMBER(5) NULL 
);

ALTER TABLE student
	ADD  PRIMARY KEY (stuNo);

ALTER TABLE student
	ADD ( FOREIGN KEY (attdNo) REFERENCES attend(attdNo) ON DELETE SET NULL);

CREATE TABLE stuRoom
(
	roomNo                NUMBER(5)  NOT NULL ,
	curNo                 NUMBER(5)  NULL ,
	tchNo                 NUMBER(5)  NULL 
);



ALTER TABLE stuRoom
	ADD  PRIMARY KEY (roomNo);



CREATE TABLE teacher
(
	tchNo                 NUMBER(5)  NOT NULL ,
	memNo                 NUMBER(5) NOT NULL,
	roomNo                NUMBER(5) NULL
);


ALTER TABLE teacher
	ADD  PRIMARY KEY (tchNo);

ALTER TABLE grade
	ADD ( FOREIGN KEY (roomNo) REFERENCES sturoom(roomNo) ON DELETE SET NULL);

ALTER TABLE grade
	ADD ( FOREIGN KEY (stuNo) REFERENCES student(stuNo) ON DELETE SET NULL);



ALTER TABLE management
	ADD ( FOREIGN KEY (memNo) REFERENCES member(memNo) ON DELETE SET NULL);



ALTER TABLE member
	ADD ( FOREIGN KEY (authNo) REFERENCES authority(authNo) ON DELETE SET NULL);



ALTER TABLE register
	ADD ( FOREIGN KEY (memNo) REFERENCES member(memNo) ON DELETE SET NULL);



ALTER TABLE sales
	ADD ( FOREIGN KEY (memNo) REFERENCES member(memNo) ON DELETE SET NULL);



ALTER TABLE student
	ADD ( FOREIGN KEY (roomNo) REFERENCES stuRoom(roomNo) ON DELETE SET NULL);



ALTER TABLE student
	ADD ( FOREIGN KEY (memNo) REFERENCES member(memNo) ON DELETE SET NULL);



ALTER TABLE stuRoom
	ADD ( FOREIGN KEY (tchNo) REFERENCES teacher(tchNo) ON DELETE SET NULL);



ALTER TABLE stuRoom
	ADD ( FOREIGN KEY (curNo) REFERENCES curriculum(curNo) ON DELETE SET NULL);



ALTER TABLE teacher
	ADD ( FOREIGN KEY (memNo) REFERENCES member(memNo) ON DELETE SET NULL);

	
---------------------------------------------------------------------------------------------
-- 공지사항 게시판

create table notice (

	notNo		NUMBER(5) not null,
	Title		varchar2(100)  null,
	Content		clob  null,
	notDate		date  null,
	name 		varchar2(50)  null
);
ALTER TABLE notice
	ADD  PRIMARY KEY (notNo);
	
-- 문의사항 게시판
	create table qna(
		qnaNo		number(5) not null,
		qnaTitle	varchar2(100) not null,
		qnaContent	clob null,
		qnaDate		date null,
		qnaName		varchar2(50) null
	);
	alter table qna add primary key(qnaNo);
-- 수강후기 게시판
	create table after(
		aftNo		number(5) not null,
		aftTitle	varchar2(100) not null,
		aftContent	clob null,
		aftDate		date null,
		aftName		varchar2(50) null
	);
	alter table after add primary key(aftNo);
-- 채용정보 게시판
	create table jobinfo(
		jobNo		number(5) not null,
		jobTitle	varchar2(100) not null,
		jobContent	clob null,
		jobDate		date null,
		jobName		varchar2(50) null
	);
	alter table jobinfo add primary key(jobNo);
-- 취업후기 게시판
	create table jobafter(
		jafNo		number(5) not null,
		jafTitle	varchar2(100) not null,
		jafContent	clob null,
		jafDate		date null,
		jafName		varchar2(50) null
	);
	alter table jobafter add primary key(jafNo);