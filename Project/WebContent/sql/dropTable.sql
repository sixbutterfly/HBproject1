drop table attend purge;

drop table grade purge;

drop table sales purge;

drop table student purge;

drop table sturoom purge;

drop table teacher purge;

drop table register purge;

drop table admin purge;

drop table member purge;

-- studyCur 테이블이 curriculum으로 바뀜.
drop table curriculum purge;

drop table authority purge;

drop table notice purge;

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

