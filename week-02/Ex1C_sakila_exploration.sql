/*
a) The actor columns contain a unique identifier for each actor including their first and last name.
Lastly it includes a column for last_update which is numerical data.
b) The first column contained is a unique identifier for films, then it's followed by a set of 
information that describes details of the film. As well as data that pertains outside the film
that presents the rental rates, any replacements, and updates.
c) actor_id and film_id are both located under the film_actor table within its column.
d) the first 100 records from rental show a history of movies via unique identifiers rented on an exact date and time.
It also shows the return date and which staff via their unique identifier received the returned film.
Lastly, it shows all of this data was last updated at the same time 2006-02-15 21:30:53. 
This is basically a historical inventory of films rented and by whom. 
e) The inventory column data includes helpful information that lets us know its an inventory between two stores. 
It also helps see each how many copies of the unique film id there is and presents that each film is assigned to a specific store.
f) To find the titles of films it can be pulled from several tables like 'film' and 'film_text'.
The rental dates can be pulled from table 'rental' and column 'rental_date'. 
They are connected through unique identifiers called 'film_id'.
*/

SELECT title FROM film;
SELECT rental_date FROM rental;