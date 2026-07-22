SELECT
	name,
	SUBSTRING(name, 0, POSITION(' ' IN name)) AS firstName,
	SUBSTRING(name, (POSITION(' ' IN name) + 1)) AS lastname
FROM
	users;

UPDATE users
SET
	first_name = SUBSTRING(name, 0, POSITION(' ' IN name)),
	last_name = SUBSTRING(name, (POSITION(' ' IN name) + 1));