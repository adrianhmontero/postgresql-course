select a.name as country, b."name" as continent from country a, continent b
WHERE
a.continent = b.code;

SELECT
	a.name AS country,
	b.name AS continent
FROM
	country a
	INNER JOIN continent b ON a.continent = b.code;