-- stuCur 테이블 curriculum으로 이름 변경
rename studyCur to curriculum;

-- 커리큘럼 테이블 null값 허용
alter table curriculum modify(curNo null, tchNo null);

-- 학생 테이블 행정부 번호 컬럼 삭제
alter table student drop column admNo;

-- register 테이블 submitValue -> file1로 변경
alter table register rename column submitValue to file1;

-- register 테이블 file2컬럼 추가
alter table register add(file2 VARCHAR2(10));