/* USER 생성 (관리자 계정으로 실행) */
--CREATE USER CODESYNC IDENTIFIED BY CODESYNC;
--GRANT CONNECT, RESOURCE TO CODESYNC;

DROP TABLE MEMBER CASCADE CONSTRAINTS;
DROP TABLE POSTING CASCADE CONSTRAINTS;
DROP TABLE REPLY CASCADE CONSTRAINTS;
DROP TABLE COMMUNITY_POST_JOB_CATEGORY CASCADE CONSTRAINTS;
DROP TABLE COMMUNITY_POST_HASHTAG CASCADE CONSTRAINTS;
DROP TABLE BUSINESS CASCADE CONSTRAINTS;
DROP TABLE BUSINESS_BENEFIT CASCADE CONSTRAINTS;
DROP TABLE WORK_ENVIRONMENT_IMAGE CASCADE CONSTRAINTS;
DROP TABLE JOB_POSTING CASCADE CONSTRAINTS;
DROP TABLE JOB_REQUIREMENTS CASCADE CONSTRAINTS;
DROP TABLE BUSINESS_BOOKMARK CASCADE CONSTRAINTS;
DROP TABLE PERSON_BOOKMARK CASCADE CONSTRAINTS;
DROP TABLE APPLICANTS CASCADE CONSTRAINTS;
DROP TABLE PERSON CASCADE CONSTRAINTS;
DROP TABLE RESUME CASCADE CONSTRAINTS;
DROP TABLE ACADEMIC_ABILITY CASCADE CONSTRAINTS;
DROP TABLE LICENSE CASCADE CONSTRAINTS;
DROP TABLE LANGUAGE CASCADE CONSTRAINTS;
DROP TABLE AWARD CASCADE CONSTRAINTS;
DROP TABLE EXPERIENCE CASCADE CONSTRAINTS;
DROP TABLE EMPLOYMENTPREFERENCE CASCADE CONSTRAINTS;
DROP TABLE MILITARYSERVICE CASCADE CONSTRAINTS;
DROP TABLE SELF_INTRODUCTION CASCADE CONSTRAINTS;
DROP TABLE PORTFOLIO CASCADE CONSTRAINTS;
DROP TABLE SKILL CASCADE CONSTRAINTS;
DROP TABLE CAREER CASCADE CONSTRAINTS;
DROP TABLE BASIC_INFO CASCADE CONSTRAINTS;
DROP TABLE POST_LIKE CASCADE CONSTRAINTS;
DROP TABLE REPLY_LIKE CASCADE CONSTRAINTS;
DROP TABLE USER_TAGS CASCADE CONSTRAINTS;

DROP SEQUENCE SEQ_UNO;
DROP SEQUENCE SEQ_PNO;
DROP SEQUENCE SEQ_BNO;
DROP SEQUENCE SEQ_JNO;
DROP SEQUENCE SEQ_JNO_R;
DROP SEQUENCE RESUME_SEQ;
DROP SEQUENCE BASICINFO_SEQ;
DROP SEQUENCE QUALIFICATION_SEQ;
DROP SEQUENCE ACADEMIC_ABILITY_SEQ;
DROP SEQUENCE EXPERIENCE_SEQ;
DROP SEQUENCE EMPLOYMENT_PREFERENCES_SEQ;
DROP SEQUENCE SKILL_SEQ;
DROP SEQUENCE CAREER_SEQ;
DROP SEQUENCE POSTING_SEQ;
DROP SEQUENCE REPLY_SEQ;
DROP SEQUENCE SELF_INTRO_SEQ;
DROP SEQUENCE POST_LIKE_SEQ;
DROP SEQUENCE REPLY_LIKE_SEQ;
DROP SEQUENCE SEQ_TAG_ID;


/* Member */
/* MEMBER  (회원 테이블) */
CREATE TABLE MEMBER (
    USER_NO NUMBER PRIMARY KEY NOT NULL,
    USER_TYPE CHAR(1) NOT NULL,
    USER_ID VARCHAR(20) UNIQUE NOT NULL,
    USER_PWD VARCHAR2(60) NOT NULL,
    EMAIL VARCHAR2(30) NOT NULL,
    PHONE   VARCHAR2(15) NULL,
    EROLL_DATE DATE,
    MODIFY_DATE TIMESTAMP NULL,
    STATUS CHAR(1) DEFAULT 'Y' CHECK (STATUS IN('Y','N')),
    BUSINESS_NO NUMBER NULL,
    PERSON_NO NUMBER NULL
);

COMMENT ON COLUMN MEMBER.USER_NO IS '회원 고유키';
COMMENT ON COLUMN MEMBER.USER_TYPE IS '회원 유형';
COMMENT ON COLUMN MEMBER.USER_ID IS '회원 아이디';
COMMENT ON COLUMN MEMBER.USER_PWD IS '회원 비밀번호';
COMMENT ON COLUMN MEMBER.EMAIL IS '회원 이메일';
COMMENT ON COLUMN MEMBER.PHONE IS '회원 연락처';
COMMENT ON COLUMN MEMBER.EROLL_DATE IS '회원 가입일';
COMMENT ON COLUMN MEMBER.MODIFY_DATE IS '마지막 회원 정보 수정일';
COMMENT ON COLUMN MEMBER.STATUS IS '계정 상태 ( 가입: Y / 탈퇴: N)';
COMMENT ON COLUMN MEMBER.BUSINESS_NO IS '기업 고유키';
COMMENT ON COLUMN MEMBER.PERSON_NO IS '개인 고유키';


/* POSTING 테이블 생성 */
CREATE TABLE POSTING (
    POSTING_NO NUMBER PRIMARY KEY NOT NULL,
    CATEGORY VARCHAR2(100) NOT NULL,
    TITLE VARCHAR2(225) NOT NULL,
    CONTENT CLOB NOT NULL,
    IMAGE VARCHAR2(255) NULL,
    AUTHOR VARCHAR2(100) NOT NULL,
    USER_NO NUMBER NOT NULL,
    IMAGE_PATH VARCHAR2(500) NULL,
    CREATED_TIME TIMESTAMP NOT NULL,
    UPDATED_TIME TIMESTAMP NULL,
    VIEW_COUNT NUMBER NOT NULL,
    LIKE_COUNT NUMBER NOT NULL,
    BUSINESS_NO NUMBER NULL,
    STATUS CHAR(1) DEFAULT 'Y' NOT NULL CHECK (STATUS IN ('Y','N')),
    PERSON_NO NUMBER NULL
);

