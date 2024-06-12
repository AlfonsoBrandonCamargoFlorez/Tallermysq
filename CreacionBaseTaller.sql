-- Crear la tabla Departamento
CREATE TABLE Departamento (
    depa_id INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(24) NOT NULL
);

-- Crear la tabla Ciudad
CREATE TABLE Ciudad (
    ciudad_id INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(24) NOT NULL,
    depa_id INT,
    FOREIGN KEY (depa_id) REFERENCES Departamento(depa_id)
);

-- Crear la tabla Direccion
CREATE TABLE Direccion (
    cliente_id INT,
    direccion VARCHAR(255),
    ciudad_id INT,
    PRIMARY KEY (cliente_id, direccion),
    FOREIGN KEY (ciudad_id) REFERENCES Ciudad(ciudad_id)
);

-- Crear la tabla Clientes
CREATE TABLE Clientes (
    cliente_id INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(24) NOT NULL,
    Apellido VARCHAR(24) NOT NULL,
    Telefono VARCHAR(30),
    Email VARCHAR(150)
);

-- Crear la tabla Modelo
CREATE TABLE Modelo (
    modelo_id INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(24) NOT NULL
);

-- Crear la tabla Marca
CREATE TABLE Marca (
    marca_id INT PRIMARY KEY AUTO_INCREMENT,
    modelo_id INT,
    marca VARCHAR(24),
    FOREIGN KEY (modelo_id) REFERENCES Modelo(modelo_id)
);

-- Crear la tabla Vehiculo
CREATE TABLE Vehiculo (
    vehiculo_id INT PRIMARY KEY AUTO_INCREMENT,
    cliente_id INT,
    placa VARCHAR(10) NOT NULL,
    Tipo VARCHAR(24),
    año INT,
    marca_id INT,
    FOREIGN KEY (cliente_id) REFERENCES Clientes(cliente_id),
    FOREIGN KEY (marca_id) REFERENCES Marca(marca_id)
);

-- Crear la tabla Servicios
CREATE TABLE Servicios (
    servicio_id INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(24) NOT NULL,
    Tipo VARCHAR(24),
    Descripcion VARCHAR(255),
    Costo INT
);

-- Crear la tabla Citas
CREATE TABLE Citas (
    cita_id INT PRIMARY KEY AUTO_INCREMENT,
    FechaHora DATETIME NOT NULL,
    cliente_id INT,
    vehiculo_id INT,
    servicio_id INT,
    FOREIGN KEY (cliente_id) REFERENCES Clientes(cliente_id),
    FOREIGN KEY (vehiculo_id) REFERENCES Vehiculo(vehiculo_id),
    FOREIGN KEY (servicio_id) REFERENCES Servicios(servicio_id)
);

CREATE TABLE Proveedores (
    proveedor_id INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(24),
    Contacto VARCHAR(24),
    Telefono VARCHAR(40),
    Email VARCHAR(150)
);

CREATE TABLE Orden_Compra (
    orden_id INT PRIMARY KEY AUTO_INCREMENT,
    Fecha DATE,
    proveedor_id INT,
    Total DECIMAL(10, 2),
    FOREIGN KEY (proveedor_id) REFERENCES Proveedores(proveedor_id)
);

CREATE TABLE Empleados (
    empleado_id INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(30),
    Apellido VARCHAR(24),
    Cargo VARCHAR(30),
    Telefono VARCHAR(50)
);

CREATE TABLE Facturacion (
    factura_id INT PRIMARY KEY AUTO_INCREMENT,
    Fecha DATE,
    cliente_id INT,
    Total DECIMAL(10, 2),
    FOREIGN KEY (cliente_id) REFERENCES Clientes(cliente_id)
);

CREATE TABLE Piezas (
    pieza_id INT PRIMARY KEY AUTO_INCREMENT,
    Nombre VARCHAR(24),
    Descripcion VARCHAR(255),
    Precio DECIMAL(10, 2),
    proveedor_id INT,
    Type VARCHAR(24),
    FOREIGN KEY (proveedor_id) REFERENCES Proveedores(proveedor_id)
);

CREATE TABLE Inventarios (
    inventario_id INT PRIMARY KEY AUTO_INCREMENT,
    pieza_id INT,
    Cantidad INT,
    Ubicacion VARCHAR(24),
    umbral INT,
    FOREIGN KEY (pieza_id) REFERENCES Piezas(pieza_id)
);

CREATE TABLE Orden_Detalle (
    OrdenID INT,
    Cantidad INT,
    PiezaID INT,
    PrecioUnitario DECIMAL(10, 2),
    PRIMARY KEY (OrdenID, PiezaID),
    FOREIGN KEY (OrdenID) REFERENCES Orden_Compra(orden_id),
    FOREIGN KEY (PiezaID) REFERENCES Piezas(pieza_id)
);

CREATE TABLE Reparaciones (
    reparacion_id INT PRIMARY KEY AUTO_INCREMENT,
    Fecha DATE,
    vehiculo_id INT,
    empleado_id INT,
    servicio_id INT,
    CostoTotal DECIMAL(10, 2),
    Descripcion VARCHAR(255),
    Duracion TIME,
    FOREIGN KEY (vehiculo_id) REFERENCES Vehiculo(vehiculo_id),
    FOREIGN KEY (empleado_id) REFERENCES Empleados(empleado_id),
    FOREIGN KEY (servicio_id) REFERENCES Servicios(servicio_id)
);

CREATE TABLE Factura_Detalles (
    FacturaID INT,
    ReparacionID INT,
    Cantidad INT,
    Precio DECIMAL(10, 2),
    PRIMARY KEY (FacturaID, ReparacionID),
    FOREIGN KEY (FacturaID) REFERENCES Facturacion(factura_id),
    FOREIGN KEY (ReparacionID) REFERENCES Reparaciones(reparacion_id)
);

CREATE TABLE Reparacion_Piezas (
    reparacion_id INT,
    pieza_id INT,
    Cantidad INT,
    PRIMARY KEY (reparacion_id, pieza_id),
    FOREIGN KEY (reparacion_id) REFERENCES Reparaciones(reparacion_id),
    FOREIGN KEY (pieza_id) REFERENCES Piezas(pieza_id)
);
