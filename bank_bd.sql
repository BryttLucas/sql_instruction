drop database if exists bank_db;
create database bank_db;
use bank_db;

create table account (
	id 				 int 		not null primary key auto_increment,
	account_holders  varchar(50) 	not null,
	balance 	     int 			not null default 0,
	fees 	       	int			    not null default 1
);

Insert into account (account_holders , balance , fees)
values ('karlee Abrams','8888.00','250.00');
Insert into account (account_holders , balance , fees)
values ('Brytt Lucas','5444.00','175.00');
Insert into account (account_holders , balance , fees)
values ('Joelle fulchers','3333.00','88.00');
Insert into account (account_holders , balance , fees)
values ('justin Snyder','3322.00','88.00');




create table Transaction (
	id 			     	int 		not null primary key auto_increment,
	amount		        int 		not null,
	txn_type			varchar(25) 		not null,
	account_id 	        int     	not null,
    foreign key  (account_id) references account(id) 
    
);



Insert into Transaction (amount, txn_type, account_id)
values ('500.00','deposit','3');
Insert into Transaction (amount, txn_type, account_id)
values ('-200.00','Withdrawal','4');
Insert into Transaction (amount, txn_type, account_id)
values ('200.00','deposit','4');
Insert into Transaction (amount, txn_type, account_id)
values ('248.00','deposit','1');

