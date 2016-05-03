--�����Ӱ� �߰����ּ���!-----------
-- ���� �� ����
-- authority(����) �߰�
-- studyCur �߰�
-- curNo : Ŀ��ŧ�� ��ȣ, curName : Ŀ���ķ� �̸�, curLocation : �������, curDateS : �������۳�¥, curDateE : ���� ���ᳯ¥, curSupply : �����ο�
-- ���ǽ� ���̺��� roomno�� �������� �ƴ� �Ϲ� ���� ��� �� ��, curno�� tchno �ΰ� ���ǰ� ����
-- register �߰�/��Ƹ�

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
insert into member values (mem_seq.nextval, 1, 'korean', '�ѱ���', '�츮��', 'korea@korea.com', '000-0000-000', 1);
insert into member values (mem_seq.nextval, 1, 'korean2', '�ѱ���2', '�츮��2', 'korea@korea.com2', '000-0000-0002', 1);
insert into member values (mem_seq.nextval, 'admin', 'admin', 'admin', 'address', 'email', 'phone', 9);

--������ �߰� (admNo,admName,memNo ��)
insert into admin values (adm_seq.nextval, 'admin', '1');

--�л� �߰� (stuNo,memNo,roomNo ��)
insert into student (stuno, memno, roomno) values (stu_seq.nextval, 20, 2);
insert into student values (stu_seq.nextval, 1, 1);

--���� �߰�
insert into teacher (tchno, tchname, memno) values (TCH_SEQ.nextval, '�輱��', 21);
insert into teacher values (tch_seq.nextval, 2, '�ѱ���');

--���ǽ� �߰� (roomNo,curNo,tchNo ��)
insert into sturoom (roomno, tchno, curno) values (1, 2, 1);
insert into sturoom (roomno, tchno, curno) values (2, 2, 2);
insert into sturoom (roomno, tchno, curno) values (3, 2, 3);
insert into sturoom values (room_seq.nextval, null, 2);
insert into sturoom values (room_seq.nextval, null, null);


--Ŀ��ŧ�� �߰� (curNo, curName, curLocation, curDate, curSupply ��)
insert into curriculum (curno, curname, curlocation, curdate, cursupply) values (cur_seq.nextval, '�������������ӿ�ũ', '1���ǽ�', '2016-04-01', '20');
insert into curriculum (curno, curname, curlocation, curdate, cursupply) values (cur_seq.nextval, '�������������ӿ�ũ', '2���ǽ�', '2016-05-01', '20');
insert into curriculum (curno, curname, curlocation, curdate, cursupply) values (cur_seq.nextval, '�������������ӿ�ũ', '3���ǽ�', '2016-06-01', '20');
insert into curriculum values (cur_seq.nextval, '�������������ӿ�ũ', '1���ǽ�', '2016/04/01',20);
insert into curriculum values (cur_seq.nextval, '�ѱ��������ӿ�ũ', '2���ǽ�', '2016/04/01',20);
insert into curriculum values (cur_seq.nextval, '�ڹٰ����ڰ���', '3���ǽ�', '2016/05/01',20);

--������ �߰�
insert into sales (salesno, memno) values (sal_seq.nextval, 18);

--���� �߰�
insert into grade (grdno, stuno, roomno, javagrade, webgrade, framegrade) values (grd_seq.nextval, 4, 2, 90, 85, 65);

--������û�� �߰� (regNo,memNo,file1,file2,name,email,tel,gubun,job,jobinfo,time,pay,content,password ��)
insert into register (regNo,memNo) values (reg_seq.nextval,1);


-- �ѱ��� ���̵�����--
-- member
select * from member order by memno;
insert into member values (mem_seq.nextval, 'a', 'a', '�л�1', '���Ϲ��� ��', 'kimnormal@naver.com', '010-2599-8765', 4);
insert into member values (mem_seq.nextval, 'a', 'a', '�л�2', '���Ϲ��� ��', 'kimnormal@naver.com', '010-2599-8765', 4);
insert into member values (mem_seq.nextval, 'a', 'a', '�л�3', '���Ϲ��� ��', 'kimnormal@naver.com', '010-2599-8765', 4);
insert into member values (mem_seq.nextval, 'a', 'a', '�л�4', '���Ϲ��� ��', 'kimnormal@naver.com', '010-2599-8765', 4);
insert into member values (mem_seq.nextval, 'a', 'a', '�л�5', '���Ϲ��� ��', 'kimnormal@naver.com', '010-2599-8765', 4);

insert into member values (mem_seq.nextval, 'b', 'b', '����1', '���Ϲ��� ��', 'kimnormal@naver.com', '010-2599-8765', 3);
-- teacher
insert into teacher (tchno, tchname, memno) values (TCH_SEQ.nextval, '�輱��', 6);
-- curriculum
insert into curriculum (curno, curname, curlocation, curdate, cursupply) values (cur_seq.nextval, '�������������ӿ�ũ', '1���ǽ�', '2016-04-01', '20');
-- stuRoom
insert into sturoom (roomno, tchno, curno) values (1, 1, 1);
-- student
insert into student (stuno, memno, roomno) values (stu_seq.nextval, 1, 1);
insert into student (stuno, memno, roomno) values (stu_seq.nextval, 2, 1);
insert into student (stuno, memno, roomno) values (stu_seq.nextval, 3, 1);
insert into student (stuno, memno, roomno) values (stu_seq.nextval, 4, 1);
insert into student (stuno, memno, roomno) values (stu_seq.nextval, 5, 1);

--insert into attendValue values (atv_seq.nextval, '2016-05-01', '�⼮');

-- �ѱ��� ���̵����� �� --

--������ ���⼭ �ϼ���---------------
select * from studyCur;
select * from sturoom;
select * from register;
select * from student;
select * from member;
select curDateS, last_day(curDateS) from studyCur;
select TEACHER.tchno, TEACHER.tchname, STUROOM.roomno from TEACHER, STUROOM;

update sturoom set tchno = 21 where roomno = 2;

select t.tchName from member m, teacher t where m.memno = t.memno and m.memid='b';

select * from member;

select r.roomNo from stuRoom r, teacher t where 
r.tchNo = (select t.tchNo from member m, teacher t where m.memno = t.memno and m.memid='b');

--���� ������ ������ ��!----------------


