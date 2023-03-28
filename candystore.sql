--Create candystore database:
create database candystore;

--Switch to candystore database:
use candystore;

--Create the customers table:
create table customers (
  customerId INT  AUTO_INCREMENT PRIMARY KEY,
  firstName VARCHAR(20) NOT NULL,
  lastName  VARCHAR(20) NOT NULL,
  email VARCHAR(30),
  phone VARCHAR(20),
  createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

--Add our first customer;
insert into customers (firstName, lastName, email, phone)
Values('Damian', 'Montero', 'damian@bocacode.com', '976-CODE');

--Let's get ALL of the customers:
select * from customers;
select * from customers where firstName = 'Cassandra';

insert into customers (firstName, lastName, email, phone)
Values('Cassandra', 'Curcio', 'cassandra@bocacode.com', '954-CATS');

create table orders (
  orderId INT  AUTO_INCREMENT PRIMARY KEY,
  customerId INT NOT NULL,
  total DECIMAL(8, 2),
  tax DECIMAL(7, 2),
  createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

--Adding an order to our order table:
insert into orders (customerId, total, tax)
Values (1, 19.48, 0.18), (2, 49.26, 3.44);

--Show order by:
select * from orders;

--Search for Damian's Orders:
select * from customers
join orders on orders.customerId = customers.customerId
where firstName = 'Damian';

