select a.name as country, b."name" as continent from country a, continent b
WHERE
a.continent = b.code;

SELECT
	a.name AS country,
	b.name AS continent
FROM
	country a
	INNER JOIN continent b ON a.continent = b.code;

SELECT
	a."name" AS country,
	a.continent AS continent_code,
	b."name" AS continent_name
FROM
	country a
	FULL OUTER JOIN continent b ON a.continent = b.code;

SELECT
	a."name" AS country,
	a.continent AS continent_code,
	b."name" AS continent_name
FROM
	country a
	RIGHT JOIN continent b ON a.continent = b.code
WHERE
	a.continent IS NULL;

SELECT
	count(*),
	b.name
FROM
	country a
	INNER JOIN continent b ON a.continent = b.code
GROUP BY
	b.name
ORDER BY
	count(*) ASC;

(
	SELECT
		count(*) AS count,
		b.name
	FROM
		country a
		JOIN continent b ON a.continent = b.code
	GROUP BY
		b.name
)
UNION
(
	SELECT
		-- Le ponemos cero porque, al hacer un right outer join sabemos que no
		-- existe ningún registro en la tabla 'a'. Si no forzamos el cero, mostrará
		-- el valor 1 porque encuentra un registro en la tabla 'b'.
		0 AS count,
		b.name
	FROM
		country a
		RIGHT OUTER JOIN continent b ON a.continent = b.code
	WHERE
		a.continent IS NULL
	GROUP BY
		b.name
)
ORDER BY
	count;