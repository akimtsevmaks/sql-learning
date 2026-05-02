--Найдите номер модели, скорость и размер жесткого диска для всех ПК стоимостью менее 500 дол. Вывести: model, speed и hd
select model, speed, hd
from pc
where price::numeric < 500;

--Найдите производителей принтеров. Вывести: maker
select distinct maker
from product
where type = 'Printer';

--Найдите номер модели, объем памяти и размеры экранов ноутбуков, цена которых превышает 1000 дол.
select model, ram, screen
from laptop
where price::numeric > 1000;

--Найдите все записи таблицы Printer для цветных принтеров.
select *
from printer p 
where color = 'y';

--Найдите номер модели, скорость и размер жесткого диска ПК, имеющих 12x или 24x CD и цену менее 600 дол.
select model, speed, hd
from pc p 
where (cd = '12x' or cd = '24x') and price::numeric < 600;

--Для каждого производителя, выпускающего ноутбуки c объёмом жесткого диска не менее 10 Гбайт, найти скорости таких ноутбуков. Вывод: производитель, скорость.
select distinct p.maker, l.speed
from product p join laptop l on p.model = l.model 
where l.hd >= 10;

--Найдите номера моделей и цены всех имеющихся в продаже продуктов (любого типа) производителя B (латинская буква).
select p.model, l.price
from product p join laptop l on p.model = l.model 
where p.maker = 'B'

union

select p.model, pc.price
from product p join pc on p.model = pc.model 
where p.maker = 'B'

union

select p.model, pr.price
from product p join printer pr on p.model = pr.model 
where p.maker = 'B';

--Найдите производителя, выпускающего ПК, но не ноутбуки.
select distinct p.maker
from product p 
where p.type = 'PC' and p.maker not in 
(select distinct p2.maker from product p2 where p2.type = 'Laptop');

--Найдите производителей ПК с процессором не менее 450 Мгц. Вывести: Maker
select distinct p.maker
from product p inner join pc on p.model = pc.model and pc.speed >= 450;

--Найдите модели принтеров, имеющих самую высокую цену. Вывести: model, price
select p.model, p.price
from printer p 
where p.price = (select max(price) from printer)

--Найдите среднюю скорость ПК.
select avg(speed) from pc;

--Найдите среднюю скорость ноутбуков, цена которых превышает 1000 дол.
select avg(speed)
from laptop where laptop.price::numeric > 1000;

--Найдите среднюю скорость ПК, выпущенных производителем A.
select avg(speed)
from product p inner join pc on p.model = pc.model and p.maker = 'A';

--Найдите класс, имя и страну для кораблей из таблицы Ships, имеющих не менее 10 орудий.
Select s.class, s.name, c.country
from ships s inner join classes c on s.class = c.class
where c.numguns >= 10



















