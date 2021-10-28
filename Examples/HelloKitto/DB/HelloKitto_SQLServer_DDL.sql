-- SQLServer DDL script for HelloKitto Example
CREATE TABLE DOLL 
(
  DOLL_ID     NVARCHAR(32) NOT NULL,
  DOLL_NAME   NVARCHAR(40) NOT NULL,
  DATE_BOUGHT DATE,
  HAIR_ID     NVARCHAR(32),
  DRESS_SIZE  NVARCHAR(4),
  MOM_ID      NVARCHAR(32) NOT NULL,
  ASPECT      NVARCHAR(1024),
  PICTURE     IMAGE,
  PICTURE_FILE varchar(200)
);
CREATE TABLE GIRL 
(
  GIRL_ID     NVARCHAR(32) NOT NULL,
  GIRL_NAME   NVARCHAR(40) NOT NULL,
  AGE         INTEGER,
  HAIR_ID     NVARCHAR(32) NOT NULL,
  PHONE       NVARCHAR(16) 
);
CREATE TABLE HAIR 
(
  HAIR_ID     NVARCHAR(32) NOT NULL,
  HAIR_COLOR  NVARCHAR(80) NOT NULL
);
CREATE TABLE INVITATION 
(
  INVITATION_ID NVARCHAR(32) NOT NULL,
  PARTY_ID      NVARCHAR(32) NOT NULL,
  INVITEE_ID    NVARCHAR(32) NOT NULL,
  ACCEPTED      BIT
);
CREATE TABLE KITTO_USERS 
(
  USER_NAME     NVARCHAR(32) NOT NULL,
  PASSWORD_HASH NVARCHAR(32),
  EMAIL_ADDRESS NVARCHAR(100),
  MUST_CHANGE_PASSWORD BIT,
  IS_ACTIVE     BIT
);
CREATE TABLE PARTY 
(
  PARTY_ID      NVARCHAR(32) NOT NULL,
  PARTY_NAME    NVARCHAR(40) NOT NULL,
  PARTY_DATE    DATE         NOT NULL,
  PARTY_TIME    TIME         NOT NULL,
  ADDRESS       NVARCHAR(256) NOT NULL
);

ALTER TABLE DOLL ADD CONSTRAINT PK_DOLL PRIMARY KEY (DOLL_ID);
ALTER TABLE GIRL ADD CONSTRAINT PK_GIRL PRIMARY KEY (GIRL_ID);
ALTER TABLE HAIR ADD CONSTRAINT PK_HAIR PRIMARY KEY (HAIR_ID);
ALTER TABLE INVITATION ADD CONSTRAINT PK_INVITATION PRIMARY KEY (INVITATION_ID);
ALTER TABLE KITTO_USERS ADD CONSTRAINT PK_KITTO_USERS PRIMARY KEY (USER_NAME);
ALTER TABLE PARTY ADD CONSTRAINT PK_PARTY PRIMARY KEY (PARTY_ID);

ALTER TABLE DOLL ADD CONSTRAINT DT_DOLL_MOM 
  FOREIGN KEY (MOM_ID) REFERENCES GIRL
  (GIRL_ID) 
  ON DELETE NO ACTION
  ON UPDATE NO ACTION
;

ALTER TABLE DOLL ADD CONSTRAINT FK_DOLL_HAIR 
  FOREIGN KEY (HAIR_ID) REFERENCES HAIR
  (HAIR_ID) 
  ON DELETE NO ACTION
  ON UPDATE NO ACTION
;

ALTER TABLE GIRL ADD CONSTRAINT FK_GIRL_HAIR 
  FOREIGN KEY (HAIR_ID) REFERENCES HAIR
  (HAIR_ID) 
  ON DELETE NO ACTION
  ON UPDATE NO ACTION
;

ALTER TABLE INVITATION ADD CONSTRAINT DT_INVITATION_PARTY 
  FOREIGN KEY (PARTY_ID) REFERENCES PARTY
  (PARTY_ID) 
  ON DELETE NO ACTION
  ON UPDATE NO ACTION
;

ALTER TABLE INVITATION ADD CONSTRAINT FK_INVITATION_GIRL 
  FOREIGN KEY (INVITEE_ID) REFERENCES GIRL
  (GIRL_ID) 
  ON DELETE NO ACTION
  ON UPDATE NO ACTION
;