--ï¿½ï¿½ï¿½ï¿½ï¿½Ó°ï¿½ ï¿½ß°ï¿½ï¿½ï¿½ï¿½Ö¼ï¿½ï¿½ï¿½!-----------
-- ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½
-- authority(ï¿½ï¿½ï¿½ï¿½) ï¿½ß°ï¿½
-- studyCur ï¿½ß°ï¿½
-- curNo : Ä¿ï¿½ï¿½Å§ï¿½ï¿½ ï¿½ï¿½È£, curName : Ä¿ï¿½ï¿½ï¿½Ä·ï¿½ ï¿½Ì¸ï¿½, curLocation : ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½, curDateS : ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Û³ï¿½Â¥, curDateE : ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½á³¯Â¥, curSupply : ï¿½ï¿½ï¿½ï¿½ï¿½Î¿ï¿½
-- ï¿½ï¿½ï¿½Ç½ï¿½ ï¿½ï¿½ï¿½Ìºï¿½ï¿½ï¿½ roomnoï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½Æ´ï¿½ ï¿½Ï¹ï¿½ ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ ï¿½ï¿½ ï¿½ï¿½, curnoï¿½ï¿½ tchno ï¿½Î°ï¿½ ï¿½ï¿½ï¿½Ç°ï¿½ ï¿½ï¿½ï¿½ï¿½
-- register ï¿½ß°ï¿½/ï¿½ï¿½Æ¸ï¿½

----------------------------------------
-- ï¿½ï¿½ï¿½ï¿½ï¿½Ø¾ï¿½ ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½
-- ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ìºï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½Ã·ï¿½ ï¿½ß°ï¿½ï¿½Ï´Â°ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
-- ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½Ã·ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½(management)
------------------------------------------
--ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½Ìºï¿½
insert into authority (authNo, departName) values (0, 'ï¿½Ï¹ï¿½ï¿½ï¿½ï¿½ï¿½');
insert into authority (authNo, departName) values (1, 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½');
insert into authority (authNo, departName) values (2, 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½');
insert into authority (authNo, departName) values (3, 'ï¿½ï¿½ï¿½ï¿½');
insert into authority (authNo, departName) values (4, 'ï¿½Ð»ï¿½');
insert into authority (authNo, departName) values (5, 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½');
insert into authority (authNo, departName) values (9, 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½');

--È¸ï¿½ï¿½ ï¿½ß°ï¿½
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno,MEMGENDER,EMAILAGREE) values (mem_seq.nextval, 'test1', 'korean', 'ï¿½Ñ±ï¿½ï¿½ï¿½', 'ï¿½ì¸®ï¿½ï¿½', 'korea@korea.com', '000-0000-000', 1,'ï¿½ï¿½ï¿½ï¿½','Y');
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno,MEMGENDER,EMAILAGREE) values (mem_seq.nextval, 'test2', 'korean2', 'ï¿½Ñ±ï¿½ï¿½ï¿½2', 'ï¿½ì¸®ï¿½ï¿½2', 'korea@korea.com2', '000-0000-0002', 1,'ï¿½ï¿½ï¿½ï¿½','N');
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno,MEMGENDER,EMAILAGREE) values (mem_seq.nextval, 'test3', 'korean3', 'ï¿½Ñ±ï¿½ï¿½ï¿½3', 'ï¿½ì¸®ï¿½ï¿½3', 'korea@korea.com3', '000-0000-0003', 1,'ï¿½ï¿½ï¿½ï¿½','N');
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno,MEMGENDER,EMAILAGREE) values (mem_seq.nextval, 'test4', 'korean4', 'ï¿½Ñ±ï¿½ï¿½ï¿½4', 'ï¿½ì¸®ï¿½ï¿½4', 'korea@korea.com4', '000-0000-0004', 1,'ï¿½ï¿½ï¿½ï¿½','Y');
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno,MEMGENDER,EMAILAGREE) values (mem_seq.nextval, 'admin', 'admin', 'admin', 'address', 'email', 'phone', 9,'ï¿½ï¿½ï¿½ï¿½','Y');

