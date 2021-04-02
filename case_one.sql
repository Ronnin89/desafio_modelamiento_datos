-- Creacion BD case_one
CREATE DATABASE caso_one;

--Cambio a la base de datos
\c case_one

-- Creacion tabla department
CREATE TABLE department(
    id SERIAL PRIMARY KEY, 
    name VARCHAR(30)
    );

-- Creacion tabla worker
CREATE TABLE worker (
    id SERIAL PRIMARY KEY, 
    name VARCHAR(30), 
    rut VARCHAR(12), 
    address VARCHAR(50),
    id_department INT REFERENCES departments(id)
    );

-- Creacion tabla paying
CREATE TABLE paying(
    id SERIAL PRIMARY KEY, 
    archive_drive VARCHAR(100), 
    id_worker INT REFERENCES workers(id)
    );
