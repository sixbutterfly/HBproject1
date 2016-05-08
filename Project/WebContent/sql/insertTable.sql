--권한
insert into authority (authNo, departName) values (0, '일반유저');
insert into authority (authNo, departName) values (1, '행정부');
insert into authority (authNo, departName) values (2, '영업부');
insert into authority (authNo, departName) values (3, '강사');
insert into authority (authNo, departName) values (4, '학생');
insert into authority (authNo, departName) values (5, '수료자');
insert into authority (authNo, departName) values (9, '관리자');

--admin
insert into MEMBER values(1, 'admin', 'admin', '관리자','03721, 서울 서대문구 봉원사2길 10-2 (신촌동) ㄴㅇㄹ','korea1@naver.com','010-0000-0000','02-0000-0000', '남자','n',sysdate,9);
--회원
insert into MEMBER values(mem_seq.nextval, 'a1111111', 'korean1', '한국인1','03721, 서울 서대문구 봉원사2길 10-2 (신촌동) ㄴㅇㄹ','korea1@naver.com','010-0000-0000','02-0000-0000', '남자','n',sysdate,1);
insert into MEMBER values(mem_seq.nextval, 'a1111111', 'korean2', '한국인2','03721, 서울 서대문구 봉원사2길 10-2 (신촌동) ㄴㅇㄹ','korea2@naver.com','010-0000-0000','02-0000-0000', '남자','n',sysdate,2);
insert into MEMBER values(mem_seq.nextval, 'a1111111', 'korean3', '한국인3','03721, 서울 서대문구 봉원사2길 10-2 (신촌동) ㄴㅇㄹ','korea3@naver.com','010-0000-0000','02-0000-0000', '남자','n',sysdate,3);
insert into MEMBER values(mem_seq.nextval, 'a1111111', 'korean4', '한국인4','03721, 서울 서대문구 봉원사2길 10-2 (신촌동) ㄴㅇㄹ','korea4@naver.com','010-0000-0000','02-0000-0000', '남자','n',sysdate,3);
insert into MEMBER values(mem_seq.nextval, 'a1111111', 'korean5', '한국인5','03721, 서울 서대문구 봉원사2길 10-2 (신촌동) ㄴㅇㄹ','korea5@naver.com','010-0000-0000','02-0000-0000', '남자','n',sysdate,3);
insert into MEMBER values(mem_seq.nextval, 'a1111111', 'korean6', '한국인6','03721, 서울 서대문구 봉원사2길 10-2 (신촌동) ㄴㅇㄹ','korea5@naver.com','010-0000-0000','02-0000-0000', '남자','n',sysdate,4);
insert into MEMBER values(mem_seq.nextval, 'a1111111', 'korean7', '한국인7','03721, 서울 서대문구 봉원사2길 10-2 (신촌동) ㄴㅇㄹ','korea5@naver.com','010-0000-0000','02-0000-0000', '남자','n',sysdate,4);
insert into MEMBER values(mem_seq.nextval, 'a1111111', 'korean8', '한국인8','03721, 서울 서대문구 봉원사2길 10-2 (신촌동) ㄴㅇㄹ','korea5@naver.com','010-0000-0000','02-0000-0000', '남자','n',sysdate,4);
insert into MEMBER values(mem_seq.nextval, 'a1111111', 'korean9', '한국인9','03721, 서울 서대문구 봉원사2길 10-2 (신촌동) ㄴㅇㄹ','korea5@naver.com','010-0000-0000','02-0000-0000', '남자','n',sysdate,4);
insert into MEMBER values(mem_seq.nextval, 'a1111111', 'korean10', '한국인10','03721, 서울 서대문구 봉원사2길 10-2 (신촌동) ㄴㅇㄹ','korea5@naver.com','010-0000-0000','02-0000-0000', '남자','n',sysdate,4);
insert into MEMBER values(mem_seq.nextval, 'a1111111', 'korean11', '한국인11','03721, 서울 서대문구 봉원사2길 10-2 (신촌동) ㄴㅇㄹ','korea5@naver.com','010-0000-0000','02-0000-0000', '남자','n',sysdate,4);

--행정부
insert into MANAGEMENT values(mng_seq.nextval, 2);

--영업부
insert into sales values(sal_seq.nextval, 3);
--강사
insert into teacher values(tch_seq.nextval,4,null);
insert into teacher values(tch_seq.nextval,5,null);
insert into teacher values(tch_seq.nextval,6,null);
--학생
insert into student values(stu_seq.nextval,7,null,null);
insert into student values(stu_seq.nextval,8,null,null);
insert into student values(stu_seq.nextval,9,null,null);
insert into student values(stu_seq.nextval,10,null,null);
insert into student values(stu_seq.nextval,11,null,null);
insert into student values(stu_seq.nextval,12,null,null);
