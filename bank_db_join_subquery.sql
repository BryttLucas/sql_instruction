select * from account;
select * from transaction;

-- inner join w/ alias
select * from account a
  join transaction t
    on a.ID = t.AccountID;

-- left join 
select * from account
  left join transaction
    on account.ID = transaction.AccountID;
   
select avg(balance) from account;
select * from account
 where balance < 
  (select avg(balance) from account);