use classicmodels;
select * from employees;
/*1. Display the name, product line, and buy price of all products. The output columns
should display as: “Name,” “Product Line,” and “Buy Price.” The output should display
the most expensive items first.*/
select productName, productline, buyprice from products;

/*2. Display the first name, last name, and city name of all customers from Germany.
The output columns should display as: “First Name,” “Last Name,” and “City.” The
output should be sorted by “Last Name” (ascending).*/
select * from customers;
select contactFirstName,contactLastName,city,country from customers where country ='Germany' order by contactFirstName,contactLastName ASC,city;

/*3.Display each of the unique values of the status field in the orders table. The
output should be sorted alphabetically, ascending.
a. Hint: The output should show exactly six rows.*/
select distinct(status) from orders order by status ASC;

/*4.Display all fields from the payments table for payments made on or after January 1,
2005. The output should be sorted by the paymentDate from highest to lowest.*/
select * from payments WHERE paymentDate >= '2005-01-01' order by paymentDate desc;

/*5.Display the last Name, first Name, email address, and job title of all employees
working out of the San Francisco office. The output should be sorted by “Last Name.”*/
SELECT lastName,firstName,email,jobTitle from employees where officeCode=1 order by lastName ASC;
/*6.Display the name, product line, scale, and vendor of all of the car products – both
classic and vintage. The output should display all vintage cars first (sorted
alphabetically by name), and all classic cars last (also sorted alphabetically by name).*/
select productName,productLine,productScale,productVendor from products where productLine IN  ('vintage cars','classic cars') order by productLine desc;

