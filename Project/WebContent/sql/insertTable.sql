--占쏙옙占쏙옙占쌈곤옙 占쌩곤옙占쏙옙占쌍쇽옙占쏙옙!-----------
-- 占쏙옙占쏙옙 占쏙옙 占쏙옙占쏙옙
-- authority(占쏙옙占쏙옙) 占쌩곤옙
-- studyCur 占쌩곤옙
-- curNo : 커占쏙옙큘占쏙옙 占쏙옙호, curName : 커占쏙옙占식뤄옙 占싱몌옙, curLocation : 占쏙옙占쏙옙占쏙옙占�, curDateS : 占쏙옙占쏙옙占쏙옙占쌜놂옙짜, curDateE : 占쏙옙占쏙옙 占쏙옙占써날짜, curSupply : 占쏙옙占쏙옙占싸울옙
-- 占쏙옙占실쏙옙 占쏙옙占싱븝옙占쏙옙 roomno占쏙옙 占쏙옙占쏙옙占쏙옙占쏙옙 占싣댐옙 占싹뱄옙 占쏙옙占쏙옙 占쏙옙占� 占쏙옙 占쏙옙, curno占쏙옙 tchno 占싸곤옙 占쏙옙占실곤옙 占쏙옙占쏙옙
-- register 占쌩곤옙/占쏙옙틘占�

----------------------------------------
-- 占쏙옙占쏙옙占쌔억옙 占쏙옙 占쏙옙占쏙옙
-- 占쏙옙占� 占쏙옙占싱븝옙 占쏙옙占쏙옙占쏙옙 占시뤄옙 占쌩곤옙占싹는곤옙 占쏙옙占쏙옙占쏙옙
-- 占쏙옙占쏙옙占쏙옙 占시뤄옙占쏙옙 占쏙옙占쏙옙(management)
------------------------------------------
--占쏙옙占쏙옙 占쏙옙占싱븝옙
insert into authority (authNo, departName) values (0, '占싹뱄옙占쏙옙占쏙옙');
insert into authority (authNo, departName) values (1, '占쏙옙占쏙옙占쏙옙');
insert into authority (authNo, departName) values (2, '占쏙옙占쏙옙占쏙옙');
insert into authority (authNo, departName) values (3, '占쏙옙占쏙옙');
insert into authority (authNo, departName) values (4, '占싻삼옙');
insert into authority (authNo, departName) values (5, '占쏙옙占쏙옙占쏙옙');
insert into authority (authNo, departName) values (9, '占쏙옙占쏙옙占쏙옙');

--회占쏙옙 占쌩곤옙
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno,MEMGENDER,EMAILAGREE) values (mem_seq.nextval, 'test1', 'korean', '占싼깍옙占쏙옙', '占쎌리占쏙옙', 'korea@korea.com', '000-0000-000', 1,'占쏙옙占쏙옙','Y');
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno,MEMGENDER,EMAILAGREE) values (mem_seq.nextval, 'test2', 'korean2', '占싼깍옙占쏙옙2', '占쎌리占쏙옙2', 'korea@korea.com2', '000-0000-0002', 1,'占쏙옙占쏙옙','N');
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno,MEMGENDER,EMAILAGREE) values (mem_seq.nextval, 'test3', 'korean3', '占싼깍옙占쏙옙3', '占쎌리占쏙옙3', 'korea@korea.com3', '000-0000-0003', 1,'占쏙옙占쏙옙','N');
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno,MEMGENDER,EMAILAGREE) values (mem_seq.nextval, 'test4', 'korean4', '占싼깍옙占쏙옙4', '占쎌리占쏙옙4', 'korea@korea.com4', '000-0000-0004', 1,'占쏙옙占쏙옙','Y');
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno,MEMGENDER,EMAILAGREE) values (mem_seq.nextval, 'admin', 'admin', 'admin', 'address', 'email', 'phone', 9,'占쏙옙占쏙옙','Y');


insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno) values (mem_seq.nextval, 'kimnormal', 'kim', '占쏙옙占싹뱄옙', '占쏙옙占싹뱄옙占쏙옙 占쏙옙', 'kimnormal@naver.com', '
010-2599-8765', 0);
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno) values (mem_seq.nextval, 'kimdaeri', 'kim', '占쏙옙釉�', '占쏙옙釉�占쏙옙 占쏙옙', 'kimdaeri@gmail.com', '01
0-1633-7511', 1);
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno) values (mem_seq.nextval, 'kimsales', 'kim', '占썼영占쏙옙', '占썼영占쏙옙占쏙옙 占쏙옙', 'kimsales@gmail.com', '01
0-7544-9984', 2);
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno) values (mem_seq.nextval, 'kimteacher', 'kim', '占썼선占쏙옙', '占썼선占쏙옙占쏙옙 占쏙옙', 'kimteacher@gmail.com',
 '010-1599-7878', 3);
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno) values (mem_seq.nextval, 'kimstudent', 'kim', '占쏙옙占싻삼옙', '占쏙옙占싻삼옙占쏙옙 占쏙옙', 'kimstudent@gmail.com',
 '010-2468-7852', 4);
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno) values (mem_seq.nextval, 'kimgraduate', 'kim', '占쏙옙占쏙옙占쏙옙', '占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙', 'kimgraduate@gmail.com
', '010-3211-6123', 5);

insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno, memtel, emailagree, memgender, joinday) values (mem_seq.nextval, 'kimnormal', 'kim', '김일반', '김일반의 집', 'kimnormal@naver.com', '
010-2599-8765', 0, '02-2345-6789','y','남자','16/01/01');
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno, memtel, emailagree, memgender, joinday) values (mem_seq.nextval, 'kimdaeri', 'kim', '김대리', '김대리의 집', 'kimdaeri@gmail.com', '01
0-1633-7511', 1, '02-3456-7890','y','여자','16/02/01');
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno, memtel, emailagree, memgender, joinday) values (mem_seq.nextval, 'kimsales', 'kim', '김영업', '김영업의 집', 'kimsales@gmail.com', '01
0-7544-9984', 2, '02-4567-8901','y','남자','16/03/01');
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno, memtel, emailagree, memgender, joinday) values (mem_seq.nextval, 'kimteacher', 'kim', '김선생', '김선생의 집', 'kimteacher@gmail.com',
 '010-1599-7878', 3, '02-5678-9012','y','여자','16/04/01');
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno, memtel, emailagree, memgender, joinday) values (mem_seq.nextval, 'kimstudent', 'kim', '김학생', '김학생의 집', 'kimstudent@gmail.com',
 '010-2468-7852', 4, '02-6789-0123','y','남자','16/05/01');
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno, memtel, emailagree, memgender, joinday) values (mem_seq.nextval, 'kimgraduate', 'kim', '김졸업', '김졸업의 집', 'kimgraduate@gmail.com
', '010-3211-6123', 5, '02-7890-1234','y','여자','16/06/01');


--占쏙옙占쏙옙占쏙옙 占쌩곤옙
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno) values (mem_seq.nextval, 'kimnormal', 'kim', '占쏙옙占싹뱄옙', '占쏙옙占싹뱄옙占쏙옙 占쏙옙', 'kimnormal@naver.com', '010-2599-8765', 0);
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno) values (mem_seq.nextval, 'kimdaeri', 'kim', '占쏙옙釉�', '占쏙옙釉�占쏙옙 占쏙옙', 'kimdaeri@gmail.com', '010-1633-7511', 1);
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno) values (mem_seq.nextval, 'kimsales', 'kim', '占썼영占쏙옙', '占썼영占쏙옙占쏙옙 占쏙옙', 'kimsales@gmail.com', '010-7544-9984', 2);
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno) values (mem_seq.nextval, 'kimteacher', 'kim', '占썼선占쏙옙', '占썼선占쏙옙占쏙옙 占쏙옙', 'kimteacher@gmail.com', '010-1599-7878', 3);
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno) values (mem_seq.nextval, 'kimstudent', 'kim', '占쏙옙占싻삼옙', '占쏙옙占싻삼옙占쏙옙 占쏙옙', 'kimstudent@gmail.com', '010-2468-7852', 4);
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno) values (mem_seq.nextval, 'kimgraduate', 'kim', '占쏙옙占쏙옙占쏙옙', '占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙', 'kimgraduate@gmail.com', '010-3211-6123', 5);

insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno) values (mem_seq.nextval, 'student1', 'student', '占싻삼옙1', '占싻삼옙1占쏙옙 占쏙옙', 'student1@naver.com', '010-1616-1265', 4);
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno) values (mem_seq.nextval, 'student2', 'student', '占싻삼옙2', '占싻삼옙2占쏙옙 占쏙옙', 'student2@naver.com', '010-2455-3133', 4);
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno) values (mem_seq.nextval, 'student3', 'student', '占싻삼옙3', '占싻삼옙3占쏙옙 占쏙옙', 'student3@naver.com', '010-3213-4637', 4);
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno) values (mem_seq.nextval, 'student4', 'student', '占싻삼옙4', '占싻삼옙4占쏙옙 占쏙옙', 'student4@naver.com', '010-7676-7221', 4);
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno) values (mem_seq.nextval, 'student5', 'student', '占싻삼옙5', '占싻삼옙5占쏙옙 占쏙옙', 'student5@naver.com', '010-7990-1557', 4);

--占쏙옙占쏙옙占쏙옙 占쌩곤옙
insert into management (admno, memno) values (adm_seq.nextval, '1');
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno,MEMGENDER,EMAILAGREE) values (mem_seq.nextval, 'kimnormal', 'kim', '占쏙옙占싹뱄옙', '占쏙옙占싹뱄옙占쏙옙 占쏙옙', 'kimnormal@naver.com', '
010-2599-8765', 0,'占쏙옙占쏙옙','N');
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno,MEMGENDER,EMAILAGREE) values (mem_seq.nextval, 'kimdaeri', 'kim', '占쏙옙釉�', '占쏙옙釉�占쏙옙 占쏙옙', 'kimdaeri@gmail.com', '01
0-1633-7511', 1,'占쏙옙占쏙옙','Y');
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno,MEMGENDER,EMAILAGREE) values (mem_seq.nextval, 'kimsales', 'kim', '占썼영占쏙옙', '占썼영占쏙옙占쏙옙 占쏙옙', 'kimsales@gmail.com', '01
0-7544-9984', 2,'占쏙옙占쏙옙','Y');
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno,MEMGENDER,EMAILAGREE) values (mem_seq.nextval, 'kimteacher', 'kim', '占썼선占쏙옙', '占썼선占쏙옙占쏙옙 占쏙옙', 'kimteacher@gmail.com',
 '010-1599-7878', 3,'占쏙옙占쏙옙','N');
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno,MEMGENDER,EMAILAGREE) values (mem_seq.nextval, 'kimstudent', 'kim', '占쏙옙占싻삼옙', '占쏙옙占싻삼옙占쏙옙 占쏙옙', 'kimstudent@gmail.com',
 '010-2468-7852', 4,'占쏙옙占쏙옙','N');
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno,MEMGENDER,EMAILAGREE) values (mem_seq.nextval, 'kimgraduate', 'kim', '占쏙옙占쏙옙占쏙옙', '占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙', 'kimgraduate@gmail.com
', '010-3211-6123', 5,'占쏙옙占쏙옙','Y');
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno,MEMGENDER,EMAILAGREE) values (mem_seq.nextval, 'kimnormal', 'kim', '占쏙옙占싹뱄옙', '占쏙옙占싹뱄옙占쏙옙 占쏙옙', 'kimnormal@naver.com', '010-2599-8765', 0,'占쏙옙占쏙옙','N');
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno,MEMGENDER,EMAILAGREE) values (mem_seq.nextval, 'kimdaeri', 'kim', '占쏙옙釉�', '占쏙옙釉�占쏙옙 占쏙옙', 'kimdaeri@gmail.com', '010-1633-7511', 1,'占쏙옙占쏙옙','Y');
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno,MEMGENDER,EMAILAGREE) values (mem_seq.nextval, 'kimsales', 'kim', '占썼영占쏙옙', '占썼영占쏙옙占쏙옙 占쏙옙', 'kimsales@gmail.com', '010-7544-9984', 2,'占쏙옙占쏙옙','Y');
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno,MEMGENDER,EMAILAGREE) values (mem_seq.nextval, 'kimteacher', 'kim', '占썼선占쏙옙', '占썼선占쏙옙占쏙옙 占쏙옙', 'kimteacher@gmail.com', '010-1599-7878', 3,'占쏙옙占쏙옙','N');
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno,MEMGENDER,EMAILAGREE) values (mem_seq.nextval, 'kimstudent', 'kim', '占쏙옙占싻삼옙', '占쏙옙占싻삼옙占쏙옙 占쏙옙', 'kimstudent@gmail.com', '010-2468-7852', 4,'占쏙옙占쏙옙','N');
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno,MEMGENDER,EMAILAGREE) values (mem_seq.nextval, 'kimgraduate', 'kim', '占쏙옙占쏙옙占쏙옙', '占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙', 'kimgraduate@gmail.com', '010-3211-6123', 5,'占쏙옙占쏙옙','Y');

