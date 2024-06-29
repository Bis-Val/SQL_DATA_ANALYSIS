SELECT * FROM accounts;
Select * from region;
select * from sales_reps;
--How many account does parch and posey have?
Select count(*) from accounts;

Select * from orders;
Select * from web_events; 
-- how much has parch and posey made overall
select sum(total_amt_usd) total_amt from orders;
Select sum(standard_amt_usd) std_amt_usd,
	sum(gloss_amt_usd) gloss_amt_usd
From orders;
--how much per unit
Select standard_amt_usd/standard_qty unit_price
from orders limit 50;

select min(occurred_at) earliest_order from orders;
--when did the most recent web_event occur?
Select max(occurred_at) latest_event from web_events;


select account_id, min(occurred_at) earliest_order 
	from orders group by 1 order by earliest_order;

select name,account_id, min(occurred_at) earliest_order 
	from orders as ord JOIN accounts as acc
ON ord.account_id = acc.id
	group by name, account_id
	order by earliest_order;
