---------------------------------------------------------------------------------------------
--테이블 삭제
drop table attend CASCADE CONSTRAINT purge;

drop table grade CASCADE CONSTRAINT purge;

drop table sales CASCADE CONSTRAINT purge;

drop table student CASCADE CONSTRAINT purge;

drop table sturoom CASCADE CONSTRAINT purge;

drop table teacher CASCADE CONSTRAINT purge;

drop table register CASCADE CONSTRAINT purge;

drop table member CASCADE CONSTRAINT purge;

drop table qna CASCADE CONSTRAINT purge;

drop table management CASCADE CONSTRAINT purge;

drop table after CASCADE CONSTRAINT purge;

drop table curriculum CASCADE CONSTRAINT purge;

drop table authority CASCADE CONSTRAINT purge;

drop table jobinfo CASCADE CONSTRAINT purge;

drop table jobafter CASCADE CONSTRAINT purge;

drop table notice CASCADE CONSTRAINT purge;

purge recyclebin;

---------------------------------------------------------------------------------------------
--테이블 생성

-- 한국인 attend 테이블 수정 stuNo 컬럼 추가
CREATE TABLE attend
(
	attdNo                NUMBER(5)  NOT NULL ,
	attdDate              DATE  NULL,
	stuNo					NUMBER(5) NULL
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


-- 한국인 : student 테이블 수정 attdNo 컬럼 삭제
CREATE TABLE student
(
	stuNo                 NUMBER(10)  NOT NULL ,
	memNo                 NUMBER(5)  NULL ,
	roomNo                NUMBER(5)  NULL
);

ALTER TABLE student
	ADD  PRIMARY KEY (stuNo);


-- 한국인 attend, student 테이블 간의 참조 수정
ALTER TABLE attend
	ADD ( FOREIGN KEY (stuno) REFERENCES student(stuno) ON DELETE SET NULL);

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
	roomNo            NUMBER(5) NULL
);


ALTER TABLE teacher
	ADD  PRIMARY KEY (tchNo);
	
ALTER TABLE teacher
	ADD ( FOREIGN KEY (roomNo) REFERENCES sturoom(roomNo) ON DELETE SET NULL);
	
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

-------------------------------------------------------------------------------
-- 시퀀스 삭제 --

drop SEQUENCE mng_seq;

drop SEQUENCE attd_seq;	

drop SEQUENCE grd_seq;

drop SEQUENCE mem_seq;

drop SEQUENCE reg_seq;

drop SEQUENCE sal_seq;

drop SEQUENCE stu_seq;

drop SEQUENCE cur_seq;

drop SEQUENCE room_seq;

drop SEQUENCE tch_seq;

drop SEQUENCE not_seq;
drop SEQUENCE qna_seq;
drop SEQUENCE aft_seq;
drop SEQUENCE job_seq;
drop SEQUENCE jaf_seq;

-------------------------------------------------------------------------------
-- 시퀀스 생성 --

CREATE SEQUENCE mng_seq start with 1 increment by 1 maxvalue 1000;

CREATE SEQUENCE attd_seq start with 1 increment by 1 maxvalue 1000;	

CREATE SEQUENCE grd_seq start with 1 increment by 1 maxvalue 1000;

CREATE SEQUENCE mem_seq start with 2 increment by 1 maxvalue 1000;

CREATE SEQUENCE reg_seq start with 1 increment by 1 maxvalue 1000;

CREATE SEQUENCE sal_seq start with 1 increment by 1 maxvalue 1000;

CREATE SEQUENCE stu_seq start with 1 increment by 1 maxvalue 1000;

CREATE SEQUENCE cur_seq start with 1 increment by 1 maxvalue 1000;

CREATE SEQUENCE room_seq start with 1 increment by 1 maxvalue 1000;

CREATE SEQUENCE tch_seq start with 1 increment by 1 maxvalue 1000;

-- 공지사항 시퀸스
CREATE SEQUENCE not_seq start with 1 increment by 1 maxvalue 1000;
-- 문의게시판 시퀸스
CREATE SEQUENCE qna_seq start with 1 increment by 1 maxvalue 1000;
-- 수강후기 시퀸스
CREATE SEQUENCE aft_seq start with 1 increment by 1 maxvalue 1000;
-- 채용정보 시퀸스
CREATE SEQUENCE job_seq start with 1 increment by 1 maxvalue 1000;
-- 취업 후기 시퀸스
CREATE SEQUENCE jaf_seq start with 1 increment by 1 maxvalue 1000;

