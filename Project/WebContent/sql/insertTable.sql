--자유롭게 추가해주세요!-----------
-- 변경 된 사항
-- authority(권한) 추가
-- studyCur 추가
-- curNo : 커리큘럼 번호, curName : 커리뮬럼 이름, curLocation : 교육장소, curDateS : 교육시작날짜, curDateE : 교육 종료날짜, curSupply : 교육인원
-- 강의실 테이블의 roomno는 시퀀스가 아닌 일반 값을 사용 할 것, curno와 tchno 널값 허용되게 변경
-- register 추가/방아름

----------------------------------------
-- 변경해야 할 사항
-- 멤버 테이블에 가입일 컬럼 추가하는게 좋을듯
-- 행정부 컬럼명 변경(management)
------------------------------------------
insert into authority (authNo, departName) values (0, '일반유저');
insert into authority (authNo, departName) values (1, '행정부');
insert into authority (authNo, departName) values (2, '영업부');
insert into authority (authNo, departName) values (3, '강사');
insert into authority (authNo, departName) values (4, '학생');
insert into authority (authNo, departName) values (5, '수료자');
insert into authority (authNo, departName) values (9, '관리자');

--회원 추가
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno) values (mem_seq.nextval, 1, 'korean', '한국인', '우리집', 'korea@korea.com', '000-0000-000', 1);
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno) values (mem_seq.nextval, 1, 'korean2', '한국인2', '우리집2', 'korea@korea.com2', '000-0000-0002', 1);
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno) values (mem_seq.nextval, 'admin', 'admin', 'admin', 'address', 'email', 'phone', 9);

insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno) values (mem_seq.nextval, 'kimnormal', 'kim', '김일반', '김일반의 집', 'kimnormal@naver.com', '
010-2599-8765', 0);
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno) values (mem_seq.nextval, 'kimdaeri', 'kim', '김대리', '김대리의 집', 'kimdaeri@gmail.com', '01
0-1633-7511', 1);
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno) values (mem_seq.nextval, 'kimsales', 'kim', '김영업', '김영업의 집', 'kimsales@gmail.com', '01
0-7544-9984', 2);
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno) values (mem_seq.nextval, 'kimteacher', 'kim', '김선생', '김선생의 집', 'kimteacher@gmail.com',
 '010-1599-7878', 3);
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno) values (mem_seq.nextval, 'kimstudent', 'kim', '김학생', '김학생의 집', 'kimstudent@gmail.com',
 '010-2468-7852', 4);
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno) values (mem_seq.nextval, 'kimgraduate', 'kim', '김졸업', '김졸업의 집', 'kimgraduate@gmail.com
', '010-3211-6123', 5);
insert into member values (mem_seq.nextval, 1, 'korean', '한국인', '우리집', 'korea@korea.com', '000-0000-000', 1);
insert into member values (mem_seq.nextval, 1, 'korean2', '한국인2', '우리집2', 'korea@korea.com2', '000-0000-0002', 1);
insert into member values (mem_seq.nextval, 'admin', 'admin', 'admin', 'address', 'email', 'phone', 9);
--권한 테이블
insert into authority (authNo, departName) values (0, '일반유저');
insert into authority (authNo, departName) values (1, '행정부');
insert into authority (authNo, departName) values (2, '영업부');
insert into authority (authNo, departName) values (3, '강사');
insert into authority (authNo, departName) values (4, '학생');
insert into authority (authNo, departName) values (5, '수료자');
insert into authority (authNo, departName) values (9, '관리자');

--회원 추가
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno,MEMGENDER,EMAILAGREE) values (mem_seq.nextval, 'test1', 'korean', '한국인', '대한민국이 다 내집', 'korea@korea.com', '000-0000-000', 1,'여자','Y');
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno,MEMGENDER,EMAILAGREE) values (mem_seq.nextval, 'test2', 'korean2', '한국인2', '대한민국이 다 내집', 'korea@korea.com2', '000-0000-0002', 1,'여자','N');
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno,MEMGENDER,EMAILAGREE) values (mem_seq.nextval, 'test3', 'korean3', '한국인3', '대한민국이 다 내집', 'korea@korea.com3', '000-0000-0003', 1,'여자','N');
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno,MEMGENDER,EMAILAGREE) values (mem_seq.nextval, 'test4', 'korean4', '한국인4', '대한민국이 다 내집', 'korea@korea.com4', '000-0000-0004', 1,'여자','Y');
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno,MEMGENDER,EMAILAGREE) values (mem_seq.nextval, 'admin', 'admin', 'admin', 'address', 'email', 'phone', 9,'남자','Y');

insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno, memtel, emailagree, memgender, joinday) values (mem_seq.nextval, 'kimnormal', 'kim', '김일반', '김일반의 집', 'kimnormal@naver.com', '010-2599-8765', 0, '02-2345-6789','y','남자','16/01/01');
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno, memtel, emailagree, memgender, joinday) values (mem_seq.nextval, 'kimdaeri', 'kim', '김대리', '김대리의 집', 'kimdaeri@gmail.com', '010-1633-7511', 1, '02-3456-7890','y','여자','16/02/01');
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno, memtel, emailagree, memgender, joinday) values (mem_seq.nextval, 'kimsales', 'kim', '김영업', '김영업의 집', 'kimsales@gmail.com', '010-7544-9984', 2, '02-4567-8901','y','남자','16/03/01');
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno, memtel, emailagree, memgender, joinday) values (mem_seq.nextval, 'kimteacher', 'kim', '김선생', '김선생의 집', 'kimteacher@gmail.com', '010-1599-7878', 3, '02-5678-9012','y','여자','16/04/01');
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno, memtel, emailagree, memgender, joinday) values (mem_seq.nextval, 'kimstudent', 'kim', '김학생', '김학생의 집', 'kimstudent@gmail.com', '010-2468-7852', 4, '02-6789-0123','y','남자','16/05/01');
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno, memtel, emailagree, memgender, joinday) values (mem_seq.nextval, 'kimgraduate', 'kim', '김졸업', '김졸업의 집', 'kimgraduate@gmail.com', '010-3211-6123', 5, '02-7890-1234','y','여자','16/06/01');

insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno, MEMGENDER, EMAILAGREE, memtel, joinday) values (mem_seq.nextval, 'student1', 'student', '학생1', '학생1의 집', 'student1@naver.com', '010-1616-1265', 4, '남자', 'N', '031-6536-4884', sysdate);
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno, MEMGENDER, EMAILAGREE, memtel, joinday) values (mem_seq.nextval, 'student2', 'student', '학생2', '학생2의 집', 'student2@naver.com', '010-2455-3133', 4, '여자', 'N', '031-5345-5765', sysdate);
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno, MEMGENDER, EMAILAGREE, memtel, joinday) values (mem_seq.nextval, 'student3', 'student', '학생3', '학생3의 집', 'student3@naver.com', '010-3213-4637', 4, '여자', 'Y', '02-4355-8877', sysdate);
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno, MEMGENDER, EMAILAGREE, memtel, joinday) values (mem_seq.nextval, 'student4', 'student', '학생4', '학생4의 집', 'student4@naver.com', '010-7676-7221', 4, '남자', 'N', '02-2334-1122', sysdate);
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno, MEMGENDER, EMAILAGREE, memtel, joinday) values (mem_seq.nextval, 'student5', 'student', '학생5', '학생5의 집', 'student5@naver.com', '010-7990-1557', 4, '남자', 'Y', '02-5345-1231', sysdate);

