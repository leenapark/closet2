/***********************************************************************************************************************************************
��������(system)
***********************************************************************************************************************************************/
create user closetdb identified by closetdb;
grant resource, connect to closetdb;


/***********************************************************************************************************************************************
DB�ʱ�ȭ
***********************************************************************************************************************************************/

--boardTag(�ڵ� ����-�±�) ���̺� ����
drop table boardTag;

--tag(�±�) ���̺�, ������ ����
drop table tag;
drop sequence seq_tag_no;

--tagDivision(�±ױ���) ���̺�, ������ ����
drop table tagDivision;
drop sequence seq_tagDivision_no;

--codiSet(��-�ڵ�) ���̺�, ������ ����
drop table codiSet;
drop sequence seq_codiSet_no;

--closet(��ī�װ�) ���̺�, ������ ����
drop table closet;
drop sequence seq_closet_no;

--clothCategory(��ī�װ�) ���̺�, ������ ����
drop table clothCategory;
drop sequence seq_clothCategory_no;

--bookmark(�ϸ�ũ) ������ ����
drop table bookmark;

--codiComment(����Ʈ�巹�� ���) ���̺�, ������ ����
drop table codiComment;
drop sequence seq_codiComment_no;

--reCodiComment(����) ���̺�, ������ ����
drop table reCodiComment;
drop sequence seq_reCodiComment_no;

--reCodiBoard(���) ���̺�, ������ ����
drop table reCodiBoard;
drop sequence seq_reCodiBoard_no;

--codiBoard(�ڵ�Խ���) ���̺�, ������ ����
drop table codiBoard;
drop sequence seq_board_no;

--user(ȸ��) ���̺�, ������ ����
drop table users;
drop sequence seq_users_no;

--user(ȸ��) ���̺�/������ ����
CREATE TABLE users (
	userNo NUMBER NOT NULL, /* ȸ���ĺ���ȣ */
	id VARCHAR2(20) UNIQUE NOT NULL, /* ���̵� */
	password VARCHAR2(20) NOT NULL, /* ��й�ȣ */
	name VARCHAR2(20) NOT NULL, /* �̸� */
	email VARCHAR2(50) UNIQUE NOT NULL, /* �̸��� */
	gender VARCHAR2(10) NOT NULL, /* ���� */
	nickName VARCHAR2(20) UNIQUE NOT NULL, /* ���� */
	joinDate DATE NOT NULL, /* ������ */
	profileImg varchar2(1000), /* �������̹��� */
	todayVisit NUMBER default 0, /* ���ù湮�� */
	totalVisit NUMBER default 0, /* �� �湮�� */
    primary key (userNo)    
);

create sequence seq_users_no
increment by 1
start with 1
nocache;

--codiBoard(�ڵ�Խ���) ���̺�/������ ����
CREATE TABLE codiBoard (
	boardNo NUMBER NOT NULL, /* �Խñ۹�ȣ */
	userNo NUMBER NOT NULL, /* ȸ���ĺ���ȣ */
	title varchar2(100) NOT NULL, /* ������ */
	content varchar2(4000), /* �۳��� */
	division varchar2(50) NOT NULL, /* �ۺз� */
	boardImg varchar2(1000) NOT NULL, /* �ʻ��� */
	gender varchar2(20), /* ���� */
	deadline DATE, /* ��û���� */
	openFlag varchar2(10) NOT NULL, /* �������� */
	delFlag varchar2(10) NOT NULL, /* �������� */
    primary key(boardNo),
    constraint fk_board_userNo foreign key (userNo)
    references users(userNo)
);

create sequence seq_board_no
increment by 1
start with 1
nocache;

