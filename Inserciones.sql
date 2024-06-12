
-- Insertar departamentos
INSERT INTO Departamento (Nombre) 
VALUES 
('Amazonas'),
('Antioquia'),
('Arauca'),
('Atlantico'),
('Bogota'),
('Bolivar'),
('Boyaca'),
('Caldas'),
('Caqueta'),
('Casanare'),
('Cauca'),
('Cesar'),
('Choco'),
('Cordoba'),
('Cundinamarca'),
('Guainia'),
('Guaviare'),
('Huila'),
('La Guajira'),
('Magdalena'),
('Meta'),
('Nariño'),
('Norte de Santander'),
('Putumayo'),
('Quindio'),
('Risaralda'),
('San Andres y Providencia'),
('Santander'),
('Sucre'),
('Tolima'),
('Valle del Cauca'),
('Vaupes'),
('Vichada');


-- Insertar ciudades para cada departamento
INSERT INTO Ciudad (Nombre, depa_id) VALUES 
('Leticia', 1),
('Puerto Nariño', 1),

('Medellín', 2),
('Bello', 2),
('Envigado', 2),

('Arauca', 3),
('Arauquita', 3),
('Saravena', 3),

('Barranquilla', 4),
('Soledad', 4),
('Malambo', 4),

('Bogotá', 5),

('Cartagena', 6),
('Magangué', 6),
('Turbaco', 6),

('Tunja', 7),
('Duitama', 7),
('Sogamoso', 7),

('Manizales', 8),
('Villamaría', 8),
('Chinchiná', 8),

('Florencia', 9),
('San Vicente del Caguán', 9),
('Cartagena del Chairá', 9),

('Yopal', 10),
('Aguazul', 10),
('Villanueva', 10),

('Popayán', 11),
('Santander de Quilichao', 11),
('Puerto Tejada', 11),

('Valledupar', 12),
('Aguachica', 12),
('Bosconia', 12),

('Quibdó', 13),
('Istmina', 13),
('Condoto', 13),

('Montería', 14),
('Cereté', 14),
('Lorica', 14),

('Soacha', 15),
('Fusagasugá', 15),
('Zipaquirá', 15),

('Inírida', 16),

('San José del Guaviare', 17),

('Neiva', 18),
('Pitalito', 18),
('Garzón', 18),

('Riohacha', 19),
('Maicao', 19),
('Uribia', 19),

('Santa Marta', 20),
('Ciénaga', 20),
('Fundación', 20),

('Villavicencio', 21),
('Acacías', 21),
('Granada', 21),

('Pasto', 22),
('Tumaco', 22),
('Ipiales', 22),

('Cúcuta', 23),
('Ocaña', 23),
('Pamplona', 23),

('Mocoa', 24),
('Puerto Asís', 24),
('Orito', 24),

('Armenia', 25),
('Calarcá', 25),
('Montenegro', 25),

('Pereira', 26),
('Dosquebradas', 26),
('Santa Rosa de Cabal', 26),

('San Andrés', 27),

('Bucaramanga', 28),
('Floridablanca', 28),
('Barrancabermeja', 28),

('Sincelejo', 29),
('Corozal', 29),
('Sampués', 29),

('Ibagué', 30),
('Espinal', 30),
('Melgar', 30),

('Cali', 31),
('Palmira', 31),
('Buenaventura', 31),

('Mitú', 32),

('Puerto Carreño', 33);


