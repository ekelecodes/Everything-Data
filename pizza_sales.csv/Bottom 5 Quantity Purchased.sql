select pizza_name, sum(quantity) as quantity_purchased
from pizza_sales_data
group by pizza_name
order by quantity_purchased desc
limit 5;