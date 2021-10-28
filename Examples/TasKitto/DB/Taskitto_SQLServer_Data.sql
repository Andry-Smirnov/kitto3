-- INSERT KITTO_USERS
INSERT INTO KITTO_USERS (USER_NAME, PASSWORD_HASH, IS_ACTIVE, FIRST_NAME, LAST_NAME, EMAIL_ADDRESS, MUST_CHANGE_PASSWORD) VALUES ('guest', 'guest', '1', 'Guest', 'User', 'guest@domain.com', '0');
INSERT INTO KITTO_USERS (USER_NAME, PASSWORD_HASH, IS_ACTIVE, FIRST_NAME, LAST_NAME, EMAIL_ADDRESS, MUST_CHANGE_PASSWORD) VALUES ('admin', '#Nic0tita!', '1', 'Carlo', 'Barazzetta', 'admin@domain.com', '0');
INSERT INTO KITTO_USERS (USER_NAME, PASSWORD_HASH, IS_ACTIVE, FIRST_NAME, LAST_NAME, EMAIL_ADDRESS, MUST_CHANGE_PASSWORD) VALUES ('one', 'one', '1', 'one', 'one', 'one@domain.com', '0');
INSERT INTO KITTO_USERS (USER_NAME, PASSWORD_HASH, IS_ACTIVE, FIRST_NAME, LAST_NAME, EMAIL_ADDRESS, MUST_CHANGE_PASSWORD) VALUES ('two', 'two', '1', 'two', 'two', 'two@domain.com', '0');
INSERT INTO KITTO_USERS (USER_NAME, PASSWORD_HASH, IS_ACTIVE, FIRST_NAME, LAST_NAME, EMAIL_ADDRESS, MUST_CHANGE_PASSWORD) VALUES ('three', 'three', '1', 'three', 'three', 'three@domain.com', '0');

-- INSERT CUSTOMER
INSERT INTO CUSTOMER (CUSTOMER_ID, CUSTOMER_NAME, ADDRESS, CITY, PHONE, EMAIL, STATUS) VALUES ('A5A9EAEF62C64A47A2A78BD3CF92DF68', 'Great Minds Inc.', 'via Francesco Sforza, 1', 'MILANO', '02-81296343', 's.verdi@greatminds.it', 'Active');
INSERT INTO CUSTOMER (CUSTOMER_ID, CUSTOMER_NAME, ADDRESS, CITY, PHONE, EMAIL, STATUS) VALUES ('35692DBDC85A97419A29EB519343C134', 'Conferest', 'via Padana Superiore', 'VIMODRONE', '02-23473618', 'r.piccoli@conferest-mi.it', 'Active');
INSERT INTO CUSTOMER (CUSTOMER_ID, CUSTOMER_NAME, ADDRESS, CITY, PHONE, EMAIL, STATUS) VALUES ('3D80CA17B99C1C488A17B75ED1EB9715', 'Digital Power', 'via Marsiglia 13', 'ROMA', NULL, NULL, 'Active');
INSERT INTO CUSTOMER (CUSTOMER_ID, CUSTOMER_NAME, ADDRESS, CITY, PHONE, EMAIL, STATUS) VALUES ('61DC25E82333F748B9FB0D217F8455A6', 'Felonics', NULL, NULL, NULL, NULL, 'Inactive');

-- INSERT PROJECT
INSERT INTO PROJECT (PROJECT_ID, PROJECT_NAME, CUSTOMER_ID, STATUS) VALUES ('0485894F16DE5546968605237F282FD2', 'DM23 - ANF', '3D80CA17B99C1C488A17B75ED1EB9715', 'Open');
INSERT INTO PROJECT (PROJECT_ID, PROJECT_NAME, CUSTOMER_ID, STATUS) VALUES ('78BC0071A2F1D842AD7D61C2C94C4316', 'Conferest Kide2', '35692DBDC85A97419A29EB519343C134', 'Offered');
INSERT INTO PROJECT (PROJECT_ID, PROJECT_NAME, CUSTOMER_ID, STATUS) VALUES ('5EA3249B96FEF84B808523E691E71CBE', 'Conferest Kitto2', '35692DBDC85A97419A29EB519343C134', 'Stopped');

