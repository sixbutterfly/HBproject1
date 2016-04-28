--학생 테이블의 roomno를 널값 허용으로 변경
alter table student modify roomno null;

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
