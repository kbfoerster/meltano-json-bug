create table empty_data (
	id integer primary key,
	data jsonb
);
create table int_data (
	id integer primary key,
	data _int4 NOT NULL DEFAULT '{}'::integer[]
);
create table str_data (
	id integer primary key,
	data jsonb
);
-- jsonb and json mixed types
create table mix_data (
	id integer primary key,
	empty_data jsonb,
	data json
);
create table null_data (
	id integer primary key,
	data jsonb
);

insert into empty_data values (1, '[]'), (2, '[]'), (3, '[]');
insert into int_data values (1, '{123}'), (2, '{123, 456}'), (3, '{123, 456}');
insert into str_data values (1, '[ {"id": 123, "status": "accepted"}]'), (2, '[ {"id": 456, "status": "denied"}]'), (3, '[ {"id": 789, "status": "accepted"}]');
insert into mix_data values (1, '[]', '[ {"id": 123, "status": "accepted"}]'), (2, '[]', '[ {"id": 456, "status": "denied"}]'), (3, '[]', '[ {"id": 789, "status": "accepted"}]');
insert into null_data values (1, '[123, 456]'), (2, '[123, 456]'), (3, null);

-- for meltano state tracking
create database meltano;
