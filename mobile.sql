select * from mobile.synthetic_mobile_sales_2025 ;

# Total sales for each country 

select s.country , sum(Price_USD) AS Total_sales 
from mobile.synthetic_mobile_sales_2025 as s 
group by s.Country 
order by Total_sales desc ;

# The best selling braand 

select Brand , count(Brand) as Quantity
   from mobile.synthetic_mobile_sales_2025 
group by Brand 
order by Quantity desc ;

# Top five best selling models 

select Model , count(Model) as quantity_model 
from mobile.synthetic_mobile_sales_2025 
group by Model 
order by quantity_model desc limit 5 ;

# Average price per brand 

select Brand , avg(Price_USD) as avg_price 
from mobile.synthetic_mobile_sales_2025 
group by Brand 
order by avg_price desc ;

