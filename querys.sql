------------- 1-------------------------

insert into advisors(full_name,email) values ('khalid bdjfh','khalid@gmail.com');

------------- 2-------------------------

update customers set phone = 0645454545 where customer_id = 2;


------------- 3-------------------------


select * from customers;


------------- 4-------------------------

select full_name,email from customers;

------------- 5-------------------------


select * from accounts;

------------- 6-------------------------

select account_number from accounts;


------------- 7-------------------------


 select * from transactions;



------------- 8-------------------------

select * from accounts where balance>10000;


------------- 9-------------------------

select * from accounts where balance<=0;



------------- 10-------------------------

select * from transactions where transaction_type = 'debit';

------------- 11-------------------------

select * from transactions where transaction_type = 'credit';

------------- 12------------------------


select * from transactions where accountid = 1;

------------- 13-------------------------

select * from accounts  WHERE advisorid = 2;

------------- 14-------------------------


select * from accounts where account_type = 'Savings';

-------------15-------------------------


select * from transactions where amount >= 500;


------------- 16-------------------------


select * from transactions where amount between 100 and 1000;

------------- 17-------------------------


select * from accounts where customerid = 1;


------------- 18-------------------------

select * from accounts order by balance asc;


------------- 19-------------------------


mysql> select * from transactions order by amount desc;



------------- 20-------------------------

 select * from transactions order by amount desc limit 5;



------------- 23-------------------------




