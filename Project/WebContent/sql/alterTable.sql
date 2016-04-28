-- register table column attribute's some changed. (������)
ALTER TABLE REGISTER MODIFY JOBINFO VARCHAR2(350);
ALTER TABLE REGISTER MODIFY CONTENT VARCHAR2(200) NULL;

--���簡 ���ǽ� ��ȣ�� ���� ����
alter table teacher add (roomno number(5));
ALTER TABLE teacher
ADD FOREIGN KEY (roomno) REFERENCES sturoom(roomno);

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

ALTER TABLE MEMBER MODIFY (MEMPW VARCHAR2(30) NOT NULL,
							MEMID VARCHAR2(30) NOT NULL,
							MEMNAME VARCHAR2(30) NOT NULL,
							MEMADDRESS VARCHAR2(100) NOT NULL,
							MEMPHONE VARCHAR2(20) NOT NULL);
------��� ���̺� �Ӽ� �ΰ����� ����							
ALTER TABLE MEMBER ADD MEMTEL VARCHAR2(20) NULL;
ALTER TABLE MEMBER ADD MEMGENDER VARCHAR2(10) NOT NULL;
ALTER TABLE MEMBER ADD EMAILAGREE VARCHAR2(5) NOT NULL;
------��� ���̺� �Ӽ� �߰�


-- ATTEND table column attribute's ���� ���� changed. (�ѱ���)
ALTER TABLE ATTEND DROP COLUMN attdValue;
ALTER TABLE ATTEND ADD attdValue1 VARCHAR2(10) NULL;
-- attdValue1 ~ 31���� �߰��մϴ�...
ALTER TABLE ATTEND ADD attdValue31 VARCHAR2(10) NULL;