--reCodiBoard(���) ���̺�/������ ����
CREATE TABLE reCodiBoard (
	reCodiNo NUMBER NOT NULL, /* ��۽ĺ���ȣ */
	userNo NUMBER NOT NULL, /* ȸ���ĺ���ȣ */
	boardNo NUMBER NOT NULL, /* �Խñ۹�ȣ */
	content varchar2(4000), /* ��۳��� */
	regDate DATE NOT NULL, /* �ۼ��ð� */
	good NUMBER NOT NULL, /* ���ƿ� */
	hate NUMBER NOT NULL, /* �Ⱦ�� */
	reCodiImg varchar2(1000) NOT NULL, /* ����̹��� */
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

--reCodiComment(����) ���̺�/������ ����
CREATE TABLE reCodiComment (
	reCodiComNo NUMBER NOT NULL, /* ���۹�ȣ */
	userNo NUMBER, /* ȸ���ĺ���ȣ */
	reCodiNo NUMBER NOT NULL, /* ��۽ĺ���ȣ */
	content varchar2(4000) NOT NULL, /* ���۳��� */
	regDate DATE NOT NULL, /* �ۼ��ð� */
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

--codiComment(����Ʈ�巹�� ���) ���̺�/������ ����
CREATE TABLE codiComment (
	comNo NUMBER NOT NULL, /* �ڸ�Ʈ�ĺ���ȣ */
	userNo NUMBER NOT NULL, /* ȸ���ĺ���ȣ */
	boardNo NUMBER NOT NULL, /* �Խñ۹�ȣ */
	content VARCHAR2(500) NOT NULL, /* ���� */
	regDate DATE NOT NULL, /* �ۼ��ð� */
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

--bookmark(�ϸ�ũ) ���̺� ����
CREATE TABLE bookmark (
	userNo NUMBER NOT NULL, /* ȸ���ĺ���ȣ */
	boardNo NUMBER NOT NULL, /* �Խñ۹�ȣ */
	content varchar2(3000), /* �ϸ�ũ���� */
	regDate DATE NOT NULL, /* �ϸ�ũ�ð� */
    constraint fk_bookmark_userNo foreign key (userNo)
    references users(userNo),
    constraint fk_bookmark_boardNo foreign key (boardNo)
    references codiBoard(boardNo)
);

--clothCategory(��ī�װ�) ���̺�/������ ����
CREATE TABLE clothCategory (
	clothCateNo NUMBER NOT NULL, /* ��ī�װ��ĺ���ȣ */
	clothDiv VARCHAR2(50) NOT NULL, /* �ʺз� */
    primary key (clothCateNo)
);

create sequence seq_clothCategory_no
increment by 1
start with 1
nocache;

--closet(��ī�װ�) ���̺�/������ ����
CREATE TABLE closet (
	clothNo NUMBER NOT NULL, /* �ʽĺ���ȣ */
	userNo NUMBER NOT NULL, /* ȸ���ĺ���ȣ */
	clothCateNo NUMBER, /* ��ī�װ��ĺ���ȣ */
	clothImg varchar2(1000) NOT NULL, /* ���̹������ */
	clothInfo VARCHAR2(1000), /* ������ */
	clothName VARCHAR2(50), /* ���̸� */
	regDate DATE NOT NULL, /* ��Ͻð� */
	delFlag VARCHAR2(10) NOT NULL, /* �������� */
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

--codiSet(��-�ڵ�) ���̺�/������ ����
CREATE TABLE codiSet (
	codiSetNo NUMBER NOT NULL, /* ��-�ڵ��ȣ */
	boardNo NUMBER NOT NULL, /* �Խñ۹�ȣ */
	clothNo NUMBER NOT NULL, /* �ʽĺ���ȣ */
	x NUMBER NOT NULL, /* �¿� ��ǥ */
	y NUMBER NOT NULL, /* ���� ��ǥ */
	z NUMBER NOT NULL, /* �յ� ���� */
	imgHeight NUMBER, /* �̹��� ���� */
	imgWidth NUMBER, /* �̹��� ���� */
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

--tagDivision(�±ױ���) ���̺�/������ ����
CREATE TABLE tagDivision (
	tagDivNo NUMBER NOT NULL, /* �±׺з���ȣ */
	tagStatus VARCHAR2(100) NOT NULL, /* ��Ȳ�� */
    primary key (tagDivNo)
);

create sequence seq_tagDivision_no
increment by 1
start with 1
nocache;

--tag(�±�) ���̺�/������ ����
CREATE TABLE tag (
	tagNo NUMBER NOT NULL, /* �±׹�ȣ */
	tagDivNo NUMBER, /* �±׺з���ȣ */
	tagName VARCHAR2(50), /* �±��̸� */
    primary key (tagNo)
);

create sequence seq_tag_no
increment by 1
start with 1
nocache;

--boardTag(�ڵ� ����-�±�) ���̺� ����
CREATE TABLE boardTag (
	boardNo NUMBER, /* �Խñ۹�ȣ */
	tagNo NUMBER, /* �±׹�ȣ */
    constraint fk_boardTag_boardNo foreign key (boardNo)
    references codiBoard(boardNo),
    constraint fk_boardTag_tagNo foreign key (tagNo)
    references tag(tagNo)
);


/***********************************************************************************************************************************************
�ʱⰪ ���
***********************************************************************************************************************************************/

--user(ȸ��) ���̺�
insert into users values(seq_users_no.nextval, 'admin','1234','������', 'admin@inmycloset.com','male','������',sysdate,'defaultProfileImg.jpg', 0, 0);

--codiBoard(�ڵ�Խ���) ���̺�
insert into codiBoard values(seq_board_no.nextval, 1, '�ڵ��ϱ� �׽�Ʈ �� ����', '�ڵ��ϱ� �׽�Ʈ �� ����', 'myCodi', 'defaultCodiImg.jpg', null, null, 'N', 'N');
insert into codiBoard values(seq_board_no.nextval, 1, '����Ʈ�巹�� �׽�Ʈ �� ����', '����Ʈ�巹�� �׽�Ʈ �� ����', 'bestDresser', 'defaultbestDersserImg.jpg', 'unisex', null, 'Y', 'N');
insert into codiBoard values(seq_board_no.nextval, 1, '�ڵ��� �׽�Ʈ �� ����', '�ڵ��� �׽�Ʈ �� ����', 'recruitCodi', 'defaultrecruitCodiImg.jpg', 'male', '2021-05-01', 'Y', 'N');

--reCodiBoard(���) ���̺�
insert into reCodiBoard values(seq_reCodiBoard_no.nextval, 1, 3, '�̷��� �����ÿ�', sysdate, 0, 0, 'defaultreCodiImg.jpg');

--reCodiComment(����) ���̺�
insert into reCodiComment values(seq_reCodiComment_no.nextval, 1, 1, '�� ��Ÿ�� ��������?', sysdate);

--codiComment(����Ʈ�巹�� ���) ���̺�
insert into codiComment values(seq_codiComment_no.nextval, 1, 2, '�� ���ִ� ��Ÿ�� ���� �䢽', sysdate);

--bookmark(�ϸ�ũ) ���̺�
insert into bookmark values(1, 2, '���� �Ұ��� �� �Ծ����', sysdate);

--clothCategory(��ī�װ�) ���̺�
insert into clothCategory values(seq_clothCategory_no.nextval, '����');
insert into clothCategory values(seq_clothCategory_no.nextval, '����');
insert into clothCategory values(seq_clothCategory_no.nextval, '�Ź�');
insert into clothCategory values(seq_clothCategory_no.nextval, '�ƿ���');
insert into clothCategory values(seq_clothCategory_no.nextval, '�Ǽ��縮');

--closet(��ī�װ�) ���̺�/������ ����
insert into closet values(seq_closet_no.nextval, 1, 1, 'defaultTopClothImg.jpg', '�⺻����', '����1', sysdate, 'N');
insert into closet values(seq_closet_no.nextval, 1, 2, 'defaultBottomClothImg.jpg', '�⺻����', '����1', sysdate, 'N');
insert into closet values(seq_closet_no.nextval, 1, 3, 'defaultShoesImg.jpg', '�⺻�Ź�', '�Ź�1', sysdate, 'N');
insert into closet values(seq_closet_no.nextval, 1, 4, 'defaultOuterImg.jpg', '�⺻�ƿ���', '�ƿ���1', sysdate, 'N');
insert into closet values(seq_closet_no.nextval, 1, 5, 'defaultAccessoryImg.jpg', '�⺻�Ǽ�����', '�Ǽ�����1', sysdate, 'N');

--codiSet(��-�ڵ�) ���̺�/������ ����
insert into codiSet values(seq_codiSet_no.nextval, 1, 1, 100, 100, 1, 200, 200);
insert into codiSet values(seq_codiSet_no.nextval, 1, 2, 300, 100, 1, 200, 200);
insert into codiSet values(seq_codiSet_no.nextval, 1, 3, 100, 300, 1, 200, 200);
insert into codiSet values(seq_codiSet_no.nextval, 1, 4, 300, 300, 1, 200, 200);
insert into codiSet values(seq_codiSet_no.nextval, 1, 5, 500, 100, 1, 200, 200);

--tagDivision(�±ױ���) ���̺�
insert into tagDivision values(seq_tagDivision_no.nextval, '����');
insert into tagDivision values(seq_tagDivision_no.nextval, '���');

--tag(�±�) ���̺�/������ ����
insert into tag values(seq_tag_no.nextval, 1, '��');
insert into tag values(seq_tag_no.nextval, 1, '����');
insert into tag values(seq_tag_no.nextval, 1, '��');
insert into tag values(seq_tag_no.nextval, 2, 'ī��');
insert into tag values(seq_tag_no.nextval, 2, '���̵���');

--boardTag(�ڵ� ����-�±�) ���̺� ����
insert into boardTag values(2, 1);
insert into boardTag values(2, 4);


/***********************************************************************************************************************************************
select all
***********************************************************************************************************************************************/

--user(ȸ��) ���̺�
select  userNo, /* ȸ���ĺ���ȣ */
        id, /* ���̵� */
        password, /* ��й�ȣ */
        name, /* �̸� */
        email, /* �̸��� */
        gender, /* ���� */
        nickName, /* ���� */
        joinDate, /* ������ */
        profileImg, /* �������̹��� */
        todayVisit, /* ���ù湮�� */
        totalVisit /* �� �湮�� */
from users;

--codiBoard(�ڵ�Խ���) ���̺�
select  boardNo, /* �Խñ۹�ȣ */
        userNo, /* ȸ���ĺ���ȣ */
        title, /* ������ */
        content, /* �۳��� */
        division, /* �ۺз� */
        boardImg, /* �ʻ��� */
        gender, /* ���� */
        deadline, /* ��û���� */
        openFlag, /* �������� */
        delFlag /* �������� */
from codiBoard;

--reCodiBoard(���) ���̺�
select  reCodiNo, /* ��۽ĺ���ȣ */
        userNo, /* ȸ���ĺ���ȣ */
        boardNo, /* �Խñ۹�ȣ */
        content, /* ��۳��� */
        regDate, /* �ۼ��ð� */
        good, /* ���ƿ� */
        hate, /* �Ⱦ�� */
        reCodiImg /* ����̹��� */
from reCodiBoard;

--reCodiComment(����) ���̺�
select  reCodiComNo, /* ���۹�ȣ */
        userNo, /* ȸ���ĺ���ȣ */
        reCodiNo, /* ��۽ĺ���ȣ */
        content, /* ���۳��� */
        regDate /* �ۼ��ð� */
from reCodiComment;

--codiComment(����Ʈ�巹�� ���) ���̺�
select  comNo, /* �ڸ�Ʈ�ĺ���ȣ */
        userNo, /* ȸ���ĺ���ȣ */
        boardNo, /* �Խñ۹�ȣ */
        content, /* ���� */
        regDate /* �ۼ��ð� */
from codiComment;

--bookmark(�ϸ�ũ) ���̺� ����
select  userNo, /* ȸ���ĺ���ȣ */
        boardNo, /* �Խñ۹�ȣ */
        content, /* �ϸ�ũ���� */
        regDate /* �ϸ�ũ�ð� */
from bookmark;

--clothCategory(��ī�װ�) ���̺�/������ ����
select  clothCateNo, /* ��ī�װ��ĺ���ȣ */
        clothDiv /* �ʺз� */
from clothCategory;

--closet(��ī�װ�) ���̺�/������ ����
select  clothNo, /* �ʽĺ���ȣ */
        userNo, /* ȸ���ĺ���ȣ */
        clothCateNo, /* ��ī�װ��ĺ���ȣ */
        clothImg, /* ���̹������ */
        clothInfo, /* ������ */
        clothName, /* ���̸� */
        regDate, /* ��Ͻð� */
        delFlag /* �������� */
from closet;

--codiSet(��-�ڵ�) ���̺�/������ ����
select  codiSetNo, /* ��-�ڵ��ȣ */
        boardNo, /* �Խñ۹�ȣ */
        clothNo, /* �ʽĺ���ȣ */
        x, /* �¿� ��ǥ */
        y, /* ���� ��ǥ */
        z, /* �յ� ���� */
        imgHeight, /* �̹��� ���� */
        imgWidth /* �̹��� ���� */
from codiSet;

--tagDivision(�±ױ���) ���̺�/������ ����
select  tagDivNo, /* �±׺з���ȣ */
        tagStatus /* ��Ȳ�� */
from tagDivision;

--tag(�±�) ���̺�/������ ����
select  tagNo, /* �±׹�ȣ */
        tagDivNo, /* �±׺з���ȣ */
        tagName /* �±��̸� */
from tag;

--boardTag(�ڵ� ����-�±�) ���̺� ����
select  boardNo, /* �Խñ۹�ȣ */
        tagNo /* �±׹�ȣ */
from boardTag;