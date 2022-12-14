   1) create table product with fields(product id, product name, date of manufacture, expiry date, marketed by, unit price). Make  product_id as primary key.
   2) create table order with fields(order id, product id, quantity, price). Make order id as primary key and quantity should be more than 0.
   3) Display the structure of fields.
   4) Add a field delivery date in order table.
   5) change the name of field of date of manufacture to DOM.
   6) Insert atleast 4 records in each table.
   7) The order table should contain the products that are already in product table.
   8) Display the records in table.
   9) Display the marketed by names with duplicates.
   10) Modify the price field that the amount should not be zero.
   11) update the unit price of all products by 15%.
   12) Find the total price of all orders.
   13) Find the average of all orders.

# SOLUTION


#### step1: create table product with fields(product id, product name, date of manufacture, expiry date, marketed by, unit price). Make product_id as primary key.

```
CREATE TABLE product(
   product_id int primary key,
   product_name varchar(255) NOT NULL,
   date_of_manufacture date NOT NULL,
   expiry_date date NOT NULL,
   marketed_by varchar(255) NOT NULL,
   unit_price int NOT NULL
);
```
<p align="center">
   <img src="user/Ex1/ex1.png" width=800 height=400>
</p>

#### step2: create table order with fields(order id, product id, quantity, price). Make order id as primary key and quantity should be more than 0.

```
CREATE TABLE orders(
   order_id int primary key,
   product_id int NOT NULL,
   quantity int NOT NULL,
   price int NOT NULL
);
```
<p align="center">
   <img src="user/Ex1/ex2.png" width=800 height=400>
</p>

#### step3: Display the structure of fields.

```
DESC product;
```
<p align="center">
   <img src="user/Ex1/ex3.png" width=800 height=400>
</p>

```
DESC orders;
```
<p align="center">
   <img src="user/Ex1/ex4.png" width=800 height=400>
</p>

#### step4: Add a field delivery date in order table.

```
ALTER TABLE orders ADD delivery_date date NOT NULL;
```
<p align="center">
   <img src="user/Ex1/ex5.png" width=800 height=400>
</p>

#### step5: change the name of field of date of manufacture to DOM.

```  
ALTER TABLE product 
RENAME COLUMN date_of_manufacture to DOM;
```
<p align="center">
   <img src="user/Ex1/ex6.png" width=800 height=400>
</p>

#### step6: Insert atleast 4 records in each table.

```
INSERT INTO product VALUES
(111,'AAA','2022-10-10','2022-11-10','MM',10),
(122,'BBB','2022-10-11','2022-11-11','XX',15),
(133,'CCC','2022-10-15','2022-11-20','YY',10),
(144,'DDD','2022-10-19','2022-12-10','MM',20);
```
<p align="center">
   <img src="user/Ex1/ex7.png" width=800 height=400>
</p>

```
INSERT INTO orders VALUES
(11,121,10,10,'2022-12-21'),
(22,131,5,15,'2022-12-22'),
(33,141,8,10,'2022-12-23'),
(44,151,36,20,'2022-12-25');
```
<p align="center">
   <img src="user/Ex1/ex8.png" width=800 height=400>
</p>

#### step7: The order table should contain the products that are already in product table.

```
UPDATE orders SET product_id=111
where order_id=11;
```

```
mysql> UPDATE orders SET product_id=122
where order_id=22;
```

```
UPDATE orders SET product_id=133
where order_id=33;
```

```
UPDATE orders SET product_id=144
where order_id=44;
```

<p align="center">
   <img src="user/Ex1/ex9.png" width=800 height=400>
</p>


#### step8: Display the records in table.

```
select * from product;
```
<p align="center">
   <img src="user/Ex1/ex10.png" width=800 height=400>
</p>


```   
select * from orders;
```
<p align="center">
   <img src="user/Ex1/ex11.png" width=800 height=400>
</p>

#### step9: Display the marketed by names with duplicates.
#### step10: Modify the price field that the amount should not be zero.
#### step11: update the unit price of all products by 15%.
#### step12: Find the total price of all orders.
```
select sum(price) from orders;
```

#### step13: Find the average of all orders.
```
select avg(price) from orders;
```