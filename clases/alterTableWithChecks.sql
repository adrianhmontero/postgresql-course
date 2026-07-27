SELECT
	*
FROM
	country
WHERE
	code = 'NLD';

DELETE FROM country where code2 = 'NA';

ALTER TABLE country
ADD PRIMARY KEY (code);

ALTER TABLE country
ADD CHECK (surfacearea >= 0);

SELECT distinct continent from country;

ALTER TABLE country
ADD CHECK (
	(continent = 'Asia')
	OR (continent = 'South America')
	OR (continent = 'North America')
	OR (continent = 'Oceania')
	OR (continent = 'Antarctica')
	OR (continent = 'Africa')
	OR (continent = 'Europe')
);

SELECT*FROM country where code='CRI';

ALTER TABLE country
DROP CONSTRAINT country_continent_check6;

ALTER TABLE country ADD CHECK((continent='Asia')OR(continent='South America')OR(continent='North America')OR(continent='Oceania')OR(continent='Antarctica')OR(continent='Africa')OR(continent='Europe')OR(continent='Central America'));







