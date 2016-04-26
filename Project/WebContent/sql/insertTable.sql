insert into authority (authNo, departName) values (0, '일반유저');
insert into authority (authNo, departName) values (1, '행정부');
insert into authority (authNo, departName) values (2, '영업부');
insert into authority (authNo, departName) values (3, '강사');
insert into authority (authNo, departName) values (4, '학생');
insert into authority (authNo, departName) values (5, '수료자');
insert into authority (authNo, departName) values (9, '관리자');

insert into member values (mem_seq.nextval, 'admin', 'admin', 'admin', 'address', 'email', 'phone', 9);

--회원 추가
insert into member values (mem_seq.nextval, 1, 'korean', '한국인', '우리집', 'korea@korea.com', '000-0000-000', 1);

--강사 추가
insert into teacher values (tch_seq.nextval, 2, '한국인');

--강의실 추가
insert into sturoom values (room_seq.nextval, 1, 1);

--커리큘럼 추가
insert into studycur values (cur_seq.nextval, '전자정부프레임워크','1강의실',sysdate,20);
insert into studycur values (cur_seq.nextval, '한국인프레임워크','2강의실',sysdate,20);
--//curlocation 컬럼을 강의실테이블의 강의실 번호를 참조받게 변경해야 함.