Recreate database:
cat data/db_schema/01_create_schema.sql| heroku pg:psql

add example data:
cat data/example_data/example_data.sql| heroku pg:psql

