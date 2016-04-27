
CREATE TABLE admin
(
   memNo                 NUMBER(5)  NOT NULL ,
   admNo                 NUMBER(5)  NOT NULL ,
   admName               VARCHAR2(30)  NULL 
);



CREATE UNIQUE INDEX XPK행정부 ON admin
(admNo  ASC);



ALTER TABLE admin
   ADD CONSTRAINT  XPK행정부 PRIMARY KEY (admNo);



CREATE TABLE attend
(
   attdValue             VARCHAR2(10)  NULL ,
   attdDate              DATE  NULL ,
   stuNo                 NUMBER(10)  NOT NULL ,
   attdNo                NUMBER(5)  NOT NULL 
);



CREATE UNIQUE INDEX XPK출결 ON attend
(attdNo  ASC);



ALTER TABLE attend
   ADD CONSTRAINT  XPK출결 PRIMARY KEY (attdNo);



CREATE TABLE authority
(
   departName            VARCHAR2(30)  NULL ,
   authNo                NUMBER(2)  NOT NULL 
);



CREATE UNIQUE INDEX XPK권한 ON authority
(authNo  ASC);



ALTER TABLE authority
   ADD CONSTRAINT  XPK권한 PRIMARY KEY (authNo);



CREATE TABLE grade
(
   javaGrade             NUMBER(3)  NULL ,
   webGrade              NUMBER(3)  NULL ,
   frameGrade            NUMBER(3)  NULL ,
   roomNo                NUMBER(5)  NOT NULL ,
   stuNo                 NUMBER(10)  NOT NULL ,
   grdNo                 NUMBER(10)  NOT NULL 
);



CREATE UNIQUE INDEX XPK성적 ON grade
(grdNo  ASC);



ALTER TABLE grade
   ADD CONSTRAINT  XPK성적 PRIMARY KEY (grdNo);



CREATE TABLE member
(
   memId                 VARCHAR2(30)  NULL ,
   memName               VARCHAR2(30)  NULL ,
   memPw                 VARCHAR2(30)  NULL ,
   memAddress            VARCHAR2(100)  NULL ,
   memEmail              VARCHAR2(100)  NULL ,
   memPhone              NUMBER(10)  NULL ,
   memNo                 NUMBER(5)  NOT NULL ,
   authNo                NUMBER(2)  NOT NULL 
);



CREATE UNIQUE INDEX XPK회원 ON member
(memNo  ASC);



ALTER TABLE member
   ADD CONSTRAINT  XPK회원 PRIMARY KEY (memNo);



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

   

CREATE TABLE REGISTER
(
   memNo                 NUMBER(5)  NOT NULL ,
   submitValue           VARCHAR2(10)  NULL ,
   regNo                 NUMBER(5)  NOT NULL,
   NAME              VARCHAR2(10) NOT NULL,
   EMAIL              VARCHAR2(10) NOT NULL,
   TEL                 NUMBER(12) NOT NULL,
   GUBUN              VARCHAR2(20) NOT NULL,
   JOB                 VARCHAR2(30) NOT NULL,
   JOBINFO              VARCHAR2(80) NOT NULL,
   TIME              VARCHAR2(10) NOT NULL,
   PAY                 VARCHAR2(10) NOT NULL,
   CONTENT              VARCHAR2(80) NOT NULL,
   PASSWORD           VARCHAR2(30) NOT NULL
);



CREATE UNIQUE INDEX XPK수강신청대기 ON REGISTER
(readyNo  ASC);



ALTER TABLE REGISTER
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



ALTER TABLE register
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
   