COMMENT ON COLUMN POSTING.POSTING_NO IS '게시글 번호';
COMMENT ON COLUMN POSTING.CATEGORY IS '카테고리';
COMMENT ON COLUMN POSTING.TITLE IS '게시글 제목';
COMMENT ON COLUMN POSTING.CONTENT IS '게시글 내용';
COMMENT ON COLUMN POSTING.IMAGE IS '이미지';
COMMENT ON COLUMN POSTING.AUTHOR IS '작성자';
COMMENT ON COLUMN POSTING.USER_NO IS '회원 번호';
COMMENT ON COLUMN POSTING.CREATED_TIME IS '작성 시간';
COMMENT ON COLUMN POSTING.UPDATED_TIME IS '수정 시간';
COMMENT ON COLUMN POSTING.VIEW_COUNT IS '조회수';
COMMENT ON COLUMN POSTING.LIKE_COUNT IS '좋아요 수';
COMMENT ON COLUMN POSTING.BUSINESS_NO IS '기업 번호';
COMMENT ON COLUMN POSTING.STATUS IS '게시글 상태 (Y/N)';
COMMENT ON COLUMN POSTING.PERSON_NO IS '개인 번호';

/* REPLY 테이블 생성 */
CREATE TABLE REPLY (
    REPLY_NO NUMBER PRIMARY KEY NOT NULL,
    POSTING_NO NUMBER NOT NULL,
    USER_NO NUMBER NOT NULL,
    CONTENT CLOB NOT NULL,
    CREATED_TIME TIMESTAMP DEFAULT SYSDATE,
    LIKE_COUNT NUMBER DEFAULT 0,
    STATUS CHAR(1) DEFAULT 'Y' NOT NULL CHECK (STATUS IN ('Y','N'))
);

COMMENT ON COLUMN REPLY.REPLY_NO IS '댓글 번호';
COMMENT ON COLUMN REPLY.POSTING_NO IS '게시글 번호';
COMMENT ON COLUMN REPLY.USER_NO IS '회원 번호';
COMMENT ON COLUMN REPLY.CONTENT IS '댓글 내용';
COMMENT ON COLUMN REPLY.CREATED_TIME IS '작성 시간';
COMMENT ON COLUMN REPLY.LIKE_COUNT IS '좋아요 수';
COMMENT ON COLUMN REPLY.STATUS IS '댓글 상태 (Y/N)';

/* COMMUNITY_POST_JOB_CATEGORY 테이블 생성 */
CREATE TABLE COMMUNITY_POST_JOB_CATEGORY (
    POSTING_NO NUMBER NOT NULL,
    JOB_CATEGORY VARCHAR2(100) NOT NULL
);

COMMENT ON COLUMN COMMUNITY_POST_JOB_CATEGORY.POSTING_NO IS '게시글 번호';
COMMENT ON COLUMN COMMUNITY_POST_JOB_CATEGORY.JOB_CATEGORY IS '직업 카테고리';

/* COMMUNITY_POST_HASHTAG 테이블 생성 */
CREATE TABLE COMMUNITY_POST_HASHTAG (
    POSTING_NO NUMBER NOT NULL,
    HASHTAG VARCHAR2(100) NOT NULL
);

COMMENT ON COLUMN COMMUNITY_POST_HASHTAG.POSTING_NO IS '게시글 번호';
COMMENT ON COLUMN COMMUNITY_POST_HASHTAG.HASHTAG IS '해시태그';

/* POST_LIKE 테이블 생성 (게시글 공감 기록) */
CREATE TABLE POST_LIKE (
    LIKE_NO NUMBER PRIMARY KEY NOT NULL,
    POSTING_NO NUMBER NOT NULL,
    USER_NO NUMBER NOT NULL,
    LIKED_TIME TIMESTAMP DEFAULT SYSDATE,
    CONSTRAINT fk_post_like_posting FOREIGN KEY (POSTING_NO) REFERENCES POSTING (POSTING_NO),
    CONSTRAINT fk_post_like_user FOREIGN KEY (USER_NO) REFERENCES MEMBER (USER_NO),
    CONSTRAINT uq_post_like_posting_user UNIQUE (POSTING_NO, USER_NO)
);

COMMENT ON TABLE POST_LIKE IS '게시글 공감 기록 테이블';
COMMENT ON COLUMN POST_LIKE.LIKE_NO IS '공감 고유 번호';
COMMENT ON COLUMN POST_LIKE.POSTING_NO IS '게시글 번호';
COMMENT ON COLUMN POST_LIKE.USER_NO IS '회원 번호';
COMMENT ON COLUMN POST_LIKE.LIKED_TIME IS '공감 시간';



/* REPLY_LIKE 테이블 생성 (댓글 공감 기록) */
CREATE TABLE REPLY_LIKE (
    LIKE_NO NUMBER PRIMARY KEY NOT NULL,
    REPLY_NO NUMBER NOT NULL,
    USER_NO NUMBER NOT NULL,
    LIKED_TIME TIMESTAMP DEFAULT SYSDATE,
    CONSTRAINT fk_reply_like_reply FOREIGN KEY (REPLY_NO) REFERENCES REPLY (REPLY_NO),
    CONSTRAINT fk_reply_like_user FOREIGN KEY (USER_NO) REFERENCES MEMBER (USER_NO),
    CONSTRAINT uq_reply_like_reply_user UNIQUE (REPLY_NO, USER_NO)
);

COMMENT ON TABLE REPLY_LIKE IS '댓글 공감 기록 테이블';
COMMENT ON COLUMN REPLY_LIKE.LIKE_NO IS '공감 고유 번호';
COMMENT ON COLUMN REPLY_LIKE.REPLY_NO IS '댓글 번호';
COMMENT ON COLUMN REPLY_LIKE.USER_NO IS '회원 번호';
COMMENT ON COLUMN REPLY_LIKE.LIKED_TIME IS '공감 시간';


/* POST_LIKE 시퀀스 생성 */
CREATE SEQUENCE POST_LIKE_SEQ START WITH 1 INCREMENT BY 1 NOCACHE NOCYCLE;

/* REPLY_LIKE 시퀀스 생성 */
CREATE SEQUENCE REPLY_LIKE_SEQ START WITH 1 INCREMENT BY 1 NOCACHE NOCYCLE;


/* BUSINESS (기업 정보 테이블) */
CREATE TABLE BUSINESS (
    BUSINESS_NO NUMBER PRIMARY KEY NOT NULL,
    REGISTRATION_NUMBER VARCHAR2(12) NOT NULL,
    OWNER_NAME VARCHAR2(15) NULL,
    COMPANY_NAME VARCHAR2(50) NULL,
    COMPANY_CODE NUMBER  NULL,
    COMPANY_TEL VARCHAR2(15) NULL,
    COMPANY_ADDR VARCHAR2(50) NULL,
    COMPANY_FAX VARCHAR2(15) NULL,
    COMPANY_SITE VARCHAR2(50) NULL,
    LOGO VARCHAR2(500) NULL,
    INTRODUCTION CLOB NULL,
    VISION CLOB NULL,
    COMPANY_TYPE VARCHAR(50) NULL,
    EMPLOYEE_COUNT NUMBER NULL,
    INDUSTRY VARCHAR(100) NULL,
    BRAND_NAME VARCHAR(100) NULL
);

