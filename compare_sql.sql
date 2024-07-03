select MAX("TransactionID")
from public.banking_transaction
where exists (
	select "TransactionID" 
	from public.banking_transaction 
	where "CustGender" like 'M'
);

select MAX("TransactionID")
from public.banking_transaction
where "TransactionID" in (
	select "TransactionID" 
	from public.banking_transaction 
	where "CustGender" like 'F'
);

select "TransactionID"
from public.banking_transaction
where "TransactionID"  > all (
	select "TransactionID" 
	from public.banking_transaction 
	where "CustGender" like 'M'
);

select "TransactionID" 
from public.banking_transaction
where "TransactionID"  > all (
	select MAX("TransactionID")
	from public.banking_transaction 
	where "CustGender" like 'M'
);

select "TransactionID" 
from public.banking_transaction
where "TransactionID"  > any (
	select MAX("TransactionID") 
	from public.banking_transaction 
	where "CustGender" like 'M'
);


WITH highest_female_transactionid as (select MAX("TransactionID") as "TransactionID" 
									  from public.banking_transaction
									  where "CustGender" like 'F'
									 )
select * from highest_female_transactionid									 
