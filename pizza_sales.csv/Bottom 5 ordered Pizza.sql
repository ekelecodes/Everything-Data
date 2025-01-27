select pizza_name, count(distinct order_id) as order_placed
from pizza_sales_data
group by pizza_name
order by order_placed asc
limit 5;