-- Insertar 50 clientes con Telefono como VARCHAR y longitud suficiente para Email
INSERT INTO Clientes (Nombre, Apellido, Telefono, Email) VALUES 
('Juan', 'Perez', '3162479873', 'juan.perez@example.com'),
('Maria', 'Lopez', '3114587912', 'maria.lopez@example.com'),
('Carlos', 'Gomez', '3152478963', 'carlos.gomez@example.com'),
('Ana', 'Martinez', '3103479874', 'ana.martinez@example.com'),
('Luis', 'Garcia', '3121479865', 'luis.garcia@example.com'),
('Laura', 'Rodriguez', '3132479866', 'laura.rodriguez@example.com'),
('Pedro', 'Sanchez', '3142479867', 'pedro.sanchez@example.com'),
('Elena', 'Ramirez', '3162479868', 'elena.ramirez@example.com'),
('Jorge', 'Hernandez', '3172479869', 'jorge.hernandez@example.com'),
('Marta', 'Diaz', '3182479870', 'marta.diaz@example.com'),
('Jose', 'Torres', '3192479871', 'jose.torres@example.com'),
('Rosa', 'Vargas', '3202479872', 'rosa.vargas@example.com'),
('Miguel', 'Cruz', '3212479873', 'miguel.cruz@example.com'),
('Lucia', 'Morales', '3222479874', 'lucia.morales@example.com'),
('Roberto', 'Ortiz', '3232479875', 'roberto.ortiz@example.com'),
('Andrea', 'Gimenez', '3242479876', 'andrea.gimenez@example.com'),
('Sergio', 'Marquez', '3252479877', 'sergio.marquez@example.com'),
('Paula', 'Flores', '3262479878', 'paula.flores@example.com'),
('Ricardo', 'Castro', '3272479879', 'ricardo.castro@example.com'),
('Isabel', 'Rojas', '3282479880', 'isabel.rojas@example.com'),
('Fernando', 'Mendoza', '3292479881', 'fernando.mendoza@example.com'),
('Pilar', 'Guerrero', '3302479882', 'pilar.guerrero@example.com'),
('Ramon', 'Navarro', '3312479883', 'ramon.navarro@example.com'),
('Sara', 'Paredes', '3322479884', 'sara.paredes@example.com'),
('Victor', 'Moya', '3332479885', 'victor.moya@example.com'),
('Olga', 'Ramos', '3342479886', 'olga.ramos@example.com'),
('Adrian', 'Vega', '3352479887', 'adrian.vega@example.com'),
('Irene', 'Herrera', '3362479888', 'irene.herrera@example.com'),
('Alberto', 'Santos', '3372479889', 'alberto.santos@example.com'),
('Sofia', 'Espinosa', '3382479890', 'sofia.espinosa@example.com'),
('Gonzalo', 'Suarez', '3392479891', 'gonzalo.suarez@example.com'),
('Clara', 'Gutierrez', '3402479892', 'clara.gutierrez@example.com'),
('Hugo', 'Marti', '3412479893', 'hugo.marti@example.com'),
('Natalia', 'Rubio', '3422479894', 'natalia.rubio@example.com'),
('Felipe', 'Peña', '3432479895', 'felipe.pena@example.com'),
('Rocio', 'Reyes', '3442479896', 'rocio.reyes@example.com'),
('Guillermo', 'Palacios', '3452479897', 'guillermo.palacios@example.com'),
('Silvia', 'Luna', '3462479898', 'silvia.luna@example.com'),
('Eduardo', 'Serrano', '3472479899', 'eduardo.serrano@example.com'),
('Carmen', 'Blanco', '3482479800', 'carmen.blanco@example.com'),
('Javier', 'Campos', '3492479801', 'javier.campos@example.com'),
('Alicia', 'Rivera', '3502479802', 'alicia.rivera@example.com'),
('Ivan', 'Medina', '3512479803', 'ivan.medina@example.com'),
('Esther', 'Nieves', '3522479804', 'esther.nieves@example.com'),
('Raul', 'Sanz', '3532479805', 'raul.sanz@example.com'),
('Monica', 'Ferrer', '3542479806', 'monica.ferrer@example.com'),
('Pablo', 'Duran', '3552479807', 'pablo.duran@example.com'),
('Patricia', 'Romero', '3562479808', 'patricia.romero@example.com'),
('Francisco', 'Munoz', '3572479809', 'francisco.munoz@example.com'),
('Beatriz', 'Carrasco', '3582479810', 'beatriz.carrasco@example.com');






-- Insertar direcciones para los clientes de forma aleatoria
INSERT INTO Direccion (cliente_id, direccion, ciudad_id) VALUES
(1, 'Calle 1 #123', 1),
(2, 'Avenida 2 #456', 2),
(3, 'Calle 3 #789', 3),
(4, 'Carrera 4 #101', 4),
(5, 'Carrera 5 #202', 5),
(6, 'Calle 6 #303', 6),
(7, 'Carrera 7 #404', 7),
(8, 'Avenida 8 #505', 8),
(9, 'Calle 9 #606', 9),
(10, 'Carrera 10 #707', 10),
(11, 'Calle 11 #808', 11),
(12, 'Carrera 12 #909', 12),
(13, 'Avenida 13 #1010', 13),
(14, 'Calle 14 #1111', 14),
(15, 'Carrera 15 #1212', 15),
(16, 'Calle 16 #1313', 16),
(17, 'Avenida 17 #1414', 17),
(18, 'Calle 18 #1515', 18),
(19, 'Carrera 19 #1616', 19),
(20, 'Calle 20 #1717', 20),
(21, 'Carrera 21 #1818', 21),
(22, 'Avenida 22 #1919', 22),
(23, 'Calle 23 #2020', 23),
(24, 'Carrera 24 #2121', 24),
(25, 'Calle 25 #2222', 25),
(26, 'Carrera 26 #2323', 26),
(27, 'Avenida 27 #2424', 27),
(28, 'Calle 28 #2525', 28),
(29, 'Carrera 29 #2626', 29),
(30, 'Calle 30 #2727', 30),
(31, 'Carrera 31 #2828', 31),
(32, 'Calle 32 #2929', 32),
(33, 'Carrera 33 #3030', 33),
(34, 'Avenida 34 #3131', 34),
(35, 'Calle 35 #3232', 35),
(36, 'Carrera 36 #3333', 36),
(37, 'Calle 37 #3434', 37),
(38, 'Carrera 38 #3535', 38),
(39, 'Calle 39 #3636', 39),
(40, 'Carrera 40 #3737', 40),
(41, 'Calle 41 #3838', 41),
(42, 'Carrera 42 #3939', 42),
(43, 'Avenida 43 #4040', 43),
(44, 'Calle 44 #4141', 44),
(45, 'Carrera 45 #4242', 45),
(46, 'Calle 46 #4343', 46),
(47, 'Avenida 47 #4444', 47),
(48, 'Calle 48 #4545', 48),
(49, 'Carrera 49 #4646', 49),
(50, 'Calle 50 #4747', 50);