COMMENT ON COLUMN BUSINESS.BUSINESS_NO IS '기업 고유키';
COMMENT ON COLUMN BUSINESS.REGISTRATION_NUMBER IS '사업자등록번호';
COMMENT ON COLUMN BUSINESS.OWNER_NAME IS '대표자명';
COMMENT ON COLUMN BUSINESS.COMPANY_NAME IS '상호명';
COMMENT ON COLUMN BUSINESS.COMPANY_CODE IS '업종코드';
COMMENT ON COLUMN BUSINESS.COMPANY_TEL IS '사업장 전화번호';
COMMENT ON COLUMN BUSINESS.COMPANY_ADDR IS '사업장 주소';
COMMENT ON COLUMN BUSINESS.COMPANY_FAX IS '사업장 팩스 주소';
COMMENT ON COLUMN BUSINESS.COMPANY_SITE IS '기업 홈페이지 주소';
COMMENT ON COLUMN BUSINESS.LOGO IS '기업 로고 이미지';
COMMENT ON COLUMN BUSINESS.INTRODUCTION IS '기업 소개';
COMMENT ON COLUMN BUSINESS.VISION IS '기업 비전';
COMMENT ON COLUMN BUSINESS.COMPANY_TYPE IS '기업 형태';
COMMENT ON COLUMN BUSINESS.EMPLOYEE_COUNT IS '직원수';
COMMENT ON COLUMN BUSINESS.INDUSTRY IS '업종';
COMMENT ON COLUMN BUSINESS.BRAND_NAME IS '브랜드명';


/* BUSINESS_BENEFIT 테이블 생성 */
CREATE TABLE BUSINESS_BENEFIT (
    BUSINESS_NO NUMBER NOT NULL,
    BENEFIT VARCHAR2(100) NULL
);

COMMENT ON COLUMN BUSINESS_BENEFIT.BUSINESS_NO IS '기업 번호';
COMMENT ON COLUMN BUSINESS_BENEFIT.BENEFIT IS '복리후생';

/* WORK_ENVIRONMENT_IMAGE 테이블 생성 */
CREATE TABLE WORK_ENVIRONMENT_IMAGE (
    WORK_ENVIRONMENT_IMAGE_NO NUMBER NOT NULL,
    BUSINESS_NO NUMBER NOT NULL,
    IMAGE_URL VARCHAR2(500) NULL,
    TITLE VARCHAR2(255) NULL
);

COMMENT ON COLUMN WORK_ENVIRONMENT_IMAGE.WORK_ENVIRONMENT_IMAGE_NO IS '작업 환경 이미지 번호';
COMMENT ON COLUMN WORK_ENVIRONMENT_IMAGE.BUSINESS_NO IS '기업 번호';
COMMENT ON COLUMN WORK_ENVIRONMENT_IMAGE.IMAGE_URL IS '이미지 URL';
COMMENT ON COLUMN WORK_ENVIRONMENT_IMAGE.TITLE IS '이미지 제목';

/* BUSINESS_BOOKMARK 테이블 생성 */
CREATE TABLE BUSINESS_BOOKMARK (
    BUSINESS_NO NUMBER NOT NULL,
    RESUME_NO NUMBER NOT NULL,
    FLOER VARCHAR(15) NULL,
    ADD_DATE TIMESTAMP NULL
);

COMMENT ON COLUMN BUSINESS_BOOKMARK.BUSINESS_NO IS '기업 번호';
COMMENT ON COLUMN BUSINESS_BOOKMARK.RESUME_NO IS '이력서 번호';
COMMENT ON COLUMN BUSINESS_BOOKMARK.FLOER IS '폴더';
COMMENT ON COLUMN BUSINESS_BOOKMARK.ADD_DATE IS '추가 날짜';

/* JOB_POSTING 테이블 생성 */
CREATE TABLE JOB_POSTING (
    RECRUITMENT_NO NUMBER NOT NULL,
    BUSINESS_NO NUMBER NOT NULL,
    TITLE VARCHAR2(50) NOT NULL,
    REPRESENTATIVE_NAME VARCHAR2(15) NOT NULL,
    REPRESENTATIVE_DEPT VARCHAR2(30) NOT NULL,
    REPRESENTATIVE_EMAIL VARCHAR2(50) NOT NULL,
    METHOD CHAR(1) NOT NULL,
    START_DATE TIMESTAMP NOT NULL,
    DEADLINE TIMESTAMP NOT NULL,
    POSTING_DATE DATE NOT NULL,
    CONTENT_IMG VARCHAR2(100) NULL,
    CONTENT_TEXT VARCHAR2(3000) NULL
);

COMMENT ON COLUMN JOB_POSTING.RECRUITMENT_NO IS '채용 번호';
COMMENT ON COLUMN JOB_POSTING.BUSINESS_NO IS '기업 번호';
COMMENT ON COLUMN JOB_POSTING.TITLE IS '채용 제목';
COMMENT ON COLUMN JOB_POSTING.REPRESENTATIVE_NAME IS '대표 이름';
COMMENT ON COLUMN JOB_POSTING.REPRESENTATIVE_DEPT IS '대표 부서';
COMMENT ON COLUMN JOB_POSTING.REPRESENTATIVE_EMAIL IS '대표 이메일';
COMMENT ON COLUMN JOB_POSTING.METHOD IS '채용 방법';
COMMENT ON COLUMN JOB_POSTING.START_DATE IS '채용 시작일';
COMMENT ON COLUMN JOB_POSTING.DEADLINE IS '채용 마감일';
COMMENT ON COLUMN JOB_POSTING.POSTING_DATE IS '게시일';
COMMENT ON COLUMN JOB_POSTING.CONTENT_IMG IS '내용 이미지';
COMMENT ON COLUMN JOB_POSTING.CONTENT_TEXT IS '내용 텍스트';

/* JOB_REQUIREMENTS 테이블 생성 */
CREATE TABLE JOB_REQUIREMENTS (
    POSITION_NO NUMBER NOT NULL,
    RECRUITMENT_NO NUMBER NOT NULL,
    POSITION_NAME VARCHAR2(50) NOT NULL,
    POSITION_RANK VARCHAR2(30) NOT NULL,
    EMPLOYMENT_FORM CHAR(1) NOT NULL,
    RECRUITED_PEOPLE NUMBER NOT NULL,
    WORKING_DAY NUMBER NOT NULL,
    WORKING_TIME_START TIMESTAMP NULL,
    WORKING_TIME_END TIMESTAMP NULL,
    WORKING_PLACE VARCHAR2(50) NOT NULL,
    MIN_SALARY NUMBER NOT NULL,
    MAX_SALARY NUMBER NOT NULL,
    ACADEMIC_ABILITY CHAR(2) NOT NULL,
    MIN_CAREER NUMBER NOT NULL,
    MAX_CAREER NUMBER NOT NULL
);

