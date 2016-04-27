<<<<<<< HEAD
--자유롭게 추가해주세요!-----------
-- 변경 된 사항
-- authority(권한) 추가
-- studyCur 추가
-- curNo : 커리큘럼 번호, curName : 커리뮬럼 이름, curLocation : 교육장소, curDateS : 교육시작날짜, curDateE : 교육 종료날짜, curSupply : 교육인원

----------------------------------------
-- 변경해야 할 사항
-- 멤버 테이블에 가입일 컬럼 추가하는게 좋을듯
-- 행정부 컬럼명 변경(management)
------------------------------------------

insert into authority (authNo, departName) values (0, '일반유저');
insert into authority (authNo, departName) values (1, '행정부');
insert into authority (authNo, departName) values (2, '영업부');
insert into authority (authNo, departName) values (3, '강사');
insert into authority (authNo, departName) values (4, '학생');
insert into authority (authNo, departName) values (5, '수료자');
insert into authority (authNo, departName) values (9, '관리자');

--회원 추가
insert into member values (mem_seq.nextval, 1, 'korean', '한국인', '우리집', 'korea@korea.com', '000-0000-000', 1);
insert into member values (mem_seq.nextval, 1, 'korean2', '한국인2', '우리집2', 'korea@korea.com2', '000-0000-0002', 1);
insert into member values (mem_seq.nextval, 'admin', 'admin', 'admin', 'address', 'email', 'phone', 9);
--행정부 추가
insert into admin values (adm_seq.nextval, 'admin', '1');

--학생 추가 (stuNo,memNo,roomNo,admNo 순)
insert into student values (stu_seq.nextval, 3, 1, 1);

--강사 추가
insert into teacher values (tch_seq.nextval, 2, '한국인');

--강의실 추가 (roomNo,curNo,tchNo 순)
insert into sturoom values (room_seq.nextval, null, 2);
insert into sturoom values (room_seq.nextval, null, null);

--커리큘럼 추가
insert into studycur values (cur_seq.nextval, '전자정부프레임워크', '1강의실', '2016/04/01',20);
insert into studycur values (cur_seq.nextval, '한국인프레임워크', '2강의실', '2016/04/01',20);
insert into studyCur values (cur_seq.nextval, '자바개발자과정', '3강의실', '2016/05/01',20);

--실험은 여기서 하세요---------------
select * from studyCur;
select curDateS, last_day(curDateS) from studyCur;
select * from sturoom;

--끝난 실험은 삭제할 것!----------------