INSERT INTO Modelo (Nombre) 
VALUES 
('Mazda 3'), -- modelo_id 1
('Mazda CX-5'), -- modelo_id 2
('Mazda 6'), -- modelo_id 3
('Mazda MX-5'), -- modelo_id 4
('Suzuki Swift'), -- modelo_id 5
('Suzuki Vitara'), -- modelo_id 6
('Suzuki Jimny'), -- modelo_id 7
('Suzuki Alto'), -- modelo_id 8
('Chevrolet Onix'), -- modelo_id 9
('Chevrolet Traverse'), -- modelo_id 10
('Chevrolet Spark'), -- modelo_id 11
('Chevrolet Equinox'), -- modelo_id 12
('Renault Duster'), -- modelo_id 13
('Renault Sandero'), -- modelo_id 14
('Renault Logan'), -- modelo_id 15
('Renault Koleos'), -- modelo_id 16
('Toyota Corolla Cross'), -- modelo_id 17
('Toyota RAV4'), -- modelo_id 18
('Toyota Hilux'), -- modelo_id 19
('Toyota Prius'), -- modelo_id 20
('BMW X5'), -- modelo_id 21
('BMW 3 Series'), -- modelo_id 22
('BMW i8'), -- modelo_id 23
('BMW X1'), -- modelo_id 24
('Mercedes-Benz C-Class'), -- modelo_id 25
('Mercedes-Benz GLE'), -- modelo_id 26
('Mercedes-Benz A-Class'), -- modelo_id 27
('Mercedes-Benz E-Class'), -- modelo_id 28
('Audi A4'), -- modelo_id 29
('Audi Q5'), -- modelo_id 30
('Audi A3'), -- modelo_id 31
('Audi Q7'), -- modelo_id 32
('Honda Civic'), -- modelo_id 33
('Honda CR-V'), -- modelo_id 34
('Honda Accord'), -- modelo_id 35
('Honda Pilot'); -- modelo_id 36

-- Insertar las relaciones de modelo y marca
INSERT INTO Marca (modelo_id, marca) 
VALUES 
(1, 'Mazda'), 
(2, 'Mazda'), 
(3, 'Mazda'), 
(4, 'Mazda'), 
(5, 'Suzuki'), 
(6, 'Suzuki'), 
(7, 'Suzuki'), 
(8, 'Suzuki'), 
(9, 'Chevrolet'), 
(10, 'Chevrolet'), 
(11, 'Chevrolet'), 
(12, 'Chevrolet'), 
(13, 'Renault'), 
(14, 'Renault'), 
(15, 'Renault'), 
(16, 'Renault'), 
(17, 'Toyota'), 
(18, 'Toyota'), 
(19, 'Toyota'), 
(20, 'Toyota'), 
(21, 'BMW'), 
(22, 'BMW'), 
(23, 'BMW'), 
(24, 'BMW'), 
(25, 'Mercedes-Benz'), 
(26, 'Mercedes-Benz'), 
(27, 'Mercedes-Benz'), 
(28, 'Mercedes-Benz'), 
(29, 'Audi'), 
(30, 'Audi'), 
(31, 'Audi'), 
(32, 'Audi'), 
(33, 'Honda'), 
(34, 'Honda'), 
(35, 'Honda'), 
(36, 'Honda');


-- Insertar vehículos
INSERT INTO Vehiculo (cliente_id, placa, Tipo, año, marca_id)
VALUES 
(1, 'ABC123', 'Sedan', 2020, 1),
(1, 'DEF456', 'SUV', 2021, 2),
(2, 'GHI789', 'Truck', 2019, 3),
(3, 'JKL012', 'Sedan', 2018, 4),
(3, 'MNO345', 'SUV', 2020, 5),
(3, 'PQR678', 'Truck', 2021, 6),
(4, 'STU901', 'Sedan', 2020, 7),
(5, 'VWX234', 'SUV', 2022, 8),
(6, 'YZA567', 'Truck', 2019, 9),
(7, 'BCD890', 'Sedan', 2020, 1),
(8, 'EFG123', 'SUV', 2021, 2),
(9, 'HIJ456', 'Truck', 2022, 3),
(10, 'KLM789', 'Sedan', 2018, 4),
(11, 'NOP012', 'SUV', 2020, 5),
(12, 'QRS345', 'Truck', 2021, 6),
(13, 'TUV678', 'Sedan', 2022, 7),
(14, 'WXY901', 'SUV', 2019, 8),
(15, 'ZAB234', 'Truck', 2020, 9),
(16, 'CDE567', 'Sedan', 2021, 1),
(17, 'FGH890', 'SUV', 2018, 2),
(18, 'IJK123', 'Truck', 2020, 3),
(19, 'LMN456', 'Sedan', 2021, 4),
(20, 'OPQ789', 'SUV', 2022, 5),
(21, 'RST012', 'Truck', 2019, 6),
(22, 'UVW345', 'Sedan', 2020, 7),
(23, 'XYZ678', 'SUV', 2021, 8),
(24, 'ABC901', 'Truck', 2022, 9),
(25, 'DEF234', 'Sedan', 2018, 1),
(26, 'GHI567', 'SUV', 2020, 2),
(27, 'JKL890', 'Truck', 2021, 3),
(28, 'MNO123', 'Sedan', 2022, 4),
(29, 'PQR456', 'SUV', 2019, 5),
(30, 'STU789', 'Truck', 2020, 6),
(31, 'VWX012', 'Sedan', 2021, 7),
(32, 'YZA345', 'SUV', 2018, 8),
(33, 'BCD678', 'Truck', 2020, 9),
(34, 'EFG901', 'Sedan', 2021, 1),
(35, 'HIJ234', 'SUV', 2022, 2),
(36, 'KLM567', 'Truck', 2019, 3),
(37, 'NOP890', 'Sedan', 2020, 4),
(38, 'QRS123', 'SUV', 2021, 5),
(39, 'TUV456', 'Truck', 2022, 6),
(40, 'WXY789', 'Sedan', 2018, 7),
(41, 'ZAB012', 'SUV', 2020, 8),
(42, 'CDE345', 'Truck', 2021, 9),
(43, 'FGH678', 'Sedan', 2022, 1),
(44, 'IJK901', 'SUV', 2019, 2),
(45, 'LMN234', 'Truck', 2020, 3),
(46, 'OPQ567', 'Sedan', 2021, 4),
(47, 'RST890', 'SUV', 2022, 5),
(48, 'UVW123', 'Truck', 2019, 6),
(49, 'XYZ456', 'Sedan', 2020, 7),
(50, 'ABC789', 'SUV', 2021, 8),
(50, 'DEF012', 'Truck', 2022, 9);