COMMENT ON COLUMN JOB_REQUIREMENTS.POSITION_NO IS '직위 번호';
COMMENT ON COLUMN JOB_REQUIREMENTS.RECRUITMENT_NO IS '채용 번호';
COMMENT ON COLUMN JOB_REQUIREMENTS.POSITION_NAME IS '직위 이름';
COMMENT ON COLUMN JOB_REQUIREMENTS.POSITION_RANK IS '직위 등급';
COMMENT ON COLUMN JOB_REQUIREMENTS.EMPLOYMENT_FORM IS '고용 형태';
COMMENT ON COLUMN JOB_REQUIREMENTS.RECRUITED_PEOPLE IS '채용 인원';
COMMENT ON COLUMN JOB_REQUIREMENTS.WORKING_DAY IS '근무일';
COMMENT ON COLUMN JOB_REQUIREMENTS.WORKING_TIME_START IS '근무 시간 시작';
COMMENT ON COLUMN JOB_REQUIREMENTS.WORKING_TIME_END IS '근무 시간 종료';
COMMENT ON COLUMN JOB_REQUIREMENTS.WORKING_PLACE IS '근무 장소';
COMMENT ON COLUMN JOB_REQUIREMENTS.MIN_SALARY IS '최소 급여(연봉)';
COMMENT ON COLUMN JOB_REQUIREMENTS.MAX_SALARY IS '최대 급여(연봉)';
COMMENT ON COLUMN JOB_REQUIREMENTS.ACADEMIC_ABILITY IS '학력 요구';
COMMENT ON COLUMN JOB_REQUIREMENTS.MIN_CAREER IS '최소 경력';
COMMENT ON COLUMN JOB_REQUIREMENTS.MAX_CAREER IS '최대 경력';

/* APPLICANTS 테이블 생성 */
CREATE TABLE APPLICANTS (
    APPLICANTS_NO NUMBER NOT NULL,
    RECRUITMENT_NO NUMBER NOT NULL,
    POSITION_NO NUMBER NOT NULL,
    RESUME_NO NUMBER NOT NULL,
    APPLICANTS_DATE DATE NOT NULL,
    RESUME_STATUS CHAR(1) NOT NULL,
    SCORE NUMBER NULL,
    MEMO VARCHAR2(200) NULL,
    APPLICATION_STATUS VARCHAR2(15) NOT NULL,
    PASS_STATUS CHAR(1) NOT NULL
);

COMMENT ON COLUMN APPLICANTS.APPLICANTS_NO IS '지원자 번호';
COMMENT ON COLUMN APPLICANTS.RECRUITMENT_NO IS '채용 번호';
COMMENT ON COLUMN APPLICANTS.POSITION_NO IS '직위 번호';
COMMENT ON COLUMN APPLICANTS.RESUME_NO IS '이력서 번호';
COMMENT ON COLUMN APPLICANTS.APPLICANTS_DATE IS '지원일';
COMMENT ON COLUMN APPLICANTS.RESUME_STATUS IS '이력서 상태';
COMMENT ON COLUMN APPLICANTS.SCORE IS '점수';
COMMENT ON COLUMN APPLICANTS.MEMO IS '메모';
COMMENT ON COLUMN APPLICANTS.APPLICATION_STATUS IS '지원 상태';
COMMENT ON COLUMN APPLICANTS.PASS_STATUS IS '합격 상태';

/* PERSON_BOOKMARK 테이블 생성 */
CREATE TABLE PERSON_BOOKMARK (
    PERSON_NO NUMBER NOT NULL,
    RECRUITMENT_NO NUMBER NOT NULL,
    FOLDER VARCHAR2(15) NULL,
    ADD_DATE TIMESTAMP NOT NULL
);

COMMENT ON COLUMN PERSON_BOOKMARK.PERSON_NO IS '개인 번호';
COMMENT ON COLUMN PERSON_BOOKMARK.RECRUITMENT_NO IS '채용 번호';
COMMENT ON COLUMN PERSON_BOOKMARK.FOLDER IS '폴더';
COMMENT ON COLUMN PERSON_BOOKMARK.ADD_DATE IS '추가 날짜';


/* PERSON (개인 정보 테이블) */
CREATE TABLE PERSON (
    PERSON_NO NUMBER PRIMARY KEY NOT NULL,
    NAME VARCHAR2(15) NULL,
    BIRTHDAY DATE NULL,
    GENDER VARCHAR2(3) NULL,
    ADDRESS VARCHAR2(100) NULL
);

COMMENT ON COLUMN PERSON.PERSON_NO IS '개인 고유키';
COMMENT ON COLUMN PERSON.NAME IS '회원 이름';
COMMENT ON COLUMN PERSON.BIRTHDAY IS '생년월일';
COMMENT ON COLUMN PERSON.GENDER IS '성별';
COMMENT ON COLUMN PERSON.ADDRESS IS '주소';


CREATE TABLE RESUME (
    RESUME_NO NUMBER NOT NULL, -- 이력서 번호
    PERSON_NO NUMBER NOT NULL, -- 개인 번호
    TITLE VARCHAR2(50) NOT NULL, -- 이력서 제목
    USERPIC VARCHAR2(100) NULL, --프로필사진
    CREATE_DATE DATE NOT NULL, -- 생성 날짜
    MODIFIED_DATE DATE NOT NULL, -- 수정 날짜
    DELETED CHAR(1) NOT NULL CHECK (DELETED IN ('Y', 'N')) -- 삭제 여부
);

COMMENT ON COLUMN RESUME.RESUME_NO IS '이력서 번호';
COMMENT ON COLUMN RESUME.PERSON_NO IS '개인 번호';
COMMENT ON COLUMN RESUME.TITLE IS '이력서 제목';
COMMENT ON COLUMN RESUME.CREATE_DATE IS '생성 날짜';
COMMENT ON COLUMN RESUME.MODIFIED_DATE IS '수정 날짜';
COMMENT ON COLUMN RESUME.DELETED IS '삭제 여부';

/* RESUME 테이블에 기본 키 추가 */
ALTER TABLE RESUME
ADD CONSTRAINT PK_RESUME PRIMARY KEY (RESUME_NO);

/* BASIC_INFO 테이블 생성 */
CREATE TABLE BASIC_INFO (
    BASIC_NO NUMBER NOT NULL, -- 기본 정보 번호
    RESUME_NO NUMBER NOT NULL, -- 이력서 번호 (외래 키)
    PERSON_NO NUMBER NOT NULL, -- 개인 번호 (외래 키)
    USER_NAME VARCHAR2(50) NOT NULL, -- 사용자 이름
    USER_GENDER CHAR(1) NOT NULL CHECK (USER_GENDER IN ('M', 'F')), -- 성별
    USER_BIRTH DATE NOT NULL, -- 생년월일
    USER_EMAIL VARCHAR2(100) NOT NULL, -- 이메일
    USER_PHONE VARCHAR2(20) NOT NULL, -- 전화번호
    USER_ADDRESS VARCHAR2(255) NOT NULL, -- 주소
    USER_ROAD_ADDRESS VARCHAR2(255) NULL, -- 도로명 주소
    USER_DETAIL_ADDRESS VARCHAR2(255) NULL, -- 상세 주소
    USER_PIC VARCHAR2(500) NULL -- 사용자 사진
);

