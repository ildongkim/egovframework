/* Sequence 저장테이블 */
CREATE TABLE COMTECOPSEQ
(
	TABLE_NAME            VARCHAR(60)  NOT NULL ,
	NEXT_ID               NUMERIC(30)  NULL ,
CONSTRAINT  COMTECOPSEQ_PK PRIMARY KEY (TABLE_NAME)
);




/* 공통분류코드 */
CREATE TABLE COMTCCMMNCLCODE
(
	CL_CODE               CHAR(3)  NOT NULL ,
	CL_CODE_NM            VARCHAR(180)  NULL ,
	CL_CODE_DC            VARCHAR(600)  NULL ,
	USE_AT                CHAR(1)  NULL ,
	FRST_REGIST_PNTTM     DATETIME  NULL ,
	FRST_REGISTER_ID      VARCHAR(60)  NULL ,
	LAST_UPDT_PNTTM       DATETIME  NULL ,
	LAST_UPDUSR_ID        VARCHAR(60)  NULL ,
CONSTRAINT  COMTCCMMNCLCODE_PK PRIMARY KEY (CL_CODE)
);




/* 공통코드 */
CREATE TABLE COMTCCMMNCODE
(
	CODE_ID               VARCHAR(18)  NOT NULL ,
	CODE_ID_NM            VARCHAR(180)  NULL ,
	CODE_ID_DC            VARCHAR(600)  NULL ,
	USE_AT                CHAR(1)  NULL ,
	CL_CODE               CHAR(3)  NULL ,
	FRST_REGIST_PNTTM     DATETIME  NULL ,
	FRST_REGISTER_ID      VARCHAR(60)  NULL ,
	LAST_UPDT_PNTTM       DATETIME  NULL ,
	LAST_UPDUSR_ID        VARCHAR(60)  NULL ,
CONSTRAINT  COMTCCMMNCODE_PK PRIMARY KEY (CODE_ID)
);




/* 공통상세코드 */
CREATE TABLE COMTCCMMNDETAILCODE
(
	CODE_ID               VARCHAR(18)  NOT NULL ,
	CODE                  VARCHAR(45)  NOT NULL ,
	CODE_NM               VARCHAR(180)  NULL ,
	CODE_DC               VARCHAR(600)  NULL ,
	USE_AT                CHAR(1)  NULL ,
	FRST_REGIST_PNTTM     DATETIME  NULL ,
	FRST_REGISTER_ID      VARCHAR(60)  NULL ,
	LAST_UPDT_PNTTM       DATETIME  NULL ,
	LAST_UPDUSR_ID        VARCHAR(60)  NULL ,
CONSTRAINT  COMTCCMMNDETAILCODE_PK PRIMARY KEY (CODE_ID,CODE)
);




/* 권한그룹정보 */
CREATE TABLE COMTNAUTHORGROUPINFO
(
	GROUP_ID              CHAR(20)  NOT NULL ,
	GROUP_NM              VARCHAR(180)  NOT NULL ,
	GROUP_CREAT_DE        CHAR(40)  NOT NULL ,
	GROUP_DC              VARCHAR(300)  NULL ,
CONSTRAINT  COMTNAUTHORGROUPINFO_PK PRIMARY KEY (GROUP_ID)
);




/* 조직정보 */
CREATE TABLE COMTNORGNZTINFO
(
	ORGNZT_ID             CHAR(20)  NOT NULL ,
	ORGNZT_NM             VARCHAR(60)  NOT NULL ,
	ORGNZT_DC             VARCHAR(300)  NULL ,
CONSTRAINT  COMTNORGNZTINFO_PK PRIMARY KEY (ORGNZT_ID)
);




/* 파일속성 */
CREATE TABLE COMTNFILE
(
	ATCH_FILE_ID          CHAR(20)  NOT NULL ,
	CREAT_DT              DATETIME  NOT NULL ,
	USE_AT                CHAR(1)  NULL ,
CONSTRAINT  COMTNFILE_PK PRIMARY KEY (ATCH_FILE_ID)
);




/* 파일상세정보 */
CREATE TABLE COMTNFILEDETAIL
(
	ATCH_FILE_ID          CHAR(20)  NOT NULL ,
	FILE_SN               NUMERIC(10)  NOT NULL ,
	FILE_STRE_COURS       VARCHAR(6000)  NOT NULL ,
	STRE_FILE_NM          VARCHAR(765)  NOT NULL ,
	ORIGNL_FILE_NM        VARCHAR(765)  NULL ,
	FILE_EXTSN            VARCHAR(60)  NOT NULL ,
	FILE_CN               STRING  NULL ,
	FILE_SIZE             NUMERIC(8)  NULL ,
CONSTRAINT  COMTNFILEDETAIL_PK PRIMARY KEY (ATCH_FILE_ID,FILE_SN)
);