-- INSERT PHASE
INSERT INTO PHASE (PHASE_ID, PHASE_NAME, PROJECT_ID, START_DATE, END_DATE, STATUS) VALUES ('46AA4F42DCBF404BA3925A82AB53AA53', 'Initial Development', '0485894F16DE5546968605237F282FD2', '01.01.2011', '31.08.2011', 'Finished');
INSERT INTO PHASE (PHASE_ID, PHASE_NAME, PROJECT_ID, START_DATE, END_DATE, STATUS) VALUES ('35AB2C9DC0B7BA46B102E53C03B7441C', 'Testing', '0485894F16DE5546968605237F282FD2', '01.09.2011', '15.09.2011', 'Finished');

-- INSERT OPERATOR_ROLE
INSERT INTO OPERATOR_ROLE (ROLE_ID, ROLE_NAME, FEE) VALUES ('AA18E732F5A5F441B469AFCB6977D18D', 'SENIOR_SYS', '672.000000');
INSERT INTO OPERATOR_ROLE (ROLE_ID, ROLE_NAME, FEE) VALUES ('8B88A7C45A11944E96A7FBAE4BF644B8', 'JUNIOR_SYS', '504.000000');
INSERT INTO OPERATOR_ROLE (ROLE_ID, ROLE_NAME, FEE) VALUES ('D8B60272460E554386BA0CB60EA64837', 'ANALYST', '672.000000');
INSERT INTO OPERATOR_ROLE (ROLE_ID, ROLE_NAME, FEE) VALUES ('95BC250ECE7AF0498FE8D27898C4CE43', 'ASSISTANT', '336.000000');
INSERT INTO OPERATOR_ROLE (ROLE_ID, ROLE_NAME, FEE) VALUES ('BC0D2B0D3D647548A72D1F8421D9E1AF', 'MANAGER', '840.000000');
INSERT INTO OPERATOR_ROLE (ROLE_ID, ROLE_NAME, FEE) VALUES ('E6055D691EE8F54E9820B339CB507423', 'DEVELOPER', '504.000000');

-- INSERT EMPLOYEE
INSERT INTO EMPLOYEE (EMPLOYEE_ID, EMPLOYEE_NAME, EMPLOYEE_TYPE) VALUES ('535990AD183B48498D1236960E8EA8C9', 'Sandro Pastelli', 'SYSTEM');
INSERT INTO EMPLOYEE (EMPLOYEE_ID, EMPLOYEE_NAME, EMPLOYEE_TYPE) VALUES ('B363A8D4C394F649AF917F898A34DF0F', 'Marcello Marchi', 'SYSTEM');
INSERT INTO EMPLOYEE (EMPLOYEE_ID, EMPLOYEE_NAME, EMPLOYEE_TYPE) VALUES ('884D917FD19ADA438CC0A682B6413381', 'Linda Fossili', 'ACCT');
INSERT INTO EMPLOYEE (EMPLOYEE_ID, EMPLOYEE_NAME, EMPLOYEE_TYPE) VALUES ('9FFCEC9BA7A6C2488C3F744F9A847CB6', 'Liliana Pratangelo', 'PROG');
INSERT INTO EMPLOYEE (EMPLOYEE_ID, EMPLOYEE_NAME, EMPLOYEE_TYPE) VALUES ('54746ABD64E6FC46883CA29980B155F1', 'Massimo Casertani', 'PROJ_MGR');
INSERT INTO EMPLOYEE (EMPLOYEE_ID, EMPLOYEE_NAME, EMPLOYEE_TYPE) VALUES ('90CC74AD9E94EC4999F07CD50FC7D906', 'Andrea Melli', 'PROG');
INSERT INTO EMPLOYEE (EMPLOYEE_ID, EMPLOYEE_NAME, EMPLOYEE_TYPE) VALUES ('1E63721EC7BF2F47A3B052A7A34EB7D1', 'Umberto Zoppi', 'PROJ_MGR');
INSERT INTO EMPLOYEE (EMPLOYEE_ID, EMPLOYEE_NAME, EMPLOYEE_TYPE) VALUES ('0FEE5E10F6B5F14C98488F2120007E76', 'Fedele Villa', 'AN_PROG');
INSERT INTO EMPLOYEE (EMPLOYEE_ID, EMPLOYEE_NAME, EMPLOYEE_TYPE) VALUES ('F7FA21B1E5E2EB4E8F0F7F793AAE050B', 'Carlo Barazzetta', 'SYSTEM');

