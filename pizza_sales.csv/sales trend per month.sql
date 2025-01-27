select monthname(str_to_date(order_date, '%m/%d/%Y')) as month_order, count(distinct order_id) as total_orders
from pizza_sales_data
group by monthname(str_to_date(order_date, '%m/%d/%Y'))
order by total_orders desc;
