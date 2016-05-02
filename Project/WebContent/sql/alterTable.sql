--占싻삼옙 占쏙옙占싱븝옙占쏙옙 roomno占쏙옙 占싸곤옙 占쏙옙占쏙옙占쏙옙占� 占쏙옙占쏙옙
alter table student modify roomno null;

-- register table column attribute's some changed. (占쏙옙占쏙옙占쏙옙)
ALTER TABLE REGISTER MODIFY JOBINFO VARCHAR2(350);
ALTER TABLE REGISTER MODIFY CONTENT VARCHAR2(200) NULL;

--占쏙옙占썹가 占쏙옙占실쏙옙 占쏙옙호占쏙옙 占쏙옙占쏙옙 占쏙옙占쏙옙
alter table teacher add (roomno number(5));
ALTER TABLE teacher
ADD FOREIGN KEY (roomno) REFERENCES sturoom(roomno);

alter table register add (curNo number(5));
ALTER TABLE register
ADD FOREIGN KEY (curNo) REFERENCES curriculum(curNo);

-- stuCur 占쏙옙占싱븝옙 curriculum占쏙옙占쏙옙 占싱몌옙 占쏙옙占쏙옙
rename studyCur to curriculum;

-- 커占쏙옙큘占쏙옙 占쏙옙占싱븝옙 null占쏙옙 占쏙옙占�
alter table curriculum modify(curNo null, tchNo null);

-- 占싻삼옙 占쏙옙占싱븝옙 占쏙옙占쏙옙占쏙옙 占쏙옙호 占시뤄옙 占쏙옙占쏙옙
alter table student drop column admNo;

-- register 占쏙옙占싱븝옙 submitValue -> file1占쏙옙 占쏙옙占쏙옙
alter table register rename column submitValue to file1;

-- register 占쏙옙占싱븝옙 file2占시뤄옙 占쌩곤옙
alter table register add(file2 VARCHAR2(10));

-- register 占쏙옙占싱븝옙 file1, file2, gubun 占시뤄옙 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙
alter table register modify(file1 VARCHAR2(50));
alter table register modify(file2 VARCHAR2(50));
alter table register modify(gubun VARCHAR2(100));

------占쏙옙占� 占쏙옙占싱븝옙 占쌈쇽옙 占싸곤옙占쏙옙占쏙옙 占쏙옙占쏙옙							
ALTER TABLE MEMBER MODIFY (MEMPW VARCHAR2(30) NOT NULL,
							MEMID VARCHAR2(30) NOT NULL,
							MEMNAME VARCHAR2(30) NOT NULL,
							MEMADDRESS VARCHAR2(300) NOT NULL,
							MEMPHONE VARCHAR2(20) NOT NULL);
------占쏙옙占� 占쏙옙占싱븝옙 占쌈쇽옙 占쌩곤옙
ALTER TABLE MEMBER ADD MEMTEL VARCHAR2(20) NULL;
ALTER TABLE MEMBER ADD MEMGENDER VARCHAR2(20) NOT NULL;
ALTER TABLE MEMBER ADD EMAILAGREE VARCHAR2(5) NOT NULL;
ALTER TABLE MEMBER ADD JOINDAY VARCHAR2(20) NOT NULL;
------占쏙옙占� 占쏙옙占싱븝옙 占쌈쇽옙 占쌩곤옙


-- ATTEND table column attribute's 占쏙옙占쏙옙 占쏙옙占쏙옙 changed. (占싼깍옙占쏙옙)
ALTER TABLE ATTEND DROP COLUMN attdValue;
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