<<<<<<< HEAD
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno) values (mem_seq.nextval, 'kimnormal', 'kim', 'ï¿½ï¿½ï¿½Ï¹ï¿½', 'ï¿½ï¿½ï¿½Ï¹ï¿½ï¿½ï¿½ ï¿½ï¿½', 'kimnormal@naver.com', '
010-2599-8765', 0);
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno) values (mem_seq.nextval, 'kimdaeri', 'kim', 'ï¿½ï¿½ë¸®', 'ï¿½ï¿½ë¸®ï¿½ï¿½ ï¿½ï¿½', 'kimdaeri@gmail.com', '01
0-1633-7511', 1);
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno) values (mem_seq.nextval, 'kimsales', 'kim', 'ï¿½è¿µï¿½ï¿½', 'ï¿½è¿µï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½', 'kimsales@gmail.com', '01
0-7544-9984', 2);
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno) values (mem_seq.nextval, 'kimteacher', 'kim', 'ï¿½è¼±ï¿½ï¿½', 'ï¿½è¼±ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½', 'kimteacher@gmail.com',
 '010-1599-7878', 3);
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno) values (mem_seq.nextval, 'kimstudent', 'kim', 'ï¿½ï¿½ï¿½Ð»ï¿½', 'ï¿½ï¿½ï¿½Ð»ï¿½ï¿½ï¿½ ï¿½ï¿½', 'kimstudent@gmail.com',
 '010-2468-7852', 4);
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno) values (mem_seq.nextval, 'kimgraduate', 'kim', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½', 'kimgraduate@gmail.com
', '010-3211-6123', 5);
=======
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno, memtel, emailagree, memgender, joinday) values (mem_seq.nextval, 'kimnormal', 'kim', '±èÀÏ¹Ý', '±èÀÏ¹ÝÀÇ Áý', 'kimnormal@naver.com', '
010-2599-8765', 0, '02-2345-6789','y','³²ÀÚ','16/01/01');
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno, memtel, emailagree, memgender, joinday) values (mem_seq.nextval, 'kimdaeri', 'kim', '±è´ë¸®', '±è´ë¸®ÀÇ Áý', 'kimdaeri@gmail.com', '01
0-1633-7511', 1, '02-3456-7890','y','¿©ÀÚ','16/02/01');
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno, memtel, emailagree, memgender, joinday) values (mem_seq.nextval, 'kimsales', 'kim', '±è¿µ¾÷', '±è¿µ¾÷ÀÇ Áý', 'kimsales@gmail.com', '01
0-7544-9984', 2, '02-4567-8901','y','³²ÀÚ','16/03/01');
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno, memtel, emailagree, memgender, joinday) values (mem_seq.nextval, 'kimteacher', 'kim', '±è¼±»ý', '±è¼±»ýÀÇ Áý', 'kimteacher@gmail.com',
 '010-1599-7878', 3, '02-5678-9012','y','¿©ÀÚ','16/04/01');
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno, memtel, emailagree, memgender, joinday) values (mem_seq.nextval, 'kimstudent', 'kim', '±èÇÐ»ý', '±èÇÐ»ýÀÇ Áý', 'kimstudent@gmail.com',
 '010-2468-7852', 4, '02-6789-0123','y','³²ÀÚ','16/05/01');
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno, memtel, emailagree, memgender, joinday) values (mem_seq.nextval, 'kimgraduate', 'kim', '±èÁ¹¾÷', '±èÁ¹¾÷ÀÇ Áý', 'kimgraduate@gmail.com
', '010-3211-6123', 5, '02-7890-1234','y','¿©ÀÚ','16/06/01');
>>>>>>> refs/remotes/origin/ìµœìž¬í˜¸

--ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ß°ï¿½
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno) values (mem_seq.nextval, 'kimnormal', 'kim', 'ï¿½ï¿½ï¿½Ï¹ï¿½', 'ï¿½ï¿½ï¿½Ï¹ï¿½ï¿½ï¿½ ï¿½ï¿½', 'kimnormal@naver.com', '010-2599-8765', 0);
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno) values (mem_seq.nextval, 'kimdaeri', 'kim', 'ï¿½ï¿½ë¸®', 'ï¿½ï¿½ë¸®ï¿½ï¿½ ï¿½ï¿½', 'kimdaeri@gmail.com', '010-1633-7511', 1);
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno) values (mem_seq.nextval, 'kimsales', 'kim', 'ï¿½è¿µï¿½ï¿½', 'ï¿½è¿µï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½', 'kimsales@gmail.com', '010-7544-9984', 2);
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno) values (mem_seq.nextval, 'kimteacher', 'kim', 'ï¿½è¼±ï¿½ï¿½', 'ï¿½è¼±ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½', 'kimteacher@gmail.com', '010-1599-7878', 3);
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno) values (mem_seq.nextval, 'kimstudent', 'kim', 'ï¿½ï¿½ï¿½Ð»ï¿½', 'ï¿½ï¿½ï¿½Ð»ï¿½ï¿½ï¿½ ï¿½ï¿½', 'kimstudent@gmail.com', '010-2468-7852', 4);
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno) values (mem_seq.nextval, 'kimgraduate', 'kim', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½', 'kimgraduate@gmail.com', '010-3211-6123', 5);

insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno) values (mem_seq.nextval, 'student1', 'student', 'ï¿½Ð»ï¿½1', 'ï¿½Ð»ï¿½1ï¿½ï¿½ ï¿½ï¿½', 'student1@naver.com', '010-1616-1265', 4);
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno) values (mem_seq.nextval, 'student2', 'student', 'ï¿½Ð»ï¿½2', 'ï¿½Ð»ï¿½2ï¿½ï¿½ ï¿½ï¿½', 'student2@naver.com', '010-2455-3133', 4);
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno) values (mem_seq.nextval, 'student3', 'student', 'ï¿½Ð»ï¿½3', 'ï¿½Ð»ï¿½3ï¿½ï¿½ ï¿½ï¿½', 'student3@naver.com', '010-3213-4637', 4);
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno) values (mem_seq.nextval, 'student4', 'student', 'ï¿½Ð»ï¿½4', 'ï¿½Ð»ï¿½4ï¿½ï¿½ ï¿½ï¿½', 'student4@naver.com', '010-7676-7221', 4);
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno) values (mem_seq.nextval, 'student5', 'student', 'ï¿½Ð»ï¿½5', 'ï¿½Ð»ï¿½5ï¿½ï¿½ ï¿½ï¿½', 'student5@naver.com', '010-7990-1557', 4);

--ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ß°ï¿½
insert into management (admno, memno) values (adm_seq.nextval, '1');
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno,MEMGENDER,EMAILAGREE) values (mem_seq.nextval, 'kimnormal', 'kim', 'ï¿½ï¿½ï¿½Ï¹ï¿½', 'ï¿½ï¿½ï¿½Ï¹ï¿½ï¿½ï¿½ ï¿½ï¿½', 'kimnormal@naver.com', '
010-2599-8765', 0,'ï¿½ï¿½ï¿½ï¿½','N');
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno,MEMGENDER,EMAILAGREE) values (mem_seq.nextval, 'kimdaeri', 'kim', 'ï¿½ï¿½ë¸®', 'ï¿½ï¿½ë¸®ï¿½ï¿½ ï¿½ï¿½', 'kimdaeri@gmail.com', '01
0-1633-7511', 1,'ï¿½ï¿½ï¿½ï¿½','Y');
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno,MEMGENDER,EMAILAGREE) values (mem_seq.nextval, 'kimsales', 'kim', 'ï¿½è¿µï¿½ï¿½', 'ï¿½è¿µï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½', 'kimsales@gmail.com', '01
0-7544-9984', 2,'ï¿½ï¿½ï¿½ï¿½','Y');
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno,MEMGENDER,EMAILAGREE) values (mem_seq.nextval, 'kimteacher', 'kim', 'ï¿½è¼±ï¿½ï¿½', 'ï¿½è¼±ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½', 'kimteacher@gmail.com',
 '010-1599-7878', 3,'ï¿½ï¿½ï¿½ï¿½','N');
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno,MEMGENDER,EMAILAGREE) values (mem_seq.nextval, 'kimstudent', 'kim', 'ï¿½ï¿½ï¿½Ð»ï¿½', 'ï¿½ï¿½ï¿½Ð»ï¿½ï¿½ï¿½ ï¿½ï¿½', 'kimstudent@gmail.com',
 '010-2468-7852', 4,'ï¿½ï¿½ï¿½ï¿½','N');
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno,MEMGENDER,EMAILAGREE) values (mem_seq.nextval, 'kimgraduate', 'kim', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½', 'kimgraduate@gmail.com
', '010-3211-6123', 5,'ï¿½ï¿½ï¿½ï¿½','Y');
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno,MEMGENDER,EMAILAGREE) values (mem_seq.nextval, 'kimnormal', 'kim', 'ï¿½ï¿½ï¿½Ï¹ï¿½', 'ï¿½ï¿½ï¿½Ï¹ï¿½ï¿½ï¿½ ï¿½ï¿½', 'kimnormal@naver.com', '010-2599-8765', 0,'ï¿½ï¿½ï¿½ï¿½','N');
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno,MEMGENDER,EMAILAGREE) values (mem_seq.nextval, 'kimdaeri', 'kim', 'ï¿½ï¿½ë¸®', 'ï¿½ï¿½ë¸®ï¿½ï¿½ ï¿½ï¿½', 'kimdaeri@gmail.com', '010-1633-7511', 1,'ï¿½ï¿½ï¿½ï¿½','Y');
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno,MEMGENDER,EMAILAGREE) values (mem_seq.nextval, 'kimsales', 'kim', 'ï¿½è¿µï¿½ï¿½', 'ï¿½è¿µï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½', 'kimsales@gmail.com', '010-7544-9984', 2,'ï¿½ï¿½ï¿½ï¿½','Y');
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno,MEMGENDER,EMAILAGREE) values (mem_seq.nextval, 'kimteacher', 'kim', 'ï¿½è¼±ï¿½ï¿½', 'ï¿½è¼±ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½', 'kimteacher@gmail.com', '010-1599-7878', 3,'ï¿½ï¿½ï¿½ï¿½','N');
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno,MEMGENDER,EMAILAGREE) values (mem_seq.nextval, 'kimstudent', 'kim', 'ï¿½ï¿½ï¿½Ð»ï¿½', 'ï¿½ï¿½ï¿½Ð»ï¿½ï¿½ï¿½ ï¿½ï¿½', 'kimstudent@gmail.com', '010-2468-7852', 4,'ï¿½ï¿½ï¿½ï¿½','N');
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno,MEMGENDER,EMAILAGREE) values (mem_seq.nextval, 'kimgraduate', 'kim', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½', 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½', 'kimgraduate@gmail.com', '010-3211-6123', 5,'ï¿½ï¿½ï¿½ï¿½','Y');

--ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ß°ï¿½ (admNo,admName,memNo ï¿½ï¿½)
insert into admin values (adm_seq.nextval, 'admin', '1');

--ï¿½Ð»ï¿½ ï¿½ß°ï¿½ (stuNo,memNo,roomNo ï¿½ï¿½)
insert into student values (stu_seq.nextval, 1, 1);
insert into student (stuno, memno, roomno) values (stu_seq.nextval, 2, 2);
insert into student (stuno, roomno, memno) values (stu_seq.nextval, 2, 27);
insert into student (stuno, roomno, memno) values (stu_seq.nextval, 2, 28);
insert into student (stuno, roomno, memno) values (stu_seq.nextval, 2, 29);
insert into student (stuno, roomno, memno) values (stu_seq.nextval, 2, 30);
insert into student (stuno, roomno, memno) values (stu_seq.nextval, 2, 31);

--ï¿½ï¿½ï¿½ï¿½ ï¿½ß°ï¿½
insert into teacher (tchno, tchname, memno) values (TCH_SEQ.nextval, 'ï¿½è¼±ï¿½ï¿½', 19);
insert into teacher values (tch_seq.nextval,'ï¿½Ñ±ï¿½ï¿½ï¿½',1);

--ï¿½ï¿½ï¿½Ç½ï¿½ ï¿½ß°ï¿½ (roomNo,curNo,tchNo ï¿½ï¿½)
insert into sturoom (roomno, tchno, curno) values (room_seq.nextval, 2, null);
insert into sturoom (roomno, tchno, curno) values (room_seq.nextval, 2, null);
insert into sturoom (roomno, tchno, curno) values (room_seq.nextval, 2, null);
insert into sturoom values (room_seq.nextval, null, null);

<<<<<<< HEAD

