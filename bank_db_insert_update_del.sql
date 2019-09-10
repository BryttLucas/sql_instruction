insert Account 
	(ID, accountHolder, balance, fees) 
Values (6,'Michael Kirkendall', 1888, 250.00);

select * from account;

insert into account (AccountHolder)
  values ('Fred Wills'),
		 ('Anthony Price');
         
update account
   set balance = 9999.99
 where id = 7;
 
 insert into account(AccountHolder)
   values ('Test');

 insert into account
   values (99,'Dummy', 0, 0);
   
delete from account
 where id > 9;
 
 select * from account;
update account
   set balance = (21)
 where id = 9;


