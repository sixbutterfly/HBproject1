--�����Ӱ� �߰����ּ���!-----------
-- ���� �� ����
-- authority(����) �߰�
-- studyCur �߰�
-- curNo : Ŀ��ŧ�� ��ȣ, curName : Ŀ���ķ� �̸�, curLocation : �������, curDateS : �������۳�¥, curDateE : ���� ���ᳯ¥, curSupply : �����ο�

----------------------------------------
-- �����ؾ� �� ����
-- ��� ���̺� ������ �÷� �߰��ϴ°� ������
-- ������ �÷��� ����(management)
------------------------------------------
--���� ���̺�
insert into authority (authNo, departName) values (0, '�Ϲ�����');
insert into authority (authNo, departName) values (1, '������');
insert into authority (authNo, departName) values (2, '������');
insert into authority (authNo, departName) values (3, '����');
insert into authority (authNo, departName) values (4, '�л�');
insert into authority (authNo, departName) values (5, '������');
insert into authority (authNo, departName) values (9, '������');

--ȸ�� �߰�
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno) values (mem_seq.nextval, 1, 'korean', '�ѱ���', '�츮��', 'korea@korea.com', '000-0000-000', 1);
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno) values (mem_seq.nextval, 1, 'korean2', '�ѱ���2', '�츮��2', 'korea@korea.com2', '000-0000-0002', 1);
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno) values (mem_seq.nextval, 'admin', 'admin', 'admin', 'address', 'email', 'phone', 9);

insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno) values (mem_seq.nextval, 'kimnormal', 'kim', '���Ϲ�', '���Ϲ��� ��', 'kimnormal@naver.com', '
010-2599-8765', 0);
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno) values (mem_seq.nextval, 'kimdaeri', 'kim', '��븮', '��븮�� ��', 'kimdaeri@gmail.com', '01
0-1633-7511', 1);
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno) values (mem_seq.nextval, 'kimsales', 'kim', '�迵��', '�迵���� ��', 'kimsales@gmail.com', '01
0-7544-9984', 2);
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno) values (mem_seq.nextval, 'kimteacher', 'kim', '�輱��', '�輱���� ��', 'kimteacher@gmail.com',
 '010-1599-7878', 3);
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno) values (mem_seq.nextval, 'kimstudent', 'kim', '���л�', '���л��� ��', 'kimstudent@gmail.com',
 '010-2468-7852', 4);
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno) values (mem_seq.nextval, 'kimgraduate', 'kim', '������', '�������� ��', 'kimgraduate@gmail.com
', '010-3211-6123', 5);

--������ �߰�
insert into management (admno, memno) values (adm_seq.nextval, '1');

--�л� �߰�
insert into student (stuno, memno, roomno) values (stu_seq.nextval, 20, 2);

--���� �߰�
insert into teacher (tchno, tchname, memno) values (TCH_SEQ.nextval, '�輱��', 19);

--���ǽ� �߰�
insert into sturoom (roomno, tchno, curno) values (1, 2, 1);
insert into sturoom (roomno, tchno, curno) values (2, 2, 2);
insert into sturoom (roomno, tchno, curno) values (3, 2, 3);

--Ŀ��ŧ�� �߰�
insert into curriculum (curno, curname, curlocation, curdate, cursupply) values (cur_seq.nextval, '�������������ӿ�ũ', '1���ǽ�', '2016-04-01', '20');
insert into curriculum (curno, curname, curlocation, curdate, cursupply) values (cur_seq.nextval, '�������������ӿ�ũ', '2���ǽ�', '2016-05-01', '20');
insert into curriculum (curno, curname, curlocation, curdate, cursupply) values (cur_seq.nextval, '�������������ӿ�ũ', '3���ǽ�', '2016-06-01', '20');

--������ �߰�
insert into sales (salesno, memno) values (sal_seq.nextval, 18);

--���� �߰�
insert into grade (grdno, stuno, roomno, javagrade, webgrade, framegrade) values (grd_seq.nextval, 4, 2, 90, 85, 65);

--������ ���⼭ �ϼ���---------------
select * from studyCur;
select curDateS, last_day(curDateS) from studyCur;


--���� ������ ������ ��!----------------

