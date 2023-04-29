/****** Nombre:Patricia Bienvenida Batitas Pujols - Matricula:21-siin-1-076 - Seccion:0541 ******/


CREATE DATABASE Inventec;
GO

-- Selección de la base de datos
USE Inventec;
GO

-- Creación de la tabla Proveedores
CREATE TABLE Proveedores (
    ProveedorID INT PRIMARY KEY,
    NombreProveedor VARCHAR(50),
    DireccionProveedor VARCHAR(100)
);
GO

-- Creación de la tabla Productos
CREATE TABLE Productos (
    ProductoID INT PRIMARY KEY,
    NombreProducto VARCHAR(50),
    DescripcionProducto VARCHAR(100),
    Precio DECIMAL(10, 2),
    ProveedorID INT FOREIGN KEY REFERENCES Proveedores(ProveedorID)
);
GO

-- Creación de la tabla Clientes
CREATE TABLE Clientes (
    ClienteID INT PRIMARY KEY,
    NombreCliente VARCHAR(50),
    ApellidoCliente VARCHAR(50),
    DireccionCliente VARCHAR(100),
    TelefonoCliente VARCHAR(20)
);
GO

-- Creación de la tabla Ventas
CREATE TABLE Ventas (
    VentaID INT PRIMARY KEY,
    FechaVenta DATE,
    ClienteID INT FOREIGN KEY REFERENCES Clientes(ClienteID)
);
GO

-- Creación de la tabla Detalle_de_Ventas
CREATE TABLE Detalle_de_Ventas (
    DetalleVentaID INT PRIMARY KEY,
    VentaID INT FOREIGN KEY REFERENCES Ventas(VentaID),
    ProductoID INT FOREIGN KEY REFERENCES Productos(ProductoID),
    Cantidad INT,
    PrecioUnitario DECIMAL(10, 2)
);
GO

-- Inserción de registros en la tabla Proveedores
INSERT INTO Proveedores (ProveedorID, NombreProveedor, DireccionProveedor)
VALUES (1, 'HomeBase', '2168 Poling Farm Road'),
       (2, 'VirginMegastores', '2168 Poling Farm Road'),
       (3, 'PakAndSave', 'Calle 3 #789'),
       (4, 'JayJacobs', 'Calle 4 #1011'),
       (5, 'MissionG', 'Calle 5 #1213'),
       (6, 'Silverwoods', 'Calle 6 #1415'),
       (7, 'PayNPak', 'Calle 7 #1617'),
       (8, 'Gottschalks', 'Calle 8 #1819'),
       (9, 'Veramons', 'Calle 9 #2021'),
       (10, 'Delchamps', 'Calle 10 #2223');
GO

-- Inserción de registros en la tabla Productos
INSERT INTO Productos (ProductoID, NombreProducto, DescripcionProducto, Precio, ProveedorID)
VALUES (1, 'Camiseta', 'Camiseta de algodón', 20.00, 1),
       (2, 'Pantalón', 'Pantalón de mezclilla', 40.00, 2),
       (3, 'Blusa', 'Blusa de seda', 30.00, 3),
       (4, 'Short', 'Short deportivo', 25.00, 4),
       (5, 'Chaqueta', 'Chaqueta de cuero', 80.00, 5),
       (6, 'Calcetines', 'Calcetines de algodón', 5.00, 1),
       (7, 'Zapatos', 'Zapatos de tacón', 50.00, 2),
       (8, 'Falda', 'Falda corta', 35.00, 3),
       (9, 'Short', 'Short Azul', 25.00,5),
       (10, 'Sombrero', 'Sombrero de paja', 15.00, 4);
Go

-- Inserción de registros en la tabla Clientes
INSERT INTO Clientes (ClienteID, NombreCliente, ApellidoCliente, DireccionCliente, TelefonoCliente)
VALUES (1, 'Virginia', 'Evans', 'Calle A #123', '111-111-1111'),
(2, 'Rafa', 'Halabi', 'Calle B #456', '222-222-2222'),
(3, 'Skye', 'Skye', 'Calle C #789', '333-333-3333'),
(4, 'Danilo', 'Ferreira', 'Calle D #1011', '444-444-4444'),
(5, 'Ilyas', 'Dratchev', 'Calle E #1213', '555-555-5555'),
(6, 'Chyou', 'Tien', 'Calle F #1415', '666-666-6666'),
(7, 'Jadranko', 'Duvnjak', 'Calle G #1617', '777-777-7777'),
(8, 'Esther', 'Rasmussen', 'Calle H #1819', '888-888-8888'),
(9, 'Mirko', 'Block', 'Calle I #2021', '999-999-9999'),
(10, 'Kathrin', 'Vogt', 'Calle J #2223', '000-000-0000');
Go

-- Inserción de registros en la tabla Ventas
INSERT INTO Ventas (VentaID, FechaVenta, ClienteID)
VALUES (1, '2022-01-01', 1),
(2, '2022-01-02', 2),
(3, '2022-01-03', 3),
(4, '2022-01-04', 4),
(5, '2022-01-05', 5),
(6, '2022-01-06', 6),
(7, '2022-01-07', 7),
(8, '2022-01-08', 8),
(9, '2022-01-09', 9),
(10, '2022-01-10', 10);
Go

-- Inserción de registros en la tabla Detalle_de_Ventas
INSERT INTO Detalle_de_Ventas (DetalleVentaID, VentaID, ProductoID, Cantidad, PrecioUnitario)
VALUES (1, 1, 1, 2, 20.00),
(2, 1, 2, 1, 40.00),
(3, 2, 3, 3, 30.00),
(4, 2, 4, 1, 25.00),
(5, 3, 5, 1, 80.00),
(6, 3, 6, 5, 5.00),
(7, 4, 7, 2, 50.00),
(8, 4, 8, 1, 35.00),
(9, 5, 9, 4, 10.00),
(10, 5, 10, 2, 15.00);
Go


