select pizza_name,
cast(sum(total_price) as decimal (10,2)) as total_price_sold
from pizza_sales2
group by pizza_name
order by total_price_sold desc
limit 5;