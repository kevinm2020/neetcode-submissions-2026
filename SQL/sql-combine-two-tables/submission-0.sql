SELECT first_name, last_name, city, state
FROM person a
LEFT JOIN address b ON a.person_id = b.person_id
