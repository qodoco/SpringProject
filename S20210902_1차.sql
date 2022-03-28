--------------------------------------------------------
--  ������ ������ - �����-12��-18-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence CART_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "S20210902"."CART_SEQ"  MINVALUE 2 MAXVALUE 999999 INCREMENT BY 1 START WITH 162 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence NOTICE_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "S20210902"."NOTICE_SEQ"  MINVALUE 1 MAXVALUE 9999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence ORDER1_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "S20210902"."ORDER1_SEQ"  MINVALUE 101 MAXVALUE 999999 INCREMENT BY 1 START WITH 381 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence WISHLIST_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  "S20210902"."WISHLIST_SEQ"  MINVALUE 2 MAXVALUE 999999 INCREMENT BY 1 START WITH 182 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table CART
--------------------------------------------------------

  CREATE TABLE "S20210902"."CART" 
   (	"MEM_ID" VARCHAR2(15 BYTE), 
	"C_NUM" NUMBER(4,0), 
	"P_CODE" NUMBER(5,0), 
	"P_SIZE" NUMBER(3,0), 
	"C_QTY" VARCHAR2(8 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "S20210902"."CART"."MEM_ID" IS '���̵�';
   COMMENT ON COLUMN "S20210902"."CART"."C_NUM" IS '��ȣ';
   COMMENT ON COLUMN "S20210902"."CART"."P_CODE" IS '��ǰ�ڵ�';
   COMMENT ON COLUMN "S20210902"."CART"."P_SIZE" IS '������';
   COMMENT ON COLUMN "S20210902"."CART"."C_QTY" IS '����';
   COMMENT ON TABLE "S20210902"."CART"  IS '��ٱ���';
--------------------------------------------------------
--  DDL for Table COMMON
--------------------------------------------------------

  CREATE TABLE "S20210902"."COMMON" 
   (	"BCODE" NUMBER(3,0), 
	"MCODE" NUMBER(3,0), 
	"CONTENT" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "S20210902"."COMMON"."BCODE" IS '��з�';
   COMMENT ON COLUMN "S20210902"."COMMON"."MCODE" IS '�ߺз�';
   COMMENT ON COLUMN "S20210902"."COMMON"."CONTENT" IS '����';
   COMMENT ON TABLE "S20210902"."COMMON"  IS '�������̺�';
--------------------------------------------------------
--  DDL for Table FAQ
--------------------------------------------------------

  CREATE TABLE "S20210902"."FAQ" 
   (	"F_NUM" NUMBER(3,0), 
	"F_TITLE" VARCHAR2(500 BYTE), 
	"F_CONTENT" VARCHAR2(2000 BYTE), 
	"F_DATE" DATE, 
	"Q_BCODE" NUMBER(3,0) DEFAULT 300, 
	"Q_MCODE" NUMBER(3,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "S20210902"."FAQ"."F_NUM" IS '��ȣ';
   COMMENT ON COLUMN "S20210902"."FAQ"."F_TITLE" IS '����';
   COMMENT ON COLUMN "S20210902"."FAQ"."F_CONTENT" IS '����';
   COMMENT ON COLUMN "S20210902"."FAQ"."F_DATE" IS '�����';
   COMMENT ON COLUMN "S20210902"."FAQ"."Q_BCODE" IS '����_��з�';
   COMMENT ON COLUMN "S20210902"."FAQ"."Q_MCODE" IS '����_�Һз�';
   COMMENT ON TABLE "S20210902"."FAQ"  IS 'FAQ';
--------------------------------------------------------
--  DDL for Table LATEST_PRODUCT
--------------------------------------------------------

  CREATE TABLE "S20210902"."LATEST_PRODUCT" 
   (	"MEM_ID" VARCHAR2(15 BYTE), 
	"P_CODE" NUMBER(5,0), 
	"L_DATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "S20210902"."LATEST_PRODUCT"."MEM_ID" IS '���̵�';
   COMMENT ON COLUMN "S20210902"."LATEST_PRODUCT"."P_CODE" IS '��ǰ�ڵ�';
   COMMENT ON COLUMN "S20210902"."LATEST_PRODUCT"."L_DATE" IS '��ȸ��';
   COMMENT ON TABLE "S20210902"."LATEST_PRODUCT"  IS '�ֱ� �� ��ǰ';
--------------------------------------------------------
--  DDL for Table MEMBER
--------------------------------------------------------

  CREATE TABLE "S20210902"."MEMBER" 
   (	"MEM_ID" VARCHAR2(15 BYTE), 
	"MEM_PASSWD" VARCHAR2(15 BYTE), 
	"MEM_NAME" VARCHAR2(50 BYTE), 
	"MEM_TEL" VARCHAR2(13 BYTE), 
	"MEM_EMAIL" VARCHAR2(30 BYTE), 
	"MEM_ADDRESS1" VARCHAR2(100 BYTE), 
	"MEM_DELETE" NUMBER(1,0) DEFAULT 0, 
	"MEM_ADMIN" NUMBER(1,0) DEFAULT 0, 
	"MEM_ADDRESS2" VARCHAR2(100 BYTE), 
	"MEM_ADDRESS3" VARCHAR2(100 BYTE), 
	"MEM_NO" NUMBER(3,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "S20210902"."MEMBER"."MEM_ID" IS '���̵�';
   COMMENT ON COLUMN "S20210902"."MEMBER"."MEM_PASSWD" IS '��й�ȣ';
   COMMENT ON COLUMN "S20210902"."MEMBER"."MEM_NAME" IS '�̸�';
   COMMENT ON COLUMN "S20210902"."MEMBER"."MEM_TEL" IS '��ȭ��ȣ';
   COMMENT ON COLUMN "S20210902"."MEMBER"."MEM_EMAIL" IS '�̸���';
   COMMENT ON COLUMN "S20210902"."MEMBER"."MEM_ADDRESS1" IS '�ּ�';
   COMMENT ON COLUMN "S20210902"."MEMBER"."MEM_DELETE" IS 'Ż��';
   COMMENT ON COLUMN "S20210902"."MEMBER"."MEM_ADMIN" IS '������';
   COMMENT ON TABLE "S20210902"."MEMBER"  IS 'ȸ��';
--------------------------------------------------------
--  DDL for Table NOTICE
--------------------------------------------------------

  CREATE TABLE "S20210902"."NOTICE" 
   (	"N_NUM" NUMBER(3,0), 
	"N_TITLE" VARCHAR2(500 BYTE), 
	"N_CONTENT" VARCHAR2(2000 BYTE), 
	"N_DATE" DATE, 
	"N_REG_DATE" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "S20210902"."NOTICE"."N_NUM" IS '��ȣ';
   COMMENT ON COLUMN "S20210902"."NOTICE"."N_TITLE" IS '����';
   COMMENT ON COLUMN "S20210902"."NOTICE"."N_CONTENT" IS '����';
   COMMENT ON COLUMN "S20210902"."NOTICE"."N_DATE" IS '������';
   COMMENT ON COLUMN "S20210902"."NOTICE"."N_REG_DATE" IS '�����';
   COMMENT ON TABLE "S20210902"."NOTICE"  IS '��������';
--------------------------------------------------------
--  DDL for Table ORDER1
--------------------------------------------------------

  CREATE TABLE "S20210902"."ORDER1" 
   (	"O_NUM" NUMBER(8,0), 
	"P_CODE" NUMBER(5,0), 
	"P_SIZE" NUMBER(3,0), 
	"MEM_ID" VARCHAR2(15 BYTE), 
	"O_DATE" DATE, 
	"O_ADDRESS" VARCHAR2(500 BYTE), 
	"O_CANCEL" NUMBER(1,0), 
	"P_QTY" NUMBER(3,0), 
	"O_ACCEPT" VARCHAR2(20 BYTE), 
	"O_TEL" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "S20210902"."ORDER1"."O_NUM" IS '�ֹ���ȣ';
   COMMENT ON COLUMN "S20210902"."ORDER1"."P_CODE" IS '��ǰ�ڵ�';
   COMMENT ON COLUMN "S20210902"."ORDER1"."P_SIZE" IS '������';
   COMMENT ON COLUMN "S20210902"."ORDER1"."MEM_ID" IS '���̵�';
   COMMENT ON COLUMN "S20210902"."ORDER1"."O_DATE" IS '�ֹ�����';
   COMMENT ON COLUMN "S20210902"."ORDER1"."O_ADDRESS" IS '�ּ�';
   COMMENT ON COLUMN "S20210902"."ORDER1"."O_CANCEL" IS '�ֹ���� ';
   COMMENT ON COLUMN "S20210902"."ORDER1"."P_QTY" IS '�ֹ�����';
   COMMENT ON COLUMN "S20210902"."ORDER1"."O_ACCEPT" IS '�޴»��';
   COMMENT ON COLUMN "S20210902"."ORDER1"."O_TEL" IS '��ȭ��ȣ';
   COMMENT ON TABLE "S20210902"."ORDER1"  IS '�ֹ�';
--------------------------------------------------------
--  DDL for Table PRODUCT
--------------------------------------------------------

  CREATE TABLE "S20210902"."PRODUCT" 
   (	"P_CODE" NUMBER(5,0), 
	"P_SIZE" NUMBER(3,0), 
	"P_NAME" VARCHAR2(100 BYTE), 
	"P_C_BCODE" NUMBER(3,0) DEFAULT 200, 
	"P_C_MCODE" NUMBER(3,0), 
	"P_HIT" NUMBER(5,0) DEFAULT 0, 
	"P_DATE" DATE, 
	"P_IMG" VARCHAR2(100 BYTE), 
	"P_PRICE" NUMBER(8,0), 
	"P_QTY" NUMBER(3,0) DEFAULT 5
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "S20210902"."PRODUCT"."P_CODE" IS '��ǰ�ڵ�';
   COMMENT ON COLUMN "S20210902"."PRODUCT"."P_SIZE" IS '������';
   COMMENT ON COLUMN "S20210902"."PRODUCT"."P_NAME" IS '��ǰ��';
   COMMENT ON COLUMN "S20210902"."PRODUCT"."P_C_BCODE" IS '��ǰ�з�_��з�';
   COMMENT ON COLUMN "S20210902"."PRODUCT"."P_C_MCODE" IS '��ǰ�з�_�ߺз�';
   COMMENT ON COLUMN "S20210902"."PRODUCT"."P_HIT" IS '��ȸ��';
   COMMENT ON COLUMN "S20210902"."PRODUCT"."P_DATE" IS '�����';
   COMMENT ON COLUMN "S20210902"."PRODUCT"."P_IMG" IS '�̹���';
   COMMENT ON COLUMN "S20210902"."PRODUCT"."P_PRICE" IS '����';
   COMMENT ON COLUMN "S20210902"."PRODUCT"."P_QTY" IS '����';
   COMMENT ON TABLE "S20210902"."PRODUCT"  IS '��ǰ';
--------------------------------------------------------
--  DDL for Table QNA
--------------------------------------------------------

  CREATE TABLE "S20210902"."QNA" 
   (	"MEM_ID" VARCHAR2(15 BYTE), 
	"Q_NUM" NUMBER(5,0), 
	"P_CODE" VARCHAR2(8 BYTE), 
	"P_SIZE" VARCHAR2(3 BYTE), 
	"Q_CONTENT" VARCHAR2(500 BYTE), 
	"Q_IMAGE" VARCHAR2(100 BYTE) DEFAULT NULL, 
	"Q_REPLY" VARCHAR2(500 BYTE) DEFAULT NULL, 
	"Q_RE_STATUS" NUMBER(1,0) DEFAULT 0, 
	"Q_DATE" DATE, 
	"Q_BCODE" NUMBER(3,0) DEFAULT 300, 
	"Q_MCODE" NUMBER(3,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "S20210902"."QNA"."MEM_ID" IS '���̵�';
   COMMENT ON COLUMN "S20210902"."QNA"."Q_NUM" IS '��ȣ';
   COMMENT ON COLUMN "S20210902"."QNA"."P_CODE" IS '��ǰ�ڵ�';
   COMMENT ON COLUMN "S20210902"."QNA"."P_SIZE" IS '������';
   COMMENT ON COLUMN "S20210902"."QNA"."Q_CONTENT" IS '����';
   COMMENT ON COLUMN "S20210902"."QNA"."Q_IMAGE" IS '�̹���';
   COMMENT ON COLUMN "S20210902"."QNA"."Q_REPLY" IS '�亯';
   COMMENT ON COLUMN "S20210902"."QNA"."Q_RE_STATUS" IS '�亯����';
   COMMENT ON COLUMN "S20210902"."QNA"."Q_DATE" IS '�����';
   COMMENT ON COLUMN "S20210902"."QNA"."Q_BCODE" IS '����_��з�';
   COMMENT ON COLUMN "S20210902"."QNA"."Q_MCODE" IS '����_�ߺз�';
   COMMENT ON TABLE "S20210902"."QNA"  IS 'QnA';
--------------------------------------------------------
--  DDL for Table REVIEW
--------------------------------------------------------

  CREATE TABLE "S20210902"."REVIEW" 
   (	"MEM_ID" VARCHAR2(15 BYTE), 
	"R_NUM" NUMBER(5,0), 
	"P_CODE" NUMBER(5,0), 
	"P_SIZE" NUMBER(3,0), 
	"R_CONTENT" VARCHAR2(500 BYTE), 
	"R_SCORE" NUMBER(1,0), 
	"REPLY" NUMBER(3,0), 
	"RE_INDENT" NUMBER(3,0) DEFAULT 0, 
	"RE_STEP" NUMBER(3,0) DEFAULT 0, 
	"R_IMG" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "S20210902"."REVIEW"."MEM_ID" IS '���̵�';
   COMMENT ON COLUMN "S20210902"."REVIEW"."R_NUM" IS '��ȣ';
   COMMENT ON COLUMN "S20210902"."REVIEW"."P_CODE" IS '��ǰ�ڵ�';
   COMMENT ON COLUMN "S20210902"."REVIEW"."P_SIZE" IS '������';
   COMMENT ON COLUMN "S20210902"."REVIEW"."R_CONTENT" IS '����';
   COMMENT ON COLUMN "S20210902"."REVIEW"."R_SCORE" IS '����';
   COMMENT ON COLUMN "S20210902"."REVIEW"."REPLY" IS '���';
   COMMENT ON COLUMN "S20210902"."REVIEW"."RE_INDENT" IS '����';
   COMMENT ON COLUMN "S20210902"."REVIEW"."RE_STEP" IS '��ۼ���';
   COMMENT ON COLUMN "S20210902"."REVIEW"."R_IMG" IS '�̹���';
   COMMENT ON TABLE "S20210902"."REVIEW"  IS '����';
--------------------------------------------------------
--  DDL for Table WISHLIST
--------------------------------------------------------

  CREATE TABLE "S20210902"."WISHLIST" 
   (	"MEM_ID" VARCHAR2(15 BYTE), 
	"W_NUM" NUMBER(3,0), 
	"P_CODE" NUMBER(5,0), 
	"P_SIZE" NUMBER(3,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "S20210902"."WISHLIST"."MEM_ID" IS '���̵�';
   COMMENT ON COLUMN "S20210902"."WISHLIST"."W_NUM" IS '��ȣ';
   COMMENT ON COLUMN "S20210902"."WISHLIST"."P_CODE" IS '��ǰ�ڵ�';
   COMMENT ON COLUMN "S20210902"."WISHLIST"."P_SIZE" IS '������';
   COMMENT ON TABLE "S20210902"."WISHLIST"  IS '���ø���Ʈ';
REM INSERTING into S20210902.CART
SET DEFINE OFF;
Insert into S20210902.CART (MEM_ID,C_NUM,P_CODE,P_SIZE,C_QTY) values ('aaaa',146,2001,120,'1');
Insert into S20210902.CART (MEM_ID,C_NUM,P_CODE,P_SIZE,C_QTY) values ('park0505',149,2001,120,'1');
REM INSERTING into S20210902.COMMON
SET DEFINE OFF;
Insert into S20210902.COMMON (BCODE,MCODE,CONTENT) values (100,999,'������');
Insert into S20210902.COMMON (BCODE,MCODE,CONTENT) values (100,110,'S');
Insert into S20210902.COMMON (BCODE,MCODE,CONTENT) values (100,120,'M');
Insert into S20210902.COMMON (BCODE,MCODE,CONTENT) values (100,130,'L');
Insert into S20210902.COMMON (BCODE,MCODE,CONTENT) values (200,999,'��ǰ �з�');
Insert into S20210902.COMMON (BCODE,MCODE,CONTENT) values (200,210,'����');
Insert into S20210902.COMMON (BCODE,MCODE,CONTENT) values (200,220,'����');
Insert into S20210902.COMMON (BCODE,MCODE,CONTENT) values (200,230,'�Ǽ��縮');
Insert into S20210902.COMMON (BCODE,MCODE,CONTENT) values (200,240,'�Ź�');
Insert into S20210902.COMMON (BCODE,MCODE,CONTENT) values (300,999,'������ �з�');
Insert into S20210902.COMMON (BCODE,MCODE,CONTENT) values (300,310,'��ǰ');
Insert into S20210902.COMMON (BCODE,MCODE,CONTENT) values (300,320,'���');
Insert into S20210902.COMMON (BCODE,MCODE,CONTENT) values (300,330,'��ȯ/ȯ��');
Insert into S20210902.COMMON (BCODE,MCODE,CONTENT) values (300,340,'�ֹ�����');
Insert into S20210902.COMMON (BCODE,MCODE,CONTENT) values (300,350,'��Ÿ');
REM INSERTING into S20210902.FAQ
SET DEFINE OFF;
Insert into S20210902.FAQ (F_NUM,F_TITLE,F_CONTENT,F_DATE,Q_BCODE,Q_MCODE) values (1,'��۵� ��ǰ�� �ҷ�, ����� ��','1. �ҷ� �Ǵ� ������� ��� ���θ������� ���� ��ۺ� �δ��Ͽ� ��ȯ ó�� �ص帳�ϴ�.
2. �ҷ� ��ǰ, ������� �� ���� ��ǰ�ڽ��� ������, ������� ��ǰ�� ���� ��� ��ȯ�� �Ұ��� �մϴ�. �ʱ� ��۵� ���¿� ���� ���� ���� ��Ź�帳�ϴ�.',to_date('21/11/23','RR/MM/DD'),300,320);
Insert into S20210902.FAQ (F_NUM,F_TITLE,F_CONTENT,F_DATE,Q_BCODE,Q_MCODE) values (2,'��� ������� �����ΰ���?','��ǰ �� �������� ��� ������� ��ǰ ���� �� �ù�翡 ��ǰ�� ���޵Ǳ���� �ҿ�Ǵ� �Ⱓ�Դϴ�.
�ù���� ������ ���� ���� ��� �Ⱓ�� ���̰� ���� �� �ֽ��ϴ�.',to_date('21/11/18','RR/MM/DD'),300,320);
Insert into S20210902.FAQ (F_NUM,F_TITLE,F_CONTENT,F_DATE,Q_BCODE,Q_MCODE) values (3,'��� ó�� ��/ ��� �Ϸ� �� 
�ּ����� ���� �� �� �ֳ���?','��� ó�� �ߺ��ʹ� �ֹ� ���� ������ �Ұ����մϴ�. 
�Ա� Ȯ�� ���¿�����?[�ֹ����� ��ȸ]���� ������� ������ �� �ֽ��ϴ�.',to_date('21/11/18','RR/MM/DD'),300,320);
Insert into S20210902.FAQ (F_NUM,F_TITLE,F_CONTENT,F_DATE,Q_BCODE,Q_MCODE) values (4,'�ҷ� ��ǰ �Ǵ� ����� ó��','�ҷ� ��ǰ �� ������� ���, ���� ó���� ���� ������ �̹����� �ʼ��� �����ּž� �մϴ�.
���� Ȯ���� �Ϸ�Ǹ�,����� ��ȯ/��ǰ ������ �����մϴ�.',to_date('21/11/18','RR/MM/DD'),300,330);
Insert into S20210902.FAQ (F_NUM,F_TITLE,F_CONTENT,F_DATE,Q_BCODE,Q_MCODE) values (5,'��ǰ�ߴµ� ȯ���� �� �޾Ҿ��','���� ���Ϳ�����?��ǰ ��ǰ�� ������ ������� ���� �˼��� ���� ����ϰ� �ֽ��ϴ�.
��ǰ ��ǰ �˼��� ������ �ٷ� ���� ��� ó�� �� ȯ�� ������ �����մϴ�. 
�ٸ�,?������ �ù���� ���� �����Ϸ� ����, ��ǰ ��� �� �˼� �Ⱓ�� �����ǰ� �ֽ��ϴ�. 
��ǰ ��ǰ ���, ���� ���� �˼�, ī��� ȯ�� �Ⱓ ���� �����ϸ� �ִ� 1~2�� �ҿ� �� �� �ִ� �� ���� ��Ź�帳�ϴ�.',to_date('21/11/18','RR/MM/DD'),300,330);
Insert into S20210902.FAQ (F_NUM,F_TITLE,F_CONTENT,F_DATE,Q_BCODE,Q_MCODE) values (6,'��ȯ/��ǰ �Ⱓ�� �󸶳� �ҿ�ǳ���?','# ��ȯ
��ȯ ��û�Ͻ� �� ��ǰ�� ȸ���Ǿ� ������ �԰� �� �˼� ������ �Ϸ�� ���Ŀ� ����� ����ǰ� �־�, 
��ȯ ��ǰ�� ���� �����Ͻñ������ �뷫 1~2�� ������ �ð��� �ҿ�˴ϴ�.
���������� ������ �߻��ǰų� �¶��� �� Ư���� �ǽð� ����� ������ ���Ͽ� �ε����ϰ� ��� ����� ��찡 �߻��� �� �ֻ���� 
���� ���� �����帳�ϴ�.
# ��ǰ
��ǰó���� ���, ��ǰ �����Ϸκ��� ���԰˼����� ���ϱ��� 5~10�� ���� �ҿ�ǰ� �־� 
ó���Ⱓ�� �ټ� �ҿ�� �� �ִ� �� ���� ���� �帮��, 
�ִ��� �ż��ϰ� Ȯ���ϰ� ��ǰ(ȯ��)ó�� ���͵帮���� �ϰڽ��ϴ�.',to_date('21/11/18','RR/MM/DD'),300,330);
Insert into S20210902.FAQ (F_NUM,F_TITLE,F_CONTENT,F_DATE,Q_BCODE,Q_MCODE) values (7,'���/��ǰ/��ȯ ������ ������ �����ΰ���?','������ ���κ��� 7���̳��� ��ǰ �����մϴ�.
��ǰ�� ������ ���κ��� 7�� �̳��� ��ǰ �����մϴ�. 
��, ���� ��ǰ�� ����� �ٸ��ų� �ٸ��� ����� ��� 3���� �̳�, �� ����� �˰� �� �� �Ǵ� �� �� �־��� ���κ��� 30�� �̳��� ��ǰ�� �����մϴ�.

��ǰ�� �Ұ����� ���δ� ������ å�� �ִ� ������ ��ǰ ���� ��� �Ǵ� �Ѽյ� ��� (��, ��ǰ�� ������ Ȯ���ϱ� ���Ͽ� ���� ���� �Ѽ��� ���� ����), 
������ �����Ͽ��ų� ������ �ѼյǾ� ��ǰ��ġ�� ������ ��ǵ� ��� ������ ��� �Ǵ� �Ϻ� �Һ� ���Ͽ� ��ǰ�� ��ġ�� ������ ������ ����Դϴ�.',to_date('21/11/18','RR/MM/DD'),300,330);
Insert into S20210902.FAQ (F_NUM,F_TITLE,F_CONTENT,F_DATE,Q_BCODE,Q_MCODE) values (8,'ȸ������ �����Ϸ��� ��� �ؾ� �ϳ���?','ȸ�� �α��� ��, My page�� ''��������''�� Ŭ���Ͻð� ������ ���� �����ϼž� �մϴ�.
������ ���� �Ŀ��� ȸ�������� �����Ͻ� �� �ֽ��ϴ�.',to_date('21/11/18','RR/MM/DD'),300,350);
Insert into S20210902.FAQ (F_NUM,F_TITLE,F_CONTENT,F_DATE,Q_BCODE,Q_MCODE) values (9,'ȸ������-ȸ��Ż�� �� 
���������� ��� �����ǳ���?','ȸ�� Ż�� �� ������ ������ ��ǰ ��ǰ �� A/S�� ���� �Ʒ��� ���� ���ڻ�ŷ� ����� �Һ��ں�ȣ�� ���� ������ �ǰ���
�ٶ��ڸ��� ��������ȣ��å�� ���� �����˴ϴ�.

�ذ�������ȣ ��å: ���������� �����Ⱓ �� �̿�Ⱓ
- ���� ���������� ������ ���� ���������� �������� �Ǵ� �������� ������ �޼��Ǹ� �ı�˴ϴ�.
��, ��� �� ���ù����� ������ ���Ͽ� ������ ���� �ŷ� ���� �Ǹ� �ǹ� ������ Ȯ�� ���� 
������ �����Ⱓ �����Ͽ��� �� �ʿ䰡 ���� ��쿡�� �����Ⱓ �����մϴ�.
- ȸ������������ ���, ȸ�������� Ż���ϰų� ȸ������ ����� ��� �� ������ ������ ��������, �Ⱓ �� �����ϴ� �������� �׸��� ����Ͽ� ���Ǹ� ���մϴ�.
- ��� �Ǵ� û��öȸ � ���� ��� : 5��
- ��ݰ��� �� ��ȭ ���� ���޿� ���� ��� : 5��
- �Һ����� �Ҹ� �Ǵ� ����ó���� ���� ��� : 3��',to_date('21/11/18','RR/MM/DD'),300,350);
Insert into S20210902.FAQ (F_NUM,F_TITLE,F_CONTENT,F_DATE,Q_BCODE,Q_MCODE) values (10,'�ֹ��� ������ ��� Ȯ���ϳ���?','�α��� > ���������� > �ֹ�/�����ȸ �� Ŭ���Ͻø� �ֹ������� Ȯ�� �Ͻ� �� �ֽ��ϴ�.
',to_date('21/11/18','RR/MM/DD'),300,340);
Insert into S20210902.FAQ (F_NUM,F_TITLE,F_CONTENT,F_DATE,Q_BCODE,Q_MCODE) values (11,'���� ������� ����� �ֳ���?','�ſ�ī�� ����, �ǽð� ������ü, ���̹�����, KPAY, īī������, L.PAY, PAYCO 7������ �����ϰ� �ֽ��ϴ�....
',to_date('21/11/29','RR/MM/DD'),300,340);
Insert into S20210902.FAQ (F_NUM,F_TITLE,F_CONTENT,F_DATE,Q_BCODE,Q_MCODE) values (12,'���� ��� �����Ѱ���?','���� ����� ��� ���� �ý��ۿ��� �ڵ����� ������� ó���� ��쿡�� �����ϸ�, 
���Ƿ� ��������� ����� �� ���غ�Ź�帳�ϴ�.',to_date('21/11/23','RR/MM/DD'),300,320);
Insert into S20210902.FAQ (F_NUM,F_TITLE,F_CONTENT,F_DATE,Q_BCODE,Q_MCODE) values (13,'�ֹ��� �ϰ� ������ ���߾��','�ֹ��� �Աݿ����Ϸκ��� 3���� ����Ǹ� �ڵ����� �ֹ���Ұ� �˴ϴ�.
���� ���� ���� ��ǰ�� ���� ������ ������� ��� ����Ǹ�,
������ �ʾ����� ��� ������ �Ǿ����� ǰ�� �� ��� �������� �ֹ��� ��� �� �� ������ 
���� ���� �ٶ��ϴ�.',to_date('21/11/23','RR/MM/DD'),300,340);
Insert into S20210902.FAQ (F_NUM,F_TITLE,F_CONTENT,F_DATE,Q_BCODE,Q_MCODE) values (14,'�ֹ��� ������ Ȯ���ϰ� �;��','���Բ��� �ֹ��Ͻ� ��ǰ�� �ֹ������� [����������> �� �ֹ�����> �ֹ�/��۳���]���� Ȯ�� �����մϴ�.',to_date('21/12/15','RR/MM/DD'),300,340);
Insert into S20210902.FAQ (F_NUM,F_TITLE,F_CONTENT,F_DATE,Q_BCODE,Q_MCODE) values (16,'���� ��ǰ�� �ҷ��̿���','��� ������ ��ǰ�� �ҷ��̶�� ��ȯ/ȯ���� �����մϴ�.',to_date('21/12/16','RR/MM/DD'),300,310);
Insert into S20210902.FAQ (F_NUM,F_TITLE,F_CONTENT,F_DATE,Q_BCODE,Q_MCODE) values (17,'��ǰ ����� �˰�;��','��ǰ�� ������� ��ǰ ���������� �ϴܿ� �ִ� ��ǰ ������ ǥ�� �����Ͻñ� �ٶ��ϴ�.',to_date('21/12/16','RR/MM/DD'),300,310);
REM INSERTING into S20210902.LATEST_PRODUCT
SET DEFINE OFF;
Insert into S20210902.LATEST_PRODUCT (MEM_ID,P_CODE,L_DATE) values ('aaaa',1001,to_date('21/12/17','RR/MM/DD'));
Insert into S20210902.LATEST_PRODUCT (MEM_ID,P_CODE,L_DATE) values ('park0505',2001,to_date('21/12/18','RR/MM/DD'));
Insert into S20210902.LATEST_PRODUCT (MEM_ID,P_CODE,L_DATE) values ('park0505',4002,to_date('21/12/18','RR/MM/DD'));
Insert into S20210902.LATEST_PRODUCT (MEM_ID,P_CODE,L_DATE) values ('park0505',1001,to_date('21/12/18','RR/MM/DD'));
Insert into S20210902.LATEST_PRODUCT (MEM_ID,P_CODE,L_DATE) values ('park0505',2005,to_date('21/12/18','RR/MM/DD'));
REM INSERTING into S20210902.MEMBER
SET DEFINE OFF;
Insert into S20210902.MEMBER (MEM_ID,MEM_PASSWD,MEM_NAME,MEM_TEL,MEM_EMAIL,MEM_ADDRESS1,MEM_DELETE,MEM_ADMIN,MEM_ADDRESS2,MEM_ADDRESS3,MEM_NO) values ('kim0101','1','������','01000000000','gladly0114@naver.com','�ѱ�',0,0,null,null,11);
Insert into S20210902.MEMBER (MEM_ID,MEM_PASSWD,MEM_NAME,MEM_TEL,MEM_EMAIL,MEM_ADDRESS1,MEM_DELETE,MEM_ADMIN,MEM_ADDRESS2,MEM_ADDRESS3,MEM_NO) values ('kim0202','1','�赵��','01000000001','timer7345@gmail.com','�ѱ�',0,0,null,null,10);
Insert into S20210902.MEMBER (MEM_ID,MEM_PASSWD,MEM_NAME,MEM_TEL,MEM_EMAIL,MEM_ADDRESS1,MEM_DELETE,MEM_ADMIN,MEM_ADDRESS2,MEM_ADDRESS3,MEM_NO) values ('park0303','1','�ڱⳲ','01000000011','kinam0316@gmail.com','�ѱ�',0,0,null,null,9);
Insert into S20210902.MEMBER (MEM_ID,MEM_PASSWD,MEM_NAME,MEM_TEL,MEM_EMAIL,MEM_ADDRESS1,MEM_DELETE,MEM_ADMIN,MEM_ADDRESS2,MEM_ADDRESS3,MEM_NO) values ('choi0404','1','������','01000000111','youant27@gmail.com','�ѱ�',0,0,null,null,8);
Insert into S20210902.MEMBER (MEM_ID,MEM_PASSWD,MEM_NAME,MEM_TEL,MEM_EMAIL,MEM_ADDRESS1,MEM_DELETE,MEM_ADMIN,MEM_ADDRESS2,MEM_ADDRESS3,MEM_NO) values ('park0505','1','��ä��','01022222222','ssbsr295@naver.com','����� ���ϱ� ���Ϸ�',0,0,null,null,7);
Insert into S20210902.MEMBER (MEM_ID,MEM_PASSWD,MEM_NAME,MEM_TEL,MEM_EMAIL,MEM_ADDRESS1,MEM_DELETE,MEM_ADMIN,MEM_ADDRESS2,MEM_ADDRESS3,MEM_NO) values ('yu0606','1','������','01000011111','bohun@gmail.com','�ѱ�',0,0,null,null,6);
Insert into S20210902.MEMBER (MEM_ID,MEM_PASSWD,MEM_NAME,MEM_TEL,MEM_EMAIL,MEM_ADDRESS1,MEM_DELETE,MEM_ADMIN,MEM_ADDRESS2,MEM_ADDRESS3,MEM_NO) values ('jeyun0224','1234','õ����','01062434515','jeyun224@naver.com','��⵵ ���ֽ� �ͼ���ȯ��',0,1,null,null,5);
Insert into S20210902.MEMBER (MEM_ID,MEM_PASSWD,MEM_NAME,MEM_TEL,MEM_EMAIL,MEM_ADDRESS1,MEM_DELETE,MEM_ADMIN,MEM_ADDRESS2,MEM_ADDRESS3,MEM_NO) values ('aaaa','123','�赵��','010112119','aaa@naver.com','�ѱ�1',0,0,null,null,4);
Insert into S20210902.MEMBER (MEM_ID,MEM_PASSWD,MEM_NAME,MEM_TEL,MEM_EMAIL,MEM_ADDRESS1,MEM_DELETE,MEM_ADMIN,MEM_ADDRESS2,MEM_ADDRESS3,MEM_NO) values ('admin','1234','õ����','01011234567','admin@naver.com','�ѱ�',0,1,null,null,3);
Insert into S20210902.MEMBER (MEM_ID,MEM_PASSWD,MEM_NAME,MEM_TEL,MEM_EMAIL,MEM_ADDRESS1,MEM_DELETE,MEM_ADMIN,MEM_ADDRESS2,MEM_ADDRESS3,MEM_NO) values ('bbbb','1111','������','01055246698','bbb@naver.com','�̱�',0,0,null,null,2);
Insert into S20210902.MEMBER (MEM_ID,MEM_PASSWD,MEM_NAME,MEM_TEL,MEM_EMAIL,MEM_ADDRESS1,MEM_DELETE,MEM_ADMIN,MEM_ADDRESS2,MEM_ADDRESS3,MEM_NO) values ('kan0606','1','������','01000011111','kan0606@naver.com','�ѱ�',1,0,null,null,1);
Insert into S20210902.MEMBER (MEM_ID,MEM_PASSWD,MEM_NAME,MEM_TEL,MEM_EMAIL,MEM_ADDRESS1,MEM_DELETE,MEM_ADMIN,MEM_ADDRESS2,MEM_ADDRESS3,MEM_NO) values ('1','1','1','1','1',null,0,0,null,'1',24);
Insert into S20210902.MEMBER (MEM_ID,MEM_PASSWD,MEM_NAME,MEM_TEL,MEM_EMAIL,MEM_ADDRESS1,MEM_DELETE,MEM_ADMIN,MEM_ADDRESS2,MEM_ADDRESS3,MEM_NO) values ('new','1234','��ä��','01055559999','ss@naver.com','01237',1,0,'���� ���ϱ� ����� 53 (�̾Ƶ�)',null,27);
Insert into S20210902.MEMBER (MEM_ID,MEM_PASSWD,MEM_NAME,MEM_TEL,MEM_EMAIL,MEM_ADDRESS1,MEM_DELETE,MEM_ADMIN,MEM_ADDRESS2,MEM_ADDRESS3,MEM_NO) values ('2','2','2','2','2',null,0,1,null,'2',26);
Insert into S20210902.MEMBER (MEM_ID,MEM_PASSWD,MEM_NAME,MEM_TEL,MEM_EMAIL,MEM_ADDRESS1,MEM_DELETE,MEM_ADMIN,MEM_ADDRESS2,MEM_ADDRESS3,MEM_NO) values ('qqqq','123','qqqq','01055559999','aaaa','01237',0,0,'���� ���ϱ� ����� 53 (�̾Ƶ�)','2',28);
REM INSERTING into S20210902.NOTICE
SET DEFINE OFF;
Insert into S20210902.NOTICE (N_NUM,N_TITLE,N_CONTENT,N_DATE,N_REG_DATE) values (7,'[��������]��������ó����ħ ���� �ȳ� (2021. 1. 11 ����)','[��������ó����ħ ���� �ȳ�]  
1.�����ñ� : 
- ������ : 2020��  12�� 11��  
- ������ : 2021��  1��  11�� (��)  

2. �ֿ� ���� ���� :      
- �������� ó����ħ ���� ��ü ���� �ϰ� ����

 3.  ���� ���� �� ���� 
- ������ ���뿡 �������� �����ô� ���, ȸ��Ż�� ��û�Ͻ� �� �ֽ��ϴ�.
- ������ ���뿡 �ź� �ǻ縦 ǥ������ ���� ���, ������ ������ �����մϴ�.
- ������ ���뿡 ���ؼ��� ������(1577-3472)�� �����ֽñ�  �ٶ��ϴ�.',to_date('21/01/01','RR/MM/DD'),to_date('21/12/07','RR/MM/DD'));
Insert into S20210902.NOTICE (N_NUM,N_TITLE,N_CONTENT,N_DATE,N_REG_DATE) values (6,'[��������]�ù�� �ľ����� ���� ���/��ǰ ���� �ȳ� (10/15~)','�ȳ��ϼ��� ����. 
���õ� PIB�� ã���ּż� �����մϴ�.

�ù�� �ľ��� �����Ǿ� �ִ� �����, �Ϻ� �ֹ��� ��� �� ��ǰ ó�� ������ ����Ǿ� �����帳�ϴ�.
�ù��� �ִ��� ����� �����Ͽ� ��ü �η� ���� �� ���Բ� �������� ������ �ٹ������ �ּ��� ���ϰڽ��ϴ�.

�ٸ� �Ϻ� ��۰��� ��� ������ �߻��� �� �ִ����� ���� ������ �ʸ� ���� ��Ź�帳�ϴ�.

*�ù�� �ľ����� ���� ���/��ǰ ����
1. ���ֳ��� ���ľ�(10/20)
 - ���� �뵿���� ���ľ��̳�, ������ �Ϻΰ� �ľ� ����
 - �Ϻ� ��۰ǿ� ���Ͽ� ����� ������ �� �ֽ��ϴ�.

2. �κ��ľ�(10/15~)
 - �Ϻ� ��ǰ���� ��� ���Ű� ��ưų� ������ �� �ֽ��ϴ�.

���� ����?�� ������ ���� ���� ��� ���Ẹ�ٴ� ��� ���� ���� ������ 1:1 �Խ�������  ������ �ֽø� �ִ��� ������ �亯�帮���� �ϰڽ��ϴ�.?
* 1:1 �Խ��� �������
- ���������� �� 1:1 ��� �� ���� ���� �� �ۼ�

�����մϴ�.',to_date('21/10/14','RR/MM/DD'),to_date('21/12/07','RR/MM/DD'));
Insert into S20210902.NOTICE (N_NUM,N_TITLE,N_CONTENT,N_DATE,N_REG_DATE) values (5,'[��������]�ڷγ� ���� ������','�ڷγ� ��� ���� �����Դϴ�.  ��ȸ���Ÿ��α� ��õ�� ���� �� �μ������� ���� �������� ����ǳ� �������� QR�ڵ� üũ�� ����������',to_date('21/01/07','RR/MM/DD'),to_date('21/12/14','RR/MM/DD'));
Insert into S20210902.NOTICE (N_NUM,N_TITLE,N_CONTENT,N_DATE,N_REG_DATE) values (1,'[��������]�ű�ȸ�� ���ó����Դϴ�','���ο� ȸ�������� ȸ������ �� �������� ��� �о��ֽñ� �ٶ��ϴ�',to_date('21/12/09','RR/MM/DD'),to_date('21/12/09','RR/MM/DD'));
Insert into S20210902.NOTICE (N_NUM,N_TITLE,N_CONTENT,N_DATE,N_REG_DATE) values (2,'[��������]ģ����� ���� ���θ� ����','ģ����� ���� ���θ� �̿�� ������ �����ϴ�. ȸ���е��� ���ε��� ���Ͽ� ������õ�� ���� �̺�Ʈ�� �������ֽñ� �ٶ��ϴ�',to_date('21/12/14','RR/MM/DD'),to_date('21/12/09','RR/MM/DD'));
Insert into S20210902.NOTICE (N_NUM,N_TITLE,N_CONTENT,N_DATE,N_REG_DATE) values (3,'[��������]���θ� ���� ����','���θ� ���� ���ü��θ� ���� ���ü��θ� ���� ���ü��θ� ���� ���ü��θ� ���� ���ü��θ� �������θ� ���� ���ü��θ� ���� ���ü��θ� ���� ���ü��θ� ���� ���ü��θ� ���� ���ü��θ� ���� ���ü��θ� ���� ���� ���ü��θ� ���� ���ü��θ� ���� ���ü��θ� ���� ����',to_date('21/12/14','RR/MM/DD'),to_date('21/12/09','RR/MM/DD'));
Insert into S20210902.NOTICE (N_NUM,N_TITLE,N_CONTENT,N_DATE,N_REG_DATE) values (4,'[��������]���� ���� ���û���','���� ������ 16:00�ú��� �� 4�ð� ����� �����Դϴ�.',to_date('21/12/09','RR/MM/DD'),to_date('21/12/09','RR/MM/DD'));
REM INSERTING into S20210902.ORDER1
SET DEFINE OFF;
Insert into S20210902.ORDER1 (O_NUM,P_CODE,P_SIZE,MEM_ID,O_DATE,O_ADDRESS,O_CANCEL,P_QTY,O_ACCEPT,O_TEL) values (341,4000,120,'park0505',to_date('21/12/15','RR/MM/DD'),'01081���� ���ϱ� ���ط� 1 (������)',0,1,'aaaa','010-2222-2222');
Insert into S20210902.ORDER1 (O_NUM,P_CODE,P_SIZE,MEM_ID,O_DATE,O_ADDRESS,O_CANCEL,P_QTY,O_ACCEPT,O_TEL) values (342,1001,120,'park0505',to_date('21/12/15','RR/MM/DD'),'01237���� ���ϱ� ����� 53 (�̾Ƶ�)',1,1,'aaaa','010-2222-2222');
Insert into S20210902.ORDER1 (O_NUM,P_CODE,P_SIZE,MEM_ID,O_DATE,O_ADDRESS,O_CANCEL,P_QTY,O_ACCEPT,O_TEL) values (342,1002,120,'park0505',to_date('21/12/15','RR/MM/DD'),'01237���� ���ϱ� ����� 53 (�̾Ƶ�)',2,1,'aaaa','010-2222-2222');
Insert into S20210902.ORDER1 (O_NUM,P_CODE,P_SIZE,MEM_ID,O_DATE,O_ADDRESS,O_CANCEL,P_QTY,O_ACCEPT,O_TEL) values (343,2001,120,'park0505',to_date('21/12/15','RR/MM/DD'),'01237���� ���ϱ� ����� 59 (�̾Ƶ�)',1,1,'aaaa','010-2222-2222');
Insert into S20210902.ORDER1 (O_NUM,P_CODE,P_SIZE,MEM_ID,O_DATE,O_ADDRESS,O_CANCEL,P_QTY,O_ACCEPT,O_TEL) values (162,3001,110,'aaaa',to_date('21/11/25','RR/MM/DD'),'10301��� ���� �ϻ굿�� ���Ƿ� 486���Ӹ��� 5���� (ǳ��)',1,1,'�赵��','010-2251-6636');
Insert into S20210902.ORDER1 (O_NUM,P_CODE,P_SIZE,MEM_ID,O_DATE,O_ADDRESS,O_CANCEL,P_QTY,O_ACCEPT,O_TEL) values (181,1000,110,'aaaa',to_date('21/11/26','RR/MM/DD'),'49406�λ� ���ϱ� ������ 1425���� (������)',1,1,'������','010-7789-4422');
Insert into S20210902.ORDER1 (O_NUM,P_CODE,P_SIZE,MEM_ID,O_DATE,O_ADDRESS,O_CANCEL,P_QTY,O_ACCEPT,O_TEL) values (182,1003,110,'aaaa',to_date('21/11/26','RR/MM/DD'),'17743��� ���ý� ����� 146���� (���絿)',1,1,'������','010-7789-5555');
Insert into S20210902.ORDER1 (O_NUM,P_CODE,P_SIZE,MEM_ID,O_DATE,O_ADDRESS,O_CANCEL,P_QTY,O_ACCEPT,O_TEL) values (161,4000,110,'aaaa',to_date('21/11/25','RR/MM/DD'),'10246��� ���� �ϻ굿�� ������ 1�ȳ��ϼ��� (������)',1,2,'������','010-5524-6698');
Insert into S20210902.ORDER1 (O_NUM,P_CODE,P_SIZE,MEM_ID,O_DATE,O_ADDRESS,O_CANCEL,P_QTY,O_ACCEPT,O_TEL) values (183,3000,110,'bbbb',to_date('21/11/26','RR/MM/DD'),'17775��� ���ý� ����� 13377���� (������)',1,1,'������','010-1122-1119');
Insert into S20210902.ORDER1 (O_NUM,P_CODE,P_SIZE,MEM_ID,O_DATE,O_ADDRESS,O_CANCEL,P_QTY,O_ACCEPT,O_TEL) values (362,1004,130,'aaaa',to_date('21/12/16','RR/MM/DD'),'02811���� ���빮�� ����ø���� 54�� (�Ż絿)',0,1,'����','010-0000-0000');
Insert into S20210902.ORDER1 (O_NUM,P_CODE,P_SIZE,MEM_ID,O_DATE,O_ADDRESS,O_CANCEL,P_QTY,O_ACCEPT,O_TEL) values (209,2000,110,'aaaa',to_date('21/11/26','RR/MM/DD'),'10246��� ���� �ϻ굿�� ������ 183-4���� (������)',1,2,'������','010-5541-9999');
Insert into S20210902.ORDER1 (O_NUM,P_CODE,P_SIZE,MEM_ID,O_DATE,O_ADDRESS,O_CANCEL,P_QTY,O_ACCEPT,O_TEL) values (210,3000,110,'aaaa',to_date('21/11/26','RR/MM/DD'),'10417��� ���� �ϻ굿�� ���̷� 191�ϻ굿�� (���ε�, �鸶����4��������Ʈ)',0,3,'������','010-1111-2222');
Insert into S20210902.ORDER1 (O_NUM,P_CODE,P_SIZE,MEM_ID,O_DATE,O_ADDRESS,O_CANCEL,P_QTY,O_ACCEPT,O_TEL) values (222,1003,110,'bbbb',to_date('21/12/01','RR/MM/DD'),'06326���� ������ ������ 85���� (������, ���̾Ⱥ���Ƽ��)',1,1,'�赵��','111-1111-1111');
Insert into S20210902.ORDER1 (O_NUM,P_CODE,P_SIZE,MEM_ID,O_DATE,O_ADDRESS,O_CANCEL,P_QTY,O_ACCEPT,O_TEL) values (223,2002,110,'aaaa',to_date('21/12/01','RR/MM/DD'),'17963��� ���� �ϻ굿�� ������ 1������ũ (û��)',0,2,'�����','010-2732-7345');
Insert into S20210902.ORDER1 (O_NUM,P_CODE,P_SIZE,MEM_ID,O_DATE,O_ADDRESS,O_CANCEL,P_QTY,O_ACCEPT,O_TEL) values (361,2001,110,'new',to_date('21/12/16','RR/MM/DD'),'01237���� ���ϱ� ����� 532�� (�̾Ƶ�)',1,1,'aaaa','010-2222-2222');
REM INSERTING into S20210902.PRODUCT
SET DEFINE OFF;
Insert into S20210902.PRODUCT (P_CODE,P_SIZE,P_NAME,P_C_BCODE,P_C_MCODE,P_HIT,P_DATE,P_IMG,P_PRICE,P_QTY) values (1000,120,'PIB����',200,210,19,to_date('21/12/01','RR/MM/DD'),'upload/1000_1.jpg',19900,5);
Insert into S20210902.PRODUCT (P_CODE,P_SIZE,P_NAME,P_C_BCODE,P_C_MCODE,P_HIT,P_DATE,P_IMG,P_PRICE,P_QTY) values (1000,130,'PIB����',200,210,19,to_date('21/12/01','RR/MM/DD'),'upload/1000_1.jpg',19900,5);
Insert into S20210902.PRODUCT (P_CODE,P_SIZE,P_NAME,P_C_BCODE,P_C_MCODE,P_HIT,P_DATE,P_IMG,P_PRICE,P_QTY) values (1001,110,'PIB����',200,210,5,to_date('21/12/01','RR/MM/DD'),'upload/1000_3.jpg',29900,5);
Insert into S20210902.PRODUCT (P_CODE,P_SIZE,P_NAME,P_C_BCODE,P_C_MCODE,P_HIT,P_DATE,P_IMG,P_PRICE,P_QTY) values (1001,120,'PIB����',200,210,5,to_date('21/12/01','RR/MM/DD'),'upload/1000_3.jpg',29900,4);
Insert into S20210902.PRODUCT (P_CODE,P_SIZE,P_NAME,P_C_BCODE,P_C_MCODE,P_HIT,P_DATE,P_IMG,P_PRICE,P_QTY) values (1000,110,'PIB����',200,210,19,to_date('21/12/01','RR/MM/DD'),'upload/1000_1.jpg',19900,4);
Insert into S20210902.PRODUCT (P_CODE,P_SIZE,P_NAME,P_C_BCODE,P_C_MCODE,P_HIT,P_DATE,P_IMG,P_PRICE,P_QTY) values (1001,130,'PIB����',200,210,5,to_date('21/12/01','RR/MM/DD'),'upload/1000_3.jpg',29900,5);
Insert into S20210902.PRODUCT (P_CODE,P_SIZE,P_NAME,P_C_BCODE,P_C_MCODE,P_HIT,P_DATE,P_IMG,P_PRICE,P_QTY) values (1002,110,'PIB�ĵ�',200,210,4,to_date('21/12/07','RR/MM/DD'),'upload/1000_5.jpg',39900,5);
Insert into S20210902.PRODUCT (P_CODE,P_SIZE,P_NAME,P_C_BCODE,P_C_MCODE,P_HIT,P_DATE,P_IMG,P_PRICE,P_QTY) values (1002,120,'PIB�ĵ�',200,210,4,to_date('21/12/07','RR/MM/DD'),'upload/1000_5.jpg',39900,5);
Insert into S20210902.PRODUCT (P_CODE,P_SIZE,P_NAME,P_C_BCODE,P_C_MCODE,P_HIT,P_DATE,P_IMG,P_PRICE,P_QTY) values (1002,130,'PIB�ĵ�',200,210,4,to_date('21/12/07','RR/MM/DD'),'upload/1000_5.jpg',39900,5);
Insert into S20210902.PRODUCT (P_CODE,P_SIZE,P_NAME,P_C_BCODE,P_C_MCODE,P_HIT,P_DATE,P_IMG,P_PRICE,P_QTY) values (3000,110,'PIB����ũ',200,230,3,to_date('21/12/09','RR/MM/DD'),'upload/3000_3.jpg',4900,5);
Insert into S20210902.PRODUCT (P_CODE,P_SIZE,P_NAME,P_C_BCODE,P_C_MCODE,P_HIT,P_DATE,P_IMG,P_PRICE,P_QTY) values (3000,120,'PIB����ũ',200,230,3,to_date('21/12/09','RR/MM/DD'),'upload/3000_3.jpg',4900,5);
Insert into S20210902.PRODUCT (P_CODE,P_SIZE,P_NAME,P_C_BCODE,P_C_MCODE,P_HIT,P_DATE,P_IMG,P_PRICE,P_QTY) values (3000,130,'PIB����ũ',200,230,3,to_date('21/12/09','RR/MM/DD'),'upload/3000_3.jpg',4900,5);
Insert into S20210902.PRODUCT (P_CODE,P_SIZE,P_NAME,P_C_BCODE,P_C_MCODE,P_HIT,P_DATE,P_IMG,P_PRICE,P_QTY) values (3001,110,'PIB�尩',200,230,7,to_date('21/12/01','RR/MM/DD'),'upload/3000_2.jpg',7900,5);
Insert into S20210902.PRODUCT (P_CODE,P_SIZE,P_NAME,P_C_BCODE,P_C_MCODE,P_HIT,P_DATE,P_IMG,P_PRICE,P_QTY) values (3001,120,'PIB�尩',200,230,7,to_date('21/12/01','RR/MM/DD'),'upload/3000_2.jpg',7900,5);
Insert into S20210902.PRODUCT (P_CODE,P_SIZE,P_NAME,P_C_BCODE,P_C_MCODE,P_HIT,P_DATE,P_IMG,P_PRICE,P_QTY) values (3001,130,'PIB�尩',200,230,7,to_date('21/12/01','RR/MM/DD'),'upload/3000_2.jpg',7900,5);
Insert into S20210902.PRODUCT (P_CODE,P_SIZE,P_NAME,P_C_BCODE,P_C_MCODE,P_HIT,P_DATE,P_IMG,P_PRICE,P_QTY) values (3002,110,'PIB����',200,230,6,to_date('21/12/14','RR/MM/DD'),'upload/3000_1.jpg',12900,5);
Insert into S20210902.PRODUCT (P_CODE,P_SIZE,P_NAME,P_C_BCODE,P_C_MCODE,P_HIT,P_DATE,P_IMG,P_PRICE,P_QTY) values (3002,120,'PIB����',200,230,6,to_date('21/12/14','RR/MM/DD'),'upload/3000_1.jpg',12900,5);
Insert into S20210902.PRODUCT (P_CODE,P_SIZE,P_NAME,P_C_BCODE,P_C_MCODE,P_HIT,P_DATE,P_IMG,P_PRICE,P_QTY) values (3002,130,'PIB����',200,230,6,to_date('21/12/14','RR/MM/DD'),'upload/3000_1.jpg',12900,5);
Insert into S20210902.PRODUCT (P_CODE,P_SIZE,P_NAME,P_C_BCODE,P_C_MCODE,P_HIT,P_DATE,P_IMG,P_PRICE,P_QTY) values (3003,110,'PIB�縻',200,230,3,to_date('21/12/02','RR/MM/DD'),'upload/3000_4.jpg',3900,5);
Insert into S20210902.PRODUCT (P_CODE,P_SIZE,P_NAME,P_C_BCODE,P_C_MCODE,P_HIT,P_DATE,P_IMG,P_PRICE,P_QTY) values (3003,120,'PIB�縻',200,230,3,to_date('21/12/02','RR/MM/DD'),'upload/3000_4.jpg',3900,5);
Insert into S20210902.PRODUCT (P_CODE,P_SIZE,P_NAME,P_C_BCODE,P_C_MCODE,P_HIT,P_DATE,P_IMG,P_PRICE,P_QTY) values (3003,130,'PIB�縻',200,230,3,to_date('21/12/02','RR/MM/DD'),'upload/3000_4.jpg',3900,5);
Insert into S20210902.PRODUCT (P_CODE,P_SIZE,P_NAME,P_C_BCODE,P_C_MCODE,P_HIT,P_DATE,P_IMG,P_PRICE,P_QTY) values (4000,110,'PIB�ȭ',200,240,8,to_date('21/12/01','RR/MM/DD'),'upload/4000_1.jpg',79900,5);
Insert into S20210902.PRODUCT (P_CODE,P_SIZE,P_NAME,P_C_BCODE,P_C_MCODE,P_HIT,P_DATE,P_IMG,P_PRICE,P_QTY) values (4000,120,'PIB�ȭ',200,240,8,to_date('21/12/01','RR/MM/DD'),'upload/4000_1.jpg',79900,5);
Insert into S20210902.PRODUCT (P_CODE,P_SIZE,P_NAME,P_C_BCODE,P_C_MCODE,P_HIT,P_DATE,P_IMG,P_PRICE,P_QTY) values (4000,130,'PIB�ȭ',200,240,8,to_date('21/12/01','RR/MM/DD'),'upload/4000_1.jpg',79900,5);
Insert into S20210902.PRODUCT (P_CODE,P_SIZE,P_NAME,P_C_BCODE,P_C_MCODE,P_HIT,P_DATE,P_IMG,P_PRICE,P_QTY) values (4001,110,'PIB��ȭ',200,240,5,to_date('21/12/14','RR/MM/DD'),'upload/4000_3.jpg',59900,5);
Insert into S20210902.PRODUCT (P_CODE,P_SIZE,P_NAME,P_C_BCODE,P_C_MCODE,P_HIT,P_DATE,P_IMG,P_PRICE,P_QTY) values (4001,120,'PIB��ȭ',200,240,5,to_date('21/12/14','RR/MM/DD'),'upload/4000_3.jpg',59900,5);
Insert into S20210902.PRODUCT (P_CODE,P_SIZE,P_NAME,P_C_BCODE,P_C_MCODE,P_HIT,P_DATE,P_IMG,P_PRICE,P_QTY) values (4001,130,'PIB��ȭ',200,240,5,to_date('21/12/14','RR/MM/DD'),'upload/4000_3.jpg',59900,5);
Insert into S20210902.PRODUCT (P_CODE,P_SIZE,P_NAME,P_C_BCODE,P_C_MCODE,P_HIT,P_DATE,P_IMG,P_PRICE,P_QTY) values (4002,110,'PIB������',200,240,9,to_date('21/12/08','RR/MM/DD'),'upload/4000_5.jpg',39900,5);
Insert into S20210902.PRODUCT (P_CODE,P_SIZE,P_NAME,P_C_BCODE,P_C_MCODE,P_HIT,P_DATE,P_IMG,P_PRICE,P_QTY) values (4002,120,'PIB������',200,240,9,to_date('21/12/08','RR/MM/DD'),'upload/4000_5.jpg',39900,5);
Insert into S20210902.PRODUCT (P_CODE,P_SIZE,P_NAME,P_C_BCODE,P_C_MCODE,P_HIT,P_DATE,P_IMG,P_PRICE,P_QTY) values (4002,130,'PIB������',200,240,9,to_date('21/12/08','RR/MM/DD'),'upload/4000_5.jpg',39900,5);
Insert into S20210902.PRODUCT (P_CODE,P_SIZE,P_NAME,P_C_BCODE,P_C_MCODE,P_HIT,P_DATE,P_IMG,P_PRICE,P_QTY) values (2000,120,'PIB�ݹ���',200,220,3,to_date('21/12/14','RR/MM/DD'),'upload/2000_1.jpg',19900,5);
Insert into S20210902.PRODUCT (P_CODE,P_SIZE,P_NAME,P_C_BCODE,P_C_MCODE,P_HIT,P_DATE,P_IMG,P_PRICE,P_QTY) values (2000,130,'PIB�ݹ���',200,220,3,to_date('21/12/14','RR/MM/DD'),'upload/2000_1.jpg',19900,5);
Insert into S20210902.PRODUCT (P_CODE,P_SIZE,P_NAME,P_C_BCODE,P_C_MCODE,P_HIT,P_DATE,P_IMG,P_PRICE,P_QTY) values (2001,120,'PIB�����',200,220,8,to_date('21/12/02','RR/MM/DD'),'upload/2000_3.jpg',29900,4);
Insert into S20210902.PRODUCT (P_CODE,P_SIZE,P_NAME,P_C_BCODE,P_C_MCODE,P_HIT,P_DATE,P_IMG,P_PRICE,P_QTY) values (2001,130,'PIB�����',200,220,8,to_date('21/12/02','RR/MM/DD'),'upload/2000_3.jpg',29900,5);
Insert into S20210902.PRODUCT (P_CODE,P_SIZE,P_NAME,P_C_BCODE,P_C_MCODE,P_HIT,P_DATE,P_IMG,P_PRICE,P_QTY) values (2001,110,'PIB�����',200,220,8,to_date('21/12/02','RR/MM/DD'),'upload/2000_3.jpg',29900,4);
Insert into S20210902.PRODUCT (P_CODE,P_SIZE,P_NAME,P_C_BCODE,P_C_MCODE,P_HIT,P_DATE,P_IMG,P_PRICE,P_QTY) values (2002,120,'PIBŸ����',200,220,8,to_date('21/12/02','RR/MM/DD'),'upload/2000_5.jpg',29900,5);
Insert into S20210902.PRODUCT (P_CODE,P_SIZE,P_NAME,P_C_BCODE,P_C_MCODE,P_HIT,P_DATE,P_IMG,P_PRICE,P_QTY) values (2002,130,'PIBŸ����',200,220,8,to_date('21/12/02','RR/MM/DD'),'upload/2000_5.jpg',29900,5);
Insert into S20210902.PRODUCT (P_CODE,P_SIZE,P_NAME,P_C_BCODE,P_C_MCODE,P_HIT,P_DATE,P_IMG,P_PRICE,P_QTY) values (2002,110,'PIBŸ����',200,220,8,to_date('21/12/02','RR/MM/DD'),'upload/2000_5.jpg',29900,5);
Insert into S20210902.PRODUCT (P_CODE,P_SIZE,P_NAME,P_C_BCODE,P_C_MCODE,P_HIT,P_DATE,P_IMG,P_PRICE,P_QTY) values (2003,120,'PIB�� Ÿ����',200,220,5,to_date('21/12/01','RR/MM/DD'),'upload/2000_7.PNG',24900,5);
Insert into S20210902.PRODUCT (P_CODE,P_SIZE,P_NAME,P_C_BCODE,P_C_MCODE,P_HIT,P_DATE,P_IMG,P_PRICE,P_QTY) values (2003,130,'PIB�� Ÿ����',200,220,5,to_date('21/12/01','RR/MM/DD'),'upload/2000_7.PNG',24900,5);
Insert into S20210902.PRODUCT (P_CODE,P_SIZE,P_NAME,P_C_BCODE,P_C_MCODE,P_HIT,P_DATE,P_IMG,P_PRICE,P_QTY) values (2003,110,'PIB�� Ÿ����',200,220,5,to_date('21/12/01','RR/MM/DD'),'upload/2000_7.PNG',24900,5);
Insert into S20210902.PRODUCT (P_CODE,P_SIZE,P_NAME,P_C_BCODE,P_C_MCODE,P_HIT,P_DATE,P_IMG,P_PRICE,P_QTY) values (2004,120,'PIB KIDS �����',200,220,6,to_date('21/12/03','RR/MM/DD'),'upload/2000_9.PNG',19900,5);
Insert into S20210902.PRODUCT (P_CODE,P_SIZE,P_NAME,P_C_BCODE,P_C_MCODE,P_HIT,P_DATE,P_IMG,P_PRICE,P_QTY) values (2004,130,'PIB KIDS �����',200,220,6,to_date('21/12/03','RR/MM/DD'),'upload/2000_9.PNG',19900,5);
Insert into S20210902.PRODUCT (P_CODE,P_SIZE,P_NAME,P_C_BCODE,P_C_MCODE,P_HIT,P_DATE,P_IMG,P_PRICE,P_QTY) values (2004,110,'PIB KIDS �����',200,220,6,to_date('21/12/03','RR/MM/DD'),'upload/2000_9.PNG',19900,5);
Insert into S20210902.PRODUCT (P_CODE,P_SIZE,P_NAME,P_C_BCODE,P_C_MCODE,P_HIT,P_DATE,P_IMG,P_PRICE,P_QTY) values (2005,120,'PIB KIDS �ݹ���',200,220,4,to_date('21/12/04','RR/MM/DD'),'upload/2000_11.PNG',14900,5);
Insert into S20210902.PRODUCT (P_CODE,P_SIZE,P_NAME,P_C_BCODE,P_C_MCODE,P_HIT,P_DATE,P_IMG,P_PRICE,P_QTY) values (2005,130,'PIB KIDS �ݹ���',200,220,4,to_date('21/12/04','RR/MM/DD'),'upload/2000_11.PNG',14900,5);
Insert into S20210902.PRODUCT (P_CODE,P_SIZE,P_NAME,P_C_BCODE,P_C_MCODE,P_HIT,P_DATE,P_IMG,P_PRICE,P_QTY) values (2005,110,'PIB KIDS �ݹ���',200,220,4,to_date('21/12/04','RR/MM/DD'),'upload/2000_11.PNG',14900,5);
Insert into S20210902.PRODUCT (P_CODE,P_SIZE,P_NAME,P_C_BCODE,P_C_MCODE,P_HIT,P_DATE,P_IMG,P_PRICE,P_QTY) values (2000,110,'PIB�ݹ���',200,220,3,to_date('21/12/14','RR/MM/DD'),'upload/2000_1.jpg',19900,5);
Insert into S20210902.PRODUCT (P_CODE,P_SIZE,P_NAME,P_C_BCODE,P_C_MCODE,P_HIT,P_DATE,P_IMG,P_PRICE,P_QTY) values (1003,110,'PIB KIDS �ĵ�',200,210,19,to_date('21/12/06','RR/MM/DD'),'upload/1000_7.PNG',29900,5);
Insert into S20210902.PRODUCT (P_CODE,P_SIZE,P_NAME,P_C_BCODE,P_C_MCODE,P_HIT,P_DATE,P_IMG,P_PRICE,P_QTY) values (1003,120,'PIB KIDS �ĵ�',200,210,19,to_date('21/12/06','RR/MM/DD'),'upload/1000_7.PNG',29900,5);
Insert into S20210902.PRODUCT (P_CODE,P_SIZE,P_NAME,P_C_BCODE,P_C_MCODE,P_HIT,P_DATE,P_IMG,P_PRICE,P_QTY) values (1003,130,'PIB KIDS �ĵ�',200,210,19,to_date('21/12/06','RR/MM/DD'),'upload/1000_7.PNG',29900,5);
Insert into S20210902.PRODUCT (P_CODE,P_SIZE,P_NAME,P_C_BCODE,P_C_MCODE,P_HIT,P_DATE,P_IMG,P_PRICE,P_QTY) values (1004,110,'PIB KIDS ����',200,210,2,to_date('21/12/05','RR/MM/DD'),'upload/1000_9.PNG',19900,5);
Insert into S20210902.PRODUCT (P_CODE,P_SIZE,P_NAME,P_C_BCODE,P_C_MCODE,P_HIT,P_DATE,P_IMG,P_PRICE,P_QTY) values (1004,120,'PIB KIDS ����',200,210,2,to_date('21/12/05','RR/MM/DD'),'upload/1000_9.PNG',19900,5);
Insert into S20210902.PRODUCT (P_CODE,P_SIZE,P_NAME,P_C_BCODE,P_C_MCODE,P_HIT,P_DATE,P_IMG,P_PRICE,P_QTY) values (1004,130,'PIB KIDS ����',200,210,2,to_date('21/12/05','RR/MM/DD'),'upload/1000_9.PNG',19900,5);
REM INSERTING into S20210902.QNA
SET DEFINE OFF;
Insert into S20210902.QNA (MEM_ID,Q_NUM,P_CODE,P_SIZE,Q_CONTENT,Q_IMAGE,Q_REPLY,Q_RE_STATUS,Q_DATE,Q_BCODE,Q_MCODE) values ('park0505',1,'1000','120','���δ� ��� �����Ѱ���',null,'��� �����մϴ�',2,to_date('21/11/29','RR/MM/DD'),300,340);
Insert into S20210902.QNA (MEM_ID,Q_NUM,P_CODE,P_SIZE,Q_CONTENT,Q_IMAGE,Q_REPLY,Q_RE_STATUS,Q_DATE,Q_BCODE,Q_MCODE) values ('aaaa',4,'1000','110','�Ʒ� ��κ� �Ͼ�� �Ǿ��ֽ��ϴ�.  Tag�� �𸣰� �����ȴµ� ��ȯ �ǳ���...?',null,null,0,to_date('21/12/16','RR/MM/DD'),300,330);
Insert into S20210902.QNA (MEM_ID,Q_NUM,P_CODE,P_SIZE,Q_CONTENT,Q_IMAGE,Q_REPLY,Q_RE_STATUS,Q_DATE,Q_BCODE,Q_MCODE) values ('park0505',2,null,null,'�ڽ��� ����µ� ��۹������� ������ �ʹ� ����',null,'���� ���� ��ǰ�� ��� �Ϲ����� �ڽ������� ���ϴ�. ��ſ� �ð��Ǽ���',2,to_date('21/12/16','RR/MM/DD'),300,350);
Insert into S20210902.QNA (MEM_ID,Q_NUM,P_CODE,P_SIZE,Q_CONTENT,Q_IMAGE,Q_REPLY,Q_RE_STATUS,Q_DATE,Q_BCODE,Q_MCODE) values ('park0505',3,'1001','120','L������� 8�� �����ߴµ� ���� ������̶󼭿� M������� ��ȯ �����Ѱ���?',null,'�ż��ϰ� Ȯ�� �� �������� �ٽ� �����帮�ڽ��ϴ�!',2,to_date('21/12/16','RR/MM/DD'),300,330);
Insert into S20210902.QNA (MEM_ID,Q_NUM,P_CODE,P_SIZE,Q_CONTENT,Q_IMAGE,Q_REPLY,Q_RE_STATUS,Q_DATE,Q_BCODE,Q_MCODE) values ('aaaa',5,null,null,'�ֹ���ȣ ******-*******���� ��� �ǳ���?',null,null,0,to_date('21/12/16','RR/MM/DD'),300,320);
Insert into S20210902.QNA (MEM_ID,Q_NUM,P_CODE,P_SIZE,Q_CONTENT,Q_IMAGE,Q_REPLY,Q_RE_STATUS,Q_DATE,Q_BCODE,Q_MCODE) values ('aaaa',6,null,null,'��ҿ�û�Ѱ� öȸ���ּ���Ф�',null,null,1,to_date('21/12/16','RR/MM/DD'),300,310);
Insert into S20210902.QNA (MEM_ID,Q_NUM,P_CODE,P_SIZE,Q_CONTENT,Q_IMAGE,Q_REPLY,Q_RE_STATUS,Q_DATE,Q_BCODE,Q_MCODE) values ('bbbb',7,'1003','110','M, L ������ ǰ���̴��� ���԰� �ȵǳ���?',null,null,1,to_date('21/12/16','RR/MM/DD'),300,310);
Insert into S20210902.QNA (MEM_ID,Q_NUM,P_CODE,P_SIZE,Q_CONTENT,Q_IMAGE,Q_REPLY,Q_RE_STATUS,Q_DATE,Q_BCODE,Q_MCODE) values ('bbbb',8,null,null,'������ S ������ ���� �����ϰ� ������ �Ǹ��Ͻô°ǰ���',null,null,1,to_date('21/12/16','RR/MM/DD'),300,310);
Insert into S20210902.QNA (MEM_ID,Q_NUM,P_CODE,P_SIZE,Q_CONTENT,Q_IMAGE,Q_REPLY,Q_RE_STATUS,Q_DATE,Q_BCODE,Q_MCODE) values ('new',10,null,null,'���Ͼ��Ͼ���',null,'���Ͼ��Ͼ��Ͼ��Ͼ���',2,to_date('21/12/16','RR/MM/DD'),300,310);
REM INSERTING into S20210902.REVIEW
SET DEFINE OFF;
Insert into S20210902.REVIEW (MEM_ID,R_NUM,P_CODE,P_SIZE,R_CONTENT,R_SCORE,REPLY,RE_INDENT,RE_STEP,R_IMG) values ('jeyun0224',16,2000,110,'[�亯]fgfgdgdfdfdfdfdfd',null,15,1,1,null);
Insert into S20210902.REVIEW (MEM_ID,R_NUM,P_CODE,P_SIZE,R_CONTENT,R_SCORE,REPLY,RE_INDENT,RE_STEP,R_IMG) values ('jeyun0224',18,1000,130,'[�亯] fgdfgfdgdfgdf',null,17,1,1,null);
Insert into S20210902.REVIEW (MEM_ID,R_NUM,P_CODE,P_SIZE,R_CONTENT,R_SCORE,REPLY,RE_INDENT,RE_STEP,R_IMG) values ('admin',19,1000,130,'[�亯] ���� ��ǰ�� �������ּż� ���� �����մϴ�. �����ε� ���� ��ǰ ���鵵�� ����ϰڽ��ϴ�!',null,2,1,1,null);
Insert into S20210902.REVIEW (MEM_ID,R_NUM,P_CODE,P_SIZE,R_CONTENT,R_SCORE,REPLY,RE_INDENT,RE_STEP,R_IMG) values ('admin',20,1001,130,'[�亯] �����մϴ�.',null,3,1,1,null);
Insert into S20210902.REVIEW (MEM_ID,R_NUM,P_CODE,P_SIZE,R_CONTENT,R_SCORE,REPLY,RE_INDENT,RE_STEP,R_IMG) values ('admin',21,1002,120,'[�亯]ddddd',null,14,1,1,null);
Insert into S20210902.REVIEW (MEM_ID,R_NUM,P_CODE,P_SIZE,R_CONTENT,R_SCORE,REPLY,RE_INDENT,RE_STEP,R_IMG) values ('park0303',2,1000,130,'��ǳ�� �ߵǳ׿�. �������� ���ȵ� �纸�����',5,2,0,0,'upload/1000_1.jpg');
Insert into S20210902.REVIEW (MEM_ID,R_NUM,P_CODE,P_SIZE,R_CONTENT,R_SCORE,REPLY,RE_INDENT,RE_STEP,R_IMG) values ('kim0202',3,1001,130,'�����ε� ���� ª���� �����ϴ�',4,3,0,0,'upload/1000_3.jpg');
Insert into S20210902.REVIEW (MEM_ID,R_NUM,P_CODE,P_SIZE,R_CONTENT,R_SCORE,REPLY,RE_INDENT,RE_STEP,R_IMG) values ('yu0606',7,2002,120,'��ü�Ҷ� �� ���뽺�� �ʼ�! ���� ���� �մϴ�',5,7,0,0,null);
Insert into S20210902.REVIEW (MEM_ID,R_NUM,P_CODE,P_SIZE,R_CONTENT,R_SCORE,REPLY,RE_INDENT,RE_STEP,R_IMG) values ('jeyun0224',10,2002,120,'���뽺�� ���� �մϴ�',5,10,2,2,null);
Insert into S20210902.REVIEW (MEM_ID,R_NUM,P_CODE,P_SIZE,R_CONTENT,R_SCORE,REPLY,RE_INDENT,RE_STEP,R_IMG) values ('kim0101',11,1003,110,'�ĵ� �����̳�',5,11,0,0,null);
Insert into S20210902.REVIEW (MEM_ID,R_NUM,P_CODE,P_SIZE,R_CONTENT,R_SCORE,REPLY,RE_INDENT,RE_STEP,R_IMG) values ('kim0202',12,4002,130,'�����۴� ���� ���׿�',5,12,1,1,null);
Insert into S20210902.REVIEW (MEM_ID,R_NUM,P_CODE,P_SIZE,R_CONTENT,R_SCORE,REPLY,RE_INDENT,RE_STEP,R_IMG) values ('park0303',13,1003,130,'��¥ �ĵ� �ϳ��� �˾���� �մϴ�',5,13,1,1,null);
REM INSERTING into S20210902.WISHLIST
SET DEFINE OFF;
Insert into S20210902.WISHLIST (MEM_ID,W_NUM,P_CODE,P_SIZE) values ('new',165,1001,null);
Insert into S20210902.WISHLIST (MEM_ID,W_NUM,P_CODE,P_SIZE) values ('aaaa',163,2001,null);
Insert into S20210902.WISHLIST (MEM_ID,W_NUM,P_CODE,P_SIZE) values ('park0505',129,4002,null);
Insert into S20210902.WISHLIST (MEM_ID,W_NUM,P_CODE,P_SIZE) values ('park0505',174,1000,null);
Insert into S20210902.WISHLIST (MEM_ID,W_NUM,P_CODE,P_SIZE) values ('park0505',172,2001,null);
Insert into S20210902.WISHLIST (MEM_ID,W_NUM,P_CODE,P_SIZE) values ('park0505',137,3002,null);
--------------------------------------------------------
--  DDL for Index PK_CART
--------------------------------------------------------

  CREATE UNIQUE INDEX "S20210902"."PK_CART" ON "S20210902"."CART" ("MEM_ID", "C_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_COMMON
--------------------------------------------------------

  CREATE UNIQUE INDEX "S20210902"."PK_COMMON" ON "S20210902"."COMMON" ("BCODE", "MCODE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_FAQ
--------------------------------------------------------

  CREATE UNIQUE INDEX "S20210902"."PK_FAQ" ON "S20210902"."FAQ" ("F_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_LATEST_PRODUCT2
--------------------------------------------------------

  CREATE UNIQUE INDEX "S20210902"."PK_LATEST_PRODUCT2" ON "S20210902"."LATEST_PRODUCT" ("MEM_ID", "P_CODE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_MEMBER
--------------------------------------------------------

  CREATE UNIQUE INDEX "S20210902"."PK_MEMBER" ON "S20210902"."MEMBER" ("MEM_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_NOTICE
--------------------------------------------------------

  CREATE UNIQUE INDEX "S20210902"."PK_NOTICE" ON "S20210902"."NOTICE" ("N_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_ORDER1
--------------------------------------------------------

  CREATE UNIQUE INDEX "S20210902"."PK_ORDER1" ON "S20210902"."ORDER1" ("O_NUM", "P_CODE", "P_SIZE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_PRODUCT
--------------------------------------------------------

  CREATE UNIQUE INDEX "S20210902"."PK_PRODUCT" ON "S20210902"."PRODUCT" ("P_CODE", "P_SIZE") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_QNA
--------------------------------------------------------

  CREATE UNIQUE INDEX "S20210902"."PK_QNA" ON "S20210902"."QNA" ("MEM_ID", "Q_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_REVIEW
--------------------------------------------------------

  CREATE UNIQUE INDEX "S20210902"."PK_REVIEW" ON "S20210902"."REVIEW" ("MEM_ID", "R_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index PK_WISHLIST
--------------------------------------------------------

  CREATE UNIQUE INDEX "S20210902"."PK_WISHLIST" ON "S20210902"."WISHLIST" ("MEM_ID", "W_NUM") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Procedure PROC_DEL_BATCH
--------------------------------------------------------
set define off;

  CREATE OR REPLACE PROCEDURE "S20210902"."PROC_DEL_BATCH" AS 
BEGIN

delete from LATEST_PRODUCT
where l_date < sysdate-1;
commit;

END PROC_DEL_BATCH;


/
--------------------------------------------------------
--  Constraints for Table CART
--------------------------------------------------------

  ALTER TABLE "S20210902"."CART" ADD CONSTRAINT "PK_CART" PRIMARY KEY ("MEM_ID", "C_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "S20210902"."CART" MODIFY ("C_NUM" NOT NULL ENABLE);
  ALTER TABLE "S20210902"."CART" MODIFY ("MEM_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table COMMON
--------------------------------------------------------

  ALTER TABLE "S20210902"."COMMON" ADD CONSTRAINT "PK_COMMON" PRIMARY KEY ("BCODE", "MCODE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "S20210902"."COMMON" MODIFY ("MCODE" NOT NULL ENABLE);
  ALTER TABLE "S20210902"."COMMON" MODIFY ("BCODE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table FAQ
--------------------------------------------------------

  ALTER TABLE "S20210902"."FAQ" MODIFY ("F_NUM" NOT NULL ENABLE);
  ALTER TABLE "S20210902"."FAQ" MODIFY ("F_TITLE" NOT NULL ENABLE);
  ALTER TABLE "S20210902"."FAQ" MODIFY ("F_CONTENT" NOT NULL ENABLE);
  ALTER TABLE "S20210902"."FAQ" MODIFY ("F_DATE" NOT NULL ENABLE);
  ALTER TABLE "S20210902"."FAQ" ADD CONSTRAINT "PK_FAQ" PRIMARY KEY ("F_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table LATEST_PRODUCT
--------------------------------------------------------

  ALTER TABLE "S20210902"."LATEST_PRODUCT" ADD CONSTRAINT "PK_LATEST_PRODUCT2" PRIMARY KEY ("MEM_ID", "P_CODE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "S20210902"."LATEST_PRODUCT" MODIFY ("L_DATE" NOT NULL ENABLE);
  ALTER TABLE "S20210902"."LATEST_PRODUCT" MODIFY ("P_CODE" NOT NULL ENABLE);
  ALTER TABLE "S20210902"."LATEST_PRODUCT" MODIFY ("MEM_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MEMBER
--------------------------------------------------------

  ALTER TABLE "S20210902"."MEMBER" ADD CONSTRAINT "PK_MEMBER" PRIMARY KEY ("MEM_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "S20210902"."MEMBER" MODIFY ("MEM_TEL" NOT NULL ENABLE);
  ALTER TABLE "S20210902"."MEMBER" MODIFY ("MEM_NAME" NOT NULL ENABLE);
  ALTER TABLE "S20210902"."MEMBER" MODIFY ("MEM_PASSWD" NOT NULL ENABLE);
  ALTER TABLE "S20210902"."MEMBER" MODIFY ("MEM_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table NOTICE
--------------------------------------------------------

  ALTER TABLE "S20210902"."NOTICE" MODIFY ("N_NUM" NOT NULL ENABLE);
  ALTER TABLE "S20210902"."NOTICE" MODIFY ("N_TITLE" NOT NULL ENABLE);
  ALTER TABLE "S20210902"."NOTICE" MODIFY ("N_CONTENT" NOT NULL ENABLE);
  ALTER TABLE "S20210902"."NOTICE" MODIFY ("N_DATE" NOT NULL ENABLE);
  ALTER TABLE "S20210902"."NOTICE" ADD CONSTRAINT "PK_NOTICE" PRIMARY KEY ("N_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table ORDER1
--------------------------------------------------------

  ALTER TABLE "S20210902"."ORDER1" MODIFY ("O_NUM" NOT NULL ENABLE);
  ALTER TABLE "S20210902"."ORDER1" MODIFY ("P_CODE" NOT NULL ENABLE);
  ALTER TABLE "S20210902"."ORDER1" MODIFY ("P_SIZE" NOT NULL ENABLE);
  ALTER TABLE "S20210902"."ORDER1" MODIFY ("MEM_ID" NOT NULL ENABLE);
  ALTER TABLE "S20210902"."ORDER1" ADD CONSTRAINT "PK_ORDER1" PRIMARY KEY ("O_NUM", "P_CODE", "P_SIZE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "S20210902"."ORDER1" MODIFY ("P_QTY" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PRODUCT
--------------------------------------------------------

  ALTER TABLE "S20210902"."PRODUCT" MODIFY ("P_C_MCODE" NOT NULL ENABLE);
  ALTER TABLE "S20210902"."PRODUCT" ADD CONSTRAINT "PK_PRODUCT" PRIMARY KEY ("P_CODE", "P_SIZE")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "S20210902"."PRODUCT" MODIFY ("P_C_BCODE" NOT NULL ENABLE);
  ALTER TABLE "S20210902"."PRODUCT" MODIFY ("P_NAME" NOT NULL ENABLE);
  ALTER TABLE "S20210902"."PRODUCT" MODIFY ("P_SIZE" NOT NULL ENABLE);
  ALTER TABLE "S20210902"."PRODUCT" MODIFY ("P_CODE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table QNA
--------------------------------------------------------

  ALTER TABLE "S20210902"."QNA" ADD CONSTRAINT "PK_QNA" PRIMARY KEY ("MEM_ID", "Q_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "S20210902"."QNA" MODIFY ("Q_DATE" NOT NULL ENABLE);
  ALTER TABLE "S20210902"."QNA" MODIFY ("Q_CONTENT" NOT NULL ENABLE);
  ALTER TABLE "S20210902"."QNA" MODIFY ("Q_NUM" NOT NULL ENABLE);
  ALTER TABLE "S20210902"."QNA" MODIFY ("MEM_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table REVIEW
--------------------------------------------------------

  ALTER TABLE "S20210902"."REVIEW" MODIFY ("MEM_ID" NOT NULL ENABLE);
  ALTER TABLE "S20210902"."REVIEW" MODIFY ("R_NUM" NOT NULL ENABLE);
  ALTER TABLE "S20210902"."REVIEW" MODIFY ("R_CONTENT" NOT NULL ENABLE);
  ALTER TABLE "S20210902"."REVIEW" ADD CONSTRAINT "PK_REVIEW" PRIMARY KEY ("MEM_ID", "R_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
--------------------------------------------------------
--  Constraints for Table WISHLIST
--------------------------------------------------------

  ALTER TABLE "S20210902"."WISHLIST" ADD CONSTRAINT "PK_WISHLIST" PRIMARY KEY ("MEM_ID", "W_NUM")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "S20210902"."WISHLIST" MODIFY ("P_CODE" NOT NULL ENABLE);
  ALTER TABLE "S20210902"."WISHLIST" MODIFY ("W_NUM" NOT NULL ENABLE);
  ALTER TABLE "S20210902"."WISHLIST" MODIFY ("MEM_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table CART
--------------------------------------------------------

  ALTER TABLE "S20210902"."CART" ADD CONSTRAINT "FK_MEMBER_TO_CART" FOREIGN KEY ("MEM_ID")
	  REFERENCES "S20210902"."MEMBER" ("MEM_ID") ENABLE;
  ALTER TABLE "S20210902"."CART" ADD CONSTRAINT "FK_PRODUCT_TO_CART" FOREIGN KEY ("P_CODE", "P_SIZE")
	  REFERENCES "S20210902"."PRODUCT" ("P_CODE", "P_SIZE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table ORDER1
--------------------------------------------------------

  ALTER TABLE "S20210902"."ORDER1" ADD CONSTRAINT "FK_MEMBER_TO_ORDER1" FOREIGN KEY ("MEM_ID")
	  REFERENCES "S20210902"."MEMBER" ("MEM_ID") ENABLE;
  ALTER TABLE "S20210902"."ORDER1" ADD CONSTRAINT "FK_PRODUCT_TO_ORDER1" FOREIGN KEY ("P_CODE", "P_SIZE")
	  REFERENCES "S20210902"."PRODUCT" ("P_CODE", "P_SIZE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table QNA
--------------------------------------------------------

  ALTER TABLE "S20210902"."QNA" ADD CONSTRAINT "FK_MEMBER_TO_QNA" FOREIGN KEY ("MEM_ID")
	  REFERENCES "S20210902"."MEMBER" ("MEM_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table REVIEW
--------------------------------------------------------

  ALTER TABLE "S20210902"."REVIEW" ADD CONSTRAINT "FK_MEMBER_TO_REVIEW" FOREIGN KEY ("MEM_ID")
	  REFERENCES "S20210902"."MEMBER" ("MEM_ID") ENABLE;
  ALTER TABLE "S20210902"."REVIEW" ADD CONSTRAINT "FK_PRODUCT_TO_REVIEW" FOREIGN KEY ("P_CODE", "P_SIZE")
	  REFERENCES "S20210902"."PRODUCT" ("P_CODE", "P_SIZE") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table WISHLIST
--------------------------------------------------------

  ALTER TABLE "S20210902"."WISHLIST" ADD CONSTRAINT "FK_MEMBER_TO_WISHLIST" FOREIGN KEY ("MEM_ID")
	  REFERENCES "S20210902"."MEMBER" ("MEM_ID") ENABLE;
  ALTER TABLE "S20210902"."WISHLIST" ADD CONSTRAINT "FK_PRODUCT_TO_WISHLIST" FOREIGN KEY ("P_CODE", "P_SIZE")
	  REFERENCES "S20210902"."PRODUCT" ("P_CODE", "P_SIZE") ENABLE;