-- INSERT ACTIVITY_TYPE
INSERT INTO ACTIVITY_TYPE (TYPE_ID, TYPE_NAME) VALUES ('B73D65C41CB6F541BDF3CE654D2DAE77', 'Development');
INSERT INTO ACTIVITY_TYPE (TYPE_ID, TYPE_NAME) VALUES ('6463C97B9E4BCA42BE490AD0E7498CBB', 'Analysis');
INSERT INTO ACTIVITY_TYPE (TYPE_ID, TYPE_NAME) VALUES ('915339129D7D774FA807DC2552A600D8', 'Maintenance');
INSERT INTO ACTIVITY_TYPE (TYPE_ID, TYPE_NAME) VALUES ('F2189DA492AB3342A4038E5E5AEA98B1', 'Support');
INSERT INTO ACTIVITY_TYPE (TYPE_ID, TYPE_NAME) VALUES ('BB75104F6081A44CAAF2D45D99B6666C', 'Training');
INSERT INTO ACTIVITY_TYPE (TYPE_ID, TYPE_NAME) VALUES ('00806024F7E1EC46BDEDC60C6767905C', 'Installation');
INSERT INTO ACTIVITY_TYPE (TYPE_ID, TYPE_NAME) VALUES ('0114D30CFEA81C488F83C03151158C44', 'Testing');

