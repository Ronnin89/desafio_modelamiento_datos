--Creacion base de datos
CREATE DATABASE case_two;

--Cambio a la base de datos
\c case_two

--Creacion de tabla grade
CREATE TABLE grade (
    id SERIAL PRIMARY KEY, 
    nombre VARCHAR(30)
    );

--Creacion tabla student
CREATE TABLE alumnos(
    id SERIAL PRIMARY KEY,
    name VARCHAR(50), 
    rut VARCHAR(12), 
    id_grade INT REFERENCES grades(id)
    );

-- Creacion tabla test
CREATE TABLE test (
    id SERIAL PRIMARY KEY, 
    score INT, 
    ID_STUDENT INT REFERENCES students(id),  
    ID_TEACHER INT REFERENCES teachers(id)
    );
-- Creacion tabla teacher
CREATE TABLE teacher (
    id SERIAL PRIMARY KEY, 
    name VARCHAR(50), 
    id_department INT REFERENCES department(id)
    );


-- Creacion tabla department
CREATE TABLE department(
    id SERIAL PRIMARY KEY, 
    name VARCHAR(30)
    );