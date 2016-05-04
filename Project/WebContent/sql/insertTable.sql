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

insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno, memtel, emailagree, memgender, joinday) values (mem_seq.nextval, 'kimnormal', 'kim', '���Ϲ�', '���Ϲ��� ��', 'kimnormal@naver.com', '
010-2599-8765', 0, '02-2345-6789','y','����','16/01/01');
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno, memtel, emailagree, memgender, joinday) values (mem_seq.nextval, 'kimdaeri', 'kim', '��븮', '��븮�� ��', 'kimdaeri@gmail.com', '01
0-1633-7511', 1, '02-3456-7890','y','����','16/02/01');
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno, memtel, emailagree, memgender, joinday) values (mem_seq.nextval, 'kimsales', 'kim', '�迵��', '�迵���� ��', 'kimsales@gmail.com', '01
0-7544-9984', 2, '02-4567-8901','y','����','16/03/01');
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno, memtel, emailagree, memgender, joinday) values (mem_seq.nextval, 'kimteacher', 'kim', '�輱��', '�輱���� ��', 'kimteacher@gmail.com',
 '010-1599-7878', 3, '02-5678-9012','y','����','16/04/01');
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno, memtel, emailagree, memgender, joinday) values (mem_seq.nextval, 'kimstudent', 'kim', '���л�', '���л��� ��', 'kimstudent@gmail.com',
 '010-2468-7852', 4, '02-6789-0123','y','����','16/05/01');
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno, memtel, emailagree, memgender, joinday) values (mem_seq.nextval, 'kimgraduate', 'kim', '������', '�������� ��', 'kimgraduate@gmail.com
', '010-3211-6123', 5, '02-7890-1234','y','����','16/06/01');

insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno,MEMGENDER,EMAILAGREE) values (mem_seq.nextval, 'kimnormal', 'kim', '���Ϲ�', '���Ϲ��� ��', 'kimnormal@naver.com', '
010-2599-8765', 0,'����','N');
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno,MEMGENDER,EMAILAGREE) values (mem_seq.nextval, 'kimdaeri', 'kim', '��븮', '��븮�� ��', 'kimdaeri@gmail.com', '01
0-1633-7511', 1,'����','Y');
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno,MEMGENDER,EMAILAGREE) values (mem_seq.nextval, 'kimsales', 'kim', '�迵��', '�迵���� ��', 'kimsales@gmail.com', '01
0-7544-9984', 2,'����','Y');
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno,MEMGENDER,EMAILAGREE) values (mem_seq.nextval, 'kimteacher', 'kim', '�輱��', '�輱���� ��', 'kimteacher@gmail.com',
 '010-1599-7878', 3,'����','N');
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno,MEMGENDER,EMAILAGREE) values (mem_seq.nextval, 'kimstudent', 'kim', '���л�', '���л��� ��', 'kimstudent@gmail.com',
 '010-2468-7852', 4,'����','N');
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno,MEMGENDER,EMAILAGREE) values (mem_seq.nextval, 'kimgraduate', 'kim', '������', '�������� ��', 'kimgraduate@gmail.com
', '010-3211-6123', 5,'����','Y');
>>>>>>> branch '최재호' of https://github.com/sixbutterfly/HBproject1.git

--행정부 추가
insert into management (mngno, memno) values (adm_seq.nextval, '1');
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
<<<<<<< HEAD
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
insert into sturoom (roomno, tchno, curno) values (room_seq.nextval, null, null);


--커리큘럼 추가 (curNo, curName, curLocation, curDate, curSupply 순)
insert into curriculum (curno, curname, curlocation, curdate, cursupply) values (cur_seq.nextval, '전자정부프레임워크', '1강의실', '2016/04/01',20);
insert into curriculum (curno, curname, curlocation, curdate, cursupply) values (cur_seq.nextval, '한국인프레임워크', '2강의실', '2016/04/01',20);
insert into curriculum (curno, curname, curlocation, curdate, cursupply) values (cur_seq.nextval, '자바개발자과정', '3강의실', '2016/05/01',20);

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
delete from member where memno is not null;
delete from REGISTER where memno is null;
delete from student where memno is null;
--끝난 실험은 삭제할 것!----------------

-- 더미데이터 한국인 시작 --
insert into attend ('attdNo', 'attdValue1', 'attdValue2', 'attdValue3', 'attdValue4', 'attdValue5', 'attdValue6', 'attdValue7', 'attdValue8', 'attdValue9',
'attdValue10', 'attdValue11', 'attdValue12', 'attdValue13', 'attdValue14', 'attdValue15', 'attdValue16', 'attdValue17', 'attdValue18', 'attdValue19',
'attdValue20', 'attdValue21', 'attdValue22', 'attdValue23', 'attdValue24', 'attdValue25', 'attdValue26', 'attdValue27', 'attdValue28', 'attdValue29',
'attdValue30', 'attdValue31', 'attdDate') 

insert into attend (attdNo) values (1);
insert into attend (attdNo) values (2);
insert into attend (attdNo) values (3);
insert into attend (attdNo) values (4);
insert into attend (attdNo) values (5);
insert into attend (attdNo) values (6);
insert into attend (attdNo) values (7);
insert into attend (attdNo) values (8);
insert into attend (attdNo) values (9);
insert into attend (attdNo) values (10);
insert into attend (attdNo) values (11);
insert into attend (attdNo) values (12);
insert into attend (attdNo) values (13);
insert into attend (attdNo) values (14);
insert into attend (attdNo) values (15);
insert into attend (attdNo) values (16);
insert into attend (attdNo) values (17);
insert into attend (attdNo) values (18);
insert into attend (attdNo) values (19);
insert into attend (attdNo) values (20);
-- 한국인 더미데이터  끝 ---


update attend set attdValue+'' = ? where attdNo = ?

select * from attend;

update attend set attdValue2 = '결석' where attdNo = 2;
update attend set attdValue2 = '' where attdNo = 2;

"update attend set attdValue"+ day + " = '" + attdStatus + "' where attdNo" 
				+	" in (" + attdNo1 + "," + attdNo2 + "," +  attdNo3 + "," + attdNo4 + "," + attdNo5 + ")";
				
update attend set attdValue3 = '조퇴' where attdNo = 2;
				 


						     
						     