/* 메일발신관리 */
CREATE TABLE COMTHEMAILDSPTCHMANAGE
(
	MSSAGE_ID             VARCHAR(60)  NOT NULL ,
	EMAIL_CN              STRING  NULL ,
	SNDR                  VARCHAR(150)  NOT NULL ,
	RCVER                 VARCHAR(150)  NOT NULL ,
	SJ                    VARCHAR(180)  NOT NULL ,
	SNDNG_RESULT_CODE     CHAR(1)  NULL ,
	DSPTCH_DT             CHAR(20)  NOT NULL ,
	ATCH_FILE_ID          CHAR(20)  NULL ,
CONSTRAINT  COMTHEMAILDSPTCHMANAGE_PK PRIMARY KEY (MSSAGE_ID)
);




/* 일반회원 */
CREATE TABLE COMTNGNRLMBER
(
	MBER_ID               VARCHAR(60)  NOT NULL ,
	PASSWORD              VARCHAR(600)  NOT NULL ,
	PASSWORD_HINT         VARCHAR(300)  NULL ,
	PASSWORD_CNSR         VARCHAR(300)  NULL ,
	IHIDNUM               VARCHAR(600)  NULL ,
	MBER_NM               VARCHAR(150)  NOT NULL ,
	ZIP                   VARCHAR(18)  NOT NULL ,
	ADRES                 VARCHAR(300)  NOT NULL ,
	AREA_NO               VARCHAR(12)  NOT NULL ,
	MBER_STTUS            VARCHAR(45)  NULL ,
	DETAIL_ADRES          VARCHAR(300)  NULL ,
	END_TELNO             VARCHAR(12)  NOT NULL ,
	MBTLNUM               VARCHAR(60)  NOT NULL ,
	GROUP_ID              CHAR(20)  NULL ,
	MBER_FXNUM            VARCHAR(60)  NULL ,
	MBER_EMAIL_ADRES      VARCHAR(150)  NULL ,
	MIDDLE_TELNO          VARCHAR(12)  NOT NULL ,
	SBSCRB_DE             DATETIME  NULL ,
	SEXDSTN_CODE          CHAR(1)  NULL ,
	ESNTL_ID              CHAR(20)  NOT NULL ,
	LOCK_AT               CHAR(1) NULL,
	LOCK_CNT              NUMERIC(3) NULL,
	LOCK_LAST_PNTTM       DATETIME NULL,
	CHG_PWD_LAST_PNTTM    DATETIME NULL,
CONSTRAINT  COMTNGNRLMBER_PK PRIMARY KEY (MBER_ID)
);




/* 업무사용자정보 */
CREATE TABLE COMTNEMPLYRINFO
(
	EMPLYR_ID             VARCHAR(60)  NOT NULL ,
	ORGNZT_ID             CHAR(20)  NULL ,
	USER_NM               VARCHAR(180)  NOT NULL ,
	PASSWORD              VARCHAR(600)  NOT NULL ,
	EMPL_NO               VARCHAR(60)  NULL ,
	IHIDNUM               VARCHAR(600)  NULL ,
	SEXDSTN_CODE          CHAR(1)  NULL ,
	BRTHDY                CHAR(20)  NULL ,
	FXNUM                 VARCHAR(60)  NULL ,
	HOUSE_ADRES           VARCHAR(300)  NOT NULL ,
	PASSWORD_HINT         VARCHAR(300)  NOT NULL ,
	PASSWORD_CNSR         VARCHAR(300)  NOT NULL ,
	HOUSE_END_TELNO       VARCHAR(12)  NOT NULL ,
	AREA_NO               VARCHAR(12)  NOT NULL ,
	DETAIL_ADRES          VARCHAR(300)  NULL ,
	ZIP                   VARCHAR(18)  NOT NULL ,
	OFFM_TELNO            VARCHAR(60)  NULL ,
	MBTLNUM               VARCHAR(60)  NULL ,
	EMAIL_ADRES           VARCHAR(150)  NULL ,
	OFCPS_NM              VARCHAR(180)  NULL ,
	HOUSE_MIDDLE_TELNO    VARCHAR(12)  NOT NULL ,
	GROUP_ID              CHAR(20)  NULL ,
	PSTINST_CODE          CHAR(8)  NULL ,
	EMPLYR_STTUS_CODE     CHAR(1)  NOT NULL ,
	ESNTL_ID              CHAR(20)  NOT NULL ,
	CRTFC_DN_VALUE        VARCHAR(300)  NULL ,
	SBSCRB_DE             DATETIME  NULL ,
	LOCK_AT               CHAR(1) NULL,
	LOCK_CNT              NUMERIC(3) NULL,
	LOCK_LAST_PNTTM       DATETIME NULL,
	CHG_PWD_LAST_PNTTM    DATETIME NULL,
CONSTRAINT  COMTNEMPLYRINFO_PK PRIMARY KEY (EMPLYR_ID)
);




