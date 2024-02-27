create table users (
	id integer,
	user_attributes json[]
);

copy users (id, user_attributes) 
from 'C:/Program Files/PostgreSQL/16/bin/Database/dados.csv'
with(
	delimiter ';',
	header,
	format csv
);

select * from users