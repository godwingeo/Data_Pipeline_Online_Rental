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

--- Find the city which has the highest revenue
select f.title, p.payment_id, p.rental_id, p.amount as revenue,r.inventory_id, i.film_id, c.customer_id,a.address_id, ct.city from payment as p 
join rental as r ON p.rental_id = r.rental_id
join inventory i ON r.inventory_id = i.inventory_id
join film f ON i.film_id = f.film_id
join customer c ON c.customer_id = p.customer_id
join address a ON a.address_id = c.address_id
join city ct ON ct.city_id = a.city_id



select ct.city,SUM(p.amount) as revenue from payment as p 
join rental as r ON p.rental_id = r.rental_id
join inventory i ON r.inventory_id = i.inventory_id
join film f ON i.film_id = f.film_id
join customer c ON c.customer_id = p.customer_id
join address a ON a.address_id = c.address_id
join city ct ON ct.city_id = a.city_id
group by ct.city
order by SUM(p.amount) DESC
