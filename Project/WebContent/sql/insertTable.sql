-- authority(����) �߰�

insert into authority (authNo, departName) values (0, '�Ϲ�����');
insert into authority (authNo, departName) values (1, '������');
insert into authority (authNo, departName) values (2, '������');
insert into authority (authNo, departName) values (3, '����');
insert into authority (authNo, departName) values (4, '�л�');
insert into authority (authNo, departName) values (5, '������');
insert into authority (authNo, departName) values (9, '������');

-- studyCur �߰�
-- curNo : Ŀ��ŧ�� ��ȣ, curName : Ŀ���ķ� �̸�, curLocation : �������, curDateS : �������۳�¥, curDateE : ���� ���ᳯ¥, curSupply : �����ο�

insert into studyCur (curNo, curName, curLocation, curDate, curSupply) values (cur_seq.nextval,'�ڹٰ����ڰ���','�Ǳ�����','2016/05/01',20);

select * from studyCur;

select curDateS, last_day(curDateS) from studyCur;