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
--���� ���̺�
insert into authority (authNo, departName) values (0, '�Ϲ�����');
insert into authority (authNo, departName) values (1, '������');
insert into authority (authNo, departName) values (2, '������');
insert into authority (authNo, departName) values (3, '����');
insert into authority (authNo, departName) values (4, '�л�');
insert into authority (authNo, departName) values (5, '������');
insert into authority (authNo, departName) values (9, '������');

--ȸ�� �߰�
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno,MEMGENDER,EMAILAGREE) values (mem_seq.nextval, 'test1', 'korean', '�ѱ���', '�츮��', 'korea@korea.com', '000-0000-000', 1,'����','Y');
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno,MEMGENDER,EMAILAGREE) values (mem_seq.nextval, 'test2', 'korean2', '�ѱ���2', '�츮��2', 'korea@korea.com2', '000-0000-0002', 1,'����','N');
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno,MEMGENDER,EMAILAGREE) values (mem_seq.nextval, 'test3', 'korean3', '�ѱ���3', '�츮��3', 'korea@korea.com3', '000-0000-0003', 1,'����','N');
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno,MEMGENDER,EMAILAGREE) values (mem_seq.nextval, 'test4', 'korean4', '�ѱ���4', '�츮��4', 'korea@korea.com4', '000-0000-0004', 1,'����','Y');
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno,MEMGENDER,EMAILAGREE) values (mem_seq.nextval, 'admin', 'admin', 'admin', 'address', 'email', 'phone', 9,'����','Y');

insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno, MEMGENDER, EMAILAGREE, memtel, joinday) values (mem_seq.nextval, 'kimnormal', 'kim', '���Ϲ�', '���Ϲ��� ��', 'kimnormal@naver.com', '010-2599-8765', 0, '����', 'Y', '02-1566-7897', sysdate);
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno, MEMGENDER, EMAILAGREE, memtel, joinday) values (mem_seq.nextval, 'kimdaeri', 'kim', '��븮', '��븮�� ��', 'kimdaeri@gmail.com', '010-1633-7511', 1 '����', 'Y', '031-435-8383', sysdate);
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno, MEMGENDER, EMAILAGREE, memtel, joinday) values (mem_seq.nextval, 'kimsales', 'kim', '�迵��', '�迵���� ��', 'kimsales@gmail.com', '010-7544-9984', 2, '����', 'N', '02-765-5855', sysdate);
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno, MEMGENDER, EMAILAGREE, memtel, joinday) values (mem_seq.nextval, 'kimteacher', 'kim', '�輱��', '�輱���� ��', 'kimteacher@gmail.com', '010-1599-7878', 3, '����', 'N', '02-5345-6566', sysdate);
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno, MEMGENDER, EMAILAGREE, memtel, joinday) values (mem_seq.nextval, 'kimstudent', 'kim', '���л�', '���л��� ��', 'kimstudent@gmail.com', '010-2468-7852', 4, '����', 'N', '031-4600-4566', sysdate);
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno, MEMGENDER, EMAILAGREE, memtel, joinday) values (mem_seq.nextval, 'kimgraduate', 'kim', '������', '�������� ��', 'kimgraduate@gmail.com', '010-3211-6123', 5, '����', 'Y', '031-847-3834', sysdate);

insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno, MEMGENDER, EMAILAGREE, memtel, joinday) values (mem_seq.nextval, 'student1', 'student', '�л�1', '�л�1�� ��', 'student1@naver.com', '010-1616-1265', 4, '����', 'N', '031-6536-4884', sysdate);
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno, MEMGENDER, EMAILAGREE, memtel, joinday) values (mem_seq.nextval, 'student2', 'student', '�л�2', '�л�2�� ��', 'student2@naver.com', '010-2455-3133', 4, '����', 'N', '031-5345-5765', sysdate);
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno, MEMGENDER, EMAILAGREE, memtel, joinday) values (mem_seq.nextval, 'student3', 'student', '�л�3', '�л�3�� ��', 'student3@naver.com', '010-3213-4637', 4, '����', 'Y', '02-4355-8877', sysdate);
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno, MEMGENDER, EMAILAGREE, memtel, joinday) values (mem_seq.nextval, 'student4', 'student', '�л�4', '�л�4�� ��', 'student4@naver.com', '010-7676-7221', 4, '����', 'N', '02-2334-1122', sysdate);
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno, MEMGENDER, EMAILAGREE, memtel, joinday) values (mem_seq.nextval, 'student5', 'student', '�л�5', '�л�5�� ��', 'student5@naver.com', '010-7990-1557', 4, '����', 'Y', '02-5345-1231', sysdate);

