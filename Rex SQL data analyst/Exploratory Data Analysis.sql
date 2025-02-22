-- Exploratory Data Analysis

select *
from layoff_staging2;

select max(total_laid_off), max(percentage_laid_off)
from layoff_staging2;


select *
from layoff_staging2
where percentage_laid_off = 1
order by funds_raised_millions desc;

select company, sum(total_laid_off)
from layoff_staging2
group by company
order by 2 desc;

select sum(total_laid_off)
from layoff_staging2;


select industry, sum(total_laid_off)
from layoff_staging2
group by industry
order by 2 desc;


select country, sum(total_laid_off)
from layoff_staging2
group by country
order by 2 desc;

select year(`date`), sum(total_laid_off)
from layoff_staging2
group by year(`date`)
order by 1 desc;


select stage, sum(total_laid_off)
from layoff_staging2
group by stage
order by 2 desc;


select * 
from layoff_staging2;

select substring(`date`, 1, 7) as `Month`, sum(total_laid_off)
from layoff_staging2
where substring(`date`, 1, 7) is not null
group by `Month`
order by 1 asc
;


with Rolling_Sum As (
	select substring(`date`, 1, 7) as `Month`, sum(total_laid_off) as laid_off
	from layoff_staging2
	where substring(`date`, 1, 7) is not null
	group by `Month`
	order by 1 asc
)
select `Month`, laid_off,
sum(laid_off) over(order by `Month`) as Rolling_sum
from Rolling_Sum;

select * 
from layoff_staging2;
  
select company, year(`date`), sum(total_laid_off)
from layoff_staging2
where company is not null
group by company, year(`date`)
order by 3 desc;

with Company_Year (Company, Years, Total_laid_off) as (
	select company, year(`date`), sum(total_laid_off)
	from layoff_staging2
	where company is not null
	group by company, year(`date`)
), Company_Rank as 
(
select *, dense_rank () over (partition by `years` order by Total_laid_off desc) as Ranks 
from Company_Year
where years is not null)
select * 
from Company_Rank
where Ranks <= 5
;

select * 
from layoff_staging2;

select industry, year(`date`), sum(total_laid_off)
from layoff_staging2
group by industry, year(`date`);

With Industry_Year (Industry, Years, Total_Off) as  (
	select industry, year(`date`), sum(total_laid_off) 
	from layoff_staging2
	group by industry, year(`date`)
    ), Industry_rank as (
	select *, dense_rank () over (partition by Years order by Total_Off) as Ranking
	from Industry_Year
	where industry is not null
	and years is not null)
    select *
    from industry_rank
    where Ranking <= 6;
