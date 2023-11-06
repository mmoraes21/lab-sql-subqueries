/*1. Determine the number of copies of the film "Hunchback Impossible" that exist in the inventory system.*/

SELECT * FROM sakila.film WHERE title = "Hunchback Impossible";

SELECT COUNT(i.film_id) FROM sakila.inventory AS i
INNER JOIN sakila.film AS f
ON i.film_id = f.film_id
WHERE f.film_id = 439;

/*2. List all films whose length is longer than the average length of all the films in the Sakila database.*/

SELECT title, length
FROM sakila.film
WHERE length >= (SELECT AVG(sakila.film.length) FROM sakila.film);

/*3. Use a subquery to display all actors who appear in the film "Alone Trip".*/

SELECT * FROM sakila.film WHERE title = "Alone Trip";

SELECT film_id, actor_id FROM film_actor WHERE film_id = 17;

SELECT CONCAT(w.first_name, " ", w.last_name) AS full_name FROM sakila.actor AS w
INNER JOIN sakila.film_actor AS y
ON w.actor_id = y.actor_id
WHERE film_id = 17;