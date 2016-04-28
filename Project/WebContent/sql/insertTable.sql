--자유롭게 추가해주세요!-----------
-- 변경 된 사항
-- authority(권한) 추가
-- studyCur 추가
-- curNo : 커리큘럼 번호, curName : 커리뮬럼 이름, curLocation : 교육장소, curDateS : 교육시작날짜, curDateE : 교육 종료날짜, curSupply : 교육인원

----------------------------------------
-- 변경해야 할 사항
-- 멤버 테이블에 가입일 컬럼 추가하는게 좋을듯
-- 행정부 컬럼명 변경(management)
------------------------------------------
--권한 테이블
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

--행정부 추가
insert into management (admno, memno) values (adm_seq.nextval, '1');

--학생 추가
insert into student (stuno, memno, roomno) values (stu_seq.nextval, 20, 2);

--강사 추가
insert into teacher (tchno, tchname, memno) values (TCH_SEQ.nextval, '김선생', 19);

--강의실 추가
insert into sturoom (roomno, tchno, curno) values (1, 2, 1);
insert into sturoom (roomno, tchno, curno) values (2, 2, 2);
insert into sturoom (roomno, tchno, curno) values (3, 2, 3);

--커리큘럼 추가
insert into curriculum (curno, curname, curlocation, curdate, cursupply) values (cur_seq.nextval, '전자정부프레임워크', '1강의실', '2016-04-01', '20');
insert into curriculum (curno, curname, curlocation, curdate, cursupply) values (cur_seq.nextval, '전자정부프레임워크', '2강의실', '2016-05-01', '20');
insert into curriculum (curno, curname, curlocation, curdate, cursupply) values (cur_seq.nextval, '전자정부프레임워크', '3강의실', '2016-06-01', '20');

--영업부 추가
insert into sales (salesno, memno) values (sal_seq.nextval, 18);

--성적 추가
insert into grade (grdno, stuno, roomno, javagrade, webgrade, framegrade) values (grd_seq.nextval, 4, 2, 90, 85, 65);

--실험은 여기서 하세요---------------
select * from studyCur;
select curDateS, last_day(curDateS) from studyCur;


--끝난 실험은 삭제할 것!----------------

