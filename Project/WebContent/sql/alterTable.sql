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