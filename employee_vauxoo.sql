-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.


CREATE TABLE employee_hobby (
    id integer PRIMARY KEY NOT NULL,
    name varchar (50),
    description varchar (100) 
);

CREATE TABLE employee_department (
    id integer PRIMARY KEY NOT NULL,
    name varchar (40),
    description varchar (100)
);

CREATE TABLE employee (
    id integer PRIMARY KEY NOT NULL,
    first_name varchar (50),
    last_name varchar (50),
    id_boss integer REFERENCES employee,
    id_departament integer REFERENCES employee_department
);

CREATE TABLE employee_hobbies (
    id_employee integer REFERENCES employee,
    id_hobby integer REFERENCES employee_hobby,
    PRIMARY KEY (id_employee, id_hobby)
);


INSERT INTO employee_hobby (id, name, description) VALUES (1, 'Musica', 'Escuchar musica electronica');
INSERT INTO employee_hobby (id, name, description) VALUES (2, 'Leer', 'Leer libros de Drama');
INSERT INTO employee_hobby (id, name, description) VALUES (3, 'Dibujar', 'Realizar dibujos de objetos');

INSERT INTO employee_department (id, name, description) VALUES (1, 'Sistemas', 'Departamento del area de Sistemas');
INSERT INTO employee_department (id, name, description) VALUES (2, 'Industrial', 'Departamento del area de Arquitectura');
INSERT INTO employee_department (id, name, description) VALUES (3, 'Servicios Escolares', 'Departamento de Servicios Escolares para alumnos');
INSERT INTO employee_department (id, name, description) VALUES (4, 'Actividades Extraescolares', 'Departamento de planeacion');
INSERT INTO employee_department (id, name, description) VALUES (5, 'Centro de Cómputo', 'Departamento Administrativo');
INSERT INTO employee_department (id, name, description) VALUES (6, 'Dirección', 'Departamento Directivo');

INSERT INTO employee (id, first_name, last_name, id_boss, id_departament) VALUES (1, 'Carolina', 'Jimenez', 1, 1);
INSERT INTO employee (id, first_name, last_name, id_boss, id_departament) VALUES (4, 'Mariana', 'Perez', 1, 4);
INSERT INTO employee (id, first_name, last_name, id_boss, id_departament) VALUES (2, 'Mario', 'Torres', 4, 2);
INSERT INTO employee (id, first_name, last_name, id_boss, id_departament) VALUES (3, 'Jose', 'Ruiz', 2, 3);


INSERT INTO employee_hobbies (id_employee, id_hobby) VALUES (1, 1);
INSERT INTO employee_hobbies (id_employee, id_hobby) VALUES (1, 3);
INSERT INTO employee_hobbies (id_employee, id_hobby) VALUES (2, 1);
INSERT INTO employee_hobbies (id_employee, id_hobby) VALUES (2, 3);
INSERT INTO employee_hobbies (id_employee, id_hobby) VALUES (3, 2);
INSERT INTO employee_hobbies (id_employee, id_hobby) VALUES (3, 3);
INSERT INTO employee_hobbies (id_employee, id_hobby) VALUES (4, 1);
INSERT INTO employee_hobbies (id_employee, id_hobby) VALUES (4, 2);











-- ...
