CREATE TABLE TBL_TEAM(
                         ID NUMBER PRIMARY KEY,
                         MEMBER_ID NUMBER,
                         TEAM_NAME VARCHAR2(255) NOT NULL,
                         SPORTS_KIND_RADIO_VALUE NUMBER NOT NULL ,
                         CITY VARCHAR2(255) NOT NULL,
                         LOCAL_CITY VARCHAR2(255) NOT NULL,
                         DETAILED_AREA VARCHAR(255) NOT NULL,
                         TEAM_ACTIVITY_TIME VARCHAR2(255) NOT NULL,
                         AGE_RANGE VARCHAR(255) NOT NULL,
                         CREATED_DATE DATE DEFAULT CURRENT_TIMESTAMP,
                         UPDATED_DATE DATE DEFAULT CURRENT_TIMESTAMP,
                         CONSTRAINT FK_TEAM_MEMBER FOREIGN KEY(MEMBER_ID)
                             REFERENCES TBL_MEMBER(ID)
);

CREATE SEQUENCE SEQ_TEAM;

SELECT * FROM TBL_TEAM;

DROP TABLE TBL_TEAM;

INSERT INTO TBL_TEAM(ID, MEMBER_ID, TEAM_NAME,
                     SPORTS_KIND_RADIO_VALUE, CITY, LOCAL_CITY,
                     DETAILED_AREA, TEAM_ACTIVITY_TIME, AGE_RANGE)
VALUES (1,1,'TEST TEAM',
        1, '서울', '강남구', '역삼동',
        '오후2~오후6시','20대');

