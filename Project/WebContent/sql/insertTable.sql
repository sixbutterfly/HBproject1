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

--행정부 추가 (admNo,admName,memNo 순)
insert into admin values (adm_seq.nextval, 'admin', '1');

--학생 추가 (stuNo,memNo,roomNo 순)
insert into student (stuno, memno, roomno) values (stu_seq.nextval, 20, 2);
insert into student values (stu_seq.nextval, 1, 1);

--강사 추가
insert into teacher (tchno, tchname, memno) values (TCH_SEQ.nextval, '김선생', 21);
insert into teacher values (tch_seq.nextval, 2, '한국인');

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
select * from sturoom;
select * from register;
select * from student;
select * from member;
select curDateS, last_day(curDateS) from studyCur;
select TEACHER.tchno, TEACHER.tchname, STUROOM.roomno from TEACHER, STUROOM;

update sturoom set tchno = 21 where roomno = 2;

select t.tchName from member m, teacher t where m.memno = t.memno and m.memid='b';

select * from member;

select r.roomNo from stuRoom r, teacher t where 
r.tchNo = (select t.tchNo from member m, teacher t where m.memno = t.memno and m.memid='b');

--끝난 실험은 삭제할 것!----------------


