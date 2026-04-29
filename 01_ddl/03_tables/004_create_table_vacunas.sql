CREATE TABLE mascotas.vacunas (
    id SERIAL PRIMARY KEY,
    mascota_id INT NOT NULL,
    nombre_vacuna VARCHAR(100),
    fecha_aplicacion DATE,

    CONSTRAINT fk_mascota_vacuna
    FOREIGN KEY (mascota_id)
    REFERENCES mascotas.mascotas(id)
    ON DELETE CASCADE
);