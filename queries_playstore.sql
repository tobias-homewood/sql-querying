-- Comments in SQL Start with dash-dash --

--1
select * from analytics 
where id = 1880;

--2
select id, app_name from analytics
where last_updated = '2018-08-01';

--3
select category, count(*) from analytics
group by category;

--4
select app_name, reviews from analytics
order by reviews DESC
LIMIT 5;

--5
select app_name, reviews, rating from analytics
where rating >= 4.8
order by reviews DESC 
LIMIT 1;

--6
select category, avg(rating) as "average rating" from analytics
group by category
order by "average rating" desc;

--7
select app_name, price, rating from analytics
where rating <3
order by price DESC
limit 1;

--8
select * from analytics
where min_installs < 50 and rating is not NULL
order by rating DESC;

--9
select app_name, rating, reviews from analytics
where rating < 3 and reviews >= 10000;

--10
select * from analytics
where price between .10 and 1
order by reviews desc;

--11

-- subquery to get the oldest date
-- select MIN(last_updated) as oldest_date from analytics;

select app_name, last_updated from analytics
where last_updated = (select MIN(last_updated) from analytics);


--12
select app_name, price from analytics
where price = (select max(price) from analytics);


--13
select sum(reviews) as "Total amount of reviews" from analytics;

--14
select category, count(*) as "Number of apps" from analytics
group by category
having count(*) > 300;

--15
select app_name, reviews, min_installs, (min_installs/reviews) as proportion
from analytics
where min_installs >= 100000
order by proportion DESC
limit 1;