--강의실 테이블의 curno, tchno가 널값 허용되게 변경
alter table sturoom modify(curNo null, tchNo null);
commit

--강사가 강의실 번호를 참조 받음
alter table teacher add (roomno number(5));
ALTER TABLE teacher
ADD FOREIGN KEY (roomno) REFERENCES sturoom(roomno);

