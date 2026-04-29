CREATE TABLE mascotas.mascotas (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    especie VARCHAR(50),
    raza VARCHAR(50),
    edad INT,
    dueno_id INT NOT NULL,

    CONSTRAINT fk_dueno
    FOREIGN KEY (dueno_id)
    REFERENCES mascotas.duenos(id)
    ON DELETE CASCADE
);