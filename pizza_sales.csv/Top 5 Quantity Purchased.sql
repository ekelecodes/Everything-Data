select pizza_name, sum(quantity) as quantity_purchased
from pizza_sales2
group by pizza_name
order by quantity_purchased asc
limit 5;