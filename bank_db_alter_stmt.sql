-- alter table add column after ID
ALTER TABLE account
ADD COLUMN  BirthDate Date
AFTER       ID;

select * from account;