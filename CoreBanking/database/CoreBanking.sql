/*Create the BankSystemFlix DataBase
 Create tables for BankSystemFlix
    Script Date: January 11, 2020
    Developed by: Dezhi Ding
*/


/*****Create BankSystemFlix Server*******/
drop database if exists CoreBanking
;

create database if not exists CoreBanking
;

use CoreBanking
;


/********************************---------------------------------------------------**********************/


/***** 1 - Create customer Table*******/
drop table if exists customer
;

create table if not exists customer
(
	id smallint unsigned not null auto_increment,
    firstName varchar(15) not null,
    lastName varchar(15) not null,
    AddressId int not null,
    City varchar(20) not null,
    State varchar(10) not null,
    Zip varchar(8) not null,
    Phone varchar(15) not null,
    Balance tinyint not null,
    constraint pk_customer primary key clustered (id asc) 
)
; 

show columns 
from Customer
;


/*****2 - Create address Table*******/
drop table if exists address
;

create table if not exists address
(
	id smallint unsigned not null auto_increment,
    address int not null,
    city varchar(20) not null,
    state varchar(10) not null,
    zip varchar(8) not null,
    constraint pk_address primary key clustered (id asc) 
)
; 

show columns
from address
;


/*****3 - Create account Table*******/
drop table if exists account
;

create table if not exists account
(
	id smallint unsigned not null auto_increment,
		accNo varchar(10) unique not null,
    customerId smallint unsigned not null,
  balance decimal(6,2) not null, 
    name varchar(10) not null,
    status varchar(8) not null,
    constraint pk_account primary key clustered (id asc)
)
;

show columns
from account
;


/***** 4- Create transaction table *****/
drop table if exists transaction
;

create table if not exists transaction
(
  id varchar(16)  not null, 
  transDate date not null,
  accNo varchar(10) not null,
  amount decimal(6,2) not null, 
  transType varchar(8) not null,-- Cash or Transfer
  direction varchar(8) null,    -- credit or debit
  constraint pk_JobDetails primary key clustered (id asc)
)
;

/* add foreign key constraint(s)  */

/******1 - Add the FK between customer and account******/
alter table account
	add constraint fk_account_customer foreign key (customerId)
    references customer (id)
;

/*******2 - Add FK between customer and address*******/
alter table address
	add constraint fk_address_customer foreign key (id)
    references customer (id)
;
 
/*****3 - Add FK between account and transaction*****/
alter table transaction
	add constraint fk_transaction_account foreign key (accNo)
    references account (accNo)
;

