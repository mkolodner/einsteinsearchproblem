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
CREATE TABLE "Contact" (
	id INTEGER NOT NULL, 
	"FirstName" VARCHAR(255), 
	"LastName" VARCHAR(255), 
	"Birthdate" VARCHAR(255), 
	"AccountId" VARCHAR(255), 
	PRIMARY KEY (id)
);
INSERT INTO "Contact" VALUES(1,'First','Last','1851-12-22','2');
COMMIT;
