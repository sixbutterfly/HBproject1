--권한
insert into authority (authNo, departName) values (0, '일반유저');
insert into authority (authNo, departName) values (1, '행정부');
insert into authority (authNo, departName) values (2, '영업부');
insert into authority (authNo, departName) values (3, '강사');
insert into authority (authNo, departName) values (4, '학생');
insert into authority (authNo, departName) values (5, '수료자');
insert into authority (authNo, departName) values (9, '관리자');

--admin
insert into MEMBER values(1, 'admin', 'admin', '관리자','03721, 서울 서대문구 봉원사2길 10-2 (신촌동) ㄴㅇㄹ','korea1@naver.com','010-0000-0000','02-0000-0000', '남자','n',sysdate,9);
--회원
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

--행정부
insert into MANAGEMENT values(mng_seq.nextval, 2);



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

insert into attend (attdNo,stuNo) values (1, 1);
insert into attend (attdNo,stuNo) values (2, 2);
insert into attend (attdNo,stuNo) values (3, 3);
insert into attend (attdNo,stuNo) values (4, 4);
insert into attend (attdNo,stuNo) values (5, 5);
insert into attend (attdNo,stuNo) values (6, 6);

delete from attend where stuNo = 1;
delete from attend where stuNo = 2;
delete from attend where stuNo = 3;
delete from attend where stuNo = 4;
delete from attend where stuNo = 5;
delete from attend where stuNo = 6;

update attend set attdValue+'' = ? where attdNo = ?

select * from attend;

update attend set attdValue2 = '결석' where attdNo = 2;
update attend set attdValue2 = '' where attdNo = 2;

"update attend set attdValue"+ day + " = '" + attdStatus + "' where attdNo" 
				+	" in (" + attdNo1 + "," + attdNo2 + "," +  attdNo3 + "," + attdNo4 + "," + attdNo5 + ")";
				
update attend set attdValue3 = '조퇴' where attdNo = 2;
				 

select rowNum, memName, nvl(attdvalue1,'-'), nvl(attdvalue2,'-'), nvl(attdvalue3,'-'), nvl(attdvalue4,'-'), nvl(attdvalue5,'-'), nvl(attdvalue6,'-'), nvl(attdvalue7,'-'), nvl(attdvalue8,'-'), nvl(attdvalue9,'-'), nvl(attdvalue10,'-'),
							 nvl(attdvalue11,'-'), nvl(attdvalue12,'-'), nvl(attdvalue13,'-'), nvl(attdvalue14,'-'), nvl(attdvalue15,'-'), nvl(attdvalue16,'-'), nvl(attdvalue17,'-'), nvl(attdvalue18,'-'), nvl(attdvalue19,'-'), nvl(attdvalue20,'-'), nvl(attdvalue21,'-'), nvl(attdvalue22,'-'),
							 nvl(attdvalue23,'-'), nvl(attdvalue24,'-'), nvl(attdvalue25,'-'), nvl(attdvalue26,'-'), nvl(attdvalue27,'-'), nvl(attdvalue28,'-'), nvl(attdvalue29,'-'), nvl(attdvalue30,'-'), nvl(attdvalue31,'-')
							 from attend a,
							 (
						     select memName, s.stuNo from member m, student s where m.memNo = s.memNo
						     and s.roomNo = (select r.roomNo from stuRoom r where 
						    	 r.tchNo = (select t.tchNo from member m, teacher t where m.memno = t.memno and m.memid='korean3'))
						     ) s 
						     where a.stuNo = s.stuNo;
						     
select * from attend;

select * from member;

update member set memName = '국인6' where memName = '한국인6';
update member set memName = '국인7' where memName = '한국인7';
update member set memName = '국인8' where memName = '한국인8';
update member set memName = '국인9' where memName = '한국인9';
update member set memName = '국인10' where memName = '한국인10';
update member set memName = '국인11' where memName = '한국인11';

select * from student;

select * from teacher;

select * from stuRoom;

select m.memName from member m, teacher t where m.memNo = t.memNo and t.tchNo in (select r.tchNo from teacher t, stuRoom r where t.tchNo = r.tchNo)