/* 기업회원 */
CREATE TABLE COMTNENTRPRSMBER
(
	ENTRPRS_MBER_ID       VARCHAR(60)  NOT NULL ,
	ENTRPRS_SE_CODE       CHAR(8)  NULL ,
	BIZRNO                VARCHAR(30)  NULL ,
	JURIRNO               VARCHAR(39)  NULL ,
	CMPNY_NM              VARCHAR(180)  NOT NULL ,
	CXFC                  VARCHAR(150)  NULL ,
	ZIP                   VARCHAR(18)  NOT NULL ,
	ADRES                 VARCHAR(300)  NOT NULL ,
	ENTRPRS_MIDDLE_TELNO  VARCHAR(12)  NOT NULL ,
	FXNUM                 VARCHAR(60)  NULL ,
	INDUTY_CODE           CHAR(1)  NULL ,
	APPLCNT_NM            VARCHAR(150)  NOT NULL ,
	APPLCNT_IHIDNUM       VARCHAR(600)  NULL ,
	SBSCRB_DE             DATETIME  NULL ,
	ENTRPRS_MBER_STTUS    VARCHAR(45)  NULL ,
	ENTRPRS_MBER_PASSWORD  VARCHAR(600)  NULL ,
	ENTRPRS_MBER_PASSWORD_HINT  VARCHAR(300)  NOT NULL ,
	ENTRPRS_MBER_PASSWORD_CNSR  VARCHAR(300)  NOT NULL ,
	GROUP_ID              CHAR(20)  NULL ,
	DETAIL_ADRES          VARCHAR(300)  NULL ,
	ENTRPRS_END_TELNO     VARCHAR(12)  NOT NULL ,
	AREA_NO               VARCHAR(12)  NOT NULL ,
	APPLCNT_EMAIL_ADRES   VARCHAR(150)  NOT NULL ,
	ESNTL_ID              CHAR(20)  NOT NULL ,
	LOCK_AT               CHAR(1) NULL,
	LOCK_CNT              NUMERIC(3) NULL,
	LOCK_LAST_PNTTM       DATETIME NULL,
	CHG_PWD_LAST_PNTTM    DATETIME NULL,
CONSTRAINT  COMTNENTRPRSMBER_PK PRIMARY KEY (ENTRPRS_MBER_ID)
);




/* 권한정보 */
CREATE TABLE COMTNAUTHORINFO
(
	AUTHOR_CODE           VARCHAR(90)  NOT NULL ,
	AUTHOR_NM             VARCHAR(180)  NOT NULL ,
	AUTHOR_DC             VARCHAR(600)  NULL ,
	AUTHOR_CREAT_DE       CHAR(40)  NOT NULL ,
CONSTRAINT  COMTNAUTHORINFO_PK PRIMARY KEY (AUTHOR_CODE)
);




/* 롤 계층구조 */
CREATE TABLE COMTNROLES_HIERARCHY
(
	PARNTS_ROLE           VARCHAR(90)  NOT NULL ,
	CHLDRN_ROLE           VARCHAR(90)  NOT NULL ,
CONSTRAINT  COMTNROLES_HIERARCHY_PK PRIMARY KEY (PARNTS_ROLE,CHLDRN_ROLE)
);

CREATE UNIQUE INDEX COMTNROLES_HIERARCHY_i01 ON COMTNROLES_HIERARCHY(PARNTS_ROLE  ASC);



