-- Crear la base de datos
CREATE DATABASE IF NOT EXISTS geofisica;
USE geofisica;

-- Crear la tabla para los sondeos eléctricos verticales (SEV)
CREATE TABLE IF NOT EXISTS sondeos (
    id_sondeo INT AUTO_INCREMENT PRIMARY KEY, -- Identificador único del sondeo
    profundidad_exploracion DECIMAL(10, 2) NOT NULL, -- Profundidad de exploración en metros
    ab_2 DECIMAL(10, 2) NOT NULL, -- Distancia entre electrodos de corriente (AB/2)
    mn_2 DECIMAL(10, 2) NOT NULL, -- Distancia entre electrodos de potencial (MN/2)
    sp DECIMAL(10, 2), -- Potencial espontáneo (SP)
    resistividad_aparente DECIMAL(10, 2) NOT NULL, -- Resistividad aparente medida (Ω·m)
    resistividad DECIMAL(10, 2), -- Resistividad interpretada (Ω·m)
    unidad_geologica VARCHAR(255) NOT NULL, -- Unidad geológica interpretada
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP -- Fecha de registro del sondeo
);

-- Insertar datos de ejemplo en la tabla
INSERT INTO sondeos (profundidad_exploracion, ab_2, mn_2, sp, resistividad_aparente, resistividad, unidad_geologica)
VALUES
(50.00, 10.00, 1.00, -5.60, 120.50, 110.00, 'Arenisca'),
(75.00, 15.00, 1.50, -6.10, 95.20, 90.50, 'Lutita'),
(100.00, 20.00, 2.00, -4.80, 180.40, 170.10, 'Acuífero'),
(30.00, 5.00, 0.50, -3.50, 60.00, 58.00, 'Grava');

-- Consultar todos los registros para verificar los datos
SELECT * FROM sondeos;

-- Consultar estadísticas básicas
-- Promedio de resistividad aparente
SELECT AVG(resistividad_aparente) AS promedio_resistividad_aparente FROM sondeos;

-- Contar registros por unidad geológica
SELECT unidad_geologica, COUNT(*) AS total_sondeos
FROM sondeos
GROUP BY unidad_geologica;
