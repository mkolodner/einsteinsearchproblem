BEGIN TRANSACTION;
CREATE TABLE "Account" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"NewNumberField__c" VARCHAR(255), 
	"NewfieldTxt255__c" VARCHAR(255), 
	"NewfieldTxt40__c" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Account" VALUES(1,'Sample Account for Entitlements','','','');
INSERT INTO "Account" VALUES(2,'AccountName','646548818484.0','a lot of text is in this field, not nearly 255 chars, but at least 90 or 100','This is a shorter field. It only goes th');
CREATE TABLE "Campaign" (
	id INTEGER NOT NULL, 
	"IsActive" VARCHAR(255), 
	"Name" VARCHAR(255), 
	"Type" VARCHAR(255), 
	"Status" VARCHAR(255), 
	"StartDate" VARCHAR(255), 
	"EndDate" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"ParentId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Campaign" VALUES(1,'True','One Campaign','Conference','Planned','1899-12-09','1899-12-10','a description of this campaign','');
CREATE TABLE "Case" (
	id INTEGER NOT NULL, 
	"IsEscalated" VARCHAR(255), 
	"Reason" VARCHAR(255), 
	"Origin" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"Status" VARCHAR(255), 
	"Subject" VARCHAR(255), 
	"Type" VARCHAR(255), 
	"Priority" VARCHAR(255), 
	"AccountId" VARCHAR(255), 
	"ContactId" VARCHAR(255), 
	"ParentId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Case" VALUES(1,'False','','Web','CaseDescription','New','CaseSubject','','Medium','','','');
CREATE TABLE "CaseComment" (
	id INTEGER NOT NULL, 
	"CommentBody" VARCHAR(255), 
	"ParentId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "CaseComment" VALUES(1,'CaseCommentBody','1');
CREATE TABLE "Contact" (
	id INTEGER NOT NULL, 
	"FirstName" VARCHAR(255), 
	"LastName" VARCHAR(255), 
	"Birthdate" VARCHAR(255), 
	"AccountId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Contact" VALUES(1,'First','Last','1851-12-22','2');
CREATE TABLE "Opportunity" (
	id INTEGER NOT NULL, 
	"Name" VARCHAR(255), 
	"CloseDate" VARCHAR(255), 
	"Amount" VARCHAR(255), 
	"StageName" VARCHAR(255), 
	"AccountId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Opportunity" VALUES(1,'An Oppty on AccountName','1900-01-01','50.0','Closed Won','2');
CREATE TABLE "Task" (
	id INTEGER NOT NULL, 
	"ActivityDate" VARCHAR(255), 
	"Description" VARCHAR(255), 
	"Status" VARCHAR(255), 
	"Subject" VARCHAR(255), 
	"WhoId" VARCHAR(255), 
	"WhatId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Task" VALUES(1,'2020-06-19','','Not Started','ThisIsTheSubject','1','1');
COMMIT;