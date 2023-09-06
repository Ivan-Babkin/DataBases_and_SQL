/* Задача 1
Создайте sql запрос для создания таблицы с мобильными телефонами (mobile_phones), 
Заполните таблицу данными:
id product_name manufacturer product_count price
1   iPhone XII  Apple        3            176000
2   iPhone X    Apple        2            151000
3   Galaxy S9   Samsung      2             56000
4   Galaxy S8   Samsung      1             41000
5   P60 Pro     Huawei       5            136000
*/

# UTF-8

--  Создание БД DataBase_SQL
DROP DATABASE IF EXISTS DataBase_SQL;
CREATE DATABASE IF NOT EXISTS DataBase_SQL;

-- Выбираем активную БД
USE DataBase_SQL;

CREATE TABLE DataBase_SQL.mobile_phones (
    id INT PRIMARY KEY,
    product_name VARCHAR(25),
    manufacturer VARCHAR(25),
    product_count INT,
    price INT
);

INSERT INTO mobile_phones (id, product_name, manufacturer, product_count, price)
VALUES (1, 'iPhone XII', 'Apple', 3, 176000),
       (2, 'iPhone X', 'Apple', 2, 151000),
       (3, 'Galaxy S9', 'Samsung', 2, 56000),
       (4, 'Galaxy S8', 'Samsung', 1, 41000),
       (5, 'P60 Pro', 'Huawei', 5, 136000);
       
-- Вывод базы данных mobile_phones
SELECT * FROM database_sql.mobile_phones;

/* Задача 2
Создать запрос, который выведет название, производителя и цену для товаров, количество 
которых превышает 2 */

SELECT product_name, manufacturer, price FROM mobile_phones WHERE product_count > 2;

/* Задача 3
Выведите весь ассортимент товаров марки “Samsung” */
SELECT * FROM mobile_phones WHERE manufacturer = 'Samsung';

/* Задача 4 
С помощью регулярных выражений найти: */

-- 4.1. Товары, в которых есть упоминание “Iphone”:
SELECT * FROM mobile_phones WHERE product_name LIKE '%Iphone%';

-- 4.2. Товары, в которых есть упоминание “Samsung”:
SELECT * FROM mobile_phones WHERE CONCAT_WS(' ', product_name, manufacturer) LIKE '%Samsung%';

-- 4.3. Товары, в которых есть ЦИФРЫ:
SELECT * FROM mobile_phones WHERE product_name REGEXP '[0-9]';

-- 4.4. Товары, в которых есть ЦИФРА “8”:
SELECT * FROM mobile_phones WHERE product_name LIKE '%8%';