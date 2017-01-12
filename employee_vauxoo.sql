-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.

CREATE TABLE employee (
	id integer PRIMARY KEY NOT NULL,
	first_name varchar(50),
	last_name varchar(50),
    id_departament integer REFERENCES employee_department
);

CREATE TABLE employee_department (
	id integer PRIMARY KEY NOT NULL,
	name varchar(40),
	description varchar(100)
);

CREATE TABLE employee_hobby (
);

Insert into employee_department (id, name, description) values (1,'Sistemas', 'Departamento del area de Sistemas');
Insert into employee_department (id,name, description) values (2, 'Industrial', 'Departamento del area de Arquitectura');
Insert into employee_department (id, name, description) values (3, 'Servicios Escolares', 'Departamento de Servicios Escolares para alumnos');
Insert into employee_department (id, name, description) values (4, 'Actividades Extraescolares', 'Departamento de planeación');
Insert into employee_department (id, name, description) values (5, 'Centro de Cómputo', 'Departamento Administrativo');
Insert into employee_department (id, name, description) values (6, 'Dirección', 'Departamento Directivo');

Insert into employee (id, first_name, last_name, id_departament) values (1, 'Carolina', 'Jimenez', 2);
Insert into employee (id, first_name, last_name, id_departament) values (2, 'Mario', 'Torres', 1);
Insert into employee (id, first_name, last_name, id_departament) values (3, 'José', 'Ruiz', 2);
Insert into employee (id, first_name, last_name, id_departament) values (4, 'Mariana', 'Peréz', 3);

SELECT * FROM employee;
SELECT * FROM employee_department;





-- ...