-- Insertar servicios
INSERT INTO Servicios (Nombre, Tipo, Descripcion, Costo)
VALUES 
('Cambio de Aceite', 'Mantenimiento', 'Cambio de aceite del motor', 600000),
('Cambio de Frenos', 'Preventivo', 'Cambio de frenos delanteros', 600000),
('Revisión General', 'Mantenimiento', 'Revisión general del vehículo', 200000),
('Reparacion Motor', 'Reparacion', 'Se repara el motor del vehiculo', 1600000),
('Cambio refrigerante', 'Preventivo', 'Cambio de liquido refrigerante', 600000);

-- Insertar empleados
INSERT INTO Empleados (Nombre, Apellido, Cargo, Telefono) 
VALUES 
('Juan', 'González', 'Jefe General', 3101234567),  -- Jefe General
('María', 'López', 'Recepcionista', 3159876543),    -- Recepcionista
('Pedro', 'Martínez', 'Recepcionista', 3008765432), -- Recepcionista

('Carlos', 'Hernández', 'Mecánico', 3187654321),    -- Mecánico
('Luis', 'Gómez', 'Mecánico', 3176543210),          -- Mecánico
('Ana', 'Rodríguez', 'Mecánico', 3165432109),       -- Mecánico
('Sofía', 'Díaz', 'Mecánico', 3144321098),          -- Mecánico
('Diego', 'Pérez', 'Mecánico', 3133210987),         -- Mecánico
('Laura', 'García', 'Mecánico', 3122109876),        -- Mecánico
('Andrés', 'Martínez', 'Mecánico', 3111098765),     -- Mecánico
('Miguel', 'Rodríguez', 'Mecánico', 3100987654),    -- Mecánico
('Carolina', 'López', 'Mecánico', 3199876543),      -- Mecánico
('Julio', 'Hernández', 'Mecánico', 3188765432),     -- Mecánico
('Gabriela', 'Gómez', 'Mecánico', 3177654321),      -- Mecánico
('David', 'Pérez', 'Mecánico', 3166543210),         -- Mecánico
('Alejandra', 'Martínez', 'Mecánico', 3155432109),  -- Mecánico
('Javier', 'García', 'Mecánico', 3144321098),       -- Mecánico

('Marcela', 'Díaz', 'Técnico', 3133210987),         -- Técnico
('Andrea', 'Martínez', 'Técnico', 3122109876),      -- Técnico
('Roberto', 'García', 'Técnico', 3111098765),       -- Técnico
('Camilo', 'Hernández', 'Técnico', 3100987654),     -- Técnico

('Diego', 'López', 'Jefe de Taller', 3199876543),   -- Jefe de Taller
('Marcela', 'García', 'Jefe de Taller', 3188765432); -- Jefe de Taller



INSERT INTO Proveedores (Nombre, Contacto, Telefono, Email)
VALUES 
('Repuestos ABC', 'Carlos Gomez', 3201234567, 'contacto@repuestosabc.com'),
('AutoPartes XYZ', 'Ana Rodriguez', 3212345678, 'ventas@autopartesxyz.com'),
('Motores y Más', 'Pedro Martinez', 3223456789, 'info@motoresymas.com'),
('Refacciones Plus', 'Luis Hernandez', 3234567890, 'contacto@refaccionesplus.com'),
('Autopartes del Norte', 'Laura Garcia', 3245678901, 'ventas@autopartesnorte.com'),
('Repuestos del Centro', 'Marta Perez', 3256789012, 'info@repuestoscentro.com'),
('Partes y Servicios', 'Juan Ramirez', 3267890123, 'contacto@partesyservicios.com'),
('Distribuidora Auto', 'Carolina Torres', 3278901234, 'ventas@distribuidoraauto.com'),
('Accesorios y Más', 'Sergio Sanchez', 3289012345, 'info@accesoriosymas.com'),
('Repuestos Express', 'Daniela Lopez', 3290123456, 'contacto@repuestosexpress.com');

