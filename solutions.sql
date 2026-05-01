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