COMMENT ON COLUMN BASIC_INFO.BASIC_NO IS '기본 정보 번호';
COMMENT ON COLUMN BASIC_INFO.RESUME_NO IS '이력서 번호';
COMMENT ON COLUMN BASIC_INFO.PERSON_NO IS '개인 번호';
COMMENT ON COLUMN BASIC_INFO.USER_NAME IS '사용자 이름';
COMMENT ON COLUMN BASIC_INFO.USER_GENDER IS '성별';
COMMENT ON COLUMN BASIC_INFO.USER_BIRTH IS '생년월일';
COMMENT ON COLUMN BASIC_INFO.USER_EMAIL IS '이메일';
COMMENT ON COLUMN BASIC_INFO.USER_PHONE IS '전화번호';
COMMENT ON COLUMN BASIC_INFO.USER_ADDRESS IS '주소';
COMMENT ON COLUMN BASIC_INFO.USER_ROAD_ADDRESS IS '도로명 주소';
COMMENT ON COLUMN BASIC_INFO.USER_DETAIL_ADDRESS IS '상세 주소';
COMMENT ON COLUMN BASIC_INFO.USER_PIC IS '사용자 사진';

/* BASIC_INFO 테이블에 기본 키 추가 */
ALTER TABLE BASIC_INFO
ADD CONSTRAINT PK_BASIC_INFO PRIMARY KEY (BASIC_NO);

/* BASIC_INFO 테이블에 외래 키 추가 */
ALTER TABLE BASIC_INFO
ADD CONSTRAINT FK_BASIC_INFO_RESUME FOREIGN KEY (RESUME_NO) REFERENCES RESUME (RESUME_NO);

ALTER TABLE BASIC_INFO
ADD CONSTRAINT FK_BASIC_INFO_PERSON FOREIGN KEY (PERSON_NO) REFERENCES PERSON (PERSON_NO);


/* ACADEMIC_ABILITY 테이블 생성 */
CREATE TABLE ACADEMIC_ABILITY (
    ACADEMIC_NO NUMBER NOT NULL,
    RESUME_NO NUMBER NOT NULL,
    ACADEMIC_NAME VARCHAR2(30) NOT NULL,
    ACADEMIC_TYPE CHAR(2) NOT NULL,
    DEGREE CHAR(1) NULL,
    ENTER_DATE DATE NULL,
    GRADUATION_DATE DATE NULL,
    STATUS CHAR(1) NOT NULL,
    LOCATION VARCHAR2(10) NOT NULL,
    MAJOR VARCHAR2(100) NOT NULL,
    EXAM_PASSED CHAR(1)
);

COMMENT ON COLUMN ACADEMIC_ABILITY.ACADEMIC_NO IS '학력 번호';
COMMENT ON COLUMN ACADEMIC_ABILITY.RESUME_NO IS '이력서 번호';
COMMENT ON COLUMN ACADEMIC_ABILITY.ACADEMIC_NAME IS '학력 이름';
COMMENT ON COLUMN ACADEMIC_ABILITY.ACADEMIC_TYPE IS '학력 유형';
COMMENT ON COLUMN ACADEMIC_ABILITY.DEGREE IS '학위';
COMMENT ON COLUMN ACADEMIC_ABILITY.ENTER_DATE IS '입학 날짜';
COMMENT ON COLUMN ACADEMIC_ABILITY.GRADUATION_DATE IS '졸업 날짜';
COMMENT ON COLUMN ACADEMIC_ABILITY.STATUS IS '상태';
COMMENT ON COLUMN ACADEMIC_ABILITY.LOCATION IS '위치';
COMMENT ON COLUMN ACADEMIC_ABILITY.MAJOR IS '전공';
COMMENT ON COLUMN ACADEMIC_ABILITY.EXAM_PASSED IS '시험 합격 여부';

/* LICENSE 테이블 생성 */
CREATE TABLE LICENSE (
    LICENSE_NO NUMBER NOT NULL,
    RESUME_NO NUMBER NOT NULL,
    LICENSE_NAME VARCHAR2(30) NULL,
    ISSUED_BY VARCHAR2(30) NULL,
    ISSUE_DATE DATE NULL,
    PASSING_CATEGORY VARCHAR2(30) NULL
);

COMMENT ON COLUMN LICENSE.LICENSE_NO IS '자격증 번호';
COMMENT ON COLUMN LICENSE.RESUME_NO IS '이력서 번호';
COMMENT ON COLUMN LICENSE.LICENSE_NAME IS '자격증 이름';
COMMENT ON COLUMN LICENSE.ISSUED_BY IS '발급 기관';
COMMENT ON COLUMN LICENSE.ISSUE_DATE IS '발급 날짜';
COMMENT ON COLUMN LICENSE.PASSING_CATEGORY IS '합격 등급';

/* LANGUAGE 테이블 생성 */
CREATE TABLE LANGUAGE (
    LANGUAGE_NO NUMBER NOT NULL,
    RESUME_NO NUMBER NOT NULL,
    LANGUAGE_NAME VARCHAR2(30) NULL,
    PROFICIENCY_LEVEL VARCHAR2(30) NULL,
    ACQUISITION_DATE DATE NULL,
    KIND_OF_LANGUAGE VARCHAR2(10) NOT NULL
);

COMMENT ON COLUMN LANGUAGE.LANGUAGE_NO IS '언어 번호';
COMMENT ON COLUMN LANGUAGE.RESUME_NO IS '이력서 번호';
COMMENT ON COLUMN LANGUAGE.LANGUAGE_NAME IS '언어 이름';
COMMENT ON COLUMN LANGUAGE.PROFICIENCY_LEVEL IS '숙련도';
COMMENT ON COLUMN LANGUAGE.ACQUISITION_DATE IS '취득 날짜';
COMMENT ON COLUMN LANGUAGE.KIND_OF_LANGUAGE IS '언어 종류';

/* AWARD 테이블 생성 */
CREATE TABLE AWARD (
    AWARD_NO NUMBER NOT NULL,
    RESUME_NO NUMBER NOT NULL,
    AWARD_NAME VARCHAR2(50) NULL,
    ORGANIZER VARCHAR2(50) NULL,
    AWARD_DATE DATE NULL
);

COMMENT ON COLUMN AWARD.AWARD_NO IS '수상 번호';
COMMENT ON COLUMN AWARD.RESUME_NO IS '이력서 번호';
COMMENT ON COLUMN AWARD.AWARD_NAME IS '수상/수상칭호';
COMMENT ON COLUMN AWARD.ORGANIZER IS '주최 기관';
COMMENT ON COLUMN AWARD.AWARD_DATE IS '수상 날짜';

/* EXPERIENCE 테이블 생성 */
CREATE TABLE EXPERIENCE (
    EXPERIENCE_NO NUMBER NOT NULL,
    RESUME_NO NUMBER NOT NULL,
    ACTICITY_TYPE VARCHAR2(50) NULL,
    ORGANIZATION_NAME VARCHAR2(100) NULL,
    START_DATE DATE NULL,
    END_DATE DATE NULL,
    DESCRIPTION VARCHAR2(300) NULL
);

