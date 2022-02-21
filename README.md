김성현, 김혜린,박한솔, 최원교

# lgTwins_1

데이터베이스 쿼리문

CREATE TABLE lgtwins
(
    Num    NUMBER           NOT NULL, 
    teamName     VARCHAR2(200)    NULL,
    teamLogo     VARCHAR2(400)    NULL,
    playDate     DATE             NULL,
    CONSTRAINT PK_purchase PRIMARY KEY (Num)
)


create table ticket(
    ticketNum number,
    teamName varchar2(200),
    teamLogo varchar2(400),
    playDate Date,
    sitNum varchar2(200),
    price long
);

CREATE SEQUENCE ticket_SEQ
START WITH 1
INCREMENT BY 1;
/

테스트용 db 합칠경우 lgtwins는 gambox참고 예정
추후에 ticket db에 아이디 이름 추가 예정(아이디와 이름은 회원db에서 가져올 예정)

