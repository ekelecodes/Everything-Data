select pizza_category, cast(sum(total_price) as decimal(10,2)) as pizza_category_sales, 
cast(sum(total_price) * 100 /  (select sum(total_price) from pizza_sales_data) as decimal(10,2)) as percent_by_categoty
from pizza_sales_data
group by pizza_category;