--������ �߰�
insert into management (admno, memno) values (adm_seq.nextval, '1');
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno,MEMGENDER,EMAILAGREE) values (mem_seq.nextval, 'kimnormal', 'kim', '���Ϲ�', '���Ϲ��� ��', 'kimnormal@naver.com', '010-2599-8765', 0,'����','N');
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno,MEMGENDER,EMAILAGREE) values (mem_seq.nextval, 'kimdaeri', 'kim', '��븮', '��븮�� ��', 'kimdaeri@gmail.com', '010-1633-7511', 1,'����','Y');
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno,MEMGENDER,EMAILAGREE) values (mem_seq.nextval, 'kimsales', 'kim', '�迵��', '�迵���� ��', 'kimsales@gmail.com', '010-7544-9984', 2,'����','Y');
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno,MEMGENDER,EMAILAGREE) values (mem_seq.nextval, 'kimteacher', 'kim', '�輱��', '�輱���� ��', 'kimteacher@gmail.com', '010-1599-7878', 3,'����','N');
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno,MEMGENDER,EMAILAGREE) values (mem_seq.nextval, 'kimstudent', 'kim', '���л�', '���л��� ��', 'kimstudent@gmail.com', '010-2468-7852', 4,'����','N');
insert into member (memno, memid, mempw, memname, memaddress, mememail, memphone, authno,MEMGENDER,EMAILAGREE) values (mem_seq.nextval, 'kimgraduate', 'kim', '������', '�������� ��', 'kimgraduate@gmail.com', '010-3211-6123', 5,'����','Y');

--������ �߰� (admNo,admName,memNo ��)
insert into admin values (adm_seq.nextval, 'admin', '1');

--�л� �߰� (stuNo,memNo,roomNo ��)
insert into student values (stu_seq.nextval, 1, 1);
insert into student (stuno, memno, roomno) values (stu_seq.nextval, 2, 2);
insert into student (stuno, roomno, memno) values (stu_seq.nextval, 2, 27);
insert into student (stuno, roomno, memno) values (stu_seq.nextval, 2, 28);
insert into student (stuno, roomno, memno) values (stu_seq.nextval, 2, 29);
insert into student (stuno, roomno, memno) values (stu_seq.nextval, 2, 30);
insert into student (stuno, roomno, memno) values (stu_seq.nextval, 2, 31);

--���� �߰�
insert into teacher (tchno, tchname, memno) values (TCH_SEQ.nextval, '�輱��', 19);
insert into teacher values (tch_seq.nextval,'�ѱ���',1);

--���ǽ� �߰� (roomNo,curNo,tchNo ��)
insert into sturoom (roomno, tchno, curno) values (room_seq.nextval, 2, null);
insert into sturoom (roomno, tchno, curno) values (room_seq.nextval, 2, null);
insert into sturoom (roomno, tchno, curno) values (room_seq.nextval, 2, null);
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
insert into register (regNo,memNo,name,email,tel) values (reg_seq.nextval,13,'�ѱ���','korea@korea.com','000-0000-000');

--������ ���⼭ �ϼ���---------------
select student.stuno, member.memname, student.roomno, nvl(grade.javagrade, 0) javagrade, nvl(grade.webgrade, 0) webgrade, nvl(grade.framegrade, 0) framegrade from student, member, grad
e where member.memno=student.memno and student.stuno=grade.stuno order by stuno;

select stuno, memname, roomno from student, member where student.memno = member.memno and roomno is null;
update sturoom set tchno = 21 where roomno = 2;

select stuno, member.memname, roomno from student, member where student.memno = member.memno;
select javagrade, webgrade, framerade,stuno,roomno, member.mamname from grade, member where member.memno = (select memno from student);

update register set curNo=4 where curNo is null;

SELECT student.stuno, student.roomno, member.memname from student, member where STUDENT.MEMNO = MEMBER.MEMNO;
update teacher set roomno = null where tchno = 1;
--���� ������ ������ ��!----------------
