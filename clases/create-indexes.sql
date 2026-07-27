

CREATE UNIQUE INDEX "unique_country_name" ON country (name);

CREATE INDEX "country_continent" ON country (continent);

CREATE UNIQUE INDEX"unique_name_countrycode_district" ON city(name,countrycode,district);

CREATE INDEX "idx_district" ON city (district);