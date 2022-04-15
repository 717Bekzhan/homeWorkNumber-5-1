create table products
(
    id            serial primary key,
    product_name  varchar(30) not null,
    company       varchar(20) not null,
    product_count int default 0,
    price         numeric     not null,
    is_discounted bool
);
insert into products(product_name, company, product_count, price, is_discounted)
values ('Iphone X', 'Apple', 3, 760000, false),
       ('Iphone 8', 'Apple', 2, 71000, true),
       ('Iphone 7', 'Apple', 5, 42000, true),
       ('Galaxy S9', 'Samsung', 2, 46000, false),
       ('Galaxy S8 Plus', 'Samsung', 1, 56000, true),
       ('Desire 12', 'HTC', 5, 28000, true),
       ('Nokia 9', 'HMD Global', 6, 38000, true);

select * from products where company NOT LIKE 'HTC'; --HTC компаниясынан башка компаниянын продуктуларын алыныз
select * from products where company = 'Apple'  AND price < 75000; -- Apple компаниясынын 75000минден томонку баадагы продуктуларын алыныз.
select * from products where price  = 46000 or price>46000; --Баасы 46000 жана андан ойдоку продуктулардын баарын алыныз
select * from products order by price desc limit 2; --Эн кымбат эки продукту алыныз
select product_name from products where price = (select min(price) from products); -- Баасы минимальный болгон продуктун атын алыныз
select * from products where is_discounted = true; --. Дискоунт болгон продуктуларды чыгарыныз
select * from products where is_discounted = false; --Дискоунт болбогон продуктуларды чыгарыныз
select * from products  order by price desc; -- Баардык продуктулардын баасын кымбаттан арзанга карап чыгарыныз
select sum(price) from products; --Баардык продуктулардын суммасын(баасын) чыгарыныз.
select * from products where product_count <=2; --Эки жана андан аз продуктусу бар компанияларды алыныз





