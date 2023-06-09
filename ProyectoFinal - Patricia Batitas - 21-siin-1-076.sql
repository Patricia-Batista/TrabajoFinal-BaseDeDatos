
/****** Nombre:Patricia Bienvenida Batitas Pujols - Matricula:21-siin-1-076 - Seccion:0541 ******/





USE [master]
GO
/****** Object:  Database [Inventec]    Script Date: 25/4/2023 10:08:10 p. m. ******/
CREATE DATABASE [Inventec]

USE [Inventec]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 25/4/2023 10:08:10 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[ClienteID] [int] NOT NULL,
	[NombreCliente] [varchar](50) NULL,
	[ApellidoCliente] [varchar](50) NULL,
	[DireccionCliente] [varchar](100) NULL,
	[TelefonoCliente] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ClienteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Detalle_de_Ventas]    Script Date: 25/4/2023 10:08:10 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Detalle_de_Ventas](
	[DetalleVentaID] [int] NOT NULL,
	[VentaID] [int] NULL,
	[ProductoID] [int] NULL,
	[Cantidad] [int] NULL,
	[PrecioUnitario] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[DetalleVentaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productos]    Script Date: 25/4/2023 10:08:10 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productos](
	[ProductoID] [int] NOT NULL,
	[NombreProducto] [varchar](50) NULL,
	[DescripcionProducto] [varchar](100) NULL,
	[Precio] [decimal](10, 2) NULL,
	[ProveedorID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Proveedores]    Script Date: 25/4/2023 10:08:10 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proveedores](
	[ProveedorID] [int] NOT NULL,
	[NombreProveedor] [varchar](50) NULL,
	[DireccionProveedor] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ProveedorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ventas]    Script Date: 25/4/2023 10:08:10 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ventas](
	[VentaID] [int] NOT NULL,
	[FechaVenta] [date] NULL,
	[ClienteID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[VentaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Clientes] ([ClienteID], [NombreCliente], [ApellidoCliente], [DireccionCliente], [TelefonoCliente]) VALUES (1, N'Virginia', N'Evans', N'Calle A #123', N'111-111-1111')
INSERT [dbo].[Clientes] ([ClienteID], [NombreCliente], [ApellidoCliente], [DireccionCliente], [TelefonoCliente]) VALUES (2, N'Rafa', N'Halabi', N'Calle B #456', N'222-222-2222')
INSERT [dbo].[Clientes] ([ClienteID], [NombreCliente], [ApellidoCliente], [DireccionCliente], [TelefonoCliente]) VALUES (3, N'Skye', N'Skye', N'Calle C #789', N'333-333-3333')
INSERT [dbo].[Clientes] ([ClienteID], [NombreCliente], [ApellidoCliente], [DireccionCliente], [TelefonoCliente]) VALUES (4, N'Danilo', N'Ferreira', N'Calle D #1011', N'444-444-4444')
INSERT [dbo].[Clientes] ([ClienteID], [NombreCliente], [ApellidoCliente], [DireccionCliente], [TelefonoCliente]) VALUES (5, N'Ilyas', N'Dratchev', N'Calle E #1213', N'555-555-5555')
INSERT [dbo].[Clientes] ([ClienteID], [NombreCliente], [ApellidoCliente], [DireccionCliente], [TelefonoCliente]) VALUES (6, N'Chyou', N'Tien', N'Calle F #1415', N'666-666-6666')
INSERT [dbo].[Clientes] ([ClienteID], [NombreCliente], [ApellidoCliente], [DireccionCliente], [TelefonoCliente]) VALUES (7, N'Jadranko', N'Duvnjak', N'Calle G #1617', N'777-777-7777')
INSERT [dbo].[Clientes] ([ClienteID], [NombreCliente], [ApellidoCliente], [DireccionCliente], [TelefonoCliente]) VALUES (8, N'Esther', N'Rasmussen', N'Calle H #1819', N'888-888-8888')
INSERT [dbo].[Clientes] ([ClienteID], [NombreCliente], [ApellidoCliente], [DireccionCliente], [TelefonoCliente]) VALUES (9, N'Mirko', N'Block', N'Calle I #2021', N'999-999-9999')
INSERT [dbo].[Clientes] ([ClienteID], [NombreCliente], [ApellidoCliente], [DireccionCliente], [TelefonoCliente]) VALUES (10, N'Kathrin', N'Vogt', N'Calle J #2223', N'000-000-0000')
GO
INSERT [dbo].[Detalle_de_Ventas] ([DetalleVentaID], [VentaID], [ProductoID], [Cantidad], [PrecioUnitario]) VALUES (1, 1, 1, 2, CAST(20.00 AS Decimal(10, 2)))
INSERT [dbo].[Detalle_de_Ventas] ([DetalleVentaID], [VentaID], [ProductoID], [Cantidad], [PrecioUnitario]) VALUES (2, 1, 2, 1, CAST(40.00 AS Decimal(10, 2)))
INSERT [dbo].[Detalle_de_Ventas] ([DetalleVentaID], [VentaID], [ProductoID], [Cantidad], [PrecioUnitario]) VALUES (3, 2, 3, 3, CAST(30.00 AS Decimal(10, 2)))
INSERT [dbo].[Detalle_de_Ventas] ([DetalleVentaID], [VentaID], [ProductoID], [Cantidad], [PrecioUnitario]) VALUES (4, 2, 4, 1, CAST(25.00 AS Decimal(10, 2)))
INSERT [dbo].[Detalle_de_Ventas] ([DetalleVentaID], [VentaID], [ProductoID], [Cantidad], [PrecioUnitario]) VALUES (5, 3, 5, 1, CAST(80.00 AS Decimal(10, 2)))
INSERT [dbo].[Detalle_de_Ventas] ([DetalleVentaID], [VentaID], [ProductoID], [Cantidad], [PrecioUnitario]) VALUES (6, 3, 6, 5, CAST(5.00 AS Decimal(10, 2)))
INSERT [dbo].[Detalle_de_Ventas] ([DetalleVentaID], [VentaID], [ProductoID], [Cantidad], [PrecioUnitario]) VALUES (7, 4, 7, 2, CAST(50.00 AS Decimal(10, 2)))
INSERT [dbo].[Detalle_de_Ventas] ([DetalleVentaID], [VentaID], [ProductoID], [Cantidad], [PrecioUnitario]) VALUES (8, 4, 8, 1, CAST(35.00 AS Decimal(10, 2)))
INSERT [dbo].[Detalle_de_Ventas] ([DetalleVentaID], [VentaID], [ProductoID], [Cantidad], [PrecioUnitario]) VALUES (9, 5, 9, 4, CAST(10.00 AS Decimal(10, 2)))
INSERT [dbo].[Detalle_de_Ventas] ([DetalleVentaID], [VentaID], [ProductoID], [Cantidad], [PrecioUnitario]) VALUES (10, 5, 10, 2, CAST(15.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [ProveedorID]) VALUES (1, N'Camiseta', N'Camiseta de algodón', CAST(20.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [ProveedorID]) VALUES (2, N'Pantalón', N'Pantalón de mezclilla', CAST(40.00 AS Decimal(10, 2)), 2)
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [ProveedorID]) VALUES (3, N'Blusa', N'Blusa de seda', CAST(30.00 AS Decimal(10, 2)), 3)
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [ProveedorID]) VALUES (4, N'Short', N'Short deportivo', CAST(25.00 AS Decimal(10, 2)), 4)
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [ProveedorID]) VALUES (5, N'Chaqueta', N'Chaqueta de cuero', CAST(80.00 AS Decimal(10, 2)), 5)
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [ProveedorID]) VALUES (6, N'Calcetines', N'Calcetines de algodón', CAST(5.00 AS Decimal(10, 2)), 1)
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [ProveedorID]) VALUES (7, N'Zapatos', N'Zapatos de tacón', CAST(50.00 AS Decimal(10, 2)), 2)
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [ProveedorID]) VALUES (8, N'Falda', N'Falda corta', CAST(35.00 AS Decimal(10, 2)), 3)
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [ProveedorID]) VALUES (9, N'Short', N'Short Azul', CAST(25.00 AS Decimal(10, 2)), 5)
INSERT [dbo].[Productos] ([ProductoID], [NombreProducto], [DescripcionProducto], [Precio], [ProveedorID]) VALUES (10, N'Sombrero', N'Sombrero de paja', CAST(15.00 AS Decimal(10, 2)), 4)
GO
INSERT [dbo].[Proveedores] ([ProveedorID], [NombreProveedor], [DireccionProveedor]) VALUES (1, N'HomeBase', N'2168 Poling Farm Road')
INSERT [dbo].[Proveedores] ([ProveedorID], [NombreProveedor], [DireccionProveedor]) VALUES (2, N'VirginMegastores', N'2168 Poling Farm Road')
INSERT [dbo].[Proveedores] ([ProveedorID], [NombreProveedor], [DireccionProveedor]) VALUES (3, N'PakAndSave', N'Calle 3 #789')
INSERT [dbo].[Proveedores] ([ProveedorID], [NombreProveedor], [DireccionProveedor]) VALUES (4, N'JayJacobs', N'Calle 4 #1011')
INSERT [dbo].[Proveedores] ([ProveedorID], [NombreProveedor], [DireccionProveedor]) VALUES (5, N'MissionG', N'Calle 5 #1213')
INSERT [dbo].[Proveedores] ([ProveedorID], [NombreProveedor], [DireccionProveedor]) VALUES (6, N'Silverwoods', N'Calle 6 #1415')
INSERT [dbo].[Proveedores] ([ProveedorID], [NombreProveedor], [DireccionProveedor]) VALUES (7, N'PayNPak', N'Calle 7 #1617')
INSERT [dbo].[Proveedores] ([ProveedorID], [NombreProveedor], [DireccionProveedor]) VALUES (8, N'Gottschalks', N'Calle 8 #1819')
INSERT [dbo].[Proveedores] ([ProveedorID], [NombreProveedor], [DireccionProveedor]) VALUES (9, N'Veramons', N'Calle 9 #2021')
INSERT [dbo].[Proveedores] ([ProveedorID], [NombreProveedor], [DireccionProveedor]) VALUES (10, N'Delchamps', N'Calle 10 #2223')
GO
INSERT [dbo].[Ventas] ([VentaID], [FechaVenta], [ClienteID]) VALUES (1, CAST(N'2022-01-01' AS Date), 1)
INSERT [dbo].[Ventas] ([VentaID], [FechaVenta], [ClienteID]) VALUES (2, CAST(N'2022-01-02' AS Date), 2)
INSERT [dbo].[Ventas] ([VentaID], [FechaVenta], [ClienteID]) VALUES (3, CAST(N'2022-01-03' AS Date), 3)
INSERT [dbo].[Ventas] ([VentaID], [FechaVenta], [ClienteID]) VALUES (4, CAST(N'2022-01-04' AS Date), 4)
INSERT [dbo].[Ventas] ([VentaID], [FechaVenta], [ClienteID]) VALUES (5, CAST(N'2022-01-05' AS Date), 5)
INSERT [dbo].[Ventas] ([VentaID], [FechaVenta], [ClienteID]) VALUES (6, CAST(N'2022-01-06' AS Date), 6)
INSERT [dbo].[Ventas] ([VentaID], [FechaVenta], [ClienteID]) VALUES (7, CAST(N'2022-01-07' AS Date), 7)
INSERT [dbo].[Ventas] ([VentaID], [FechaVenta], [ClienteID]) VALUES (8, CAST(N'2022-01-08' AS Date), 8)
INSERT [dbo].[Ventas] ([VentaID], [FechaVenta], [ClienteID]) VALUES (9, CAST(N'2022-01-09' AS Date), 9)
INSERT [dbo].[Ventas] ([VentaID], [FechaVenta], [ClienteID]) VALUES (10, CAST(N'2022-01-10' AS Date), 10)
GO
ALTER TABLE [dbo].[Detalle_de_Ventas]  WITH CHECK ADD FOREIGN KEY([ProductoID])
REFERENCES [dbo].[Productos] ([ProductoID])
GO
ALTER TABLE [dbo].[Detalle_de_Ventas]  WITH CHECK ADD FOREIGN KEY([VentaID])
REFERENCES [dbo].[Ventas] ([VentaID])
GO
ALTER TABLE [dbo].[Productos]  WITH CHECK ADD FOREIGN KEY([ProveedorID])
REFERENCES [dbo].[Proveedores] ([ProveedorID])
GO
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD FOREIGN KEY([ClienteID])
REFERENCES [dbo].[Clientes] ([ClienteID])
GO
USE [master]
GO
ALTER DATABASE [Inventec] SET  READ_WRITE 
GO
