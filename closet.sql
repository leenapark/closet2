/***********************************************************************************************************************************************
계정생성(system)
***********************************************************************************************************************************************/
create user closetdb identified by closetdb;
grant resource, connect to closetdb;


/***********************************************************************************************************************************************
DB초기화
***********************************************************************************************************************************************/

--boardTag(코디 보드-태그) 테이블 삭제
drop table boardTag;

--tag(태그) 테이블, 시퀀스 삭제
drop table tag;
drop sequence seq_tag_no;

--tagDivision(태그구분) 테이블, 시퀀스 삭제
drop table tagDivision;
drop sequence seq_tagDivision_no;

--codiSet(옷-코디) 테이블, 시퀀스 삭제
drop table codiSet;
drop sequence seq_codiSet_no;

--closet(옷카테고리) 테이블, 시퀀스 삭제
drop table closet;
drop sequence seq_closet_no;

--clothCategory(옷카테고리) 테이블, 시퀀스 삭제
drop table clothCategory;
drop sequence seq_clothCategory_no;

--bookmark(북마크) 시퀀스 삭제
drop table bookmark;

--codiComment(베스트드레서 답글) 테이블, 시퀀스 삭제
drop table codiComment;
drop sequence seq_codiComment_no;

--reCodiComment(대댓글) 테이블, 시퀀스 삭제
drop table reCodiComment;
drop sequence seq_reCodiComment_no;

--reCodiBoard(답글) 테이블, 시퀀스 삭제
drop table reCodiBoard;
drop sequence seq_reCodiBoard_no;

--codiBoard(코디게시판) 테이블, 시퀀스 삭제
drop table codiBoard;
drop sequence seq_board_no;

--user(회원) 테이블, 시퀀스 삭제
drop table users;
drop sequence seq_users_no;

--user(회원) 테이블/시퀀스 생성
CREATE TABLE users (
	userNo NUMBER NOT NULL, /* 회원식별번호 */
	id VARCHAR2(20) UNIQUE NOT NULL, /* 아이디 */
	password VARCHAR2(20) NOT NULL, /* 비밀번호 */
	name VARCHAR2(20) NOT NULL, /* 이름 */
	email VARCHAR2(50) UNIQUE NOT NULL, /* 이메일 */
	gender VARCHAR2(10) NOT NULL, /* 성별 */
	nickName VARCHAR2(20) UNIQUE NOT NULL, /* 별명 */
	joinDate DATE NOT NULL, /* 가입일 */
	profileImg varchar2(1000), /* 프로필이미지 */
	todayVisit NUMBER default 0, /* 오늘방문자 */
	totalVisit NUMBER default 0, /* 총 방문자 */
    primary key (userNo)    
);

create sequence seq_users_no
increment by 1
start with 1
nocache;

--codiBoard(코디게시판) 테이블/시퀀스 생성
CREATE TABLE codiBoard (
	boardNo NUMBER NOT NULL, /* 게시글번호 */
	userNo NUMBER NOT NULL, /* 회원식별번호 */
	title varchar2(100) NOT NULL, /* 글제목 */
	content varchar2(4000), /* 글내용 */
	division varchar2(50) NOT NULL, /* 글분류 */
	boardImg varchar2(1000) NOT NULL, /* 옷사진 */
	gender varchar2(20), /* 성별 */
	deadline DATE, /* 요청기한 */
	openFlag varchar2(10) NOT NULL, /* 공개여부 */
	delFlag varchar2(10) NOT NULL, /* 삭제여부 */
    primary key(boardNo),
    constraint fk_board_userNo foreign key (userNo)
    references users(userNo)
);

create sequence seq_board_no
increment by 1
start with 1
nocache;

--reCodiBoard(답글) 테이블/시퀀스 생성
CREATE TABLE reCodiBoard (
	reCodiNo NUMBER NOT NULL, /* 답글식별번호 */
	userNo NUMBER NOT NULL, /* 회원식별번호 */
	boardNo NUMBER NOT NULL, /* 게시글번호 */
	content varchar2(4000), /* 답글내용 */
	regDate DATE NOT NULL, /* 작성시간 */
	good NUMBER NOT NULL, /* 좋아요 */
	hate NUMBER NOT NULL, /* 싫어요 */
	reCodiImg varchar2(1000) NOT NULL, /* 답글이미지 */
    primary key (reCodiNo),
    constraint fk_reCodiBoard_userNo foreign key (userNo)
    references users(userNo),
    constraint fk_reCodiBoard_boardNo foreign key (boardNo)
    references codiBoard(boardNo)
);

