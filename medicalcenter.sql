DROP DATABASE IF EXISTS medicalcenter;

CREATE DATABASE medicalcenter;

\c medicalcenter

CREATE TABLE doctors (
    id SERIAL PRIMARY KEY,
    name TEXT
);

CREATE TABLE patients (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    diseases TEXT
);

CREATE TABLE visit (
    id SERIAL PRIMARY KEY,
    doctor_id INTEGER REFERENCES doctors ON DELETE CASCADE, 
    patient_id INTEGER REFERENCES patients ON DELETE CASCADE 
);


INSERT INTO doctors (name) VALUES ('Dr. Smith');

INSERT INTO patients (name, diseases) VALUES ('Jane Doe', 'parkinsons');