COMMENT ON COLUMN EXPERIENCE.EXPERIENCE_NO IS '경험 번호';
COMMENT ON COLUMN EXPERIENCE.RESUME_NO IS '이력서 번호';
COMMENT ON COLUMN EXPERIENCE.ACTICITY_TYPE IS '활동 유형';
COMMENT ON COLUMN EXPERIENCE.ORGANIZATION_NAME IS '조직 이름/소속';
COMMENT ON COLUMN EXPERIENCE.START_DATE IS '시작 날짜';
COMMENT ON COLUMN EXPERIENCE.END_DATE IS '종료 날짜';
COMMENT ON COLUMN EXPERIENCE.DESCRIPTION IS '활동 내용';

/* EMPLOYMENTPREFERENCE 테이블 생성 */
CREATE TABLE EMPLOYMENTPREFERENCE (
    EMPLOYMENT_PREFERENCES_NO NUMBER NOT NULL,
    RESUME_NO NUMBER NOT NULL,
    MARRIAGE_REASON VARCHAR2(255) NULL,
    IS_MILITARY_TARGET VARCHAR2(50) NOT NULL
);

COMMENT ON COLUMN EMPLOYMENTPREFERENCE.EMPLOYMENT_PREFERENCES_NO IS '고용 선호도 번호';
COMMENT ON COLUMN EMPLOYMENTPREFERENCE.RESUME_NO IS '이력서 번호';
COMMENT ON COLUMN EMPLOYMENTPREFERENCE.MARRIAGE_REASON IS '결혼 이유';
COMMENT ON COLUMN EMPLOYMENTPREFERENCE.IS_MILITARY_TARGET IS '군 대상 여부';

/* MILITARYSERVICE 테이블 생성 */
CREATE TABLE MILITARYSERVICE (
    EMPLOYMENT_PREFERENCES_NO NUMBER NOT NULL,
    ENLISTMENT_DATE DATE NULL,
    ENTIRE_DATE DATE NULL,
    MILITARY_SELECTION VARCHAR2(10) NULL,
    CLASS_SELECTION VARCHAR2(10) NULL,
    ENTRIE_REASON VARCHAR2(20) NULL,
    EXEMPTION_REASON VARCHAR2(225) NULL,
    UNFINISHED_REASON VARCHAR2(225) NULL
);

COMMENT ON COLUMN MILITARYSERVICE.EMPLOYMENT_PREFERENCES_NO IS '고용 선호도 번호';
COMMENT ON COLUMN MILITARYSERVICE.ENLISTMENT_DATE IS '입대 날짜';
COMMENT ON COLUMN MILITARYSERVICE.ENTIRE_DATE IS '종합 날짜';
COMMENT ON COLUMN MILITARYSERVICE.MILITARY_SELECTION IS '군 선택';
COMMENT ON COLUMN MILITARYSERVICE.CLASS_SELECTION IS '계급 선택';
COMMENT ON COLUMN MILITARYSERVICE.ENTRIE_REASON IS '입대 이유';
COMMENT ON COLUMN MILITARYSERVICE.EXEMPTION_REASON IS '면제 이유';
COMMENT ON COLUMN MILITARYSERVICE.UNFINISHED_REASON IS '미완료 이유';

/* SELF_INTRODUCTION 테이블 생성 */
CREATE TABLE SELF_INTRODUCTION (
    SELF_INTRODUCTION_NO NUMBER NOT NULL,
    RESUME_NO NUMBER NOT NULL,
    USER_ID VARCHAR2(20) NOT NULL,
    TITLE VARCHAR2(100) NOT NULL,
    CONTENT VARCHAR2(500) NOT NULL,
    CREATED_DATE DATE NOT NULL,
    MODIFIED_DATE DATE NULL,
    DELETED CHAR(1) NULL CHECK (DELETED IN ('Y', 'N'))
);

COMMENT ON COLUMN SELF_INTRODUCTION.SELF_INTRODUCTION_NO IS '자기소개 번호';
COMMENT ON COLUMN SELF_INTRODUCTION.RESUME_NO IS '이력서 번호';
COMMENT ON COLUMN SELF_INTRODUCTION.USER_ID IS '회원 아이디';
COMMENT ON COLUMN SELF_INTRODUCTION.TITLE IS '자기소개 제목';
COMMENT ON COLUMN SELF_INTRODUCTION.CONTENT IS '자기소개 내용';
COMMENT ON COLUMN SELF_INTRODUCTION.CREATED_DATE IS '생성 날짜';
COMMENT ON COLUMN SELF_INTRODUCTION.MODIFIED_DATE IS '수정 날짜';
COMMENT ON COLUMN SELF_INTRODUCTION.DELETED IS '삭제 여부';

/* PORTFOLIO 테이블 생성 */
CREATE TABLE PORTFOLIO (
    PORTFOLIO_NO NUMBER NOT NULL,
    RESUME_NO NUMBER NOT NULL,
    TITLE VARCHAR2(100) NOT NULL,
    TYPE VARCHAR2(10) NOT NULL CHECK (TYPE IN ('파일', 'URL')),
    FILE_URL VARCHAR2(200) NULL
);

COMMENT ON COLUMN PORTFOLIO.PORTFOLIO_NO IS '포트폴리오 번호';
COMMENT ON COLUMN PORTFOLIO.RESUME_NO IS '이력서 번호';
COMMENT ON COLUMN PORTFOLIO.TITLE IS '포트폴리오 제목';
COMMENT ON COLUMN PORTFOLIO.TYPE IS '포트폴리오 타입';
COMMENT ON COLUMN PORTFOLIO.FILE_URL IS '파일 또는 URL 주소';

/* SKILL 테이블 생성 */
CREATE TABLE SKILL (
    SKILL_NO NUMBER NOT NULL,
    RESUME_NO NUMBER NOT NULL,
    SKILL VARCHAR2(1000) NULL
);

COMMENT ON COLUMN SKILL.SKILL_NO IS '스킬 번호';
COMMENT ON COLUMN SKILL.RESUME_NO IS '이력서 번호';
COMMENT ON COLUMN SKILL.SKILL IS '스킬';

/* CAREER 테이블 생성 */
CREATE TABLE CAREER (
    WORK_EX_NO NUMBER NOT NULL,
    RESUME_NO NUMBER NOT NULL,
    COMPANY_TITLE VARCHAR2(50) NOT NULL,
    WORK VARCHAR2(20) NOT NULL,
    DEPARTMENT VARCHAR2(20) NOT NULL,
    START_DATE DATE NOT NULL,
    END_DATE DATE NULL,
    STATUS CHAR(1) NOT NULL CHECK (STATUS IN ('Y', 'N')),
    JOB_CONTENT VARCHAR2(100) NOT NULL,
    POSITION VARCHAR2(20) NOT NULL
);