create sequence seq_reCodiBoard_no
increment by 1
start with 1
nocache;

--reCodiComment(대댓글) 테이블/시퀀스 생성
CREATE TABLE reCodiComment (
	reCodiComNo NUMBER NOT NULL, /* 대댓글번호 */
	userNo NUMBER, /* 회원식별번호 */
	reCodiNo NUMBER NOT NULL, /* 답글식별번호 */
	content varchar2(4000) NOT NULL, /* 대댓글내용 */
	regDate DATE NOT NULL, /* 작성시간 */
    primary key (reCodiComNo),
    constraint fk_reCodiComNo_userNo foreign key (userNo)
    references users(userNo),
    constraint fk_reCodiComNo_reCodiNo foreign key (reCodiNo)
    references reCodiBoard(reCodiNo)
);

create sequence seq_reCodiComment_no
increment by 1
start with 1
nocache;

--codiComment(베스트드레서 답글) 테이블/시퀀스 생성
CREATE TABLE codiComment (
	comNo NUMBER NOT NULL, /* 코멘트식별번호 */
	userNo NUMBER NOT NULL, /* 회원식별번호 */
	boardNo NUMBER NOT NULL, /* 게시글번호 */
	content VARCHAR2(500) NOT NULL, /* 내용 */
	regDate DATE NOT NULL, /* 작성시간 */
    primary key (comNo),
    constraint fk_codiComment_userNo foreign key (userNo)
    references users(userNo),
    constraint fk_codiComment_boardNo foreign key (boardNo)
    references codiBoard(boardNo)
);

create sequence seq_codiComment_no
increment by 1
start with 1
nocache;

--bookmark(북마크) 테이블 생성
CREATE TABLE bookmark (
	userNo NUMBER NOT NULL, /* 회원식별번호 */
	boardNo NUMBER NOT NULL, /* 게시글번호 */
	content varchar2(3000), /* 북마크내용 */
	regDate DATE NOT NULL, /* 북마크시간 */
    constraint fk_bookmark_userNo foreign key (userNo)
    references users(userNo),
    constraint fk_bookmark_boardNo foreign key (boardNo)
    references codiBoard(boardNo)
);

--clothCategory(옷카테고리) 테이블/시퀀스 생성
CREATE TABLE clothCategory (
	clothCateNo NUMBER NOT NULL, /* 옷카테고리식별번호 */
	clothDiv VARCHAR2(50) NOT NULL, /* 옷분류 */
    primary key (clothCateNo)
);

create sequence seq_clothCategory_no
increment by 1
start with 1
nocache;

--closet(옷카테고리) 테이블/시퀀스 생성
CREATE TABLE closet (
	clothNo NUMBER NOT NULL, /* 옷식별번호 */
	userNo NUMBER NOT NULL, /* 회원식별번호 */
	clothCateNo NUMBER, /* 옷카테고리식별번호 */
	clothImg varchar2(1000) NOT NULL, /* 옷이미지경로 */
	clothInfo VARCHAR2(1000), /* 옷정보 */
	clothName VARCHAR2(50), /* 옷이름 */
	regDate DATE NOT NULL, /* 등록시간 */
	delFlag VARCHAR2(10) NOT NULL, /* 삭제여부 */
    primary key (clothNo),
    constraint fk_closet_userNo foreign key (userNo)
    references users(userNo),
    constraint fk_closet_clothCateNo foreign key (clothCateNo)
    references clothCategory(clothCateNo)
);

create sequence seq_closet_no
increment by 1
start with 1
nocache;

--codiSet(옷-코디) 테이블/시퀀스 생성
CREATE TABLE codiSet (
	codiSetNo NUMBER NOT NULL, /* 옷-코디번호 */
	boardNo NUMBER NOT NULL, /* 게시글번호 */
	clothNo NUMBER NOT NULL, /* 옷식별번호 */
	x NUMBER NOT NULL, /* 좌우 좌표 */
	y NUMBER NOT NULL, /* 상하 좌표 */
	z NUMBER NOT NULL, /* 앞뒤 순서 */
	imgHeight NUMBER, /* 이미지 높이 */
	imgWidth NUMBER, /* 이미지 넓이 */
    primary key (codiSetNo),
    constraint fk_codiSet_boardNo foreign key (boardNo)
    references codiBoard(boardNo),
    constraint fk_codiSet_clothNo foreign key (clothNo)
    references closet(clothNo)
);

create sequence seq_codiSet_no
increment by 1
start with 1
nocache;

--tagDivision(태그구분) 테이블/시퀀스 생성
CREATE TABLE tagDivision (
	tagDivNo NUMBER NOT NULL, /* 태그분류번호 */
	tagStatus VARCHAR2(100) NOT NULL, /* 상황별 */
    primary key (tagDivNo)
);