-- INSERT ACTIVITY
INSERT INTO ACTIVITY (ACTIVITY_ID, DESCRIPTION, PHASE_ID, EMPLOYEE_ID, ROLE_ID, TYPE_ID, ACTIVITY_DATE, START_TIME, END_TIME, STATUS) VALUES ('DE7661C4A7D0804EA7B156FEA0BB6009', 'Phone support', '46AA4F42DCBF404BA3925A82AB53AA53', '1E63721EC7BF2F47A3B052A7A34EB7D1', 'D8B60272460E554386BA0CB60EA64837', 'F2189DA492AB3342A4038E5E5AEA98B1', '22.06.2016', '09:00:00.000', '17:30:00.000', 'Open');
INSERT INTO ACTIVITY (ACTIVITY_ID, DESCRIPTION, PHASE_ID, EMPLOYEE_ID, ROLE_ID, TYPE_ID, ACTIVITY_DATE, START_TIME, END_TIME, STATUS) VALUES ('C9756E662C7B03448030AE7B3C036EF7', 'Setup', '46AA4F42DCBF404BA3925A82AB53AA53', '1E63721EC7BF2F47A3B052A7A34EB7D1', 'BC0D2B0D3D647548A72D1F8421D9E1AF', '00806024F7E1EC46BDEDC60C6767905C', '09.04.2017', '16:00:00.000', '19:00:00.000', 'Done');
INSERT INTO ACTIVITY (ACTIVITY_ID, DESCRIPTION, PHASE_ID, EMPLOYEE_ID, ROLE_ID, TYPE_ID, ACTIVITY_DATE, START_TIME, END_TIME, STATUS) VALUES ('3B1ED050F4F52341825E1E2D44C62ECB', 'Project analysis', '46AA4F42DCBF404BA3925A82AB53AA53', '1E63721EC7BF2F47A3B052A7A34EB7D1', 'BC0D2B0D3D647548A72D1F8421D9E1AF', '6463C97B9E4BCA42BE490AD0E7498CBB', '06.04.2017', '09:00:00.000', '13:00:00.000', 'Done');
INSERT INTO ACTIVITY (ACTIVITY_ID, DESCRIPTION, PHASE_ID, EMPLOYEE_ID, ROLE_ID, TYPE_ID, ACTIVITY_DATE, START_TIME, END_TIME, STATUS) VALUES ('EB7773CC3F386649A4F0D49C71481BB2', 'Remote PC Configuration', '46AA4F42DCBF404BA3925A82AB53AA53', '535990AD183B48498D1236960E8EA8C9', 'AA18E732F5A5F441B469AFCB6977D18D', '00806024F7E1EC46BDEDC60C6767905C', '31.03.2017', '07:10:00.000', '11:35:00.000', 'Inserted');
INSERT INTO ACTIVITY (ACTIVITY_ID, DESCRIPTION, PHASE_ID, EMPLOYEE_ID, ROLE_ID, TYPE_ID, ACTIVITY_DATE, START_TIME, END_TIME, STATUS) VALUES ('804FF607701716478F3F3F20AFBEC102', 'RAM Order', '46AA4F42DCBF404BA3925A82AB53AA53', '535990AD183B48498D1236960E8EA8C9', 'AA18E732F5A5F441B469AFCB6977D18D', 'F2189DA492AB3342A4038E5E5AEA98B1', '07.04.2017', '11:40:00.000', '12:10:00.000', 'Inserted');
INSERT INTO ACTIVITY (ACTIVITY_ID, DESCRIPTION, PHASE_ID, EMPLOYEE_ID, ROLE_ID, TYPE_ID, ACTIVITY_DATE, START_TIME, END_TIME, STATUS) VALUES ('0CADBD7A3439A64882B64FD7CB723F76', 'Repository creation', '46AA4F42DCBF404BA3925A82AB53AA53', '535990AD183B48498D1236960E8EA8C9', 'E6055D691EE8F54E9820B339CB507423', 'B73D65C41CB6F541BDF3CE654D2DAE77', '25.04.2017', '02:30:00.000', '15:15:00.000', 'NotBillable');
INSERT INTO ACTIVITY (ACTIVITY_ID, DESCRIPTION, PHASE_ID, EMPLOYEE_ID, ROLE_ID, TYPE_ID, ACTIVITY_DATE, START_TIME, END_TIME, STATUS) VALUES ('F7A18DE974D8C443AC154D60BCD8819D', 'Integration Test', '35AB2C9DC0B7BA46B102E53C03B7441C', '884D917FD19ADA438CC0A682B6413381', '8B88A7C45A11944E96A7FBAE4BF644B8', '915339129D7D774FA807DC2552A600D8', '25.04.2017', '14:45:00.000', '19:30:00.000', 'NotBillable');
INSERT INTO ACTIVITY (ACTIVITY_ID, DESCRIPTION, PHASE_ID, EMPLOYEE_ID, ROLE_ID, TYPE_ID, ACTIVITY_DATE, START_TIME, END_TIME, STATUS) VALUES ('595693FE72BBDB4396E2A0148FB20A5D', 'Setup 2', '46AA4F42DCBF404BA3925A82AB53AA53', '1E63721EC7BF2F47A3B052A7A34EB7D1', 'BC0D2B0D3D647548A72D1F8421D9E1AF', '00806024F7E1EC46BDEDC60C6767905C', '10.04.2017', '16:00:00.000', '19:00:00.000', 'Done');
INSERT INTO ACTIVITY (ACTIVITY_ID, DESCRIPTION, PHASE_ID, EMPLOYEE_ID, ROLE_ID, TYPE_ID, ACTIVITY_DATE, START_TIME, END_TIME, STATUS) VALUES ('D1CEDFC64822B347AB1EAEEF38474376', 'Deployment Test', '35AB2C9DC0B7BA46B102E53C03B7441C', '9FFCEC9BA7A6C2488C3F744F9A847CB6', 'BC0D2B0D3D647548A72D1F8421D9E1AF', '0114D30CFEA81C488F83C03151158C44', '03.05.2017', '03:00:00.000', '03:30:00.000', 'Inserted');
INSERT INTO ACTIVITY (ACTIVITY_ID, DESCRIPTION, PHASE_ID, EMPLOYEE_ID, ROLE_ID, TYPE_ID, ACTIVITY_DATE, START_TIME, END_TIME, STATUS) VALUES ('ED7661C4A7D0804EA7B156FEA0BB6009', 'Phone support', '46AA4F42DCBF404BA3925A82AB53AA53', '1E63721EC7BF2F47A3B052A7A34EB7D1', 'D8B60272460E554386BA0CB60EA64837', 'BB75104F6081A44CAAF2D45D99B6666C', '23.04.2016', '09:00:00.000', '17:30:00.000', 'Open');
INSERT INTO ACTIVITY (ACTIVITY_ID, DESCRIPTION, PHASE_ID, EMPLOYEE_ID, ROLE_ID, TYPE_ID, ACTIVITY_DATE, START_TIME, END_TIME, STATUS) VALUES ('9C756E662C7B03448030AE7B3C036EF7', 'Setup', '46AA4F42DCBF404BA3925A82AB53AA53', '1E63721EC7BF2F47A3B052A7A34EB7D1', 'BC0D2B0D3D647548A72D1F8421D9E1AF', '00806024F7E1EC46BDEDC60C6767905C', '08.02.2017', '16:00:00.000', '19:00:00.000', 'Done');
INSERT INTO ACTIVITY (ACTIVITY_ID, DESCRIPTION, PHASE_ID, EMPLOYEE_ID, ROLE_ID, TYPE_ID, ACTIVITY_DATE, START_TIME, END_TIME, STATUS) VALUES ('B31ED050F4F52341825E1E2D44C62ECB', 'Project analysis', '46AA4F42DCBF404BA3925A82AB53AA53', '1E63721EC7BF2F47A3B052A7A34EB7D1', 'BC0D2B0D3D647548A72D1F8421D9E1AF', '6463C97B9E4BCA42BE490AD0E7498CBB', '05.02.2017', '09:00:00.000', '13:00:00.000', 'Done');
INSERT INTO ACTIVITY (ACTIVITY_ID, DESCRIPTION, PHASE_ID, EMPLOYEE_ID, ROLE_ID, TYPE_ID, ACTIVITY_DATE, START_TIME, END_TIME, STATUS) VALUES ('BE7773CC3F386649A4F0D49C71481BB2', 'Remote PC Configuration', '46AA4F42DCBF404BA3925A82AB53AA53', '535990AD183B48498D1236960E8EA8C9', 'AA18E732F5A5F441B469AFCB6977D18D', '00806024F7E1EC46BDEDC60C6767905C', '30.01.2017', '07:10:00.000', '11:35:00.000', 'Inserted');
INSERT INTO ACTIVITY (ACTIVITY_ID, DESCRIPTION, PHASE_ID, EMPLOYEE_ID, ROLE_ID, TYPE_ID, ACTIVITY_DATE, START_TIME, END_TIME, STATUS) VALUES ('084FF607701716478F3F3F20AFBEC102', 'RAM Order', '46AA4F42DCBF404BA3925A82AB53AA53', '535990AD183B48498D1236960E8EA8C9', 'AA18E732F5A5F441B469AFCB6977D18D', 'F2189DA492AB3342A4038E5E5AEA98B1', '06.02.2017', '11:40:00.000', '12:10:00.000', 'Inserted');
INSERT INTO ACTIVITY (ACTIVITY_ID, DESCRIPTION, PHASE_ID, EMPLOYEE_ID, ROLE_ID, TYPE_ID, ACTIVITY_DATE, START_TIME, END_TIME, STATUS) VALUES ('C0ADBD7A3439A64882B64FD7CB723F76', 'Framework bootstrapping', '46AA4F42DCBF404BA3925A82AB53AA53', '535990AD183B48498D1236960E8EA8C9', 'E6055D691EE8F54E9820B339CB507423', 'B73D65C41CB6F541BDF3CE654D2DAE77', '24.02.2017', '02:30:00.000', '15:15:00.000', 'NotBillable');
INSERT INTO ACTIVITY (ACTIVITY_ID, DESCRIPTION, PHASE_ID, EMPLOYEE_ID, ROLE_ID, TYPE_ID, ACTIVITY_DATE, START_TIME, END_TIME, STATUS) VALUES ('7FA18DE974D8C443AC154D60BCD8819D', 'Unit testing development', '35AB2C9DC0B7BA46B102E53C03B7441C', '884D917FD19ADA438CC0A682B6413381', '8B88A7C45A11944E96A7FBAE4BF644B8', '0114D30CFEA81C488F83C03151158C44', '24.02.2017', '14:45:00.000', '19:30:00.000', 'NotBillable');
INSERT INTO ACTIVITY (ACTIVITY_ID, DESCRIPTION, PHASE_ID, EMPLOYEE_ID, ROLE_ID, TYPE_ID, ACTIVITY_DATE, START_TIME, END_TIME, STATUS) VALUES ('955693FE72BBDB4396E2A0148FB20A5D', 'Setup 2', '46AA4F42DCBF404BA3925A82AB53AA53', '1E63721EC7BF2F47A3B052A7A34EB7D1', 'BC0D2B0D3D647548A72D1F8421D9E1AF', '00806024F7E1EC46BDEDC60C6767905C', '09.02.2017', '16:00:00.000', '19:00:00.000', 'Done');
INSERT INTO ACTIVITY (ACTIVITY_ID, DESCRIPTION, PHASE_ID, EMPLOYEE_ID, ROLE_ID, TYPE_ID, ACTIVITY_DATE, START_TIME, END_TIME, STATUS) VALUES ('1DCEDFC64822B347AB1EAEEF38474376', 'User acceptance', '35AB2C9DC0B7BA46B102E53C03B7441C', '0FEE5E10F6B5F14C98488F2120007E76', 'E6055D691EE8F54E9820B339CB507423', '00806024F7E1EC46BDEDC60C6767905C', '04.03.2017', '03:00:00.000', '03:30:00.000', 'Inserted');
INSERT INTO ACTIVITY (ACTIVITY_ID, DESCRIPTION, PHASE_ID, EMPLOYEE_ID, ROLE_ID, TYPE_ID, ACTIVITY_DATE, START_TIME, END_TIME, STATUS) VALUES ('8CFFA967772B514DBA2577AE52423B4A', 'sviluppo', '35AB2C9DC0B7BA46B102E53C03B7441C', '535990AD183B48498D1236960E8EA8C9', '8B88A7C45A11944E96A7FBAE4BF644B8', 'B73D65C41CB6F541BDF3CE654D2DAE77', '27.06.2018', '09:00:00.000', '18:00:00.000', 'Inserted');
INSERT INTO ACTIVITY (ACTIVITY_ID, DESCRIPTION, PHASE_ID, EMPLOYEE_ID, ROLE_ID, TYPE_ID, ACTIVITY_DATE, START_TIME, END_TIME, STATUS) VALUES ('6C23C7CE2C65AE45B96EF8894CE1F8B1', 'sviluppo', '35AB2C9DC0B7BA46B102E53C03B7441C', '535990AD183B48498D1236960E8EA8C9', '95BC250ECE7AF0498FE8D27898C4CE43', 'B73D65C41CB6F541BDF3CE654D2DAE77', '27.06.2018', '09:00:00.000', '18:00:00.000', 'Inserted');
