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