COMMENT ON COLUMN CAREER.WORK_EX_NO IS '경력 번호';
COMMENT ON COLUMN CAREER.RESUME_NO IS '이력서 번호';
COMMENT ON COLUMN CAREER.COMPANY_TITLE IS '회사 이름';
COMMENT ON COLUMN CAREER.WORK IS '직무';
COMMENT ON COLUMN CAREER.DEPARTMENT IS '부서';
COMMENT ON COLUMN CAREER.START_DATE IS '시작 날짜';
COMMENT ON COLUMN CAREER.END_DATE IS '종료 날짜';
COMMENT ON COLUMN CAREER.STATUS IS '상태';
COMMENT ON COLUMN CAREER.JOB_CONTENT IS '업무 내용';
COMMENT ON COLUMN CAREER.POSITION IS '직위/직책';

/* 관심태그 테이블 생성 */
CREATE TABLE USER_TAGS (
    TAG_ID NUMBER PRIMARY KEY NOT NULL,      
    USER_NO NUMBER NOT NULL,                   
    TAG_NAME VARCHAR2(50) NOT NULL,           
    CREATED_DATE DATE DEFAULT SYSDATE,        
    CONSTRAINT FK_USER_TAGS_USER FOREIGN KEY (USER_NO) REFERENCES MEMBER (USER_NO)
);

/* 컬럼 설명 */
COMMENT ON COLUMN USER_TAGS.TAG_ID IS '태그 고유 번호';
COMMENT ON COLUMN USER_TAGS.USER_NO IS '회원 고유 번호 (MEMBER의 USER_NO)';
COMMENT ON COLUMN USER_TAGS.TAG_NAME IS '관심 태그 이름';
COMMENT ON COLUMN USER_TAGS.CREATED_DATE IS '태그 생성 날짜';


/* 관심태그 ID 시퀀스 생성 */
CREATE SEQUENCE SEQ_TAG_ID START WITH 1 INCREMENT BY 1 NOCACHE;   

