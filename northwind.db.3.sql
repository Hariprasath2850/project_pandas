select * from Customers
order by customerid 

select region , count(customerid) as NumCustomers
from Customers
GROUP by region 
order by NumCustomers DESC

select orderid ,sum(quantity) as QtyProducts
from 'order Details'
GROUP by orderid


select orderid ,sum(quantity) as qtyproducts
from 'order Details'
GROUP by orderid
having sum(quantity) >=100



select orderid sum(quantity) as qtyproducts
from 
(seleect orderid, sum(quantity) as qtyproducts
from 'order Details'
group by orderid) as qtytable
where qtyproducts >=100


### which customer had ordered higher value or Products
select * 


select *
from Orders
where orderid==10404


select * 
from 'Order Details'
order by orderid
having sum(quantity) >=100



# which supplier Invoices


select supplierid , count(productid) as total_products
from Products
GROUP by supplierid 
order by total_products DESC


select  Orders.orderid,orders.customerid,'Order Details'.productid
from "Order Details"
inner join Orders on "Order Details".orderid= Orders.orderid