# lgTwins_1

데이터베이스 쿼리문

CREATE TABLE ticket
(
    ticketNum    NUMBER           NOT NULL, 
    playDate     DATE             NULL, 
    teamName     VARCHAR2(200)    NULL, 
    price        LONG             NULL, 
    sitNum       VARCHAR2(200)    NULL, 
    id           VARCHAR2(200     NULL, 
    name         VARCHAR2(200)    NULL, 
    teamLogo     VARCHAR2(200)    NULL, 
    CONSTRAINT PK_purchase PRIMARY KEY (ticketNum)
)
/

CREATE SEQUENCE ticket_SEQ
START WITH 1
INCREMENT BY 1;
/

CREATE OR REPLACE TRIGGER ticket_AI_TRG
BEFORE INSERT ON ticket 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT ticket_SEQ.NEXTVAL
    INTO :NEW.ticketNum
    FROM DUAL;
END;
/

--DROP TRIGGER ticket_AI_TRG;
/

--DROP SEQUENCE ticket_SEQ;
/
