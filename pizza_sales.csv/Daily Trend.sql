
select dayname(str_to_date(order_date, '%m/%d/%Y')) as order_day, count(distinct order_id) as total_orders
from pizza_sales_data
group by dayname(str_to_date(order_date, '%m/%d/%Y'))
order by total_orders desc;