/* 롤정보 */
CREATE TABLE COMTNROLEINFO
(
	ROLE_CODE             VARCHAR(150)  NOT NULL ,
	ROLE_NM               VARCHAR(180)  NOT NULL ,
	ROLE_PTTRN            VARCHAR(900)  NULL ,
	ROLE_DC               VARCHAR(600)  NULL ,
	ROLE_TY               VARCHAR(240)  NULL ,
	ROLE_SORT             VARCHAR(30)  NULL ,
	ROLE_CREAT_DE         CHAR(40)  NOT NULL ,
CONSTRAINT  COMTNROLEINFO_PK PRIMARY KEY (ROLE_CODE)
);




/* 권한롤관계 */
CREATE TABLE COMTNAUTHORROLERELATE
(
	AUTHOR_CODE           VARCHAR(90)  NOT NULL ,
	ROLE_CODE             VARCHAR(150)  NOT NULL ,
	CREAT_DT              DATETIME  NULL ,
CONSTRAINT  COMTNAUTHORROLERELATE_PK PRIMARY KEY (AUTHOR_CODE,ROLE_CODE)
);




/* IDS */
CREATE TABLE IDS
(
	IDGEN_TABLE_NM        VARCHAR(60)  NOT NULL ,
	IDGEN_NEXT_ID         NUMERIC(30)  NOT NULL ,
CONSTRAINT  IDS_PK PRIMARY KEY (IDGEN_TABLE_NM)
);




/* 사용자정보뷰 */
CREATE  VIEW COMVNUSERMASTER ( ESNTL_ID,USER_ID,PASSWORD,USER_NM,USER_ZIP,USER_ADRES,USER_EMAIL,GROUP_ID, USER_SE, ORGNZT_ID ) 
AS  SELECT ESNTL_ID, MBER_ID,PASSWORD,MBER_NM,ZIP,ADRES,MBER_EMAIL_ADRES,' ','GNR' AS USER_SE, ' ' ORGNZT_ID
		FROM COMTNGNRLMBER
	UNION ALL
		SELECT ESNTL_ID,EMPLYR_ID,PASSWORD,USER_NM,ZIP,HOUSE_ADRES,EMAIL_ADRES,GROUP_ID ,'USR' AS USER_SE, ORGNZT_ID
		FROM COMTNEMPLYRINFO
	UNION ALL
		SELECT ESNTL_ID,ENTRPRS_MBER_ID,ENTRPRS_MBER_PASSWORD,CMPNY_NM,ZIP,ADRES,APPLCNT_EMAIL_ADRES,' ' ,'ENT' AS USER_SE, ' ' ORGNZT_ID
		FROM COMTNENTRPRSMBER ORDER BY ESNTL_ID;


/* 시스템로그 */
CREATE TABLE COMTNSYSLOG
(
	REQUST_ID             VARCHAR(60)  NOT NULL ,
	JOB_SE_CODE           CHAR(3)  NULL ,
	INSTT_CODE            CHAR(7)  NULL ,
	OCCRRNC_DE            DATETIME  NULL ,
	RQESTER_IP            VARCHAR(69)  NULL ,
	RQESTER_ID            VARCHAR(60)  NULL ,
	TRGET_MENU_NM         VARCHAR(765)  NULL ,
	SVC_NM                VARCHAR(765)  NULL ,
	METHOD_NM             VARCHAR(180)  NULL ,
	PROCESS_SE_CODE       CHAR(3)  NULL ,
	PROCESS_CO            NUMERIC(10)  NULL ,
	PROCESS_TIME          VARCHAR(42)  NULL ,
	RSPNS_CODE            CHAR(3)  NULL ,
	ERROR_SE              CHAR(1)  NULL ,
	ERROR_CO              NUMERIC(10)  NULL ,
	ERROR_CODE            CHAR(3)  NULL ,
CONSTRAINT  COMTNSYSLOG_PK PRIMARY KEY (REQUST_ID)
);




/* 시스템로그요약 */
CREATE TABLE COMTSSYSLOGSUMMARY
(
	OCCRRNC_DE            CHAR(8)  NOT NULL ,
	SVC_NM                VARCHAR(300)  NOT NULL ,
	METHOD_NM             VARCHAR(180)  NOT NULL ,
	CREAT_CO              NUMERIC(10)  NULL ,
	UPDT_CO               NUMERIC(10)  NULL ,
	RDCNT                 NUMERIC(10)  NULL ,
	DELETE_CO             NUMERIC(10)  NULL ,
	OUTPT_CO              NUMERIC(10)  NULL ,
	ERROR_CO              NUMERIC(10)  NULL ,
CONSTRAINT  COMTSSYSLOGSUMMARY_PK PRIMARY KEY (OCCRRNC_DE,SVC_NM,METHOD_NM)
);




