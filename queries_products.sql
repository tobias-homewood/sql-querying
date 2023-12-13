-- Comments in SQL Start with dash-dash --
delete from products;

-- 1
insert into products
(name, price, can_be_returned)
values
('chair', 44.00, FALSE);

-- 2
insert into products
(name, price, can_be_returned)
values
('stool', 25.99, true);

-- 3
insert into products
(name, price, can_be_returned)
values
('table', 124.00, false);

-- another option is to insert all of them in a single query
-- insert into products
-- (name, price, can_be_returned)
-- values
-- ('chair', 44.00, FALSE),
-- ('stool', 25.99, true),
-- ('table', 124.00, false);

--4

select * from products;

--5
select name from products;

--6
select name, price from products;

--7
insert into products
(name, price, can_be_returned)
values
('plate', 125.00, false);

--8
select * from products WHERE can_be_returned = true;

--9
select * from products where price < 44.00;

--10
select * from products where price BETWEEN 22.50 and 99.99;

--11
update products 
set price = price - 20 
where price > 20;

--12
delete from products where price < 25;

--13
update products 
set price = price + 20;

--14
update products
set can_be_returned = true;

select * from products;