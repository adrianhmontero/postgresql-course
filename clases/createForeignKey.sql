ALTER TABLE city
ADD CONSTRAINT fk_countrycode FOREIGN KEY (countrycode) REFERENCES country (code);

SELECT * FROM country WHERE code ='NAM';
SELECT * FROM city WHERE countrycode ='NAM';


INSERT INTO country
		values('AFG', 'Afghanistan', 'Asia', 'Southern Asia', 652860, 1919, 40000000, 62, 69000000, NULL, 'Afghanistan', 'Totalitarian', NULL, NULL, 'AF');

        ALTER TABLE countrylanguage
ADD CONSTRAINT fk_countrycode FOREIGN KEY (countrycode) REFERENCES country (code);