-------------------------------------------------------------------------------
-- 시퀀스 삭제 --

drop SEQUENCE mng_seq;

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
drop SEQUENCE qna_seq;
drop SEQUENCE aft_seq;
drop SEQUENCE job_seq;
drop SEQUENCE jaf_seq;

-------------------------------------------------------------------------------
-- 시퀀스 생성 --

CREATE SEQUENCE mng_seq start with 1 increment by 1 maxvalue 1000;

CREATE SEQUENCE attd_seq start with 1 increment by 1 maxvalue 1000;	

CREATE SEQUENCE grd_seq start with 1 increment by 1 maxvalue 1000;

CREATE SEQUENCE mem_seq start with 2 increment by 1 maxvalue 1000;

CREATE SEQUENCE reg_seq start with 1 increment by 1 maxvalue 1000;

CREATE SEQUENCE sal_seq start with 1 increment by 1 maxvalue 1000;

CREATE SEQUENCE stu_seq start with 1 increment by 1 maxvalue 1000;

CREATE SEQUENCE cur_seq start with 1 increment by 1 maxvalue 1000;

CREATE SEQUENCE room_seq start with 1 increment by 1 maxvalue 1000;

CREATE SEQUENCE tch_seq start with 1 increment by 1 maxvalue 1000;

----------------------------------------------------------------
-- 공지사항 시퀸스
CREATE SEQUENCE not_seq start with 1 increment by 1 maxvalue 1000;
-- 문의게시판 시퀸스
CREATE SEQUENCE qna_seq start with 1 increment by 1 maxvalue 1000;
-- 수강후기 시퀸스
CREATE SEQUENCE aft_seq start with 1 increment by 1 maxvalue 1000;
-- 채용정보 시퀸스
CREATE SEQUENCE job_seq start with 1 increment by 1 maxvalue 1000;
-- 취업 후기 시퀸스
CREATE SEQUENCE jaf_seq start with 1 increment by 1 maxvalue 1000;
