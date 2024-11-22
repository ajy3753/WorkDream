/*
    [테스트용 유저 데이터]
    - 테스트 계정 생성 전에 시퀀스 초기화부터 진행할 것
    - 비밀번호는 암호화된 상태 > 주석 확인
    
    DROP SEQUENCE SEQ_UNO;
    DROP SEQUENCE SEQ_PNO;
    DROP SEQUENCE SEQ_BNO;
    
    CREATE SEQUENCE SEQ_UNO START WITH 1 INCREMENT BY 1 NOCACHE NOCYCLE;
    CREATE SEQUENCE SEQ_PNO START WITH 1 INCREMENT BY 1 NOCACHE NOCYCLE;
    CREATE SEQUENCE SEQ_BNO START WITH 1 INCREMENT BY 1 NOCACHE NOCYCLE;
*/

-- test1 (개인)
-- 비밀번호: test1Person.
INSERT INTO PERSON (PERSON_NO, NAME) VALUES (SEQ_PNO.NEXTVAL, '홍길동');
INSERT INTO MEMBER (USER_NO, USER_TYPE, USER_ID, USER_PWD, EMAIL, PHONE, EROLL_DATE, STATUS, BUSINESS_NO, PERSON_NO)
VALUES (SEQ_UNO.NEXTVAL, 'P', 'test1', '$2a$10$n6sDIVjEmPozCHfL6mxwmuRvcqX65US43b/2.rUxU20yqrPRCVxIK', 'test1@workdream.co.kr', NULL, SYSDATE, 'Y', NULL, SEQ_PNO.CURRVAL);

-- test2 (개인)
-- 비밀번호: test2Person.
INSERT INTO PERSON (PERSON_NO, NAME) VALUES (SEQ_PNO.NEXTVAL, '콩쥐');
INSERT INTO MEMBER (USER_NO, USER_TYPE, USER_ID, USER_PWD, EMAIL, PHONE, EROLL_DATE, STATUS, BUSINESS_NO, PERSON_NO)
VALUES (SEQ_UNO.NEXTVAL, 'P', 'test2', '$2a$10$VsqrmUeCoYamaJRcCazvT.JXx.fnTO/lsRlFwltBNNRzdVlbSTejK', 'test2@workdream.co.kr', '01012345678', SYSDATE, 'Y', NULL, SEQ_PNO.CURRVAL);

-- test3 (기업)
-- 비밀번호: test3Business.
INSERT INTO BUSINESS (BUSINESS_NO, REGISTRATION_NUMBER) VALUES (SEQ_BNO.NEXTVAL, '4878600763');
INSERT INTO MEMBER (USER_NO, USER_TYPE, USER_ID, USER_PWD, EMAIL, PHONE, EROLL_DATE, STATUS, BUSINESS_NO, PERSON_NO)
VALUES (SEQ_UNO.NEXTVAL, 'B', 'test3', '$2a$10$jTQ/8l/y7BoNrc27h7/e1.gy2RG1ByycFfoQXVbK1E6QYD2AXMN2e', 'test3@workdream.co.kr', '01000000000', SYSDATE, 'Y', SEQ_BNO.CURRVAL, NULL);

-- test4 (기업)
-- 비밀번호: test4Business.
INSERT INTO BUSINESS (BUSINESS_NO, REGISTRATION_NUMBER) VALUES (SEQ_BNO.NEXTVAL, '8518700622');
INSERT INTO MEMBER (USER_NO, USER_TYPE, USER_ID, USER_PWD, EMAIL, PHONE, EROLL_DATE, STATUS, BUSINESS_NO, PERSON_NO)
VALUES (SEQ_UNO.NEXTVAL, 'B', 'test4', '$2a$10$Djbxc5x8XgL2bY3PqDy0IuSHqk.FmG6l20GrS9LtituTd5.2L0KuG', 'test4@workdream.co.kr', NULL, SYSDATE, 'Y', SEQ_BNO.CURRVAL, NULL);

COMMIT;