--행정부 추가
insert into management (admno, memno) values (adm_seq.nextval, '1');
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno,MEMGENDER,EMAILAGREE) values (mem_seq.nextval, 'kimnormal', 'kim', '김일반', '김일반의 집', 'kimnormal@naver.com', '
010-2599-8765', 0,'남자','N');
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno,MEMGENDER,EMAILAGREE) values (mem_seq.nextval, 'kimdaeri', 'kim', '김대리', '김대리의 집', 'kimdaeri@gmail.com', '01
0-1633-7511', 1,'남자','Y');
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno,MEMGENDER,EMAILAGREE) values (mem_seq.nextval, 'kimsales', 'kim', '김영업', '김영업의 집', 'kimsales@gmail.com', '01
0-7544-9984', 2,'남자','Y');
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno,MEMGENDER,EMAILAGREE) values (mem_seq.nextval, 'kimteacher', 'kim', '김선생', '김선생의 집', 'kimteacher@gmail.com',
 '010-1599-7878', 3,'남자','N');
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno,MEMGENDER,EMAILAGREE) values (mem_seq.nextval, 'kimstudent', 'kim', '김학생', '김학생의 집', 'kimstudent@gmail.com',
 '010-2468-7852', 4,'남자','N');
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno,MEMGENDER,EMAILAGREE) values (mem_seq.nextval, 'kimgraduate', 'kim', '김졸업', '김졸업의 집', 'kimgraduate@gmail.com
', '010-3211-6123', 5,'남자','Y');

--행정부 추가 (admNo,admName,memNo 순)
insert into admin values (adm_seq.nextval, 'admin', '1');

--학생 추가 (stuNo,memNo,roomNo 순)
insert into student (stuno, memno, roomno) values (stu_seq.nextval, 20, 2);
insert into admin values (adm_seq.nextval, 'admin', '1');

--학생 추가 (stuNo,memNo,roomNo 순)
insert into student values (stu_seq.nextval, 1, 1);
insert into student (stuno, memno, roomno) values (stu_seq.nextval, 2, 2);

--강사 추가
insert into teacher (tchno, tchname, memno) values (TCH_SEQ.nextval, '김선생', 21);
insert into teacher values (tch_seq.nextval, 2, '한국인');
insert into teacher (tchno, tchname, memno) values (TCH_SEQ.nextval, '김선생', 19);
insert into teacher values (tch_seq.nextval,'한국인',1);

--강의실 추가 (roomNo,curNo,tchNo 순)
insert into sturoom (roomno, tchno, curno) values (room_seq.nextval, 2, null);
insert into sturoom (roomno, tchno, curno) values (room_seq.nextval, 2, null);
insert into sturoom (roomno, tchno, curno) values (room_seq.nextval, 2, null);
insert into sturoom values (room_seq.nextval, null, null);

--강의실 추가 (roomNo,curNo,tchNo 순)
insert into sturoom (roomno, tchno, curno) values (1, 2, 1);
insert into sturoom (roomno, tchno, curno) values (2, 2, 2);
insert into sturoom (roomno, tchno, curno) values (3, 2, 3);
insert into sturoom values (room_seq.nextval, null, 2);
insert into sturoom values (room_seq.nextval, null, null);


--커리큘럼 추가 (curNo, curName, curLocation, curDate, curSupply 순)
insert into curriculum (curno, curname, curlocation, curdate, cursupply) values (cur_seq.nextval, '전자정부프레임워크', '1강의실', '2016-04-01', '20');
insert into curriculum (curno, curname, curlocation, curdate, cursupply) values (cur_seq.nextval, '전자정부프레임워크', '2강의실', '2016-05-01', '20');
insert into curriculum (curno, curname, curlocation, curdate, cursupply) values (cur_seq.nextval, '전자정부프레임워크', '3강의실', '2016-06-01', '20');
insert into curriculum values (cur_seq.nextval, '전자정부프레임워크', '1강의실', '2016/04/01',20);
insert into curriculum values (cur_seq.nextval, '한국인프레임워크', '2강의실', '2016/04/01',20);
insert into curriculum values (cur_seq.nextval, '자바개발자과정', '3강의실', '2016/05/01',20);

--영업부 추가
insert into sales (salesno, memno) values (sal_seq.nextval, 18);

--성적 추가
insert into grade (grdno, stuno, roomno, javagrade, webgrade, framegrade) values (grd_seq.nextval, 4, 2, 90, 85, 65);

--수강신청자 추가 (regNo,memNo,file1,file2,name,email,tel,gubun,job,jobinfo,time,pay,content,password 순)
insert into register (regNo,memNo) values (reg_seq.nextval,1);
insert into register (regNo,memNo,name,email,tel) values (reg_seq.nextval,13,'한국인','korea@korea.com','000-0000-000');


-- 한국인 더미데이터--
-- member
select * from member order by memno;
insert into member values (mem_seq.nextval, 'a', 'a', '학생1', '김일반의 집', 'kimnormal@naver.com', '010-2599-8765', 4);
insert into member values (mem_seq.nextval, 'a', 'a', '학생2', '김일반의 집', 'kimnormal@naver.com', '010-2599-8765', 4);
insert into member values (mem_seq.nextval, 'a', 'a', '학생3', '김일반의 집', 'kimnormal@naver.com', '010-2599-8765', 4);
insert into member values (mem_seq.nextval, 'a', 'a', '학생4', '김일반의 집', 'kimnormal@naver.com', '010-2599-8765', 4);
insert into member values (mem_seq.nextval, 'a', 'a', '학생5', '김일반의 집', 'kimnormal@naver.com', '010-2599-8765', 4);

insert into member values (mem_seq.nextval, 'b', 'b', '선생1', '김일반의 집', 'kimnormal@naver.com', '010-2599-8765', 3);
-- teacher
insert into teacher (tchno, tchname, memno) values (TCH_SEQ.nextval, '김선생', 6);
-- curriculum
insert into curriculum (curno, curname, curlocation, curdate, cursupply) values (cur_seq.nextval, '전자정부프레임워크', '1강의실', '2016-04-01', '20');
-- stuRoom
insert into sturoom (roomno, tchno, curno) values (1, 1, 1);
-- student
insert into student (stuno, memno, roomno) values (stu_seq.nextval, 1, 1);
insert into student (stuno, memno, roomno) values (stu_seq.nextval, 2, 1);
insert into student (stuno, memno, roomno) values (stu_seq.nextval, 3, 1);
insert into student (stuno, memno, roomno) values (stu_seq.nextval, 4, 1);
insert into student (stuno, memno, roomno) values (stu_seq.nextval, 5, 1);

--insert into attendValue values (atv_seq.nextval, '2016-05-01', '출석');

-- 한국인 더미데이터 끝 --

--실험은 여기서 하세요---------------
select * from studyCur;
--실험은 여기서 하세요---------------
select * from curriculum;
select * from sturoom;
select * from register;
select * from student;
select * from member;
select * from management;
select * from sales;
select * from teacher;
select curDateS, last_day(curDateS) from studyCur;
select TEACHER.tchno, TEACHER.tchname, STUROOM.roomno from TEACHER, STUROOM;
select * from register where file1 is not null and file2 is not null;
SELECT MEMNO, AUTHNO, MEMNAME, MEMGENDER, MEMPHONE, MEMTEL, MEMADDRESS, MEMEMAIL, EMAILAGREE, JOINDAY, MEMPW FROM MEMBER WHERE MEMID='korean4';
update sturoom set tchno = 21 where roomno = 2;

select t.tchName from member m, teacher t where m.memno = t.memno and m.memid='b';

select * from member;
update register set curNo=4 where curNo is null;

SELECT student.stuno, student.roomno, member.memname from student, member where STUDENT.MEMNO = MEMBER.MEMNO;
update teacher set roomno = null where tchno = 1;

select r.roomNo from stuRoom r, teacher t where 
r.tchNo = (select t.tchNo from member m, teacher t where m.memno = t.memno and m.memid='b');

--끝난 실험은 삭제할 것!----------------