-- Insertar piezas
INSERT INTO Piezas (Nombre, Descripcion, Precio, proveedor_id, Type)
VALUES 
('Filtro de Aceite', 'Filtro de aceite para motor', 50000, 1, 'Motor'),
('Bujía', 'Bujía para motor de combustión', 20000, 2, 'Motor'),
('Pastillas de Freno', 'Juego de pastillas de freno delanteras', 80000, 3, 'Frenos'),
('Disco de Freno', 'Disco de freno delantero', 120000, 4, 'Frenos'),
('Amortiguador', 'Amortiguador delantero', 250000, 5, 'Suspensión'),
('Filtro de Aire', 'Filtro de aire del motor', 40000, 6, 'Motor'),
('Aceite de Motor', 'Aceite sintético para motor', 90000, 7, 'Motor'),
('Batería', 'Batería de 12V para automóvil', 350000, 8, 'Eléctrico'),
('Correa de Distribución', 'Correa de distribución de motor', 150000, 9, 'Motor'),
('Radiador', 'Radiador de motor', 300000, 10, 'Refrigeración'),
('Alternador', 'Alternador de automóvil', 450000, 1, 'Eléctrico'),
('Bomba de Agua', 'Bomba de agua del motor', 200000, 2, 'Refrigeración'),
('Termostato', 'Termostato de motor', 50000, 3, 'Refrigeración'),
('Embrague', 'Kit de embrague completo', 500000, 4, 'Transmisión'),
('Inyectores', 'Inyectores de combustible', 80000, 5, 'Combustible'),
('Sensor de Oxígeno', 'Sensor de oxígeno para escape', 60000, 6, 'Sensores'),
('Faro Delantero', 'Faro delantero izquierdo', 70000, 7, 'Iluminación'),
('Faro Trasero', 'Faro trasero derecho', 70000, 8, 'Iluminación'),
('Espejo Retrovisor', 'Espejo retrovisor exterior', 50000, 9, 'Accesorios'),
('Parabrisas', 'Parabrisas delantero', 200000, 10, 'Accesorios'),
('Llanta', 'Llanta radial 205/55 R16', 180000, 1, 'Ruedas'),
('Retrovisor Interno', 'Retrovisor interno', 25000, 2, 'Accesorios'),
('Palanca de Cambios', 'Palanca de cambios', 50000, 3, 'Transmisión'),
('Radiador de Calefacción', 'Radiador de calefacción', 150000, 4, 'Refrigeración'),
('Bobina de Encendido', 'Bobina de encendido', 70000, 5, 'Eléctrico');



-- Insertar inventarios
INSERT INTO Inventarios (pieza_id, Cantidad, Ubicacion, umbral)
VALUES 
(1, 10, 'Bodega 1', 20),
(2, 150, 'Bodega 2', 30),
(3, 200, 'Bodega 3', 25),
(4, 50, 'Bodega 1', 10),
(5, 80, 'Bodega 2', 15),
(6, 60, 'Bodega 3', 20),
(7, 120, 'Bodega 1', 30),
(8, 75, 'Bodega 2', 25),
(9, 40, 'Bodega 3', 10),
(10, 30, 'Bodega 1', 5),
(11, 110, 'Bodega 2', 20),
(12, 90, 'Bodega 3', 15),
(13, 70, 'Bodega 1', 10),
(14, 85, 'Bodega 2', 25),
(15, 55, 'Bodega 3', 10),
(16, 130, 'Bodega 1', 35),
(17, 140, 'Bodega 2', 30),
(18, 60, 'Bodega 3', 20),
(19, 200, 'Bodega 1', 40),
(20, 220, 'Bodega 2', 50),
(21, 45, 'Bodega 3', 15),
(22, 30, 'Bodega 1', 10),
(23, 25, 'Bodega 2', 5),
(24, 100, 'Bodega 3', 20),
(25, 9, 'Bodega 1', 25);


-- Insertar órdenes de compra con 10 proveedores (24 registros)
INSERT INTO Orden_Compra (Fecha, proveedor_id, Total)
VALUES 
('2024-06-20', 1, 1500.00),
('2024-06-21', 2, 2000.00),
('2024-06-22', 3, 1800.00),
('2024-06-23', 4, 2200.00),
('2024-06-24', 5, 1900.00),
('2024-06-25', 6, 2500.00),
('2024-06-26', 7, 3000.00),
('2024-06-27', 8, 2700.00),
('2024-06-28', 9, 1900.00),
('2024-06-29', 10, 2200.00),
('2024-07-01', 1, 1800.00),
('2024-07-02', 2, 2300.00),
('2024-07-03', 3, 2100.00),
('2024-07-04', 4, 2400.00),
('2024-07-05', 5, 2000.00),
('2024-07-06', 6, 2600.00),
('2024-07-07', 7, 3100.00),
('2024-07-08', 8, 2800.00),
('2024-07-09', 9, 2000.00),
('2024-07-10', 10, 2300.00),
('2024-07-11', 1, 1900.00),
('2024-07-12', 2, 2400.00),
('2024-07-13', 3, 2200.00),
('2024-07-14', 4, 2500.00);

-- Inserciones para crear entre 2 y 5 registros en Orden_Detalle para cada Orden_Compra
-- Orden 1
INSERT INTO Orden_Detalle (OrdenID, Cantidad, PiezaID, PrecioUnitario)
VALUES 
(1, 3, 1, 50.00),
(1, 2, 2, 75.00);

-- Orden 2
INSERT INTO Orden_Detalle (OrdenID, Cantidad, PiezaID, PrecioUnitario)
VALUES 
(2, 4, 4, 80.00),
(2, 3, 5, 70.00),
(2, 2, 6, 60.00);

-- Orden 3
INSERT INTO Orden_Detalle (OrdenID, Cantidad, PiezaID, PrecioUnitario)
VALUES 
(3, 5, 7, 90.00),
(3, 4, 8, 100.00),
(3, 3, 9, 110.00),
(3, 2, 10, 120.00);

-- Orden 4
INSERT INTO Orden_Detalle (OrdenID, Cantidad, PiezaID, PrecioUnitario)
VALUES 
(4, 3, 11, 130.00),
(4, 4, 12, 140.00),
(4, 5, 13, 150.00),
(4, 2, 14, 160.00);

-- Orden 5
INSERT INTO Orden_Detalle (OrdenID, Cantidad, PiezaID, PrecioUnitario)
VALUES 
(5, 4, 15, 70.00),
(5, 3, 16, 80.00),
(5, 2, 17, 90.00);

-- Orden 6
INSERT INTO Orden_Detalle (OrdenID, Cantidad, PiezaID, PrecioUnitario)
VALUES 
(6, 5, 18, 100.00),
(6, 4, 19, 110.00),
(6, 3, 20, 120.00),
(6, 2, 21, 130.00);