--Ä¿ï¿½ï¿½Å§ï¿½ï¿½ ï¿½ß°ï¿½ (curNo, curName, curLocation, curDate, curSupply ï¿½ï¿½)
insert into curriculum (curno, curname, curlocation, curdate, cursupply) values (cur_seq.nextval, 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ó¿ï¿½Å©', '1ï¿½ï¿½ï¿½Ç½ï¿½', '2016/04/01',20);
insert into curriculum (curno, curname, curlocation, curdate, cursupply) values (cur_seq.nextval, 'ï¿½Ñ±ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ó¿ï¿½Å©', '2ï¿½ï¿½ï¿½Ç½ï¿½', '2016/04/01',20);
insert into curriculum (curno, curname, curlocation, curdate, cursupply) values (cur_seq.nextval, 'ï¿½Ú¹ï¿½(JAVA)ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½', '3ï¿½ï¿½ï¿½Ç½ï¿½', '2016/05/01',20);
--Ä¿ï¿½ï¿½Å§ï¿½ï¿½ ï¿½ß°ï¿½ (curNo, curName, curLocation, curDate, curSupply ï¿½ï¿½)
insert into curriculum (curno, curname, curlocation, curdate, cursupply) values (cur_seq.nextval, 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ó¿ï¿½Å©', '1ï¿½ï¿½ï¿½Ç½ï¿½', '2016-04-01', '20');
insert into curriculum (curno, curname, curlocation, curdate, cursupply) values (cur_seq.nextval, 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ó¿ï¿½Å©', '2ï¿½ï¿½ï¿½Ç½ï¿½', '2016-05-01', '20');
insert into curriculum (curno, curname, curlocation, curdate, cursupply) values (cur_seq.nextval, 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ó¿ï¿½Å©', '3ï¿½ï¿½ï¿½Ç½ï¿½', '2016-06-01', '20');
insert into curriculum values (cur_seq.nextval, 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ó¿ï¿½Å©', '1ï¿½ï¿½ï¿½Ç½ï¿½', '2016/04/01',20);
insert into curriculum values (cur_seq.nextval, 'ï¿½Ñ±ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ó¿ï¿½Å©', '2ï¿½ï¿½ï¿½Ç½ï¿½', '2016/04/01',20);
insert into curriculum values (cur_seq.nextval, 'ï¿½Ú¹Ù°ï¿½ï¿½ï¿½ï¿½Ú°ï¿½ï¿½ï¿½', '3ï¿½ï¿½ï¿½Ç½ï¿½', '2016/05/01',20);

--ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ß°ï¿½
insert into sales (salesno, memno) values (sal_seq.nextval, 18);

--ï¿½ï¿½ï¿½ï¿½ ï¿½ß°ï¿½
insert into grade (grdno, stuno, roomno, javagrade, webgrade, framegrade) values (grd_seq.nextval, 4, 2, 90, 85, 65);

--ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½Ã»ï¿½ï¿½ ï¿½ß°ï¿½ (regNo,memNo,file1,file2,name,email,tel,gubun,job,jobinfo,time,pay,content,password ï¿½ï¿½)
insert into register (regNo,memNo,name,email,tel) values (reg_seq.nextval,13,'ï¿½Ñ±ï¿½ï¿½ï¿½','korea@korea.com','000-0000-000');


-- ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ß°ï¿½ (notNo,Title,Content,notDate,name)
insert into notice (notNo,Title,Content,notDate,name) values (not_seq.nextval, "ï¿½Ñºï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ò°¡µï¿½ï¿½ ï¿½È³ï¿½ï¿½Ô´Ï´ï¿½","ï¿½ï¿½ï¿½ëµ¿ï¿½Î¿ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½Æ·ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ò°¡¿ï¿½ï¿½ï¿½ A ï¿½ï¿½ï¿½ï¿½ï¿½ È¹ï¿½ï¿½ï¿½Ï¿ï¿½ï¿½ï¿½ï¿½Ï´ï¿½. ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ò°¡¿ï¿½ï¿½ï¿½ï¿½ï¿½ A ï¿½ï¿½ï¿½ï¿½ï¿½ È¹ï¿½ï¿½ï¿½Ò¼ï¿½ ï¿½Öµï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ñ½º¿ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ ï¿½Ö¼ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½Õ´Ï´ï¿½.",sysdate,"ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½");

--ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½â¼­ ï¿½Ï¼ï¿½ï¿½ï¿½---------------
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
--ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½â¼­ ï¿½Ï¼ï¿½ï¿½ï¿½---------------
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

--ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ ï¿½ï¿½!----------------
