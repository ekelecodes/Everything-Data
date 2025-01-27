	select pizza_size, cast(sum(total_price)as decimal(10,2)) as total_price_per_pizza_size, 
    cast(sum(total_price) * 100 / (select sum(total_price) from pizza_sales_data) as decimal(10,2)) as Percent_by_Size
    from pizza_sales_data
    group by pizza_size;