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
	id integer PRIMARY KEY NOT NULL,
	name varchar (50),
	description varchar (100) 
);

CREATE TABLE employee_hobbies (
	id_employee integer REFERENCES employee,
	id_hobby integer REFERENCES employee_hobby,
	PRIMARY KEY (id_employee, id_hobby)
);


Insert into employee_hobby (id,name, description) values (1,'Musica', 'Escuchar música electronica');
Insert into employee_hobby (id,name, description) values (2,'Leer', 'Leer libros de Drama');
Insert into employee_hobby (id,name, description) values (3,'Dibujar', 'Realizar dibujos de objetos');

Insert into employee_hobbies (id_employee, id_hobby) values (1, 1);
Insert into employee_hobbies (id_employee, id_hobby) values (1, 3);
Insert into employee_hobbies (id_employee, id_hobby) values (2, 2);
Insert into employee_hobbies (id_employee, id_hobby) values (2, 1);
Insert into employee_hobbies (id_employee, id_hobby) values (3, 2);
Insert into employee_hobbies (id_employee, id_hobby) values (3, 3);
Insert into employee_hobbies (id_employee, id_hobby) values (4, 1);
Insert into employee_hobbies (id_employee, id_hobby) values (4, 2);

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







-- ...
