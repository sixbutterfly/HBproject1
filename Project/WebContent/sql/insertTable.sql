-- authority(권한) 추가

insert into authority (authNo, departName) values (0, '일반유저');
insert into authority (authNo, departName) values (1, '행정부');
insert into authority (authNo, departName) values (2, '영업부');
insert into authority (authNo, departName) values (3, '강사');
insert into authority (authNo, departName) values (4, '학생');
insert into authority (authNo, departName) values (5, '수료자');
insert into authority (authNo, departName) values (9, '관리자');

-- studyCur 추가
-- curNo : 커리큘럼 번호, curName : 커리뮬럼 이름, curLocation : 교육장소, curDateS : 교육시작날짜, curDateE : 교육 종료날짜, curSupply : 교육인원

insert into studyCur (curNo, curName, curLocation, curDate, curSupply) values (cur_seq.nextval,'자바개발자과정','건국대점','2016/05/01',20);

select * from studyCur;

select curDateS, last_day(curDateS) from studyCur;