-- Orden 7
INSERT INTO Orden_Detalle (OrdenID, Cantidad, PiezaID, PrecioUnitario)
VALUES 
(7, 4, 22, 140.00),
(7, 5, 23, 150.00),
(7, 2, 24, 160.00);
-- Orden 8
INSERT INTO Orden_Detalle (OrdenID, Cantidad, PiezaID, PrecioUnitario)
VALUES 
(8, 3, 1, 90.00),
(8, 2, 2, 100.00);

-- Orden 9
INSERT INTO Orden_Detalle (OrdenID, Cantidad, PiezaID, PrecioUnitario)
VALUES 
(9, 4, 3, 110.00),
(9, 3, 4, 120.00),
(9, 2, 5, 130.00);

-- Orden 10
INSERT INTO Orden_Detalle (OrdenID, Cantidad, PiezaID, PrecioUnitario)
VALUES 
(10, 5, 6, 140.00),
(10, 4, 7, 150.00),
(10, 3, 8, 160.00),
(10, 2, 9, 170.00);

-- Orden 11
INSERT INTO Orden_Detalle (OrdenID, Cantidad, PiezaID, PrecioUnitario)
VALUES 
(11, 4, 10, 180.00),
(11, 5, 11, 190.00),
(11, 2, 12, 200.00);

-- Orden 12
INSERT INTO Orden_Detalle (OrdenID, Cantidad, PiezaID, PrecioUnitario)
VALUES 
(12, 3, 13, 90.00),
(12, 4, 14, 100.00),
(12, 5, 15, 110.00),
(12, 2, 16, 120.00);

-- Orden 13
INSERT INTO Orden_Detalle (OrdenID, Cantidad, PiezaID, PrecioUnitario)
VALUES 
(13, 5, 17, 130.00),
(13, 2, 18, 140.00),
(13, 3, 19, 150.00),
(13, 4, 20, 160.00);

-- Orden 14
INSERT INTO Orden_Detalle (OrdenID, Cantidad, PiezaID, PrecioUnitario)
VALUES 
(14, 4, 21, 170.00),
(14, 5, 22, 180.00),
(14, 2, 23, 190.00);

-- Orden 15
INSERT INTO Orden_Detalle (OrdenID, Cantidad, PiezaID, PrecioUnitario)
VALUES 
(15, 3, 7, 200.00),
(15, 2, 12, 320.00),
(15, 4, 18, 430.00),
(15, 5, 25, 560.00);

-- Orden 16
INSERT INTO Orden_Detalle (OrdenID, Cantidad, PiezaID, PrecioUnitario)
VALUES 
(16, 2, 1, 90.00),
(16, 4, 9, 150.00),
(16, 3, 14, 200.00);

-- Orden 17
INSERT INTO Orden_Detalle (OrdenID, Cantidad, PiezaID, PrecioUnitario)
VALUES 
(17, 5, 3, 110.00),
(17, 3, 8, 160.00),
(17, 2, 11, 190.00),
(17, 4, 15, 220.00);

-- Orden 18
INSERT INTO Orden_Detalle (OrdenID, Cantidad, PiezaID, PrecioUnitario)
VALUES 
(18, 4, 2, 100.00),
(18, 3, 6, 130.00),
(18, 2, 10, 180.00),
(18, 5, 17, 240.00);

-- Orden 19
INSERT INTO Orden_Detalle (OrdenID, Cantidad, PiezaID, PrecioUnitario)
VALUES 
(19, 5, 5, 140.00),
(19, 2, 13, 210.00),
(19, 3, 16, 260.00),
(19, 4, 20, 320.00);

-- Orden 20
INSERT INTO Orden_Detalle (OrdenID, Cantidad, PiezaID, PrecioUnitario)
VALUES 
(20, 2, 4, 120.00),
(20, 5, 9, 180.00),
(20, 3, 15, 230.00);

-- Orden 21
INSERT INTO Orden_Detalle (OrdenID, Cantidad, PiezaID, PrecioUnitario)
VALUES 
(21, 5, 3, 110.00),
(21, 2, 7, 140.00),
(21, 4, 11, 160.00),
(21, 3, 14, 200.00);

-- Orden 22
INSERT INTO Orden_Detalle (OrdenID, Cantidad, PiezaID, PrecioUnitario)
VALUES 
(22, 2, 1, 90.00),
(22, 4, 4, 120.00),
(22, 3, 8, 160.00);

-- Orden 23
INSERT INTO Orden_Detalle (OrdenID, Cantidad, PiezaID, PrecioUnitario)
VALUES 
(23, 4, 5, 140.00),
(23, 3, 9, 150.00),
(23, 2, 12, 180.00),
(23, 5, 16, 210.00);

-- Orden 24
INSERT INTO Orden_Detalle (OrdenID, Cantidad, PiezaID, PrecioUnitario)
VALUES 
(24, 2, 10, 170.00),
(24, 5, 13, 190.00),
(24, 4, 17, 220.00);



