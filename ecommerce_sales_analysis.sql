--- MNG kargo şirketi ile gönderilen tüm satış kayıtları;

select * from Fact_Sales where Cargo_Company = 'MNG';


---Kargo şirketlerinin toplam sipariş adedi;

select Cargo_Company, COUNT(Order_ID) as total_order from Fact_Sales group by Cargo_Company;


---Toplam kazanç (ciro);

select SUM( Quantity * Unit_Price ) as total_revenue from Fact_Sales;


---Ülke bazında ciro;

select Country, SUM( Quantity * Unit_Price ) as total_revenue from Dim_Customers inner join Fact_Sales on Dim_Customers.Customer_ID = Fact_Sales.Customer_ID group by Country;


---Mobilya kategorisindeki ve iade edilmeyen satışların net karı;

select SUM(Quantity * (Unit_Price - Unit_Cost)) as total_net_profit from Fact_Sales inner join Dim_Product on Fact_Sales.Product_ID = Dim_Product.Product_ID where Category = 'Furniture' and  Return_Status = 'Not Returned'; 


---Müşteri adı, müşteriden gelen toplam cironun büyükten küçüğe sıralanması;

select Customer_Name, SUM( Quantity * Unit_Price) as total_revenue from Dim_Customers inner join Fact_Sales on Dim_Customers.Customer_ID = Fact_Sales.Customer_ID group by Customer_Name order by total_revenue DESC;


---Kategori ve ülkeye göre yapılan toplam ciro;

select Category, Country, SUM( Quantity * Unit_Price) as total_revenue from Fact_Sales inner join Dim_Product on Fact_Sales.Product_ID = Dim_Product.Product_ID inner join Dim_Customers on Fact_Sales.CustomerID = Dim_Customer.CustomerID group by Category, Country;






