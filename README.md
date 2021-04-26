# lgTwins_1

데이터베이스 쿼리문

CREATE TABLE ticket
(
    Num    NUMBER           NOT NULL, 
    teamName     VARCHAR2(200)    NULL,
    teamLogo     VARCHAR2(400)    NULL,
    playDate     DATE             NULL,
    CONSTRAINT PK_purchase PRIMARY KEY (Num)
)


CREATE TABLE ticket
(
    ticketNum    NUMBER           NOT NULL, 
    teamName     VARCHAR2(200)    NULL,
    teamLogo     VARCHAR2(400)    NULL,
    playDate     DATE             NULL,
    sitNum       VARCHAR2(200)    NULL,    
    price        LONG             NULL, 
    CONSTRAINT PK_purchase PRIMARY KEY (ticketNum)
)
/

CREATE SEQUENCE ticket_SEQ
START WITH 1
INCREMENT BY 1;
/


