CREATE TABLE mangement
(
	admNo                 NUMBER(5)  NOT NULL ,
	memNo                 NUMBER(5)  NOT NULL 
);
---- 변경사항 ------------------------------------------------------------------------
---- 테이블명 수정(signUpReady -> register) 수강대기
---- not null 적용 해제
---- 테이블명 수정(admin -> management, studyCur -> curriculum) 행정부와 커리큘럼
--한국인 디짐
---- ----------------------------------------------------------------------------------


CREATE TABLE attend
(
	attdNo                NUMBER(5)  NOT NULL ,
	stuNo                 NUMBER(10)  NULL ,
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
	memPw                 VARCHAR2(30)  NULL ,
	memId                 VARCHAR2(30)  NULL ,
	memName               VARCHAR2(30)  NULL ,
	memAddress            VARCHAR2(100)  NULL ,
	memEmail              VARCHAR2(100)  NULL ,
	memPhone              VARCHAR2(20)  NULL ,
	joinDate              DATE  NULL ,
	authNo                NUMBER(2)  NULL 
);



ALTER TABLE member
	ADD  PRIMARY KEY (memNo);



CREATE TABLE register
(
	regNo                 NUMBER(5)  NOT NULL ,
	memNo                 NUMBER(5)  NULL ,
	submitValue           VARCHAR2(10)  NULL ,
	name                  VARCHAR2(30)  NULL ,
	email                 VARCHAR2(50)  NULL ,
	tel                   VARCHAR2(20)  NULL ,
	gubun                 VARCHAR2(20)  NULL ,
	job                   VARCHAR2(30)  NULL ,
	jobinfo               VARCHAR2(300)  NULL ,
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
	memNo                 NUMBER(5)  NULL 
);



ALTER TABLE sales
	ADD  PRIMARY KEY (salesNo);



CREATE TABLE student
(
	stuNo                 NUMBER(10)  NOT NULL ,
	memNo                 NUMBER(5)  NULL ,
	roomNo                NUMBER(5)  NULL 
);



ALTER TABLE student
	ADD  PRIMARY KEY (stuNo);



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
	memNo                 NUMBER(5)  NULL 
);



ALTER TABLE teacher
	ADD  PRIMARY KEY (tchNo);



ALTER TABLE attend
	ADD ( FOREIGN KEY (stuNo) REFERENCES student(stuNo) ON DELETE SET NULL);



ALTER TABLE grade
	ADD ( FOREIGN KEY (roomNo) REFERENCES stuRoom(roomNo) ON DELETE SET NULL);



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




--ADD ( FOREIGN KEY (memNo) REFERENCES member(memNo));

---------------------------------------------------------------------------------------------
-- 컬럼 변경
-- alter table 테이블명 rename column 컬럼명 to 바꿀컬럼명;
-- 컬럼 추가
-- alter table 테이블명 add(컬럼명 데이터타입());
--한국인 디짐
---------------------------------------------------------------------------------------------
ALTER TABLE teacher
	ADD ( FOREIGN KEY (memNo) REFERENCES member(memNo) ON DELETE SET NULL);
	