--占쏙옙占쏙옙占쏙옙 占쌩곤옙 (admNo,admName,memNo 占쏙옙)
insert into admin values (adm_seq.nextval, 'admin', '1');

--占싻삼옙 占쌩곤옙 (stuNo,memNo,roomNo 占쏙옙)
insert into student values (stu_seq.nextval, 1, 1);
insert into student (stuno, memno, roomno) values (stu_seq.nextval, 2, 2);
insert into student (stuno, roomno, memno) values (stu_seq.nextval, 2, 27);
insert into student (stuno, roomno, memno) values (stu_seq.nextval, 2, 28);
insert into student (stuno, roomno, memno) values (stu_seq.nextval, 2, 29);
insert into student (stuno, roomno, memno) values (stu_seq.nextval, 2, 30);
insert into student (stuno, roomno, memno) values (stu_seq.nextval, 2, 31);


--占쏙옙占쏙옙 占쌩곤옙
insert into teacher (tchno, tchname, memno) values (TCH_SEQ.nextval, '占썼선占쏙옙', 19);
insert into teacher values (tch_seq.nextval,'占싼깍옙占쏙옙',1);

--강사 추가
insert into teacher (tchno, tchname, memno) values (TCH_SEQ.nextval, '김선생', 21);
insert into teacher values (tch_seq.nextval, 2, '한국인');


--占쏙옙占실쏙옙 占쌩곤옙 (roomNo,curNo,tchNo 占쏙옙)
insert into sturoom (roomno, tchno, curno) values (room_seq.nextval, 2, null);
insert into sturoom (roomno, tchno, curno) values (room_seq.nextval, 2, null);
insert into sturoom (roomno, tchno, curno) values (room_seq.nextval, 2, null);
insert into sturoom values (room_seq.nextval, null, null);

<<<<<<< HEAD

--커占쏙옙큘占쏙옙 占쌩곤옙 (curNo, curName, curLocation, curDate, curSupply 占쏙옙)
insert into curriculum (curno, curname, curlocation, curdate, cursupply) values (cur_seq.nextval, '占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쌈울옙크', '1占쏙옙占실쏙옙', '2016/04/01',20);
insert into curriculum (curno, curname, curlocation, curdate, cursupply) values (cur_seq.nextval, '占싼깍옙占쏙옙占쏙옙占쏙옙占쌈울옙크', '2占쏙옙占실쏙옙', '2016/04/01',20);
insert into curriculum (curno, curname, curlocation, curdate, cursupply) values (cur_seq.nextval, '占쌘뱄옙(JAVA)占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙', '3占쏙옙占실쏙옙', '2016/05/01',20);
--커占쏙옙큘占쏙옙 占쌩곤옙 (curNo, curName, curLocation, curDate, curSupply 占쏙옙)
insert into curriculum (curno, curname, curlocation, curdate, cursupply) values (cur_seq.nextval, '占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쌈울옙크', '1占쏙옙占실쏙옙', '2016-04-01', '20');
insert into curriculum (curno, curname, curlocation, curdate, cursupply) values (cur_seq.nextval, '占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쌈울옙크', '2占쏙옙占실쏙옙', '2016-05-01', '20');
insert into curriculum (curno, curname, curlocation, curdate, cursupply) values (cur_seq.nextval, '占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쌈울옙크', '3占쏙옙占실쏙옙', '2016-06-01', '20');
insert into curriculum values (cur_seq.nextval, '占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쌈울옙크', '1占쏙옙占실쏙옙', '2016/04/01',20);
insert into curriculum values (cur_seq.nextval, '占싼깍옙占쏙옙占쏙옙占쏙옙占쌈울옙크', '2占쏙옙占실쏙옙', '2016/04/01',20);
insert into curriculum values (cur_seq.nextval, '占쌘바곤옙占쏙옙占쌘곤옙占쏙옙', '3占쏙옙占실쏙옙', '2016/05/01',20);

