-- Lab 9
use sakila;
-- Create a table rentals_may to store the data from rental table with information for the month of May.
-- Insert values in the table rentals_may using the table rental, filtering values only for the month of May.

Create a table rentals_june to store the data from rental table with information for the month of June.

Insert values in the table rentals_june using the table rental, filtering values only for the month of June.
CREATE TABLE rentals_may AS (
    SELECT *
    FROM rental
    WHERE MONTH(rental_date) = 5
    );
    
-- Create a table rentals_june to store the data from rental table with information for the month of June.
-- Insert values in the table rentals_june using the table rental, filtering values only for the month of June.
CREATE TABLE rentals_june AS (
    SELECT *
    FROM rental
    WHERE MONTH(rental_date) = 6
    );

DROP TABLE rentals_june;

CREATE TABLE rentals_june AS (
    SELECT *
    FROM rental
    WHERE MONTH(rental_date) = 6
    );
    
-- Check the number of rentals for each customer for May.
SELECT customer_id, count(rental_id) as number_of_rentals
FROM rentals_may
GROUP BY customer_id;

-- Check the number of rentals for each customer for June.
SELECT customer_id, count(rental_id) as number_of_rentals
FROM rentals_june
GROUP BY customer_id;






    
    