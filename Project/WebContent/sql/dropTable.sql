drop table attend CASCADE CONSTRAINT purge;

drop table grade CASCADE CONSTRAINT purge;

drop table sales CASCADE CONSTRAINT purge;

drop table student CASCADE CONSTRAINT purge;

drop table sturoom CASCADE CONSTRAINT purge;

drop table teacher CASCADE CONSTRAINT purge;

drop table register CASCADE CONSTRAINT purge;

drop table admin CASCADE CONSTRAINT purge;

drop table member CASCADE CONSTRAINT purge;

drop table login CASCADE CONSTRAINT purge;

drop table qna CASCADE CONSTRAINT purge;

drop table management CASCADE CONSTRAINT purge;

drop table after CASCADE CONSTRAINT purge;

-- studyCur 테이블이 curriculum으로 바뀜.
drop table curriculum CASCADE CONSTRAINT purge;

drop table authority CASCADE CONSTRAINT purge;

drop table notice CASCADE CONSTRAINT purge;

purge recyclebin;
-------------------------------------------------------------------------------
-- 시퀀스 삭제 --

drop SEQUENCE adm_seq;

drop SEQUENCE attd_seq;	

drop SEQUENCE grd_seq;

drop SEQUENCE mem_seq;

drop SEQUENCE reg_seq;

drop SEQUENCE sal_seq;

drop SEQUENCE stu_seq;

drop SEQUENCE cur_seq;

drop SEQUENCE room_seq;

drop SEQUENCE tch_seq;

drop SEQUENCE not_seq;

