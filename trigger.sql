select * from dbo.sales01
select * from deletelogs
delete from dbo.sales01
where productid = 5

alter trigger trg_delete_update on dbo.sales01
after delete
as 
begin
	insert into deletelogs (productid , productlog , dateandtime )
	select productid , 
	'a productid has been deleted form dbo.sales th eproductid is : ' + cast(productid as varchar ),
	getdate()
	from deleted;
	select * from deletelogs
end


create table deletelogs (productid int , productlog varchar (100) , dateandtime datetime )