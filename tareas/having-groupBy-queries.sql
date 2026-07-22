SELECT
	count(*),
	country
FROM
	users
GROUP BY
	country
HAVING
	count(*) > 5
ORDER BY
	count DESC;


SELECT
	email,
	SUBSTRING(email, POSITION('@' IN email) + 1) AS domain
FROM
	users;

SELECT
	count(*),
	SUBSTRING(email, POSITION('@' IN email) + 1) AS domain
FROM
	users
GROUP BY
	domain
HAVING
	count(*) > 1
ORDER BY
	domain ASC;