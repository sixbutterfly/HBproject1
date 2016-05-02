--�л� ���̺��� roomno�� �ΰ� ������� ����
alter table student modify roomno null;

-- register table column attribute's some changed. (������)
ALTER TABLE REGISTER MODIFY JOBINFO VARCHAR2(350);
ALTER TABLE REGISTER MODIFY CONTENT VARCHAR2(200) NULL;

--���簡 ���ǽ� ��ȣ�� ���� ����
alter table teacher add (roomno number(5));
ALTER TABLE teacher
ADD FOREIGN KEY (roomno) REFERENCES sturoom(roomno);

alter table register add (curNo number(5));
ALTER TABLE register
ADD FOREIGN KEY (curNo) REFERENCES curriculum(curNo);

-- stuCur ���̺� curriculum���� �̸� ����
rename studyCur to curriculum;

-- Ŀ��ŧ�� ���̺� null�� ���
alter table curriculum modify(curNo null, tchNo null);

-- �л� ���̺� ������ ��ȣ �÷� ����
alter table student drop column admNo;

-- register ���̺� submitValue -> file1�� ����
alter table register rename column submitValue to file1;

-- register ���̺� file2�÷� �߰�
alter table register add(file2 VARCHAR2(10));

-- register ���̺� file1, file2, gubun �÷� ������ ����
alter table register modify(file1 VARCHAR2(50));
alter table register modify(file2 VARCHAR2(50));
alter table register modify(gubun VARCHAR2(100));

------member 테이블 변경
ALTER TABLE MEMBER MODIFY (MEMPW VARCHAR2(30) NOT NULL,
							MEMID VARCHAR2(30) NOT NULL,
							MEMNAME VARCHAR2(30) NOT NULL,
							MEMADDRESS VARCHAR2(100) NOT NULL,
							MEMPHONE VARCHAR2(20) NOT NULL);
							
ALTER TABLE MEMBER ADD MEMTEL VARCHAR2(20) NULL;
ALTER TABLE MEMBER ADD MEMGENDER VARCHAR2(10) NOT NULL;
ALTER TABLE MEMBER ADD EMAILAGREE VARCHAR2(5) NOT NULL;
ALTER TABLE MEMBER ADD JOINDAY VARCHAR2(20) NOT NULL;

-- notice 테이블 컬럼 변경
alter table notice add(test clob);
alter table notice drop column content;
alter table notice rename column test to content;
alter table notice modify (name varchar2(50));
alter table notice modify (title varchar2(100));
