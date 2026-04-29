CREATE TABLE mascotas.citas (
    id SERIAL PRIMARY KEY,
    mascota_id INT NOT NULL,
    fecha DATE NOT NULL,
    motivo VARCHAR(255),

    CONSTRAINT fk_mascota_cita
    FOREIGN KEY (mascota_id)
    REFERENCES mascotas.mascotas(id)
    ON DELETE CASCADE
);