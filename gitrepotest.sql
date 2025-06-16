select * from dbo.sales

create view view_revenue_and_quantity as 
select sum(Quantity) as totalquantity , 
sum(revenue) as totalrevenue 
from dbo.sales 
where storeid between  10 and 100

select * from view_revenue_and_quantity