The last lines of original country.sql have been modified from:

-- Copy over data from CSVs
\copy cities FROM 'cities.csv' DELIMITER ',' CSV HEADER;
\copy countries FROM 'countries.csv' DELIMITER ',' CSV HEADER;
\copy languages FROM 'languages.csv' DELIMITER ',' CSV HEADER;
\copy economies FROM 'economies.csv' DELIMITER ',' CSV HEADER;
\copy economies2010 FROM 'economies2010.csv' DELIMITER ',' CSV HEADER;
\copy economies2015 FROM 'economies2015.csv' DELIMITER ',' CSV HEADER;
\copy currencies FROM 'currencies.csv' DELIMITER ',' CSV HEADER;
\copy populations FROM 'populations.csv' DELIMITER ',' CSV HEADER;
\copy countries_plus FROM 'countries_plus.csv' DELIMITER ',' CSV HEADER;

/*
createdb countries
psql countries < data/countries/code/countries.sql
*/

to

-- Copy over data from CSVs
.mode csv
.separator ,
.import 'cities.csv' cities
.import 'countries.csv' countries
.import 'languages.csv' languages 
.import 'economies.csv' economies 
.import 'economies2010.csv' economies2010 
.import 'economies2015.csv' economies2015 
.import 'currencies.csv' currencies 
.import 'populations.csv' populations 
.import 'countries_plus.csv' countries_plus 

For sqlite3, we need to create a .db file from the .sql file
In command prompt run:

sqlite3.exe countries.db ".read countries.sql"

