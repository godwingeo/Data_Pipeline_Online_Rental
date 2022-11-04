select min(payment_date) min_payment, max(payment_date) max_payment from payment;

SELECT * FROM payment

select f.title, p.payment_id, p.rental_id, SUM(p.amount) as revenue,r.inventory_id, i.film_id from payment as p 
join rental as r ON p.rental_id = r.rental_id
join inventory i ON r.inventory_id = i.inventory_id
join film f ON i.film_id = f.film_id


select f.title, SUM(p.amount) as revenue from payment as p 
join rental as r ON p.rental_id = r.rental_id
join inventory i ON r.inventory_id = i.inventory_id
join film f ON i.film_id = f.film_id
GROUP BY f.title
ORDER BY SUM(p.amount) DESC