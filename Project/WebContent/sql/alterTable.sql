-- register table column attribute's some changed. (정현재)
ALTER TABLE REGISTER MODIFY JOBINFO VARCHAR2(350);
ALTER TABLE REGISTER MODIFY CONTENT VARCHAR2(200) NULL;

--강사가 강의실 번호를 참조 받음
alter table teacher add (roomno number(5));
ALTER TABLE teacher
ADD FOREIGN KEY (roomno) REFERENCES sturoom(roomno);

-- stuCur 테이블 curriculum으로 이름 변경
rename studyCur to curriculum;

-- 커리큘럼 테이블 null값 허용
alter table curriculum modify(curNo null, tchNo null);

-- 학생 테이블 행정부 번호 컬럼 삭제
alter table student drop column admNo;

-- register 테이블 submitValue -> file1로 변경
alter table register rename column submitValue to file1;

-- register 테이블 file2컬럼 추가
alter table register add(file2 VARCHAR2(10));

ALTER TABLE MEMBER MODIFY (MEMPW VARCHAR2(30) NOT NULL,
							MEMID VARCHAR2(30) NOT NULL,
							MEMNAME VARCHAR2(30) NOT NULL,
							MEMADDRESS VARCHAR2(100) NOT NULL,
							MEMPHONE VARCHAR2(20) NOT NULL);
------멤버 테이블 속성 널값으로 변경							
ALTER TABLE MEMBER ADD MEMTEL VARCHAR2(20) NULL;
ALTER TABLE MEMBER ADD MEMGENDER VARCHAR2(10) NOT NULL;
ALTER TABLE MEMBER ADD EMAILAGREE VARCHAR2(5) NOT NULL;
------멤버 테이블 속성 추가


-- ATTEND table column attribute's 아주 많이 changed. (한국인)
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

ALTER TABLE member DROP COLUMN joinDate;

ALTER TABLE teacher ADD tchName VARCHAR2(30) NULL;

select * from attend

ALTER TABLE ATTEND DROP COLUMN attdValue1;
ALTER TABLE ATTEND DROP COLUMN attdValue2;
ALTER TABLE ATTEND DROP COLUMN attdValue3;
ALTER TABLE ATTEND DROP COLUMN attdValue4;
ALTER TABLE ATTEND DROP COLUMN attdValue5;
ALTER TABLE ATTEND DROP COLUMN attdValue6;
ALTER TABLE ATTEND DROP COLUMN attdValue7;
ALTER TABLE ATTEND DROP COLUMN attdValue8;
ALTER TABLE ATTEND DROP COLUMN attdValue9;
ALTER TABLE ATTEND DROP COLUMN attdValue10;
ALTER TABLE ATTEND DROP COLUMN attdValue11;
ALTER TABLE ATTEND DROP COLUMN attdValue12;
ALTER TABLE ATTEND DROP COLUMN attdValue13;
ALTER TABLE ATTEND DROP COLUMN attdValue14;
ALTER TABLE ATTEND DROP COLUMN attdValue15;
ALTER TABLE ATTEND DROP COLUMN attdValue16;
ALTER TABLE ATTEND DROP COLUMN attdValue17;
ALTER TABLE ATTEND DROP COLUMN attdValue18;
ALTER TABLE ATTEND DROP COLUMN attdValue19;
ALTER TABLE ATTEND DROP COLUMN attdValue20;
ALTER TABLE ATTEND DROP COLUMN attdValue21;
ALTER TABLE ATTEND DROP COLUMN attdValue22;
ALTER TABLE ATTEND DROP COLUMN attdValue23;
ALTER TABLE ATTEND DROP COLUMN attdValue24;
ALTER TABLE ATTEND DROP COLUMN attdValue25;
ALTER TABLE ATTEND DROP COLUMN attdValue26;
ALTER TABLE ATTEND DROP COLUMN attdValue27;
ALTER TABLE ATTEND DROP COLUMN attdValue28;
ALTER TABLE ATTEND DROP COLUMN attdValue29;
ALTER TABLE ATTEND DROP COLUMN attdValue30;
ALTER TABLE ATTEND DROP COLUMN attdValue31;
ALTER TABLE ATTEND DROP COLUMN attdDate;

ALTER TABLE ATTEND ADD attdDate date NULL;
select * from attend;

ALTER TABLE ATTEND ADD atvNo number(4) NULL;

drop table attendValue;

select * from attend;

ALTER TABLE ATTEND DROP COLUMN atvno;

select * from attend;


select attdNo, memName, attdDate, nvl(attdvalue1,'-'), attdvalue2, attdvalue3, attdvalue4, attdvalue5, attdvalue6, attdvalue7, attdvalue8, attdvalue9, 

attdvalue10, attdvalue11, attdvalue12, attdvalue13, attdvalue14, attdvalue15, attdvalue16, attdvalue17, attdvalue18, attdvalue19, attdvalue20, 

attdvalue21, attdvalue22,
attdvalue23, attdvalue24, attdvalue25, attdvalue26, attdvalue27, attdvalue28, attdvalue29, attdvalue30, attdvalue31
from attend a, 
(
select memName, stuNo from member m, student s where m.memNo = s.memNo
and s.roomNo = (select r.roomNo from stuRoom r where 
r.tchNo = (select t.tchNo from member m, teacher t where m.memno = t.memno and m.memid='b'))
) s
 where a.stuNo = s.stuNo;
 
 select attdNo, memName, nvl(attdvalue1,'-'), nvl(attdvalue2,'-'), nvl(attdvalue3,'-'), nvl(attdvalue4,'-'), nvl(attdvalue5,'-'), nvl(attdvalue6,'-'), nvl(attdvalue7,'-'), nvl(attdvalue8,'-'), nvl(attdvalue9,'-'), nvl(attdvalue10,'-'),
						 nvl(attdvalue11,'-'), nvl(attdvalue12,'-'), nvl(attdvalue13,'-'), nvl(attdvalue14,'-'), nvl(attdvalue15,'-'), nvl(attdvalue16,'-'), nvl(attdvalue17,'-'), nvl(attdvalue18,'-'), nvl(attdvalue19,'-'), nvl(attdvalue20,'-'), nvl(attdvalue21,'-'), nvl(attdvalue22,'-'),
							 nvl(attdvalue23,'-'), nvl(attdvalue24,'-'), nvl(attdvalue25,'-'), nvl(attdvalue26,'-'), nvl(attdvalue27,'-'), nvl(attdvalue28,'-'), nvl(attdvalue29,'-'), nvl(attdvalue30,'-'), nvl(attdvalue31,'-')
						 from attend a,	(select memName, stuNo from member m, student s where m.memNo = s.memNo and m.memid='a') s 
						     where a.stuNo = s.stuNo;

select memName from attend a,	(select memName, stuNo from member m, student s where m.memNo = s.memNo and m.memid='a') s 
						     where a.stuNo = s.stuNo;