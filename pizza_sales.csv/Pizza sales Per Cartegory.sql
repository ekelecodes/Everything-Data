select pizza_category,cast(sum(total_price) as decimal (10,2)) as total_category_price
from pizza_sales2
group by pizza_category
order by total_category_price;