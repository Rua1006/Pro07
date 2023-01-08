create database mfds;
-- 식품의약품안전처 
use mfds;

-- 회원 테이블(자동증가번호, 아이디, 비밀번호, 이름) 
create table users (
	no int primary key auto_increment,
    id varchar(100) not null,
    pw varchar(300) not null,
    name varchar(100) not null
);
desc users;
-- 더미데이터 삽입 
insert into users(id, pw, name) values ('dumy','12345','더미');
select * from users;

-- 공지사항 게시판(자동증가번호, 제목, 내용, 작성일, 작성자)
create table notice (
	no int primary key auto_increment,
    title varchar(200) not null,
    content varchar(1000) not null,
    resdate datetime default now(),
    author varchar(100)
);
desc notice; 
-- 더미데이터 삽입
insert into notice(title, content, author) values ('테스트타이틀','테스트콘텐츠','dumy');
select * from notice;

-- 자유게시판(자동증가번호, 제목, 내용, 작성일, 작성자)
create table freeboard (
	no int primary key auto_increment,
	title varchar(200) not null,
    content varchar(1000) not null,
    resdate datetime default now(),
    author varchar(100)
);
desc freeboard;
-- 더미데이터 삽입 
insert into freeboard(title, content, author) values ('자유테스트','자유테스트내용','dumy');
select * from freeboard;

-- 질의응답 게시판 (자동증가 번호, 제목, 내용, 작성자, 작성일, 비밀글여부, 질문답변구분)
create table qnaboard(
	qno int primary key auto_increment,
    title varchar(200) not null,
    content varchar(1000) not null,
	author varchar(50) not null,
    resdate datetime default now(),
    lev int default 0,
    pos int
);

desc qnaboard;
-- 더미데이터 삽입
-- 질문 
insert into qnaboard(title, content, author, lev, pos) values('질문테스트','질문테스트내용','dumy',0,'0'); 
-- 답변
insert into qnaboard(title, content, author, lev, pos) values('답변테스트','답변내용테스트','admin','1','0');
select * from qnaboard;

commit;