INSERT INTO Reparaciones (Fecha, vehiculo_id, empleado_id, servicio_id, CostoTotal, Descripcion, Duracion) VALUES
('2022-03-15', 1, 1, 1, 500000, 'Reparación menor de frenos', '02:30:00'),
('2023-05-20', 1, 2, 2, 650000, 'Cambio de aceite y filtro', '01:00:00'),
('2021-07-12', 2, 3, 3, 300000, 'Revisión general y ajuste', '01:30:00'),
('2023-11-30', 2, 4, 4, 1200000, 'Reparación completa del motor', '05:00:00'),
('2020-09-10', 3, 5, 5, 600000, 'Cambio de refrigerante', '01:20:00'),
('2022-02-18', 3, 6, 1, 520000, 'Mantenimiento de rutina', '02:00:00'),
('2023-12-25', 4, 7, 2, 640000, 'Reemplazo de frenos', '01:40:00'),
('2021-04-01', 4, 8, 3, 450000, 'Revisión y diagnóstico', '01:15:00'),
('2022-08-22', 5, 9, 4, 1400000, 'Reparación mayor del motor', '06:00:00'),
('2023-06-18', 5, 10, 5, 700000, 'Servicio de refrigerante', '01:30:00'),
('2020-11-15', 6, 1, 1, 500000, 'Ajuste de frenos', '02:30:00'),
('2023-05-20', 6, 2, 2, 650000, 'Cambio de aceite completo', '01:00:00'),
('2021-12-07', 7, 3, 3, 300000, 'Revisión completa', '01:30:00'),
('2022-01-15', 7, 4, 4, 1200000, 'Reparación integral del motor', '05:00:00'),
('2023-08-10', 8, 5, 5, 600000, 'Cambio de líquido refrigerante', '01:20:00'),
('2021-10-25', 8, 6, 1, 520000, 'Servicio de mantenimiento', '02:00:00'),
('2022-09-11', 9, 7, 2, 640000, 'Sustitución de frenos', '01:40:00'),
('2023-03-02', 9, 8, 3, 450000, 'Inspección general', '01:15:00'),
('2021-06-19', 10, 9, 4, 1400000, 'Reparación del motor', '06:00:00'),
('2023-04-20', 10, 10, 5, 700000, 'Mantenimiento de refrigerante', '01:30:00'),
('2020-12-03', 11, 1, 1, 500000, 'Revisión de frenos', '02:30:00'),
('2022-07-14', 11, 2, 2, 650000, 'Cambio de aceite general', '01:00:00'),
('2021-05-09', 12, 3, 3, 300000, 'Ajuste y revisión', '01:30:00'),
('2023-01-23', 12, 4, 4, 1200000, 'Reparación total del motor', '05:00:00'),
('2022-11-30', 13, 5, 5, 600000, 'Reemplazo de refrigerante', '01:20:00'),
('2020-02-18', 13, 6, 1, 520000, 'Mantenimiento regular', '02:00:00'),
('2021-04-11', 14, 7, 2, 640000, 'Cambio de frenos', '01:40:00'),
('2023-08-02', 14, 8, 3, 450000, 'Diagnóstico y revisión', '01:15:00'),
('2020-06-10', 15, 9, 4, 1400000, 'Reparación avanzada del motor', '06:00:00'),
('2021-09-18', 15, 10, 5, 700000, 'Mantenimiento del refrigerante', '01:30:00'),
('2023-12-01', 16, 1, 1, 500000, 'Ajuste y reparación de frenos', '02:30:00'),
('2021-05-23', 16, 2, 2, 650000, 'Cambio total de aceite', '01:00:00'),
('2022-03-09', 17, 3, 3, 300000, 'Revisión y ajuste completo', '01:30:00'),
('2023-07-14', 17, 4, 4, 1200000, 'Reparación mayor del motor', '05:00:00'),
('2022-04-22', 18, 5, 5, 600000, 'Servicio del refrigerante', '01:20:00'),
('2023-10-15', 18, 6, 1, 520000, 'Mantenimiento general', '02:00:00'),
('2021-02-11', 19, 7, 2, 640000, 'Sustitución y ajuste de frenos', '01:40:00'),
('2022-12-30', 19, 8, 3, 450000, 'Diagnóstico y mantenimiento', '01:15:00'),
('2023-09-20', 20, 9, 4, 1400000, 'Reparación profunda del motor', '06:00:00'),
('2021-11-19', 20, 10, 5, 700000, 'Reemplazo de líquido refrigerante', '01:30:00');


INSERT INTO Facturacion (factura_id, cliente_id, fecha, total) VALUES 
(1, 1, '2023-01-15', 5000.00),
(2, 2, '2023-02-16', 3000.00),
(3, 3, '2023-03-17', 4500.00),
(4, 4, '2023-04-18', 2000.00),
(5, 5, '2023-05-19', 3500.00),
(6, 6, '2023-06-20', 4000.00),
(7, 7, '2023-07-21', 2500.00),
(8, 8, '2023-08-22', 1500.00),
(9, 9, '2023-09-23', 6000.00),
(10, 10, '2023-10-24', 5500.00),
(11, 11, '2023-11-25', 6500.00),
(12, 12, '2023-12-26', 7000.00),
(13, 13, '2023-01-27', 5000.00),
(14, 14, '2023-02-28', 3000.00),
(15, 15, '2023-03-29', 4500.00),
(16, 16, '2023-04-30', 2000.00),
(17, 17, '2023-05-31', 3500.00),
(18, 18, '2023-06-01', 4000.00),
(19, 19, '2023-07-02', 2500.00),
(20, 20, '2023-08-03', 1500.00),
(21, 21, '2023-09-04', 6000.00),
(22, 22, '2023-10-05', 5500.00),
(23, 23, '2023-11-06', 6500.00),
(24, 24, '2023-12-07', 7000.00),
(25, 25, '2023-01-08', 5000.00);

