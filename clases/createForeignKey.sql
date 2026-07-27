ALTER TABLE city
ADD CONSTRAINT fk_countrycode FOREIGN KEY (countrycode) REFERENCES country (code);

SELECT * FROM country WHERE code ='NAM';
SELECT * FROM city WHERE countrycode ='NAM';


INSERT INTO country
		values('AFG', 'Afghanistan', 'Asia', 'Southern Asia', 652860, 1919, 40000000, 62, 69000000, NULL, 'Afghanistan', 'Totalitarian', NULL, NULL, 'AF');

        ALTER TABLE countrylanguage
ADD CONSTRAINT fk_countrycode FOREIGN KEY (countrycode) REFERENCES country (code);

INSERT INTO
	country_bk
SELECT
	*
FROM
	country;

ALTER TABLE country
DROP CONSTRAINT country_continent_check;

SELECT
	a.name,
	a.continent,
	(
		SELECT
			"code"
		FROM
			continent b
		WHERE
			b.name = a.continent
	)
FROM
	country a;

UPDATE country a
SET
	continent = (
		SELECT
			"code"
		FROM
			continent b
		WHERE
			b.name = a.continent
	);

SELECT
	*
FROM
	country;

ALTER TABLE country
ALTER COLUMN continent TYPE int4 USING continent::integer;


ALTER TABLE country
ADD CONSTRAINT fk_continent FOREIGN KEY (continent) REFERENCES continent (code);
