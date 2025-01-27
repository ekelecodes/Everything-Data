select pizza_name,
cast(sum(total_price) as decimal (10,2)) as total_price_sold
from pizza_sales_data
group by pizza_name
order by total_price_sold asc
limit 5;