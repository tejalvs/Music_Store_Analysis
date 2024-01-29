1. Who is the senior most employee based on job title?

SELECT * FROM employee
ORDER BY levels DESC
LIMIT 1;

2. Which countries have the most Invoices?

SELECT billing_country, COUNT(billing_country) AS c
FROM invoice
GROUP BY billing_country 
ORDER BY c DESC
LIMIT 1;

3. What are top 3 values of total invoice?

SELECT  total
FROM invoice
ORDER BY TOTAL DESC
LIMIT 3;

4. Which city has the best customers? We would like to throw a promotional Music
Festival in the city we made the most money. Write a query that returns one city that
has the highest sum of invoice totals. Return both the city name & sum of all invoice
totals
SELECT billing_city,SUM(total) as invoice_total
FROM invoice
GROUP BY billing_city
ORDER BY invoice_total DESC;

5. Who is the best customer? The customer who has spent the most money will be
declared the best customer. Write a query that returns the person who has spent the
most money

SELECT customer.customer_id, first_name, last_name, SUM(total) AS total_spending
FROM customer
JOIN invoice ON customer.customer_id = invoice.customer_id
GROUP BY customer.customer_id
ORDER BY total_spending DESC
LIMIT 1;