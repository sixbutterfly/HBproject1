-- 필수는 아니지만 실행하면 화면 보기에 편합니다.
-- register table
column email format a10;
column tel format a14;
column gubun format a10;
column job format a15;
column jobinfo format a10;
column time format a15;
column pay format a8;
column content format a10;
column password format a15;
column name format a6;
column file1 format a15;
column file2 format a15;
-- page setter
set linesize 250;
set pagesize 30;
-- member table
column memid format a15;
column memname format a6;
column mempw format a15;
column memaddress format a15;
column mememail format a15;