-- register table column attribute's some changed. (������)
ALTER TABLE REGISTER MODIFY JOBINFO VARCHAR2(350);
ALTER TABLE REGISTER MODIFY CONTENT VARCHAR2(200) NULL;

--���ǽ� ���̺��� curno, tchno�� �ΰ� ���ǰ� ����
alter table sturoom modify(curNo null, tchNo null);
commit

--���簡 ���ǽ� ��ȣ�� ���� ����
alter table teacher add (roomno number(5));
ALTER TABLE teacher
ADD FOREIGN KEY (roomno) REFERENCES sturoom(roomno);

