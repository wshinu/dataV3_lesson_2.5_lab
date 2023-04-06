select first_name from actor
where first_name = "Scarlett";
-- selected all the first name = scarlett

select distinct(title) from film;
-- selected unique movie titles

select max(length) as max_duration, min(length) as min_duration from film;
-- selected longest and shortest movie duration

SELECT TIME_FORMAT(SEC_TO_TIME(AVG(length * 60)), '%H:%i') AS avg_duration_hh_mm
FROM film;
-- average movie_duration shown in hh:mm format

select count(distinct(last_name)) from actor;
-- counted the number of different las names 

select datediff(max(rental_date) , min(rental_date))  from rental;
-- counted the days ,when company was operating

 select * , month(rental_date) as month , weekday(rental_date) as weekday from rental
 limit 20;
-- rental info shown with addition columns 

SELECT *, 
  CASE WHEN WEEKDAY(rental_date) < 5 THEN 'workday' ELSE 'weekend' END AS day_type
FROM rental;
-- additional column day_type added depending on the day

Select release_year from film;
-- got all the release years

SELECT * FROM film
WHERE title LIKE '%ARMAGEDDON%';
-- all films with ARMAGEDDON in the title.

select * from film
where title like "%APOLLO";
-- all films which title ends with APOLLO.

SELECT * FROM film
ORDER BY length DESC
LIMIT 10;
--  10 longest films.

SELECT count(*) FROM film
WHERE special_features LIKE '%behind the scene%';
-- 538 films include Behind the Scenes content?