-------------------------------------------------------------------------------
--권한 더미
insert into authority (authNo, departName) values (0, '일반유저');
insert into authority (authNo, departName) values (1, '행정부');
insert into authority (authNo, departName) values (2, '영업부');
insert into authority (authNo, departName) values (3, '강사');
insert into authority (authNo, departName) values (4, '학생');
insert into authority (authNo, departName) values (5, '수료자');
insert into authority (authNo, departName) values (9, '관리자');
--admin 더미
insert into MEMBER values(1, 'admin', 'admin', '관리자','03721, 서울 서대문구 봉원사2길 10-2 (신촌동) ㄴㅇㄹ','korea1@naver.com','010-0000-0000','02-0000-0000', '남자','n',sysdate,9);
--회원 더미
insert into MEMBER values(mem_seq.nextval, 'a1111111', 'korean1', '한국인1','03721, 서울 서대문구 봉원사2길 10-2 (신촌동) ㄴㅇㄹ','korea1@naver.com','010-0000-0000','02-0000-0000', '남자','n',sysdate,1);
insert into MEMBER values(mem_seq.nextval, 'a1111111', 'korean2', '한국인2','03721, 서울 서대문구 봉원사2길 10-2 (신촌동) ㄴㅇㄹ','korea2@naver.com','010-0000-0000','02-0000-0000', '남자','n',sysdate,2);
insert into MEMBER values(mem_seq.nextval, 'a1111111', 'korean3', '한국인3','03721, 서울 서대문구 봉원사2길 10-2 (신촌동) ㄴㅇㄹ','korea3@naver.com','010-0000-0000','02-0000-0000', '남자','n',sysdate,3);
insert into MEMBER values(mem_seq.nextval, 'a1111111', 'korean4', '한국인4','03721, 서울 서대문구 봉원사2길 10-2 (신촌동) ㄴㅇㄹ','korea4@naver.com','010-0000-0000','02-0000-0000', '남자','n',sysdate,3);
insert into MEMBER values(mem_seq.nextval, 'a1111111', 'korean5', '한국인5','03721, 서울 서대문구 봉원사2길 10-2 (신촌동) ㄴㅇㄹ','korea5@naver.com','010-0000-0000','02-0000-0000', '남자','n',sysdate,3);
insert into MEMBER values(mem_seq.nextval, 'a1111111', 'korean6', '한국인6','03721, 서울 서대문구 봉원사2길 10-2 (신촌동) ㄴㅇㄹ','korea5@naver.com','010-0000-0000','02-0000-0000', '남자','n',sysdate,4);
insert into MEMBER values(mem_seq.nextval, 'a1111111', 'korean7', '한국인7','03721, 서울 서대문구 봉원사2길 10-2 (신촌동) ㄴㅇㄹ','korea5@naver.com','010-0000-0000','02-0000-0000', '남자','n',sysdate,4);
insert into MEMBER values(mem_seq.nextval, 'a1111111', 'korean8', '한국인8','03721, 서울 서대문구 봉원사2길 10-2 (신촌동) ㄴㅇㄹ','korea5@naver.com','010-0000-0000','02-0000-0000', '남자','n',sysdate,4);
insert into MEMBER values(mem_seq.nextval, 'a1111111', 'korean9', '한국인9','03721, 서울 서대문구 봉원사2길 10-2 (신촌동) ㄴㅇㄹ','korea5@naver.com','010-0000-0000','02-0000-0000', '남자','n',sysdate,4);
insert into MEMBER values(mem_seq.nextval, 'a1111111', 'korean10', '한국인10','03721, 서울 서대문구 봉원사2길 10-2 (신촌동) ㄴㅇㄹ','korea5@naver.com','010-0000-0000','02-0000-0000', '남자','n',sysdate,4);
insert into MEMBER values(mem_seq.nextval, 'a1111111', 'korean11', '한국인11','03721, 서울 서대문구 봉원사2길 10-2 (신촌동) ㄴㅇㄹ','korea5@naver.com','010-0000-0000','02-0000-0000', '남자','n',sysdate,4);
--행정부 더미
insert into MANAGEMENT values(mng_seq.nextval, 2);
--영업부 더미
insert into sales values(sal_seq.nextval, 3);
--강사 더미
insert into teacher values(tch_seq.nextval,4,null);
insert into teacher values(tch_seq.nextval,5,null);
insert into teacher values(tch_seq.nextval,6,null);
--학생 더미
-- 한국인 : 학생 테이블의 attdNo컬럼을 뺌
insert into student values(stu_seq.nextval,7,null);
insert into student values(stu_seq.nextval,8,null);
insert into student values(stu_seq.nextval,9,null);
insert into student values(stu_seq.nextval,10,null);
insert into student values(stu_seq.nextval,11,null);
insert into student values(stu_seq.nextval,12,null);