create sequence seq_tagDivision_no
increment by 1
start with 1
nocache;

--tag(태그) 테이블/시퀀스 생성
CREATE TABLE tag (
	tagNo NUMBER NOT NULL, /* 태그번호 */
	tagDivNo NUMBER, /* 태그분류번호 */
	tagName VARCHAR2(50), /* 태그이름 */
    primary key (tagNo)
);

create sequence seq_tag_no
increment by 1
start with 1
nocache;

--boardTag(코디 보드-태그) 테이블 생성
CREATE TABLE boardTag (
	boardNo NUMBER, /* 게시글번호 */
	tagNo NUMBER, /* 태그번호 */
    constraint fk_boardTag_boardNo foreign key (boardNo)
    references codiBoard(boardNo),
    constraint fk_boardTag_tagNo foreign key (tagNo)
    references tag(tagNo)
);


/***********************************************************************************************************************************************
초기값 등록
***********************************************************************************************************************************************/

--user(회원) 테이블
insert into users values(seq_users_no.nextval, 'admin','1234','관리자', 'admin@inmycloset.com','male','관리자',sysdate,'defaultProfileImg.jpg', 0, 0);

--codiBoard(코디게시판) 테이블
insert into codiBoard values(seq_board_no.nextval, 1, '코디하기 테스트 글 제목', '코디하기 테스트 글 내용', 'myCodi', 'defaultCodiImg.jpg', null, null, 'N', 'N');
insert into codiBoard values(seq_board_no.nextval, 1, '베스트드레서 테스트 글 제목', '베스트드레서 테스트 글 내용', 'bestDresser', 'defaultbestDersserImg.jpg', 'unisex', null, 'Y', 'N');
insert into codiBoard values(seq_board_no.nextval, 1, '코디구함 테스트 글 제목', '코디구함 테스트 글 내용', 'recruitCodi', 'defaultrecruitCodiImg.jpg', 'male', '2021-05-01', 'Y', 'N');

--reCodiBoard(답글) 테이블
insert into reCodiBoard values(seq_reCodiBoard_no.nextval, 1, 3, '이렇게 입으시오', sysdate, 0, 0, 'defaultreCodiImg.jpg');

--reCodiComment(대댓글) 테이블
insert into reCodiComment values(seq_reCodiComment_no.nextval, 1, 1, '이 스타일 좋은데요?', sysdate);

--codiComment(베스트드레서 답글) 테이블
insert into codiComment values(seq_codiComment_no.nextval, 1, 2, '오 멋있는 스타일 보는 듕♡', sysdate);

--bookmark(북마크) 테이블
insert into bookmark values(1, 2, '다음 소개팅 때 입어야지', sysdate);

--clothCategory(옷카테고리) 테이블
insert into clothCategory values(seq_clothCategory_no.nextval, '상의');
insert into clothCategory values(seq_clothCategory_no.nextval, '하의');
insert into clothCategory values(seq_clothCategory_no.nextval, '신발');
insert into clothCategory values(seq_clothCategory_no.nextval, '아우터');
insert into clothCategory values(seq_clothCategory_no.nextval, '악세사리');

--closet(옷카테고리) 테이블/시퀀스 생성
insert into closet values(seq_closet_no.nextval, 1, 1, 'defaultTopClothImg.jpg', '기본상의', '상의1', sysdate, 'N');
insert into closet values(seq_closet_no.nextval, 1, 2, 'defaultBottomClothImg.jpg', '기본하의', '하의1', sysdate, 'N');
insert into closet values(seq_closet_no.nextval, 1, 3, 'defaultShoesImg.jpg', '기본신발', '신발1', sysdate, 'N');
insert into closet values(seq_closet_no.nextval, 1, 4, 'defaultOuterImg.jpg', '기본아우터', '아우터1', sysdate, 'N');
insert into closet values(seq_closet_no.nextval, 1, 5, 'defaultAccessoryImg.jpg', '기본악세서리', '악세서리1', sysdate, 'N');

--codiSet(옷-코디) 테이블/시퀀스 생성
insert into codiSet values(seq_codiSet_no.nextval, 1, 1, 100, 100, 1, 200, 200);
insert into codiSet values(seq_codiSet_no.nextval, 1, 2, 300, 100, 1, 200, 200);
insert into codiSet values(seq_codiSet_no.nextval, 1, 3, 100, 300, 1, 200, 200);
insert into codiSet values(seq_codiSet_no.nextval, 1, 4, 300, 300, 1, 200, 200);
insert into codiSet values(seq_codiSet_no.nextval, 1, 5, 500, 100, 1, 200, 200);

