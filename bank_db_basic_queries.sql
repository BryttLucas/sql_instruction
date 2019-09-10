select * from account;
select * from transaction;

select sum(amount) from transaction;

select count(*) from transaction
  where TxnType = 'Deposit';
  
select avg(balance) from account;
select min(balance) from account;

select concat('Hello, ','World!');

select * from account;
select AccountHolder, concat('$', Format(Balance,2)) as Balance
  from account
  order by AccountHolder desc;
  
select txntype, sum(amount)
  from transaction
 group by txntype;
  
  
  
  