-- create and select the database
drop database if exists prs;
create database prs;
use prs;

-- create table user
CREATE TABLE user (
    ID              INT              PRIMARY KEY AUTO_INCREMENT,
    UserName        VARCHAR(20)		 NOT NULL,
    Password 		VARCHAR(10)		 NOT NULL,
    FirstName	    VARCHAR(20) 	 NOT NULL,
    LastName 		VARCHAR(20)		 NOT NULL,
    PhoneNumber     VARCHAR(12)      NOT NULL,
    Email           VARCHAR(75)      NOT NULL,
    IsReviewer       TINYINT(1)      NOT NULL,
    IsAdmin          TINYINT(1)      NOT NULL,
    CONSTRAINT uname UNIQUE (Username)
);


 -- create table vendor
CREATE TABLE vendor (
    ID           INT 	 		PRIMARY KEY AUTO_INCREMENT,
    Code 		VARCHAR(10)		 NOT NULL,
    Name 		VARCHAR(10) 	 NOT NULL,
    Address 	VARCHAR(255)     NOT NULL,
    City 		VARCHAR(255) 	 NOT NULL,
    State	    VARCHAR(2)       NOT NULL,
    Zip         VARCHAR(5)       NOT NULL,
    PhoneNumber VARCHAR(12)      NOT NULL,
    Email       VARCHAR(100)     NOT NULL,
    CONSTRAINT vcode UNIQUE (Code)
);

   
   
  
    -- create table purchaserequest
CREATE TABLE purchasereQuest (
    ID 				INT           PRIMARY KEY AUTO_INCREMENT,
    UserId 			INT              NOT NULL,
    Description    VARCHAR(100)      NOT NULL,
    Justification  VARCHAR(255)      NOT NULL,
    DateNeeded		 DATE 		     NOT NULL,
    DeliveryMode    VARCHAR(25)      NOT NULL,
    Status          VARCHAR(20)      NOT NULL,
    Total         DECIMAL(10 , 2)    NOT NULL,
    SubmittedDate   DATETIME         NOT NULL,
    ReasonForRejection VARCHAR(100),
    FOREIGN KEY (UserID) 
		REFERENCES user (ID)
);
     
 -- create table product
CREATE TABLE product (
    ID 				INT 			PRIMARY KEY AUTO_INCREMENT,
    VendorID 		INT 			 NOT NULL,
    PartNumber 		VARCHAR(50)	     NOT NULL,
    Name 			VARCHAR(150)     NOT NULL,
    Price         DECIMAL(10 , 2 )   NOT NULL,
    Unit			 VARCHAR(255),
    PhotoPath		 VARCHAR(255),
    FOREIGN KEY (VendorID)
        REFERENCES vendor (ID),
    CONSTRAINT vendor_part UNIQUE (VendorID , PartNumber)
);

	 
  -- create table purchaserquestlineitem
create table purchaserequestlineitem  (
  ID                 int        primary key auto_increment,
  PurchaseRequestID  int		not null,
  ProductID		     int		not null,
  Quantity			 int		not null,
 foreign key Product(ID) references product(ID),
 foreign key PurchaseRequset(ID) references purchaseRequest(ID),
 constraint req_pdt unique (PurchaseRequestID, ProductID)
);