INSERT INTO Factura_Detalles (FacturaID, ReparacionID, Cantidad, Precio) VALUES
(1, 1, 1, 1000.00),
(2, 2, 1, 2000.00),
(3, 3, 1, 1500.00),
(4, 4, 1, 3000.00),
(5, 5, 1, 4000.00),
(6, 6, 1, 3500.00),
(7, 7, 1, 2500.00),
(8, 8, 1, 4500.00),
(9, 9, 1, 3000.00),
(10, 10, 1, 5000.00),
(11, 1, 2, 2000.00),
(12, 2, 1, 2000.00),
(13, 3, 1, 1500.00),
(14, 4, 1, 3000.00),
(15, 5, 1, 4000.00),
(16, 6, 1, 3500.00),
(17, 7, 1, 2500.00),
(18, 8, 1, 4500.00),
(19, 9, 1, 3000.00),
(20, 10, 1, 5000.00),
(21, 1, 2, 2000.00),
(22, 2, 1, 2000.00),
(23, 3, 1, 1500.00),
(24, 4, 1, 3000.00),
(25, 5, 1, 4000.00);


-- Insertar citas para el cliente Juan Perez
INSERT INTO Citas (FechaHora, cliente_id, vehiculo_id, servicio_id) VALUES 
('2023-06-15 09:00:00', 1, 1, 1), -- Juan Perez, Placa: ABC123, Servicio: Cambio de aceite
('2023-07-10 10:30:00', 1, 1, 2), -- Juan Perez, Placa: ABC123, Servicio: Reparación de frenos
('2023-08-05 13:00:00', 1, 2, 3); -- Juan Perez, Placa: DEF456, Servicio: Alineación y balanceo

-- Insertar citas para el cliente Maria Lopez
INSERT INTO Citas (FechaHora, cliente_id, vehiculo_id, servicio_id) VALUES 
('2023-06-20 08:30:00', 2, 3, 1), -- Maria Lopez, Placa: GHI789, Servicio: Cambio de aceite
('2023-07-15 11:00:00', 2, 3, 2), -- Maria Lopez, Placa: GHI789, Servicio: Reparación de frenos
('2023-08-10 14:30:00', 2, 3, 3); -- Maria Lopez, Placa: GHI789, Servicio: Alineación y balanceo

-- Insertar citas para el cliente Carlos Gomez
INSERT INTO Citas (FechaHora, cliente_id, vehiculo_id, servicio_id) VALUES 
('2023-06-25 10:00:00', 3, 4, 1), -- Carlos Gomez, Placa: JKL012, Servicio: Cambio de aceite
('2023-07-20 12:30:00', 3, 5, 2), -- Carlos Gomez, Placa: MNO345, Servicio: Reparación de frenos
('2023-08-15 15:00:00', 3, 6, 3); -- Carlos Gomez, Placa: PQR678, Servicio: Alineación y balanceo

-- Insertar citas para el cliente Ana Martinez
INSERT INTO Citas (FechaHora, cliente_id, vehiculo_id, servicio_id) VALUES 
('2023-07-01 09:30:00', 4, 7, 1), -- Ana Martinez, Placa: STU901, Servicio: Cambio de aceite
('2023-07-25 11:45:00', 4, 7, 2), -- Ana Martinez, Placa: STU901, Servicio: Reparación de frenos
('2023-08-20 13:15:00', 4, 8, 3); -- Ana Martinez, Placa: VWX234, Servicio: Alineación y balanceo

-- Insertar citas para el cliente Luis Garcia
INSERT INTO Citas (FechaHora, cliente_id, vehiculo_id, servicio_id) VALUES 
('2023-07-05 11:00:00', 5, 9, 1), -- Luis Garcia, Placa: YZA567, Servicio: Cambio de aceite
('2023-08-01 14:15:00', 5, 10, 2), -- Luis Garcia, Placa: BCD890, Servicio: Reparación de frenos
('2023-08-25 16:45:00', 5, 10, 3); -- Luis Garcia, Placa: BCD890, Servicio: Alineación y balanceo


-- Insertar piezas para la reparación 1 (Reparación menor de frenos)
INSERT INTO Reparacion_Piezas (reparacion_id, pieza_id, Cantidad) VALUES 
(1, 4, 2),  -- Disco de Freno (2 unidades)
(1, 3, 1);  -- Pastillas de Freno (1 unidad)

-- Insertar piezas para la reparación 2 (Cambio de aceite y filtro)
INSERT INTO Reparacion_Piezas (reparacion_id, pieza_id, Cantidad) VALUES 
(2, 1, 1),  -- Filtro de Aceite (1 unidad)
(2, 7, 1);  -- Aceite de Motor (1 unidad)

-- Insertar piezas para la reparación 3 (Revisión general y ajuste)
INSERT INTO Reparacion_Piezas (reparacion_id, pieza_id, Cantidad) VALUES 
(3, 16, 1), -- Sensor de Oxígeno (1 unidad)
(3, 6, 1);  -- Filtro de Aire (1 unidad)

-- Insertar piezas para la reparación 4 (Reparación completa del motor)
INSERT INTO Reparacion_Piezas (reparacion_id, pieza_id, Cantidad) VALUES 
(4, 9, 1),  -- Correa de Distribución (1 unidad)
(4, 11, 1), -- Alternador (1 unidad)
(4, 12, 1); -- Bomba de Agua (1 unidad)

-- Insertar piezas para la reparación 5 (Cambio de refrigerante)
INSERT INTO Reparacion_Piezas (reparacion_id, pieza_id, Cantidad) VALUES 
(5, 13, 1), -- Termostato (1 unidad)
(5, 10, 1); -- Radiador (1 unidad)



