<<<<<<< HEAD
--�����Ӱ� �߰����ּ���!-----------
-- ���� �� ����
-- authority(����) �߰�
-- studyCur �߰�
-- curNo : Ŀ��ŧ�� ��ȣ, curName : Ŀ���ķ� �̸�, curLocation : �������, curDateS : �������۳�¥, curDateE : ���� ���ᳯ¥, curSupply : �����ο�
-- ���ǽ� ���̺��� roomno�� �������� �ƴ� �Ϲ� ���� ��� �� ��, curno�� tchno �ΰ� ���ǰ� ����
----------------------------------------
-- �����ؾ� �� ����
-- ��� ���̺� ������ �÷� �߰��ϴ°� ������
-- ������ �÷��� ����(management)
------------------------------------------

insert into authority (authNo, departName) values (0, '�Ϲ�����');
insert into authority (authNo, departName) values (1, '������');
insert into authority (authNo, departName) values (2, '������');
insert into authority (authNo, departName) values (3, '����');
insert into authority (authNo, departName) values (4, '�л�');
insert into authority (authNo, departName) values (5, '������');
insert into authority (authNo, departName) values (9, '������');

--ȸ�� �߰�
insert into member values (mem_seq.nextval, 1, 'korean', '�ѱ���', '�츮��', 'korea@korea.com', '000-0000-000', 1);
insert into member values (mem_seq.nextval, 1, 'korean2', '�ѱ���2', '�츮��2', 'korea@korea.com2', '000-0000-0002', 1);
insert into member values (mem_seq.nextval, 'admin', 'admin', 'admin', 'address', 'email', 'phone', 9);
--������ �߰�
insert into admin values (adm_seq.nextval, 'admin', '1');

--�л� �߰�
insert into student values (stu_seq.nextval, 3, 1, 1);

--���� �߰�
insert into teacher values (tch_seq.nextval, 2, '�ѱ���');

--���ǽ� �߰�
insert into sturoom values (room_seq.nextval, 1, 1);
insert into sturoom values (0, null, null);

--Ŀ��ŧ�� �߰�
insert into studycur values (cur_seq.nextval, '�������������ӿ�ũ','1���ǽ�',sysdate,20);
insert into studycur values (cur_seq.nextval, '�ѱ��������ӿ�ũ','2���ǽ�',sysdate,20);
insert into studyCur (curNo, curName, curLocation, curDate, curSupply) values (cur_seq.nextval,'�ڹٰ����ڰ���','�Ǳ�����','2016/05/01',20);

--������ ���⼭ �ϼ���---------------
select * from studyCur;
select curDateS, last_day(curDateS) from studyCur;
select TEACHER.tchno, TEACHER.tchname, STUROOM.roomno from TEACHER, STUROOM;

update sturoom set tchno = 21 where roomno = 2;
--���� ������ ������ ��!----------------