/* 제약조건 추가 */
/*
ALTER TABLE MEMBER
    ADD CONSTRAINT FK_MEMBER_BUSINESS FOREIGN KEY (BUSINESS_NO) REFERENCES BUSINESS (BUSINESS_NO);
ALTER TABLE MEMBER
    ADD CONSTRAINT FK_MEMBER_PERSON FOREIGN KEY (PERSON_NO) REFERENCES PERSON (PERSON_NO);

ALTER TABLE POSTING
    ADD CONSTRAINT PK_POSTING PRIMARY KEY (POSTING_NO);
ALTER TABLE POSTING
    ADD CONSTRAINT FK_POSTING_BUSINESS FOREIGN KEY (BUSINESS_NO) REFERENCES BUSINESS (BUSINESS_NO);
ALTER TABLE POSTING
    ADD CONSTRAINT FK_POSTING_PERSON FOREIGN KEY (PERSON_NO) REFERENCES PERSON (PERSON_NO);
ALTER TABLE POSTING
    ADD CONSTRAINT FK_POSTING_USER FOREIGN KEY (USER_NO) REFERENCES MEMBER (USER_NO);

ALTER TABLE COMMUNITY_POST_JOB_CATEGORY
    ADD CONSTRAINT FK_COMMUNITY_JOB_CATEGORY FOREIGN KEY (POSTING_NO) REFERENCES POSTING (POSTING_NO);

ALTER TABLE COMMUNITY_POST_HASHTAG
    ADD CONSTRAINT FK_COMMUNITY_HASHTAG FOREIGN KEY (POSTING_NO) REFERENCES POSTING (POSTING_NO);

ALTER TABLE BUSINESS_BENEFIT
    ADD CONSTRAINT FK_BUSINESS_BENEFIT FOREIGN KEY (BUSINESS_NO) REFERENCES BUSINESS (BUSINESS_NO);

ALTER TABLE WORK_ENVIRONMENT_IMAGE
    ADD CONSTRAINT PK_WORK_ENVIRONMENT_IMAGE PRIMARY KEY (WORK_ENVIRONMENT_IMAGE_NO);
ALTER TABLE WORK_ENVIRONMENT_IMAGE
    ADD CONSTRAINT FK_WORK_ENVIRONMENT_IMAGE FOREIGN KEY (BUSINESS_NO) REFERENCES BUSINESS (BUSINESS_NO);

ALTER TABLE RESUME
    ADD CONSTRAINT PK_RESUME PRIMARY KEY (RESUME_NO, PERSON_NO);

ALTER TABLE BUSINESS_BOOKMARK
    ADD (PERSON_NO NUMBER);

ALTER TABLE BUSINESS_BOOKMARK
    ADD CONSTRAINT FK_BUSINESS_BOOKMARK_RESUME FOREIGN KEY (RESUME_NO, PERSON_NO) REFERENCES RESUME (RESUME_NO, PERSON_NO);

ALTER TABLE JOB_POSTING
    ADD CONSTRAINT PK_JOB_POSTING PRIMARY KEY (RECRUITMENT_NO);
ALTER TABLE JOB_POSTING
    ADD CONSTRAINT FK_JOB_POSTING_BUSINESS FOREIGN KEY (BUSINESS_NO) REFERENCES BUSINESS (BUSINESS_NO);

ALTER TABLE JOB_REQUIREMENTS
    ADD CONSTRAINT PK_JOB_REQUIREMENTS PRIMARY KEY (POSITION_NO);
ALTER TABLE JOB_REQUIREMENTS
    ADD CONSTRAINT FK_JOB_REQ_RECRUIT_NO FOREIGN KEY (RECRUITMENT_NO) REFERENCES JOB_POSTING (RECRUITMENT_NO);

ALTER TABLE APPLICANTS
    ADD CONSTRAINT PK_APPLICANTS PRIMARY KEY (APPLICANTS_NO);
ALTER TABLE APPLICANTS
    ADD CONSTRAINT FK_RECRUITMENT FOREIGN KEY (RECRUITMENT_NO) REFERENCES JOB_POSTING (RECRUITMENT_NO);

ALTER TABLE APPLICANTS
    ADD (PERSON_NO NUMBER);
ALTER TABLE APPLICANTS
    ADD CONSTRAINT FK_APPLICANTS_RESUME FOREIGN KEY (RESUME_NO, PERSON_NO) REFERENCES RESUME (RESUME_NO, PERSON_NO);

ALTER TABLE PERSON_BOOKMARK
    ADD CONSTRAINT FK_PERSON_BOOKMARK_PERSON FOREIGN KEY (PERSON_NO) REFERENCES PERSON (PERSON_NO);
ALTER TABLE PERSON_BOOKMARK
    ADD CONSTRAINT FK_PERSON_BOOKMARK_RECRUITMENT FOREIGN KEY (RECRUITMENT_NO) REFERENCES JOB_POSTING (RECRUITMENT_NO);

ALTER TABLE RESUME
    ADD CONSTRAINT FK_RESUME_PERSON FOREIGN KEY (PERSON_NO) REFERENCES PERSON (PERSON_NO);

ALTER TABLE ACADEMIC_ABILITY
    ADD (PERSON_NO NUMBER);
ALTER TABLE ACADEMIC_ABILITY
    ADD CONSTRAINT PK_ACADEMIC_ABILITY PRIMARY KEY (ACADEMIC_NO, RESUME_NO);
ALTER TABLE ACADEMIC_ABILITY
    ADD CONSTRAINT FK_ACADEMIC_ABILITY_RESUME FOREIGN KEY (RESUME_NO, PERSON_NO) REFERENCES RESUME (RESUME_NO, PERSON_NO);

ALTER TABLE LICENSE
    ADD (PERSON_NO NUMBER);
ALTER TABLE LICENSE
    ADD CONSTRAINT PK_LICENSE PRIMARY KEY (LICENSE_NO, RESUME_NO);
ALTER TABLE LICENSE
    ADD CONSTRAINT FK_LICENSE_RESUME FOREIGN KEY (RESUME_NO, PERSON_NO) REFERENCES RESUME (RESUME_NO, PERSON_NO);

ALTER TABLE LANGUAGE
    ADD (PERSON_NO NUMBER);
ALTER TABLE LANGUAGE
    ADD CONSTRAINT PK_LANGUAGE PRIMARY KEY (LANGUAGE_NO, RESUME_NO);
ALTER TABLE LANGUAGE
    ADD CONSTRAINT FK_LANGUAGE_RESUME FOREIGN KEY (RESUME_NO, PERSON_NO) REFERENCES RESUME (RESUME_NO, PERSON_NO);

ALTER TABLE AWARD
    ADD (PERSON_NO NUMBER);
ALTER TABLE AWARD
    ADD CONSTRAINT PK_AWARD PRIMARY KEY (AWARD_NO, RESUME_NO);
ALTER TABLE AWARD
    ADD CONSTRAINT FK_AWARD_RESUME FOREIGN KEY (RESUME_NO, PERSON_NO) REFERENCES RESUME (RESUME_NO, PERSON_NO);

ALTER TABLE EXPERIENCE
    ADD (PERSON_NO NUMBER);
ALTER TABLE EXPERIENCE
    ADD CONSTRAINT PK_EXPERIENCE PRIMARY KEY (EXPERIENCE_NO, RESUME_NO);
ALTER TABLE EXPERIENCE
    ADD CONSTRAINT FK_EXPERIENCE_RESUME FOREIGN KEY (RESUME_NO, PERSON_NO) REFERENCES RESUME (RESUME_NO, PERSON_NO);

ALTER TABLE EMPLOYMENTPREFERENCE
    ADD (PERSON_NO NUMBER);
ALTER TABLE EMPLOYMENTPREFERENCE
    ADD CONSTRAINT PK_EMPLOYMENTPREFERENCE PRIMARY KEY (EMPLOYMENT_PREFERENCES_NO, RESUME_NO);
ALTER TABLE EMPLOYMENTPREFERENCE
    ADD CONSTRAINT FK_EMP_PREF_RESUME FOREIGN KEY (RESUME_NO, PERSON_NO) REFERENCES RESUME (RESUME_NO, PERSON_NO);

ALTER TABLE SELF_INTRODUCTION
    ADD (PERSON_NO NUMBER);
ALTER TABLE SELF_INTRODUCTION
    ADD CONSTRAINT PK_SELF_INTRODUCTION PRIMARY KEY (SELF_INTRODUCTION_NO, RESUME_NO);
ALTER TABLE SELF_INTRODUCTION
    ADD CONSTRAINT FK_SELF_INTRO_RESUME FOREIGN KEY (RESUME_NO, PERSON_NO) REFERENCES RESUME (RESUME_NO, PERSON_NO);

ALTER TABLE PORTFOLIO
    ADD (PERSON_NO NUMBER);
ALTER TABLE PORTFOLIO
    ADD CONSTRAINT PK_PORTFOLIO PRIMARY KEY (PORTFOLIO_NO, RESUME_NO);
ALTER TABLE PORTFOLIO
    ADD CONSTRAINT FK_PORTFOLIO_RESUME FOREIGN KEY (RESUME_NO, PERSON_NO) REFERENCES RESUME (RESUME_NO, PERSON_NO);

ALTER TABLE SKILL
    ADD (PERSON_NO NUMBER);
ALTER TABLE SKILL
    ADD CONSTRAINT PK_SKILL PRIMARY KEY (SKILL_NO, RESUME_NO);
ALTER TABLE SKILL
    ADD CONSTRAINT FK_SKILL_RESUME FOREIGN KEY (RESUME_NO, PERSON_NO) REFERENCES RESUME (RESUME_NO, PERSON_NO);

ALTER TABLE CAREER
    ADD (PERSON_NO NUMBER);
ALTER TABLE CAREER
    ADD CONSTRAINT PK_CAREER PRIMARY KEY (WORK_EX_NO, RESUME_NO);
ALTER TABLE CAREER
    ADD CONSTRAINT FK_CAREER_RESUME FOREIGN KEY (RESUME_NO, PERSON_NO) REFERENCES RESUME (RESUME_NO, PERSON_NO);

/* REPLY 테이블 제약조건 추가 */
/*
ALTER TABLE REPLY
    ADD CONSTRAINT FK_REPLY_POSTING FOREIGN KEY (POSTING_NO) REFERENCES POSTING (POSTING_NO);

ALTER TABLE REPLY
    ADD CONSTRAINT FK_REPLY_USER FOREIGN KEY (USER_NO) REFERENCES MEMBER (USER_NO);
*/
-- COMMUNITY_POST_JOB_CATEGORY 테이블에 기본 키 추가
/*
ALTER TABLE COMMUNITY_POST_JOB_CATEGORY
ADD CONSTRAINT PK_COMMUNITY_POST_JOB_CATEGORY PRIMARY KEY (POSTING_NO, JOB_CATEGORY);
*/
-- COMMUNITY_POST_HASHTAG 테이블에 기본 키 추가
/*
ALTER TABLE COMMUNITY_POST_HASHTAG
ADD CONSTRAINT PK_COMMUNITY_POST_HASHTAG PRIMARY KEY (POSTING_NO, HASHTAG);

*/

CREATE SEQUENCE SEQ_UNO START WITH 1 INCREMENT BY 1 NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_PNO START WITH 1 INCREMENT BY 1 NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_BNO START WITH 1 INCREMENT BY 1 NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_JNO START WITH 1 INCREMENT BY 1 NOCACHE NOCYCLE;
CREATE SEQUENCE SEQ_JNO_R START WITH 1 INCREMENT BY 1 NOCACHE NOCYCLE;
CREATE SEQUENCE RESUME_SEQ START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE BASICINFO_SEQ START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE QUALIFICATION_SEQ START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE ACADEMIC_ABILITY_SEQ START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE EXPERIENCE_SEQ START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE EMPLOYMENT_PREFERENCES_SEQ START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE SKILL_SEQ START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE CAREER_SEQ START WITH 1 INCREMENT BY 1 NOCACHE;
CREATE SEQUENCE POSTING_SEQ START WITH 1 INCREMENT BY 1 NOCACHE NOCYCLE;
CREATE SEQUENCE REPLY_SEQ START WITH 1 INCREMENT BY 1 NOCACHE NOCYCLE;
CREATE SEQUENCE SELF_INTRO_SEQ START WITH 1 INCREMENT BY 1 NOCACHE NOCYCLE;

commit;