--tagDivision(태그구분) 테이블
insert into tagDivision values(seq_tagDivision_no.nextval, '날씨');
insert into tagDivision values(seq_tagDivision_no.nextval, '장소');

--tag(태그) 테이블/시퀀스 생성
insert into tag values(seq_tag_no.nextval, 1, '비');
insert into tag values(seq_tag_no.nextval, 1, '맑음');
insert into tag values(seq_tag_no.nextval, 1, '눈');
insert into tag values(seq_tag_no.nextval, 2, '카페');
insert into tag values(seq_tag_no.nextval, 2, '놀이동산');

--boardTag(코디 보드-태그) 테이블 생성
insert into boardTag values(2, 1);
insert into boardTag values(2, 4);


/***********************************************************************************************************************************************
select all
***********************************************************************************************************************************************/

--user(회원) 테이블
select  userNo, /* 회원식별번호 */
        id, /* 아이디 */
        password, /* 비밀번호 */
        name, /* 이름 */
        email, /* 이메일 */
        gender, /* 성별 */
        nickName, /* 별명 */
        joinDate, /* 가입일 */
        profileImg, /* 프로필이미지 */
        todayVisit, /* 오늘방문자 */
        totalVisit /* 총 방문자 */
from users;

--codiBoard(코디게시판) 테이블
select  boardNo, /* 게시글번호 */
        userNo, /* 회원식별번호 */
        title, /* 글제목 */
        content, /* 글내용 */
        division, /* 글분류 */
        boardImg, /* 옷사진 */
        gender, /* 성별 */
        deadline, /* 요청기한 */
        openFlag, /* 공개여부 */
        delFlag /* 삭제여부 */
from codiBoard;

--reCodiBoard(답글) 테이블
select  reCodiNo, /* 답글식별번호 */
        userNo, /* 회원식별번호 */
        boardNo, /* 게시글번호 */
        content, /* 답글내용 */
        regDate, /* 작성시간 */
        good, /* 좋아요 */
        hate, /* 싫어요 */
        reCodiImg /* 답글이미지 */
from reCodiBoard;

--reCodiComment(대댓글) 테이블
select  reCodiComNo, /* 대댓글번호 */
        userNo, /* 회원식별번호 */
        reCodiNo, /* 답글식별번호 */
        content, /* 대댓글내용 */
        regDate /* 작성시간 */
from reCodiComment;

--codiComment(베스트드레서 답글) 테이블
select  comNo, /* 코멘트식별번호 */
        userNo, /* 회원식별번호 */
        boardNo, /* 게시글번호 */
        content, /* 내용 */
        regDate /* 작성시간 */
from codiComment;

--bookmark(북마크) 테이블 생성
select  userNo, /* 회원식별번호 */
        boardNo, /* 게시글번호 */
        content, /* 북마크내용 */
        regDate /* 북마크시간 */
from bookmark;

--clothCategory(옷카테고리) 테이블/시퀀스 생성
select  clothCateNo, /* 옷카테고리식별번호 */
        clothDiv /* 옷분류 */
from clothCategory;

--closet(옷카테고리) 테이블/시퀀스 생성
select  clothNo, /* 옷식별번호 */
        userNo, /* 회원식별번호 */
        clothCateNo, /* 옷카테고리식별번호 */
        clothImg, /* 옷이미지경로 */
        clothInfo, /* 옷정보 */
        clothName, /* 옷이름 */
        regDate, /* 등록시간 */
        delFlag /* 삭제여부 */
from closet;

--codiSet(옷-코디) 테이블/시퀀스 생성
select  codiSetNo, /* 옷-코디번호 */
        boardNo, /* 게시글번호 */
        clothNo, /* 옷식별번호 */
        x, /* 좌우 좌표 */
        y, /* 상하 좌표 */
        z, /* 앞뒤 순서 */
        imgHeight, /* 이미지 높이 */
        imgWidth /* 이미지 넓이 */
from codiSet;

--tagDivision(태그구분) 테이블/시퀀스 생성
select  tagDivNo, /* 태그분류번호 */
        tagStatus /* 상황별 */
from tagDivision;

--tag(태그) 테이블/시퀀스 생성
select  tagNo, /* 태그번호 */
        tagDivNo, /* 태그분류번호 */
        tagName /* 태그이름 */
from tag;

--boardTag(코디 보드-태그) 테이블 생성
select  boardNo, /* 게시글번호 */
        tagNo /* 태그번호 */
from boardTag;