--占쏙옙占쏙옙占쏙옙 占쌩곤옙
insert into sales (salesno, memno) values (sal_seq.nextval, 18);

--占쏙옙占쏙옙 占쌩곤옙
insert into grade (grdno, stuno, roomno, javagrade, webgrade, framegrade) values (grd_seq.nextval, 4, 2, 90, 85, 65);

--占쏙옙占쏙옙占쏙옙청占쏙옙 占쌩곤옙 (regNo,memNo,file1,file2,name,email,tel,gubun,job,jobinfo,time,pay,content,password 占쏙옙)
insert into register (regNo,memNo,name,email,tel) values (reg_seq.nextval,13,'占싼깍옙占쏙옙','korea@korea.com','000-0000-000');


-- 占쏙옙占쏙옙占쏙옙占쏙옙 占쌩곤옙 (notNo,Title,Content,notDate,name)
insert into notice (notNo,Title,Content,notDate,name) values (not_seq.nextval, "占싼븝옙占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占쏠가듸옙占� 占싫놂옙占쌉니댐옙","占쏙옙占쎈동占싸울옙占쏙옙 占쏙옙占쏙옙 占쏙옙占쏙옙占싣뤄옙 占쏙옙占쏙옙占쏙옙占� 占쏠가울옙占쏙옙 A 占쏙옙占쏙옙占� 획占쏙옙占싹울옙占쏙옙占싹댐옙. 占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙占� 占쏠가울옙占쏙옙占쏙옙 A 占쏙옙占쏙옙占� 획占쏙옙占쌀쇽옙 占쌍듸옙占쏙옙 占쏙옙占쏙옙占쏙옙占쏟스울옙 占쏙옙占쏙옙占쏙옙占� 占쏙옙占� 占쌍쇽옙占쏙옙 占쏙옙占쏙옙 占쏙옙占쏙옙 占쏙옙占쏙옙爛求占�.",sysdate,"占쏙옙占쏙옙占쏙옙");

--占쏙옙占쏙옙占쏙옙 占쏙옙占썩서 占싹쇽옙占쏙옙---------------
select * from curriculum;
select * from sturoom;
select * from register;
select * from student;
select * from member;
select * from management;
select * from sales;
select * from teacher;
select * from grade;
select * from notice;

select curDateS, last_day(curDateS) from studyCur;
select TEACHER.tchno, TEACHER.tchname, STUROOM.roomno from TEACHER, STUROOM;
select * from register where file1 is not null and file2 is not null;
--占쏙옙占쏙옙占쏙옙 占쏙옙占썩서 占싹쇽옙占쏙옙---------------
select student.stuno, member.memname, student.roomno, nvl(grade.javagrade, 0) javagrade, nvl(grade.webgrade, 0) webgrade, nvl(grade.framegrade, 0) framegrade from student, member, grad
e where member.memno=student.memno and student.stuno=grade.stuno order by stuno;

select stuno, memname, roomno from student, member where student.memno = member.memno and roomno is null;
update sturoom set tchno = 21 where roomno = 2;


select stuno, member.memname, roomno from student, member where student.memno = member.memno;
select javagrade, webgrade, framerade,stuno,roomno, member.mamname from grade, member where member.memno = (select memno from student);

update register set curNo=4 where curNo is null;
update STUDENT set STUDENT.ROOMNO = 1 where STUDENT.STUNO = 5;
SELECT student.stuno, student.roomno, member.memname from student, member where STUDENT.MEMNO = MEMBER.MEMNO;
update teacher set roomno = null where tchno = 1;
update student set roomno = null where stuno = 5;
select tchno, memname, roomno from TEACHER, member where teacher.memno = member.memno;
SELECT STUDENT.STUNO, nvl(STUDENT.ROOMNO,'0'), MEMBER.MEMNAME FROM STUDENT, MEMBER WHERE STUDENT.MEMNO = MEMBER.MEMNO;
delete from grade where stuno is null;

--占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙!----------------

--끝난 실험은 삭제할 것!----------------



