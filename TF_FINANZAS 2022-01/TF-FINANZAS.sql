USE [Finanzas-TF]
GO
/****** Object:  Table [dbo].[Bono]    Script Date: 25/6/2022 23:30:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bono](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_usuario] [int] NULL,
	[name_bono] [nvarchar](250) NULL,
	[descripcion] [nvarchar](250) NULL,
	[metodo_pago] [nvarchar](50) NULL,
	[valor_nominal] [float] NULL,
	[valor_comercial] [float] NULL,
	[anios] [int] NULL,
	[frecuencia_cupon] [nvarchar](50) NULL,
	[dias_anio] [int] NULL,
	[tipo_tasa_interes] [nvarchar](50) NULL,
	[capitalizacion] [nvarchar](50) NULL,
	[tasa_interes] [float] NULL,
	[tasa_anual_dct] [float] NULL,
	[imp_renta] [float] NULL,
	[fecha_emision] [date] NULL,
	[porcent_prima] [float] NULL,
	[costo_emisor_porcent] [float] NULL,
	[costo_bonista_porcent] [float] NULL,
 CONSTRAINT [PK_Bono] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuario]    Script Date: 25/6/2022 23:30:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuario](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](50) NULL,
	[apellido] [nvarchar](50) NULL,
	[dni] [int] NULL,
	[correo] [nvarchar](50) NULL,
	[contrasenia] [nvarchar](50) NULL,
 CONSTRAINT [PK_usuario] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Bono] ON 
GO
INSERT [dbo].[Bono] ([id], [id_usuario], [name_bono], [descripcion], [metodo_pago], [valor_nominal], [valor_comercial], [anios], [frecuencia_cupon], [dias_anio], [tipo_tasa_interes], [capitalizacion], [tasa_interes], [tasa_anual_dct], [imp_renta], [fecha_emision], [porcent_prima], [costo_emisor_porcent], [costo_bonista_porcent]) VALUES (1, 1, N'Mi primer Bono', N'Este es un ejemplo', N'Aleman', 1000, 1000, 4, N'Anual', 360, N'Efectiva', N'Mensual', 5, 5, 30, CAST(N'2020-01-06' AS Date), 1, 1.9500000476837158, 0.949999988079071)
GO
INSERT [dbo].[Bono] ([id], [id_usuario], [name_bono], [descripcion], [metodo_pago], [valor_nominal], [valor_comercial], [anios], [frecuencia_cupon], [dias_anio], [tipo_tasa_interes], [capitalizacion], [tasa_interes], [tasa_anual_dct], [imp_renta], [fecha_emision], [porcent_prima], [costo_emisor_porcent], [costo_bonista_porcent]) VALUES (3, 3, N'Bono a 5 años', N'Para pagar futuras deudas.', N'Aleman', 900, 800, 5, N'Semestral', 365, N'Nominal', N'Cuatrimestral', 5, 4, 20, CAST(N'2020-01-06' AS Date), 1, 1.9500000476837158, 0.949999988079071)
GO
INSERT [dbo].[Bono] ([id], [id_usuario], [name_bono], [descripcion], [metodo_pago], [valor_nominal], [valor_comercial], [anios], [frecuencia_cupon], [dias_anio], [tipo_tasa_interes], [capitalizacion], [tasa_interes], [tasa_anual_dct], [imp_renta], [fecha_emision], [porcent_prima], [costo_emisor_porcent], [costo_bonista_porcent]) VALUES (4, 1, N'Bono para viaje', N'Ahorros para viaje de matrimonio.', N'Aleman', 1500, 1400, 7, N'Anual', 360, N'Efectiva', N'Diaria', 5, 4, 20, CAST(N'2022-06-25' AS Date), 1, 1.9500000476837158, 0.949999988079071)
GO
SET IDENTITY_INSERT [dbo].[Bono] OFF
GO
SET IDENTITY_INSERT [dbo].[usuario] ON 
GO
INSERT [dbo].[usuario] ([id], [nombre], [apellido], [dni], [correo], [contrasenia]) VALUES (1, N'Jeremy', N'Alcala', 75978850, N'jeremy@hotmail.com', N'fref')
GO
INSERT [dbo].[usuario] ([id], [nombre], [apellido], [dni], [correo], [contrasenia]) VALUES (2, N'Pepe', N'Gomez', 15496278, N'pepe@hotmail.com', N'hola7894')
GO
INSERT [dbo].[usuario] ([id], [nombre], [apellido], [dni], [correo], [contrasenia]) VALUES (3, N'Pedro', N'Castillo', 12345678, N'pedro@hotmail.com', N'holapepito')
GO
INSERT [dbo].[usuario] ([id], [nombre], [apellido], [dni], [correo], [contrasenia]) VALUES (4, N'Gaston', N'Acurio', 14536987, N'gaston@hotmail.com', N'hola1234')
GO
INSERT [dbo].[usuario] ([id], [nombre], [apellido], [dni], [correo], [contrasenia]) VALUES (5, N'Carmen', N'Lara', 54789631, N'carmen1998@hotmail.com', N'holacarmen')
GO
SET IDENTITY_INSERT [dbo].[usuario] OFF
GO
/****** Object:  StoredProcedure [dbo].[Agregar_Bono]    Script Date: 25/6/2022 23:30:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Agregar_Bono]
@id_usuario int,
@name nvarchar(250),
@descripcion nvarchar(250),
@1 nvarchar(50),
@2 float,
@3 float,
@4 int,
@5 nvarchar(50),
@6 int,
@7 nvarchar(50),
@8 nvarchar(50),
@9 float,
@10 float,
@11 float,
@12 date,
@13 float,
@14 float,
@15 float
as
insert into Bono (id_usuario, name_bono, descripcion, metodo_pago, valor_nominal, valor_comercial, anios, frecuencia_cupon, dias_anio, tipo_tasa_interes, capitalizacion, tasa_interes
, tasa_anual_dct, imp_renta, fecha_emision, porcent_prima, costo_emisor_porcent, costo_bonista_porcent)
values (@id_usuario, @name, @descripcion, @1, @2, @3, @4, @5, @6 , @7, @8, @9, @10, @11, @12, @13, @14, @15)
GO
/****** Object:  StoredProcedure [dbo].[Agregar_usuario]    Script Date: 25/6/2022 23:30:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Agregar_usuario]
@nombre nvarchar(50),
@apellido nvarchar(50),
@dni int,
@correo nvarchar(50),
@contrasenia nvarchar(50)
as
insert into usuario (nombre, apellido, dni, correo, contrasenia)
values (@nombre, @apellido, @dni, @correo, @contrasenia)
GO
/****** Object:  StoredProcedure [dbo].[IngresarLogin]    Script Date: 25/6/2022 23:30:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[IngresarLogin]
@correo nvarchar(50),
@contrasenia nvarchar(50)
as
select correo, contrasenia from usuario 
where
@correo = correo and @contrasenia = contrasenia
GO
/****** Object:  StoredProcedure [dbo].[Mostrar_Bono]    Script Date: 25/6/2022 23:30:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Mostrar_Bono]
@code_usuario int
as
select name_bono as 'Nombre', metodo_pago as 'Metodo de Pago', frecuencia_cupon as 'Frecuencia del cupón', tipo_tasa_interes as 'Tipo de Tasa', capitalizacion as 'Capitalización', tasa_interes as 'Tasa de interes', tasa_anual_dct as 'Tasa de descuento', imp_renta as 'Impuesto a la renta', fecha_emision as 'Fecha de emisión' from Bono
where id_usuario = @code_usuario
GO
/****** Object:  StoredProcedure [dbo].[obtener_id_usuario]    Script Date: 25/6/2022 23:30:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[obtener_id_usuario]
@correo nvarchar(50),
@contrasenia nvarchar(50)
as
select id from usuario 
where correo = @correo and contrasenia = @contrasenia
GO
/****** Object:  StoredProcedure [dbo].[RecuperaContrasenia]    Script Date: 25/6/2022 23:30:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[RecuperaContrasenia]
@dni int,
@correo nvarchar(50),
@contrasenia nvarchar(50)
as
update usuario 
set contrasenia = @contrasenia 
where dni = @dni and correo = @correo
GO
