/****** Object:  Database [InfraccionesDB]    Script Date: 5/8/2020 10:10:55 a. m. ******/
CREATE DATABASE [InfraccionesDB]  ;
GO
ALTER DATABASE [InfraccionesDB] SET COMPATIBILITY_LEVEL = 100
GO
ALTER DATABASE [InfraccionesDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [InfraccionesDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [InfraccionesDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [InfraccionesDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [InfraccionesDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [InfraccionesDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [InfraccionesDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [InfraccionesDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [InfraccionesDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [InfraccionesDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [InfraccionesDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [InfraccionesDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [InfraccionesDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [InfraccionesDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [InfraccionesDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [InfraccionesDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [InfraccionesDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [InfraccionesDB] SET  MULTI_USER 
GO
USE [InfraccionesDB] 
GO
/****** Object:  Table [dbo].[Area]    Script Date: 5/8/2020 10:10:55 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Area](
	[AreaId] [int] IDENTITY(1,1) NOT NULL,
	[ZonaId] [int] NULL,
	[Descripcion] [nvarchar](80) NULL,
	[Hora_Inicio] [time](7) NULL,
	[Hora_Fin] [time](7) NULL,
 CONSTRAINT [PK__Area__70B820483B75D760] PRIMARY KEY CLUSTERED 
(
	[AreaId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comandancia]    Script Date: 5/8/2020 10:10:55 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comandancia](
	[ComandanciaId] [int] IDENTITY(1,1) NOT NULL,
	[RegionalId] [int] NULL,
	[ProvinciaId] [int] NULL,
	[Descripcion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__Comandan__32C623C77F60ED59] PRIMARY KEY CLUSTERED 
(
	[ComandanciaId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Condicion_implicado]    Script Date: 5/8/2020 10:10:55 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Condicion_implicado](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nchar](20) NULL,
 CONSTRAINT [PK_Condicion_implicado] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Evento]    Script Date: 5/8/2020 10:10:55 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Evento](
	[EventoId] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](50) NOT NULL,
	[Tipo] [char](1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[EventoId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Evento_Caso]    Script Date: 5/8/2020 10:10:55 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Evento_Caso](
	[Evento_CasoId] [int] IDENTITY(1,1) NOT NULL,
	[Registro_EventoId] [int] NULL,
	[EventoId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Evento_CasoId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Implicado]    Script Date: 5/8/2020 10:10:55 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Implicado](
	[Implicado_id] [int] IDENTITY(1,1) NOT NULL,
	[Registro_Evento_id] [int] NULL,
	[Profesion_id] [int] NULL,
	[Rango_id] [int] NULL,
	[Condicion_implicado_id] [int] NULL,
	[Nacionalidad] [int] NULL,
	[Nombres] [nvarchar](100) NULL,
	[Apellidos] [nvarchar](100) NULL,
	[Sexo] [nvarchar](1) NULL,
	[Edad] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Implicado_id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Municipio]    Script Date: 5/8/2020 10:10:55 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Municipio](
	[MunicipioId] [int] IDENTITY(1,1) NOT NULL,
	[ProvinciaId] [int] NULL,
	[Descripcion] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[MunicipioId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nacionalidad]    Script Date: 5/8/2020 10:10:55 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nacionalidad](
	[Nacionalidad_id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[Nacionalidad_id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Profesion]    Script Date: 5/8/2020 10:10:55 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Profesion](
	[Profesion_id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[Profesion_id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Provincia]    Script Date: 5/8/2020 10:10:55 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provincia](
	[ProvinciaId] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](50) NOT NULL,
	[Codigo] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ProvinciaId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rango]    Script Date: 5/8/2020 10:10:55 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rango](
	[Rango_id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](250) NULL,
	[Orden] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Rango_id] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Regional]    Script Date: 5/8/2020 10:10:55 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Regional](
	[RegionalId] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[RegionalId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Registro_Evento]    Script Date: 5/8/2020 10:10:55 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Registro_Evento](
	[Registro_EventoId] [int] IDENTITY(1,1) NOT NULL,
	[RegionalId] [int] NULL,
	[ComandanciaId] [int] NULL,
	[ZonaId] [int] NULL,
	[MunicipioId] [int] NULL,
	[UsuarioId] [int] NULL,
	[Tipo_InvolucradoId] [int] NULL,
	[GeogCol1] [numeric](18, 15) NOT NULL,
	[GeogCol2] [numeric](18, 15) NOT NULL,
	[FechaReporte] [datetime] NOT NULL,
	[Direccion] [nvarchar](max) NOT NULL,
	[Fiscalizado] [bit] NULL,
	[Retenido] [bit] NULL,
	[Comentario] [nvarchar](max) NULL,
	[Numero_Caso] [nvarchar](50) NULL,
 CONSTRAINT [PK__Registro__D473EEE81273C1CD] PRIMARY KEY CLUSTERED 
(
	[Registro_EventoId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rol]    Script Date: 5/8/2020 10:10:55 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rol](
	[idRol] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[idRol] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_Involucrado]    Script Date: 5/8/2020 10:10:55 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_Involucrado](
	[Tipo_InvolucradoId] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Tipo_Involucrado] PRIMARY KEY CLUSTERED 
(
	[Tipo_InvolucradoId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 5/8/2020 10:10:55 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[UsuarioId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Apellido] [nvarchar](50) NOT NULL,
	[Flota] [nvarchar](50) NULL,
	[ComandanciaId] [int] NULL,
	[Usuario1] [nvarchar](20) NOT NULL,
	[Contraseña] [nvarchar](30) NOT NULL,
	[idRol] [int] NULL,
 CONSTRAINT [PK__Usuario__2B3DE7B8182C9B23] PRIMARY KEY CLUSTERED 
(
	[UsuarioId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Zona]    Script Date: 5/8/2020 10:10:55 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Zona](
	[ZonaId] [int] IDENTITY(1,1) NOT NULL,
	[ComandanciaId] [int] NULL,
	[Descripcion] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ZonaId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Area] ON 

INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (1, 1, N'AREA 16-I', CAST(N'06:00:00' AS Time), CAST(N'14:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (2, 1, N'AREA 16-II', CAST(N'06:00:00' AS Time), CAST(N'14:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (3, 1, N'AREA 16-III', CAST(N'06:00:00' AS Time), CAST(N'14:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (4, 1, N'AREA 16-IV', CAST(N'06:00:00' AS Time), CAST(N'14:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (5, 1, N'AREA 16A-I', CAST(N'14:00:00' AS Time), CAST(N'23:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (6, 1, N'AREA 16A-II', CAST(N'14:00:00' AS Time), CAST(N'23:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (7, 1, N'AREA 16A-III', CAST(N'14:00:00' AS Time), CAST(N'23:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (8, 1, N'AREA 16A-IV', CAST(N'14:00:00' AS Time), CAST(N'23:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (9, 1, N'TURNO NOCTURNO AREA 16', CAST(N'23:00:00' AS Time), CAST(N'06:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (10, 2, N'AREA 17-I', CAST(N'06:00:00' AS Time), CAST(N'14:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (11, 2, N'AREA 17-II', CAST(N'06:00:00' AS Time), CAST(N'14:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (12, 2, N'AREA 17-III', CAST(N'06:00:00' AS Time), CAST(N'14:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (13, 2, N'AREA 17-IV', CAST(N'06:00:00' AS Time), CAST(N'14:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (14, 2, N'AREA 17A-I', CAST(N'14:00:00' AS Time), CAST(N'22:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (15, 2, N'AREA 17A-II', CAST(N'14:00:00' AS Time), CAST(N'22:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (16, 2, N'AREA 17A-III', CAST(N'14:00:00' AS Time), CAST(N'22:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (17, 2, N'AREA 17A-IV', CAST(N'14:00:00' AS Time), CAST(N'22:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (18, 2, N'NOCTURNO AREA 17', CAST(N'23:00:00' AS Time), CAST(N'06:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (19, 3, N'AREA 18-I', CAST(N'06:00:00' AS Time), CAST(N'14:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (20, 3, N'AREA 18-II', CAST(N'06:00:00' AS Time), CAST(N'14:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (21, 3, N'AREA 18-III', CAST(N'06:00:00' AS Time), CAST(N'14:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (22, 3, N'AREA 18A-I', CAST(N'14:00:00' AS Time), CAST(N'22:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (23, 3, N'AREA 18A-II', CAST(N'14:00:00' AS Time), CAST(N'22:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (24, 3, N'AREA 18A-III', CAST(N'14:00:00' AS Time), CAST(N'22:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (25, 3, N'NOCTURNO AREA 18', CAST(N'23:00:00' AS Time), CAST(N'06:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (26, 4, N'AREA 19-I', CAST(N'06:00:00' AS Time), CAST(N'14:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (27, 4, N'AREA 19-II', CAST(N'06:00:00' AS Time), CAST(N'14:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (28, 4, N'AREA 19-III', CAST(N'06:00:00' AS Time), CAST(N'14:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (29, 4, N'AREA 19-IV', CAST(N'06:00:00' AS Time), CAST(N'14:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (30, 4, N'AREA 19-V', CAST(N'06:00:00' AS Time), CAST(N'14:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (31, 4, N'AREA 19-VI', CAST(N'06:00:00' AS Time), CAST(N'14:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (32, 4, N'AREA 19A-I', CAST(N'14:00:00' AS Time), CAST(N'22:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (33, 4, N'AREA 19A-II', CAST(N'14:00:00' AS Time), CAST(N'22:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (34, 4, N'AREA 19A-III', CAST(N'14:00:00' AS Time), CAST(N'22:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (35, 4, N'AREA 19A-IV', CAST(N'14:00:00' AS Time), CAST(N'22:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (36, 4, N'AREA 19-V', CAST(N'14:00:00' AS Time), CAST(N'22:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (37, 4, N'AREA 19-VI', CAST(N'14:00:00' AS Time), CAST(N'22:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (38, 4, N'NOCTURNO AREA 19', CAST(N'23:00:00' AS Time), CAST(N'06:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (39, 5, N'AREA 20-I', CAST(N'06:00:00' AS Time), CAST(N'14:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (40, 5, N'AREA 20-II', CAST(N'06:00:00' AS Time), CAST(N'14:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (41, 5, N'AREA 20-III', CAST(N'06:00:00' AS Time), CAST(N'14:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (42, 5, N'AREA 20A-I', CAST(N'14:00:00' AS Time), CAST(N'22:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (43, 5, N'AREA 20A-II', CAST(N'14:00:00' AS Time), CAST(N'22:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (44, 5, N'AREA 20A-III', CAST(N'14:00:00' AS Time), CAST(N'22:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (45, 5, N'NOCTURNO AREA 19', CAST(N'23:00:00' AS Time), CAST(N'06:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (46, 6, N'ZONA COLONIAL (TANDA MAÑANA)', CAST(N'06:00:00' AS Time), CAST(N'14:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (47, 6, N'ZONA COLONIAL (TANDA TARDE)', CAST(N'14:00:00' AS Time), CAST(N'22:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (48, 6, N'NOCTURNO AREA ZONA COLONIAL', CAST(N'23:00:00' AS Time), CAST(N'06:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (49, 7, N'AREA 15-I', CAST(N'06:00:00' AS Time), CAST(N'14:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (50, 7, N'AREA 15-II', CAST(N'06:00:00' AS Time), CAST(N'14:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (51, 7, N'AREA 15-III', CAST(N'06:00:00' AS Time), CAST(N'14:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (52, 7, N'AREA 15A-I', CAST(N'14:00:00' AS Time), CAST(N'22:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (53, 7, N'AREA 15A-II', CAST(N'14:00:00' AS Time), CAST(N'22:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (54, 7, N'AREA 15A-III', CAST(N'14:00:00' AS Time), CAST(N'22:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (55, 7, N'NOCTURNO AREA 15', CAST(N'23:00:00' AS Time), CAST(N'06:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (56, 8, N'AREA 21-I', CAST(N'06:00:00' AS Time), CAST(N'14:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (57, 8, N'AREA 21-II', CAST(N'06:00:00' AS Time), CAST(N'14:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (58, 8, N'AREA 21-III', CAST(N'06:00:00' AS Time), CAST(N'14:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (59, 8, N'AREA 21-IV', CAST(N'06:00:00' AS Time), CAST(N'14:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (60, 8, N'AREA 21A-I', CAST(N'14:00:00' AS Time), CAST(N'22:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (61, 8, N'AREA 21A-II', CAST(N'14:00:00' AS Time), CAST(N'22:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (62, 8, N'AREA 21A-III', CAST(N'14:00:00' AS Time), CAST(N'22:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (63, 8, N'AREA 21A-IV', CAST(N'14:00:00' AS Time), CAST(N'22:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (64, 8, N'NOCTURNO AREA 21', CAST(N'23:00:00' AS Time), CAST(N'06:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (65, 9, N'AREA 22-I', CAST(N'06:00:00' AS Time), CAST(N'14:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (66, 9, N'AREA 22-II', CAST(N'06:00:00' AS Time), CAST(N'14:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (67, 9, N'AREA 22-III', CAST(N'06:00:00' AS Time), CAST(N'14:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (68, 9, N'AREA 22A-I', CAST(N'14:00:00' AS Time), CAST(N'22:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (69, 9, N'AREA 22A-II', CAST(N'14:00:00' AS Time), CAST(N'22:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (70, 9, N'AREA 22A-III', CAST(N'14:00:00' AS Time), CAST(N'22:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (71, 9, N'NOCTURNO AREA 22', CAST(N'23:00:00' AS Time), CAST(N'06:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (72, 10, N'ZONA 23-I', CAST(N'06:00:00' AS Time), CAST(N'14:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (73, 10, N'ZONA 23-II', CAST(N'06:00:00' AS Time), CAST(N'14:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (74, 10, N'ZONA 23-III', CAST(N'06:00:00' AS Time), CAST(N'14:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (75, 10, N'ZONA 23-IV', CAST(N'06:00:00' AS Time), CAST(N'14:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (76, 10, N'ZONA 23A-I', CAST(N'14:00:00' AS Time), CAST(N'22:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (77, 10, N'ZONA 23A-II', CAST(N'14:00:00' AS Time), CAST(N'22:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (78, 10, N'ZONA 23A-III', CAST(N'14:00:00' AS Time), CAST(N'22:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (79, 10, N'ZONA 23A-IV', CAST(N'14:00:00' AS Time), CAST(N'22:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (80, 10, N'NOCTURNO AREA 23', CAST(N'23:00:00' AS Time), CAST(N'06:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (81, 11, N'ZONA 24-I', CAST(N'06:00:00' AS Time), CAST(N'14:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (82, 11, N'ZONA 24-II', CAST(N'06:00:00' AS Time), CAST(N'14:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (83, 11, N'ZONA 24-III', CAST(N'06:00:00' AS Time), CAST(N'14:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (84, 11, N'ZONA 24-IV', CAST(N'06:00:00' AS Time), CAST(N'14:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (85, 11, N'ZONA 24A-I', CAST(N'14:00:00' AS Time), CAST(N'22:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (86, 11, N'ZONA 24A-II', CAST(N'14:00:00' AS Time), CAST(N'22:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (87, 11, N'ZONA 24A-III', CAST(N'14:00:00' AS Time), CAST(N'22:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (88, 11, N'ZONA 24A-IV', CAST(N'14:00:00' AS Time), CAST(N'22:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (89, 10, N'NOCTURNO AREA 24', CAST(N'23:00:00' AS Time), CAST(N'06:00:00' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (90, 12, N'KILOMETRO 25', CAST(N'00:00:00' AS Time), CAST(N'23:59:59' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (91, 12, N'KILOMETRO 40', CAST(N'00:00:00' AS Time), CAST(N'23:59:59' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (92, 12, N'KILOMETRO 56 (SECTOR LOS BAMBUES)', CAST(N'00:00:00' AS Time), CAST(N'23:59:59' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (93, 12, N'KILOMETRO 64 (LA CUMBRE)', CAST(N'00:00:00' AS Time), CAST(N'23:59:59' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (94, 12, N'KILOMETRO 130 (CONTROBA)', CAST(N'00:00:00' AS Time), CAST(N'23:59:59' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (96, 12, N'ENTRADA AEROPUERTO SANTIAGO', CAST(N'00:00:00' AS Time), CAST(N'23:59:59' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (97, 12, N'ENTRADA DE NAVARRETE', CAST(N'00:00:00' AS Time), CAST(N'23:59:59' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (98, 13, N'KILOMETRO 9 1/2 (PUENTE JUAN CARLOS)', CAST(N'00:00:00' AS Time), CAST(N'23:59:59' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (99, 13, N'KILOMETRO 14 (ENTRADA DEL HIPODROMO)', CAST(N'00:00:00' AS Time), CAST(N'23:59:59' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (100, 13, N'KILOMETRO 20 (ENTRADA AUTOPISTA DE SAMANA)', CAST(N'00:00:00' AS Time), CAST(N'23:59:59' AS Time))
GO
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (101, 13, N'KILOMETRO 23 ( PEAJE)', CAST(N'00:00:00' AS Time), CAST(N'23:59:59' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (102, 13, N'ENTRADA AEROPUERTO LAS AMERICAS', CAST(N'00:00:00' AS Time), CAST(N'23:59:59' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (104, 15, N'KILOMETRO 21 (AUTOPISTA DEL NORDESTE)', CAST(N'00:00:00' AS Time), CAST(N'23:59:59' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (105, 15, N'KILOMETRO 76', CAST(N'00:00:00' AS Time), CAST(N'23:59:59' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (106, 15, N'KILOMETRO 106 "EL GUARAGUAO"', CAST(N'00:00:00' AS Time), CAST(N'23:59:59' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (108, 15, N'ENTRADA LAS TERRENAS', CAST(N'00:00:00' AS Time), CAST(N'23:59:59' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (109, 16, N'PEAJE 6 DE NOVIEMBRE', CAST(N'00:00:00' AS Time), CAST(N'23:59:59' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (110, 16, N'PLAZA DEL CHIVO', CAST(N'00:00:00' AS Time), CAST(N'23:59:59' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (112, 16, N'PEAJE CIRCUNVALACION', CAST(N'00:00:00' AS Time), CAST(N'23:59:59' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (113, 12, N'ENTRADA SAN FRANCISCO DE MACORIS - LA CODAL (DESTACAMENTO LA CODAL)', CAST(N'00:00:00' AS Time), CAST(N'23:59:59' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (114, 14, N'AUTOVIA DEL ESTE (CRUCE HATO MAYOR / SAN PEDRO DE MACORIS)', CAST(N'00:00:00' AS Time), CAST(N'23:59:59' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (115, 15, N'PEAJE MUNICIPIO SANCHEZ (BOULEVARD TURISTICO DEL ATLANTICO, SAMANA)', CAST(N'00:00:00' AS Time), CAST(N'23:59:59' AS Time))
INSERT [dbo].[Area] ([AreaId], [ZonaId], [Descripcion], [Hora_Inicio], [Hora_Fin]) VALUES (116, 16, N'BOMBA KM. 5 (UNIFICACION CARRETERA SANCHEZ / 6 DE NOVIEMBRE)', CAST(N'00:00:00' AS Time), CAST(N'23:59:59' AS Time))
SET IDENTITY_INSERT [dbo].[Area] OFF
SET IDENTITY_INSERT [dbo].[Comandancia] ON 

INSERT [dbo].[Comandancia] ([ComandanciaId], [RegionalId], [ProvinciaId], [Descripcion]) VALUES (1, 1, 1, N'COMANDANCIA DISTRITO NACIONAL (DIGESETT - 3)
')
INSERT [dbo].[Comandancia] ([ComandanciaId], [RegionalId], [ProvinciaId], [Descripcion]) VALUES (2, 1, 2, N'COMANDANCIA SANTO DOMINGO OESTE (DIGESETT - 8)')
INSERT [dbo].[Comandancia] ([ComandanciaId], [RegionalId], [ProvinciaId], [Descripcion]) VALUES (3, 1, 2, N'COMANDANCIA SANTO DOMINGO ESTE (DIGESETT - 9)')
INSERT [dbo].[Comandancia] ([ComandanciaId], [RegionalId], [ProvinciaId], [Descripcion]) VALUES (4, 1, 2, N'COMANDANCIA SANTO DOMINGO NORTE (DIGESETT - 10)')
INSERT [dbo].[Comandancia] ([ComandanciaId], [RegionalId], [ProvinciaId], [Descripcion]) VALUES (5, 2, 5, N'COMANDANCIA SANTIAGO')
INSERT [dbo].[Comandancia] ([ComandanciaId], [RegionalId], [ProvinciaId], [Descripcion]) VALUES (6, 2, 15, N'COMANDANCIA SANTIAGO RODRIGUEZ')
INSERT [dbo].[Comandancia] ([ComandanciaId], [RegionalId], [ProvinciaId], [Descripcion]) VALUES (7, 2, 3, N'COMANDANCIA MOCA')
INSERT [dbo].[Comandancia] ([ComandanciaId], [RegionalId], [ProvinciaId], [Descripcion]) VALUES (8, 2, 16, N'COMANDANCIA VALVERDE MAO')
INSERT [dbo].[Comandancia] ([ComandanciaId], [RegionalId], [ProvinciaId], [Descripcion]) VALUES (9, 2, 4, N'COMANDANCIA PUERTO PLATA')
INSERT [dbo].[Comandancia] ([ComandanciaId], [RegionalId], [ProvinciaId], [Descripcion]) VALUES (10, 2, 14, N'COMANDANCIA MONTECRISTI')
INSERT [dbo].[Comandancia] ([ComandanciaId], [RegionalId], [ProvinciaId], [Descripcion]) VALUES (11, 2, 13, N'COMANDANCIA DAJABON')
INSERT [dbo].[Comandancia] ([ComandanciaId], [RegionalId], [ProvinciaId], [Descripcion]) VALUES (12, 2, 4, N'COMANDANCIA SOSUA')
INSERT [dbo].[Comandancia] ([ComandanciaId], [RegionalId], [ProvinciaId], [Descripcion]) VALUES (13, 2, 6, N'COMANDANCIA LA VEGA')
INSERT [dbo].[Comandancia] ([ComandanciaId], [RegionalId], [ProvinciaId], [Descripcion]) VALUES (14, 2, 6, N'COMANDANCIA JARABACOA')
INSERT [dbo].[Comandancia] ([ComandanciaId], [RegionalId], [ProvinciaId], [Descripcion]) VALUES (15, 2, 6, N'COMANDANCIA CONSTANZA')
INSERT [dbo].[Comandancia] ([ComandanciaId], [RegionalId], [ProvinciaId], [Descripcion]) VALUES (16, 2, 31, N'COMANDANCIA MONTEPLATA')
INSERT [dbo].[Comandancia] ([ComandanciaId], [RegionalId], [ProvinciaId], [Descripcion]) VALUES (17, 3, 30, N'COMANDANCIA SAN FRANCISCO DE MACORIS')
INSERT [dbo].[Comandancia] ([ComandanciaId], [RegionalId], [ProvinciaId], [Descripcion]) VALUES (18, 3, 10, N'COMANDANCIA NAGUA')
INSERT [dbo].[Comandancia] ([ComandanciaId], [RegionalId], [ProvinciaId], [Descripcion]) VALUES (19, 3, 12, N'COMANDANCIA LAS TERRENAS')
INSERT [dbo].[Comandancia] ([ComandanciaId], [RegionalId], [ProvinciaId], [Descripcion]) VALUES (20, 3, 8, N'COMANDANCIA BONAO')
INSERT [dbo].[Comandancia] ([ComandanciaId], [RegionalId], [ProvinciaId], [Descripcion]) VALUES (21, 3, 10, N'COMANDANCIA CABRERA')
INSERT [dbo].[Comandancia] ([ComandanciaId], [RegionalId], [ProvinciaId], [Descripcion]) VALUES (22, 3, 12, N'COMANDANCIA SAMANA')
INSERT [dbo].[Comandancia] ([ComandanciaId], [RegionalId], [ProvinciaId], [Descripcion]) VALUES (23, 3, 12, N'COMANDANCIA SANCHEZ')
INSERT [dbo].[Comandancia] ([ComandanciaId], [RegionalId], [ProvinciaId], [Descripcion]) VALUES (24, 3, 7, N'COMANDANCIA COTUI')
INSERT [dbo].[Comandancia] ([ComandanciaId], [RegionalId], [ProvinciaId], [Descripcion]) VALUES (25, 3, 10, N'COMANDANCIA RIO SAN JUAN')
INSERT [dbo].[Comandancia] ([ComandanciaId], [RegionalId], [ProvinciaId], [Descripcion]) VALUES (26, 3, 11, N'COMANDANCIA SALCEDO')
INSERT [dbo].[Comandancia] ([ComandanciaId], [RegionalId], [ProvinciaId], [Descripcion]) VALUES (27, 3, 19, N'COMANDANCIA VILLA ALTAGRACIA')
INSERT [dbo].[Comandancia] ([ComandanciaId], [RegionalId], [ProvinciaId], [Descripcion]) VALUES (28, 4, 18, N'COMANDANCIA BANI')
INSERT [dbo].[Comandancia] ([ComandanciaId], [RegionalId], [ProvinciaId], [Descripcion]) VALUES (29, 4, 24, N'COMANDANCIA PEDERNALES')
INSERT [dbo].[Comandancia] ([ComandanciaId], [RegionalId], [ProvinciaId], [Descripcion]) VALUES (30, 4, 17, N'COMANDANCIA AZUA')
INSERT [dbo].[Comandancia] ([ComandanciaId], [RegionalId], [ProvinciaId], [Descripcion]) VALUES (31, 4, 21, N'COMANDANCIA BAHORUCO (NEYBA)')
INSERT [dbo].[Comandancia] ([ComandanciaId], [RegionalId], [ProvinciaId], [Descripcion]) VALUES (32, 4, 19, N'COMANDANCIA HAINA')
INSERT [dbo].[Comandancia] ([ComandanciaId], [RegionalId], [ProvinciaId], [Descripcion]) VALUES (33, 4, 19, N'COMANDANCIA SAN CRISTOBAL')
INSERT [dbo].[Comandancia] ([ComandanciaId], [RegionalId], [ProvinciaId], [Descripcion]) VALUES (34, 4, 20, N'COMANDANCIA SAN JOSE DE OCOA')
INSERT [dbo].[Comandancia] ([ComandanciaId], [RegionalId], [ProvinciaId], [Descripcion]) VALUES (35, 4, 23, N'COMANDANCIA JIMANI')
INSERT [dbo].[Comandancia] ([ComandanciaId], [RegionalId], [ProvinciaId], [Descripcion]) VALUES (36, 4, 22, N'COMANDANCIA BARAHONA')
INSERT [dbo].[Comandancia] ([ComandanciaId], [RegionalId], [ProvinciaId], [Descripcion]) VALUES (37, 4, 26, N'COMANDANCIA SAN JUAN DE LA MAGUANA')
INSERT [dbo].[Comandancia] ([ComandanciaId], [RegionalId], [ProvinciaId], [Descripcion]) VALUES (38, 4, 26, N'COMANDANCIA LAS MATAS')
INSERT [dbo].[Comandancia] ([ComandanciaId], [RegionalId], [ProvinciaId], [Descripcion]) VALUES (39, 4, 25, N'COMANDANCIA ELIAS PIÑA')
INSERT [dbo].[Comandancia] ([ComandanciaId], [RegionalId], [ProvinciaId], [Descripcion]) VALUES (40, 5, 29, N'COMANDANCIA ROMANA')
INSERT [dbo].[Comandancia] ([ComandanciaId], [RegionalId], [ProvinciaId], [Descripcion]) VALUES (41, 5, 28, N'COMANDANCIA HIGUEY')
INSERT [dbo].[Comandancia] ([ComandanciaId], [RegionalId], [ProvinciaId], [Descripcion]) VALUES (42, 5, 2, N'COMANDANCIA BOCACHICA')
INSERT [dbo].[Comandancia] ([ComandanciaId], [RegionalId], [ProvinciaId], [Descripcion]) VALUES (43, 5, 28, N'COMANDANCIA BAYAHIBE')
INSERT [dbo].[Comandancia] ([ComandanciaId], [RegionalId], [ProvinciaId], [Descripcion]) VALUES (44, 5, 30, N'COMANDANCIA SAN PEDRO DE MACORIS')
INSERT [dbo].[Comandancia] ([ComandanciaId], [RegionalId], [ProvinciaId], [Descripcion]) VALUES (45, 5, 31, N'COMANDANCIA HATO MAYOR')
INSERT [dbo].[Comandancia] ([ComandanciaId], [RegionalId], [ProvinciaId], [Descripcion]) VALUES (46, 5, 28, N'COMANDANCIA BAVARO-PUNTA CANA')
INSERT [dbo].[Comandancia] ([ComandanciaId], [RegionalId], [ProvinciaId], [Descripcion]) VALUES (47, 5, 27, N'COMANDANCIA SEIBO')
INSERT [dbo].[Comandancia] ([ComandanciaId], [RegionalId], [ProvinciaId], [Descripcion]) VALUES (48, 5, 30, N'COMANDANCIA JUAN DOLIO')
INSERT [dbo].[Comandancia] ([ComandanciaId], [RegionalId], [ProvinciaId], [Descripcion]) VALUES (49, 6, NULL, N'DOCA NORTE')
INSERT [dbo].[Comandancia] ([ComandanciaId], [RegionalId], [ProvinciaId], [Descripcion]) VALUES (50, 6, NULL, N'DOCA LAS AMERICAS')
INSERT [dbo].[Comandancia] ([ComandanciaId], [RegionalId], [ProvinciaId], [Descripcion]) VALUES (51, 6, NULL, N'DOCA ESTE')
INSERT [dbo].[Comandancia] ([ComandanciaId], [RegionalId], [ProvinciaId], [Descripcion]) VALUES (52, 6, NULL, N'DOCA NORDESTE')
INSERT [dbo].[Comandancia] ([ComandanciaId], [RegionalId], [ProvinciaId], [Descripcion]) VALUES (53, 6, NULL, N'DOCA SUR')
SET IDENTITY_INSERT [dbo].[Comandancia] OFF
SET IDENTITY_INSERT [dbo].[Condicion_implicado] ON 

INSERT [dbo].[Condicion_implicado] ([Id], [Descripcion]) VALUES (1, N'Herido              ')
INSERT [dbo].[Condicion_implicado] ([Id], [Descripcion]) VALUES (2, N'Muerto              ')
INSERT [dbo].[Condicion_implicado] ([Id], [Descripcion]) VALUES (3, N'Ileso               ')
SET IDENTITY_INSERT [dbo].[Condicion_implicado] OFF
SET IDENTITY_INSERT [dbo].[Implicado] ON 

INSERT [dbo].[Implicado] ([Implicado_id], [Registro_Evento_id], [Profesion_id], [Rango_id], [Condicion_implicado_id], [Nacionalidad], [Nombres], [Apellidos], [Sexo], [Edad]) VALUES (3, NULL, 4, 11, 3, 4, N'Randolph', N'Marte', N'M', 19)
INSERT [dbo].[Implicado] ([Implicado_id], [Registro_Evento_id], [Profesion_id], [Rango_id], [Condicion_implicado_id], [Nacionalidad], [Nombres], [Apellidos], [Sexo], [Edad]) VALUES (5, 15, NULL, NULL, NULL, 2, NULL, NULL, N'a', 23)
INSERT [dbo].[Implicado] ([Implicado_id], [Registro_Evento_id], [Profesion_id], [Rango_id], [Condicion_implicado_id], [Nacionalidad], [Nombres], [Apellidos], [Sexo], [Edad]) VALUES (6, 16, NULL, NULL, NULL, 2, NULL, NULL, N'a', 23)
INSERT [dbo].[Implicado] ([Implicado_id], [Registro_Evento_id], [Profesion_id], [Rango_id], [Condicion_implicado_id], [Nacionalidad], [Nombres], [Apellidos], [Sexo], [Edad]) VALUES (9, 22, NULL, NULL, NULL, 149, NULL, NULL, N'M', 19)
INSERT [dbo].[Implicado] ([Implicado_id], [Registro_Evento_id], [Profesion_id], [Rango_id], [Condicion_implicado_id], [Nacionalidad], [Nombres], [Apellidos], [Sexo], [Edad]) VALUES (10, 22, NULL, NULL, NULL, 149, NULL, NULL, N'F', 20)
INSERT [dbo].[Implicado] ([Implicado_id], [Registro_Evento_id], [Profesion_id], [Rango_id], [Condicion_implicado_id], [Nacionalidad], [Nombres], [Apellidos], [Sexo], [Edad]) VALUES (11, 23, NULL, NULL, NULL, 149, NULL, NULL, N'M', 19)
INSERT [dbo].[Implicado] ([Implicado_id], [Registro_Evento_id], [Profesion_id], [Rango_id], [Condicion_implicado_id], [Nacionalidad], [Nombres], [Apellidos], [Sexo], [Edad]) VALUES (15, 26, 13, 24, 3, 149, N'Randolph', N'Marte', N'M', 19)
INSERT [dbo].[Implicado] ([Implicado_id], [Registro_Evento_id], [Profesion_id], [Rango_id], [Condicion_implicado_id], [Nacionalidad], [Nombres], [Apellidos], [Sexo], [Edad]) VALUES (16, 27, 18, 24, 3, 149, N'Marcos', N'Diaz', N'M', 24)
INSERT [dbo].[Implicado] ([Implicado_id], [Registro_Evento_id], [Profesion_id], [Rango_id], [Condicion_implicado_id], [Nacionalidad], [Nombres], [Apellidos], [Sexo], [Edad]) VALUES (31, 32, NULL, NULL, NULL, NULL, N'pedro', N'Martinez', N'M', 25)
INSERT [dbo].[Implicado] ([Implicado_id], [Registro_Evento_id], [Profesion_id], [Rango_id], [Condicion_implicado_id], [Nacionalidad], [Nombres], [Apellidos], [Sexo], [Edad]) VALUES (32, 34, 7, 11, 3, 149, N'Liz', N'Rojas', N'F', 25)
INSERT [dbo].[Implicado] ([Implicado_id], [Registro_Evento_id], [Profesion_id], [Rango_id], [Condicion_implicado_id], [Nacionalidad], [Nombres], [Apellidos], [Sexo], [Edad]) VALUES (33, 34, 3, 5, 2, 149, N'Roca', N'Vieja', N'M', 36)
INSERT [dbo].[Implicado] ([Implicado_id], [Registro_Evento_id], [Profesion_id], [Rango_id], [Condicion_implicado_id], [Nacionalidad], [Nombres], [Apellidos], [Sexo], [Edad]) VALUES (35, 35, 60, 24, 3, 149, N'Maximo ', N'Perez', N'M', 25)
SET IDENTITY_INSERT [dbo].[Implicado] OFF
SET IDENTITY_INSERT [dbo].[Municipio] ON 

INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (1, 1, N'Municipio Santo Domingo de Guzmán')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (2, 2, N'Municipio Santo Domingo Este')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (3, 2, N'Municipio Santo Domingo Oeste')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (4, 2, N'Municipio Santo Domingo Norte')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (5, 2, N'Municipio Boca Chica')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (6, 2, N'Municipio San Antonio de Guerra')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (7, 2, N'Municipio Los Alcarrizos')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (8, 2, N'Municipio Pedro Brand')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (9, 3, N'Municipio Moca')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (10, 3, N'Municipio Cayetano Germosén')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (11, 3, N'Municipio Gaspar Hernández')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (12, 3, N'Municipio Jamao al Norte')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (13, 4, N'Municipio Puerto Plata')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (14, 4, N'Municipio Altamira')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (15, 4, N'Municipio Guananico')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (16, 4, N'Municipio Imbert')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (17, 4, N'Municipio Los Hidalgos')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (18, 4, N'Municipio Luperón')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (19, 4, N'Municipio Sosúa')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (20, 4, N'Municipio Villa Isabela')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (21, 4, N'Municipio Villa Montellano')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (22, 5, N'Municipio Santiago')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (23, 5, N'Municipio Bisonó')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (24, 5, N'Municipio Jánico')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (25, 5, N'Municipio Licey al Medio')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (26, 5, N'Municipio San José de las Matas')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (27, 5, N'Municipio Tamboril')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (28, 5, N'Municipio Villa González')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (29, 5, N'Municipio Puñal')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (30, 5, N'Municipio Sabana Iglesia')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (31, 6, N'Municipio La Vega')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (32, 6, N'Municipio Constanza')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (33, 6, N'Municipio Jarabacoa')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (34, 6, N'Municipio Jima Abajo')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (35, 7, N'Municipio Cotuí')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (36, 7, N'Municipio Cevicos')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (37, 7, N'Municipio Fantino')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (38, 7, N'Municipio La Mata')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (39, 8, N'Municipio Bonao')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (40, 8, N'Municipio Maimón')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (41, 8, N'Municipio Piedra Blanca')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (42, 9, N'Municipio San Francisco de Macorís')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (43, 9, N'Municipio Arenoso')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (44, 9, N'Municipio Castillo')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (45, 9, N'Municipio Pimentel')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (46, 9, N'Municipio Villa Riva')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (47, 9, N'Municipio Las Guáranas')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (48, 9, N'Municipio Eugenio María de Hostos')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (49, 10, N'Municipio Nagua')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (50, 10, N'Municipio Cabrera')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (51, 10, N'Municipio El Factor')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (52, 10, N'Municipio Río San Juan')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (53, 11, N'Municipio Salcedo')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (54, 11, N'Municipio Tenares')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (55, 11, N'Municipio Villa Tapia')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (56, 12, N'Municipio Samaná')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (57, 12, N'Municipio Sánchez')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (58, 12, N'Municipio Las Terrenas')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (59, 13, N'Municipio Dajabón')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (60, 13, N'Municipio Loma de Cabrera')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (61, 13, N'Municipio Partido')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (62, 13, N'Municipio Restauración')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (63, 13, N'Municipio El Pino')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (64, 14, N'Municipio Monte Cristi')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (65, 14, N'Municipio Castañuelas')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (66, 14, N'Municipio Guayubín')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (67, 14, N'Municipio Las Matas de Santa Cruz')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (68, 14, N'Municipio Pepillo Salcedo')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (69, 14, N'Municipio Villa Vásquez')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (70, 15, N'Municipio San Ignacio de Sabaneta')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (71, 15, N'Municipio Villa Los Almácigos')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (72, 15, N'Municipio Monción')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (73, 16, N'Municipio Mao')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (74, 16, N'Municipio Esperanza')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (75, 16, N'Municipio Laguna Salada')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (76, 17, N'Municipio Azua')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (77, 17, N'Municipio Las Charcas')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (78, 17, N'Municipio Las Yayas de Viajama')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (79, 17, N'Municipio Padre Las Casas')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (80, 17, N'Municipio Peralta')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (81, 17, N'Municipio Sabana Yegua')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (82, 17, N'Municipio Pueblo Viejo')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (83, 17, N'Municipio Tábara Arriba')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (84, 17, N'Municipio Guayabal')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (85, 17, N'Municipio Estebanía')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (86, 18, N'Municipio Baní')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (87, 18, N'Municipio Nizao')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (88, 19, N'Municipio San Cristóbal')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (89, 19, N'Municipio Sabana Grande de Palenque')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (90, 19, N'Municipio Bajos de Haina')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (91, 19, N'Municipio Cambita Garabitos')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (92, 19, N'Municipio Villa Altagracia')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (93, 19, N'Municipio Yaguate')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (94, 19, N'Municipio San Gregorio de Nigua')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (95, 19, N'Municipio Los Cacaos')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (96, 20, N'Municipio San José de Ocoa')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (97, 20, N'Municipio Sabana Larga')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (98, 20, N'Municipio Rancho Arriba')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (99, 21, N'Municipio Neiba')
GO
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (100, 21, N'Municipio Galván')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (101, 21, N'Municipio Tamayo')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (102, 21, N'Municipio Villa Jaragua')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (103, 21, N'Municipio Los Rìos')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (104, 22, N'Municipio Barahona')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (105, 22, N'Municipio Cabral')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (106, 22, N'Municipio Enriquillo')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (107, 22, N'Municipio Paraíso')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (108, 22, N'Municipio Vicente Noble')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (109, 22, N'Municipio El Peñón')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (110, 22, N'Municipio La Ciénaga')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (111, 22, N'Municipio Fundación')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (112, 22, N'Municipio Las Salinas')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (113, 22, N'Municipio Polo')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (114, 22, N'Municipio Jaquimeyes')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (115, 23, N'Municipio Jimaní')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (116, 23, N'Municipio Duvergé')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (117, 23, N'Municipio La Descubierta')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (118, 23, N'Municipio Postrer Río')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (119, 23, N'Municipio Cristóbal')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (120, 23, N'Municipio Mella')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (121, 24, N'Municipio Pedernales')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (122, 24, N'Municipio Oviedo')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (123, 25, N'Municipio Comendador')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (124, 25, N'Municipio Bánica')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (125, 25, N'Municipio El Llano')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (126, 25, N'Municipio Hondo Valle')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (127, 25, N'Municipio Pedro Santana')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (128, 25, N'Municipio Juan Santiago')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (129, 26, N'Municipio San Juan')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (130, 26, N'Municipio Bohechío')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (131, 26, N'Municipio El Cercado')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (132, 26, N'Municipio Juan de Herrera')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (133, 26, N'Municipio Las Matas de Farfán')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (134, 26, N'Municipio Vallejuelo')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (135, 27, N'Municipio El Seibo')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (136, 27, N'Municipio Miches')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (137, 28, N'Municipio Higüey')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (138, 28, N'Municipio San Rafael del Yuma')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (139, 29, N'Municipio La Romana')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (140, 29, N'Municipio Guaymate')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (141, 29, N'Municipio Villa Hermosa')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (142, 30, N'Municipio San Pedro de Macorís')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (143, 30, N'Municipio Los Llanos')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (144, 30, N'Municipio Ramón Santana')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (145, 30, N'Municipio Consuelo')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (146, 30, N'Municipio Quisqueya')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (147, 30, N'Municipio Guayacanes')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (148, 31, N'Municipio Monte Plata')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (149, 31, N'Municipio Bayaguana')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (150, 31, N'Municipio Sabana Grande de Boyá')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (151, 31, N'Municipio Yamasá')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (152, 31, N'Municipio Peralvillo')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (153, 32, N'Municipio Hato Mayor')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (154, 32, N'Municipio Sabana de la Mar')
INSERT [dbo].[Municipio] ([MunicipioId], [ProvinciaId], [Descripcion]) VALUES (155, 32, N'Municipio El Valle')
SET IDENTITY_INSERT [dbo].[Municipio] OFF
SET IDENTITY_INSERT [dbo].[Nacionalidad] ON 

INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (1, N'Afganistán')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (2, N'Albania')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (3, N'Alemania')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (4, N'Andorra')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (5, N'Angola')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (6, N'Antigua y Barbuda')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (7, N'Arabia Saudita')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (8, N'Argelia')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (9, N'Argentina')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (10, N'Armenia')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (11, N'Australia')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (12, N'Austria')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (13, N'Azerbaiyán')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (14, N'Bahamas')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (15, N'Bangladés')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (16, N'Barbados')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (17, N'Baréin')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (18, N'Bélgica')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (19, N'Belice')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (20, N'Benín')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (21, N'Bielorrusia')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (22, N'Birmania')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (23, N'Bolivia')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (24, N'Bosnia-Herzegovina')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (25, N'Botsuana')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (26, N'Brasil')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (27, N'Brunéi')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (28, N'Bulgaria')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (29, N'Burkina Faso')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (30, N'Burundi')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (31, N'Bután')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (32, N'Cabo Verde')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (33, N'Camboya')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (34, N'Camerún')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (35, N'Canadá')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (36, N'Catar')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (37, N'Chad')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (38, N'Chile')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (39, N'China')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (40, N'Chipre')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (41, N'Colombia')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (42, N'Comoras')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (43, N'Congo')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (44, N'Corea del Norte')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (45, N'Corea del Sur')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (46, N'Costa de Marfil')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (47, N'Costa Rica')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (48, N'Croacia')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (49, N'Cuba')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (50, N'Dinamarca')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (51, N'Dominica')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (52, N'Ecuador')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (53, N'Egipto')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (54, N'El Salvador')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (55, N'Emiratos Árabes Unidos')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (56, N'Eritrea')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (57, N'Eslovaquia')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (58, N'Eslovenia')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (59, N'España')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (60, N'Estados Unidos')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (61, N'Estonia')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (62, N'Etiopía')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (63, N'Filipinas')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (64, N'Finlandia')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (65, N'Fiyi')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (66, N'Francia')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (67, N'Gabón')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (68, N'Gambia')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (69, N'Georgia')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (70, N'Ghana')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (71, N'Granada')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (72, N'Grecia')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (73, N'Guatemala')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (74, N'Guinea')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (75, N'Guinea Ecuatorial')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (76, N'Guinea-Bisáu')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (77, N'Guyana')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (78, N'Haití')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (79, N'Honduras')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (80, N'Hungría')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (81, N'India')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (82, N'Indonesia')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (83, N'Irak')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (84, N'Irán')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (85, N'Irlanda')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (86, N'Islandia')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (87, N'Islas Marshall')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (88, N'Islas Salomón')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (89, N'Israel')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (90, N'Italia')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (91, N'Jamaica')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (92, N'Japón')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (93, N'Jordania')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (94, N'Kazajistán')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (95, N'Kenia')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (96, N'Kirguistán')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (97, N'Kiribati')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (98, N'Kosovo')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (99, N'Kuwait')
GO
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (100, N'Laos')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (101, N'Lesoto')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (102, N'Letonia')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (103, N'Líbano')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (104, N'Liberia')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (105, N'Libia')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (106, N'Liechtenstein')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (107, N'Lituania')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (108, N'Luxemburgo')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (109, N'Macedonia')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (110, N'Madagascar')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (111, N'Malasia')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (112, N'Malaui')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (113, N'Maldivas')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (114, N'Malí')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (115, N'Malta')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (116, N'Marruecos')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (117, N'Mauricio')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (118, N'Mauritania')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (119, N'México')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (120, N'Micronesia')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (121, N'Moldavia')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (122, N'Mónaco')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (123, N'Mongolia')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (124, N'Montenegro')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (125, N'Mozambique')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (126, N'Namibia')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (127, N'Nauru')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (128, N'Nepal')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (129, N'Nicaragua')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (130, N'Níger')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (131, N'Nigeria')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (132, N'Noruega')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (133, N'Nueva Zelanda')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (134, N'Omán')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (135, N'Países Bajos')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (136, N'Pakistán')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (137, N'Palaos')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (138, N'Palestina')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (139, N'Panamá')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (140, N'Papúa Nueva Guinea')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (141, N'Paraguay')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (142, N'Perú')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (143, N'Polonia')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (144, N'Portugal')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (145, N'Reino Unido')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (146, N'República Centroafricana')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (147, N'República Checa')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (148, N'República Democrática del Congo')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (149, N'República Dominicana')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (150, N'Ruanda')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (151, N'Rumania')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (152, N'Rusia')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (153, N'Samoa')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (154, N'San Cristóbal y Nieves')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (155, N'San Marino')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (156, N'San Vicente y las Granadinas')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (157, N'Santa Lucía')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (158, N'Santo Tomé y Príncipe')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (159, N'Senegal')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (160, N'Serbia')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (161, N'Seychelles')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (162, N'Sierra Leona')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (163, N'Singapur')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (164, N'Siria')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (165, N'Somalia')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (166, N'Sri Lanka')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (167, N'Suazilandia')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (168, N'Sudáfrica')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (169, N'Sudán')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (170, N'Sudán del Sur')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (171, N'Suecia')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (172, N'Suiza')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (173, N'Surinam')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (174, N'Tailandia')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (175, N'Taiwán')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (176, N'Tanzania')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (177, N'Tayikistán')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (178, N'Timor Oriental')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (179, N'Togo')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (180, N'Tonga')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (181, N'Trinidad y Tobago')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (182, N'Túnez')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (183, N'Turkmenistán')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (184, N'Turquía')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (185, N'Tuvalu')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (186, N'Ucrania')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (187, N'Uganda')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (188, N'Uruguay')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (189, N'Uzbekistán')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (190, N'Vanuatu')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (191, N'Vaticano')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (192, N'Venezuela')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (193, N'Vietnam')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (194, N'Yemen')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (195, N'Yibuti')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (196, N'Zambia')
INSERT [dbo].[Nacionalidad] ([Nacionalidad_id], [Descripcion]) VALUES (197, N'Zimbabue')
SET IDENTITY_INSERT [dbo].[Nacionalidad] OFF
SET IDENTITY_INSERT [dbo].[Profesion] ON 

INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (1, N' Administracion')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (2, N' Administracion aeronautica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (3, N' Administracion agroindustrial')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (4, N' Administracion agropecuaria')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (5, N' Administracion de comercio exterior')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (6, N' Administracion de desarrollo agroindustrial')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (7, N' Administracion de empresas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (8, N' Administracion de empresas agrarias')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (9, N' Administracion de empresas agroindustriales')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (10, N' Administracion de empresas agropecuarias')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (11, N' Administracion de empresas cooperativas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (12, N' Administracion de empresas turisticas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (13, N' Administracion de empresas turisticas y hoteleras')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (14, N' Administracion de instituciones de servicio')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (15, N' Administracion de mercadeo agropecuario')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (16, N' Administracion de negocios')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (17, N' Administracion de negocios con enfasis en finanzas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (18, N' Administracion de obras civiles')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (19, N' Administracion de recursos costeros y marinos')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (20, N' Administracion de sistemas de informacion')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (21, N' Administracion del desarrollo social')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (22, N' Administracion del medio ambiente')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (23, N' Administracion empresarial y publica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (24, N' Administracion en recursos humanos')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (25, N' Administracion financiera')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (26, N' Administracion financiera y de sistemas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (27, N' Administracion hotelera')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (28, N' Administracion hotelera y de turismo')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (29, N' Administracion industrial')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (30, N' Administracion informatica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (31, N' Administracion maritima')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (32, N' Administracion para el desarrollo regional')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (33, N' Administracion policial')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (34, N' Administracion publica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (35, N' Administracion regional y urbana')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (36, N' Administracion turistica y hotelera')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (37, N' Administracion y finanzas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (38, N' Admon. Empresas nefas. Desarrollo de la capacidad')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (39, N' Agrologia')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (40, N' Agronomia')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (41, N' Anatomopatologo')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (42, N' Antropologia')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (43, N' Arquitectura')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (44, N' Arquitectura de interiores')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (45, N' Arquitectura y urbanismo')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (46, N' Artes escenicas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (47, N' Artes musicales')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (48, N' Artes plasticas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (49, N' Artes representativas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (50, N' Bachiller academico')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (51, N' Bacteriologia')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (52, N' Bacteriologia y laboratorio clinico')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (53, N' Bellas artes')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (54, N' Bibliotecologia')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (55, N' Bibliotecologia y archivistica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (56, N' Biologia con enfasis en biotecnologia')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (57, N' Biologia con enfasis en recursos naturales')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (58, N' Biologia marina')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (59, N' Biologia y quimica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (60, N' Biologo')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (61, N' Castellano - literatura')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (62, N' Ciencia politica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (63, N' Ciencias de enfermeria y biologia')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (64, N' Ciencias de la comercializacion')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (65, N' Ciencias de la informacion y la documentacion')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (66, N' Ciencias del deporte')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (67, N' Ciencias politicas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (68, N' Ciencias politicas y administrativas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (69, N' Cine y television')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (70, N' Comercio exterior')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (71, N' Comercio internacional')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (72, N' Comunicacion social')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (73, N' Comunicacion social enfasis en produccion y admon.')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (74, N' Comunicacion social formacion basica en periodismo')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (75, N' Comunicacion social institucional')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (76, N' Comunicacion social- periodismo')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (77, N' Conservacion y restauracion de bienes muebles')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (78, N' Construccion')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (79, N' Contaduria publica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (80, N' Contaduria publica- enfasis en sistemas y economia')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (81, N' Criminalistica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (82, N' Cultura fisica y deporte')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (83, N' Deporte y recreacion')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (84, N' Derecho')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (85, N' Derecho ciencias politicas y sociales')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (86, N' Derecho y ciencias administrativas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (87, N' Derecho y ciencias politicas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (88, N' Derecho y ciencias sociales')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (89, N' Desarrollo familiar')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (90, N' Dibujo arquitectonico')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (91, N' Direccion musical')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (92, N' Direccion y produccion de radio y television')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (93, N' Diseño de modas y textiles')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (94, N' Diseño grafico')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (95, N' Diseño industrial')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (96, N' Diseño visual')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (97, N' Ecologia')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (98, N' Economia')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (99, N' Economia agraria')
GO
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (100, N' Economia agricola')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (101, N' Economia de empresas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (102, N' Economia general')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (103, N' Economia industrial')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (104, N' Economia y desarrollo')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (105, N' Educacion musical')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (106, N' Ejecucion instrumental')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (107, N' Enfermeria')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (108, N' Enfermeria comunitaria')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (109, N' Estadistica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (110, N' Estadistica administrativa')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (111, N' Estadistica e informatica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (112, N' Estudios diplomaticos en internacionales')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (113, N' Estudios en ciencia politica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (114, N' Estudios musicales')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (115, N' Estudios superiores en instrumento o canto')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (116, N' Farmacia')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (117, N' Filologia e idiomas - aleman')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (118, N' Filologia e idiomas - español')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (119, N' Filologia e idiomas - frances')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (120, N' Filologia e idiomas - humanidades')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (121, N' Filologia e idiomas - ingles')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (122, N' Filologia espa? Ola')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (123, N' Filosofia')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (124, N' Filosofia y humanidades')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (125, N' Filosofia y letras')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (126, N' Finanzas y comercio exterior')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (127, N' Finanzas y comercio internacional')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (128, N' Finanzas y negocios internacionales')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (129, N' Finanzas y relaciones internacionales')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (130, N' Fisica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (131, N' Fisioterapia')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (132, N' Fonoaudiologia')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (133, N' Geografia')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (134, N' Geologia')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (135, N' Geotecnologia')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (136, N' Gerontologia')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (137, N' Gestion empresarial')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (138, N' Guitarrista')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (139, N' Historia')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (140, N' Idiomas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (141, N' Industrias pecuarias')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (142, N' Ingenieria administrativa')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (143, N' Ingenieria agricola')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (144, N' Ingenieria agroindustrial')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (145, N' Ingenieria agronomica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (146, N' Ingenieria ambiental')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (147, N' Ingenieria ambiental y sanitaria')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (148, N' Ingenieria biomedica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (149, N' Ingenieria catastral y geodesia')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (150, N' Ingenieria civil')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (151, N' Ingenieria de alimentos')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (152, N' Ingenieria de diseño y automatizacion electronica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (153, N' Ingenieria de materiales')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (154, N' Ingenieria de mercados')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (155, N' Ingenieria de minas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (156, N' Ingenieria de minas y metalurgia')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (157, N' Ingenieria de petroleos')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (158, N' Ingenieria de procesos')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (159, N' Ingenieria de produccion')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (160, N' Ingenieria de produccion agroindustrial')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (161, N' Ingenieria de recursos naturales y medio ambiente')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (162, N' Ingenieria de sistemas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (163, N' Ingenieria de sistemas con enfasis en admon. E inf')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (164, N' Ingenieria de sistemas con enfasis en software')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (165, N' Ingenieria de sistemas con enfasis en tele comunica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (166, N' Ingenieria de sistemas de informacion')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (167, N' Ingenieria de sistemas y computacion')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (168, N' Ingenieria de sistemas: enfasis en administracion')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (169, N' Ingenieria de transporte y vias')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (170, N' Ingenieria del desarrollo ambiental')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (171, N' Ingenieria del medio ambiente')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (172, N' Ingenieria electrica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (173, N' Ingenieria electricista')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (174, N' Ingenieria electromecanica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (175, N' Ingenieria electronica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (176, N' Ingenieria electronica y de computadores')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (177, N' Ingenieria electronica y telecomunicaciones')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (178, N' Ingenieria en automatizacion industrial')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (179, N' Ingenieria en instrumentacion y control')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (180, N' Ingenieria energetica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (181, N' Ingenieria financiera')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (182, N' Ingenieria forestal')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (183, N' Ingenieria geografica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (184, N' Ingenieria geologica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (185, N' Ingenieria industrial')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (186, N' Ingenieria industrial de alimentos')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (187, N' Ingenieria mecanica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (188, N' Ingenieria metalurgica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (189, N' Ingenieria naval - especialidad construcciones')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (190, N' Ingenieria naval - especialidad electronica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (191, N' Ingenieria naval - especialidad mecanica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (192, N' Ingenieria pesquera')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (193, N' Ingenieria quimica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (194, N' Ingenieria sanitaria')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (195, N' Ingenieria telematica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (196, N' Ingenieria textil')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (197, N' Instrumentacion quirurgica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (198, N' Lenguas clasicas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (199, N' Lic. Educ. Especial- problemas del aprendiz. De l')
GO
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (200, N' Lic. Educ. Especial: problemas desarrollo y aprend')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (201, N' Lic. En ciencias religiosas enfasis catequesis y e')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (202, N' Lic. En ciencias sociales: gestion del desarrollo')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (203, N' Lic. En educacion basica primaria:enf. En ciencias')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (204, N' Licenciatura educacion preescolar y promocion de l')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (205, N' Licenciatura educacion primaria y promocion de la')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (206, N' Licenciatura en administracion educativa')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (207, N' Licenciatura en administracion y supervision educa')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (208, N' Licenciatura en agropecuarias')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (209, N' Licenciatura en arte dramatico')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (210, N' Licenciatura en arte escenico')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (211, N' Licenciatura en artes graficas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (212, N' Licenciatura en artes plasticas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (213, N' Licenciatura en artes visuales')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (214, N' Licenciatura en bacteriologia y ciencias naturales')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (215, N' Licenciatura en basica primaria con enfasis en est')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (216, N' Licenciatura en bellas artes')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (217, N' Licenciatura en biologia')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (218, N' Licenciatura en biologia y educacion ambiental')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (219, N' Licenciatura en biologia y quimica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (220, N' Licenciatura en catequesis')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (221, N' Licenciatura en ciencias agropecuarias')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (222, N' Licenciatura en ciencias de la educacion')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (223, N' Licenciatura en ciencias de la educacion filologia')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (224, N' Licenciatura en ciencias de la educacion filosofia')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (225, N' Licenciatura en ciencias de la educacion fisica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (226, N' Licenciatura en ciencias de la educacion matematic')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (227, N' Licenciatura en ciencias de la educacion quimica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (228, N' Licenciatura en ciencias fisicas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (229, N' Licenciatura en ciencias naturales')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (230, N' Licenciatura en ciencias pedagogicas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (231, N' Licenciatura en ciencias politicas y administrativ')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (232, N' Licenciatura en ciencias religiosa y eticas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (233, N' Licenciatura en ciencias religiosas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (234, N' Licenciatura en ciencias sociales')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (235, N' Licenciatura en ciencias sociales e historia')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (236, N' Licenciatura en ciencias sociales y construccion y')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (237, N' Licenciatura en ciencias sociales y economicas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (238, N' Licenciatura en ciencias sociales y geografia')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (239, N' Licenciatura en comercio')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (240, N' Licenciatura en comercio y contaduria')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (241, N' Licenciatura en danzas y teatro')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (242, N' Licenciatura en decoracion arquitectonico')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (243, N' Licenciatura en dibujo de la construccion')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (244, N' Licenciatura en dibujo mecanico')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (245, N' Licenciatura en didactica y dificultades del apren')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (246, N' Licenciatura en docencia comercial')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (247, N' Licenciatura en docencia de computadores')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (248, N' Licenciatura en docencia de procesos industriales')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (249, N' Licenciatura en docencia de sistemas y computacion')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (250, N' Licenciatura en docencia del area agropecuaria')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (251, N' Licenciatura en docencia del diseño')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (252, N' Licenciatura en economia del hogar')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (253, N' Licenciatura en educa. Con especialidad en estudios')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (254, N' Licenciatura en educa. Esp. Audiov. Y psicope.')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (255, N' Licenciatura en educa. Esp. Filosofia y letras')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (256, N' Licenciatura en educa. Espe. Tecnologia industrial')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (257, N' Licenciatura en educa. Mayores ingles y frances')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (258, N' Licenciatura en educacion ambiental')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (259, N' Licenciatura en educacion basica primaria')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (260, N' Licenciatura en educacion- biologia')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (261, N' Licenciatura en educacion ciencias sociales')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (262, N' Licenciatura en educacion de adultos')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (263, N' Licenciatura en educacion electronica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (264, N' Licenciatura en educacion electrotecnica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (265, N' Licenciatura en educacion español y comunicacion a')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (266, N' Licenciatura en educacion español y lenguas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (267, N' Licenciatura en educacion especial')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (268, N' Licenciatura en educacion especial- tiflologia')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (269, N' Licenciatura en educacion especial: retardo en el')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (270, N' Licenciatura en educacion especialidad en matemati')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (271, N' Licenciatura en educacion fisica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (272, N' Licenciatura en educacion fisica y deportes')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (273, N' Licenciatura en educacion fisica y recreacion')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (274, N' Licenciatura en educacion fisica ysalud')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (275, N' Licenciatura en educacion frances')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (276, N' Licenciatura en educacion- historia y filosofia')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (277, N' Licenciatura en educacion idiomas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (278, N' Licenciatura en educacion industrial')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (279, N' Licenciatura en educacion infantil')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (280, N' Licenciatura en educacion ingles')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (281, N' Licenciatura en educacion mecanica industrial')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (282, N' Licenciatura en educacion musical')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (283, N' Licenciatura en educacion pedagogia musical')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (284, N' Licenciatura en educacion preescolar')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (285, N' Licenciatura en educacion preescolar y basica prima')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (286, N' Licenciatura en educacion primaria')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (287, N' Licenciatura en educacion psicologia y pedagogia')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (288, N' Licenciatura en educacion religiosa y moral')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (289, N' Licenciatura en educacion rural')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (290, N' Licenciatura en educacion teologia')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (291, N' Licenciatura en educacion y ciencias religiosas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (292, N' Licenciatura en electricidad y electronica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (293, N' Licenciatura en electromecanica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (294, N' Licenciatura en electrotecnia')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (295, N' Licenciatura en enseñanza de lenguas extranjeras')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (296, N' Licenciatura en español y literatura')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (297, N' Licenciatura en estudios biblicos')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (298, N' Licenciatura en etnoeducacion y desarrollo comunit')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (299, N' Licenciatura en filologia')
GO
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (300, N' Licenciatura en filologia e idiomas ingles-frances')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (301, N' Licenciatura en filosofia')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (302, N' Licenciatura en filosofia con enfasis en teoria po')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (303, N' Licenciatura en filosofia e historia')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (304, N' Licenciatura en filosofia e idiomas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (305, N' Licenciatura en filosofia y ciencias religiosas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (306, N' Licenciatura en filosofia y humanidades')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (307, N' Licenciatura en filosofia y letras')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (308, N' Licenciatura en filosofia y teologia')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (309, N' Licenciatura en fisica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (310, N' Licenciatura en fisica y matematicas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (311, N' Licenciatura en formacion estetica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (312, N' Licenciatura en geografia e historia')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (313, N' Licenciatura en historia')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (314, N' Licenciatura en historia de Colombia')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (315, N' Licenciatura en historia y civilizacion')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (316, N' Licenciatura en historia y filosofia')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (317, N' Licenciatura en historia y filosofia')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (318, N' Licenciatura en idiomas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (319, N' Licenciatura en idiomas español-ingles')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (320, N' Licenciatura en idiomas modernos español-frances')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (321, N' Licenciatura en idiomas modernos español-ingles')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (322, N' Licenciatura en informatica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (323, N' Licenciatura en informatica educativa')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (324, N' Licenciatura en ingles')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (325, N' Licenciatura en ingles y humanidades')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (326, N' Licenciatura en lenguas modernar español y frances')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (327, N' Licenciatura en lenguas modernas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (328, N' Licenciatura en lenguas modernas español e ingles')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (329, N' Licenciatura en lenguas modernas español frances')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (330, N' Licenciatura en lenguas modernas español ingles')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (331, N' Licenciatura en lenguas modernas ingles-frances')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (332, N' Licenciatura en lingüistica y educacion indigena')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (333, N' Licenciatura en lingüistica y literatura')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (334, N' Licenciatura en literatura')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (335, N' Licenciatura en literatura y lengua espa? Ola')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (336, N' Licenciatura en matematicas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (337, N' Licenciatura en matematicas y computacion')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (338, N' Licenciatura en matematicas y estadistica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (339, N' Licenciatura en matematicas y fisica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (340, N' Licenciatura en mecanica industrial')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (341, N' Licenciatura en musica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (342, N' Licenciatura en nutricion y dietetica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (343, N' Licenciatura en orientacion y consejeria')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (344, N' Licenciatura en pedagogia')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (345, N' Licenciatura en pedagogia infantil y familiar')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (346, N' Licenciatura en pedagogia para la salud')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (347, N' Licenciatura en pedagogia reeducativa')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (348, N' Licenciatura en pedagogia social y comunitaria')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (349, N' Licenciatura en pedagogia y psicologia')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (350, N' Licenciatura en preescolar')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (351, N' Licenciatura en produccion agropecuaria')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (352, N' Licenciatura en promocion de la comunidad')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (353, N' Licenciatura en psicologia')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (354, N' Licenciatura en psicologia educativa')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (355, N' Licenciatura en psicologia y administracion educat')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (356, N' Licenciatura en psicologia y filosofia')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (357, N' Licenciatura en psicopedagogia')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (358, N' Licenciatura en psicopedagogia y filosofia')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (359, N' Licenciatura en quimica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (360, N' Licenciatura en quimica y biologia')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (361, N' Licenciatura en sociales')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (362, N' Licenciatura en supervision educativa')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (363, N' Licenciatura en tecnologia educativa')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (364, N' Licenciatura en tecnologia industrial')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (365, N' Licenciatura en teologia')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (366, N' Lingüistica y literatura')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (367, N' Literatura')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (368, N' Maestra en artes visuales')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (369, N' Maestria en composicion musical')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (370, N' Maestro en piano')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (371, N' Manejo agroforestal')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (372, N' Manejo agrologico y de post-cosecha')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (373, N' Matematicas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (374, N' Matematicas y fisica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (375, N' Medicina general')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (376, N' Medicina veterinaria')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (377, N' Medicina y cirugia')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (378, N' Medicina y neurocirugia')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (379, N' Medicina y radiologia')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (380, N' Mercadeo')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (381, N' Mercadeo con enfasis en negocios internacionales')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (382, N' Mercadeo nacional e internacional')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (383, N' Mercadeo publicidad y ventas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (384, N' Mercadeo y publicidad')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (385, N' Mercadologia')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (386, N' Mercadotecnia')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (387, N' Mercadotecnia agroindustrial')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (388, N' Metalisteria')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (389, N' Microbiologia')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (390, N' Microbiologia agricola y veterinaria')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (391, N' Microbiologia con enfasis en alimentos')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (392, N' Microbiologia industrial')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (393, N' Musica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (394, N' Musica canto')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (395, N' Musica instrumental')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (396, N' Musica instrumento')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (397, N' Negocios internacionales')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (398, N' Neurologia infantil')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (399, N' Normalista superior')
GO
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (400, N' Nutricionista dietista')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (401, N' Oceanografia')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (402, N' Odontologia')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (403, N' Optometria')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (404, N' Patologia clinica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (405, N' Pintura')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (406, N' Planeacion para el desarrollo social')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (407, N' Profesional en ciencia de la informacion y la doc.')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (408, N' Profesional en lenguas modernas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (409, N' Psicologia')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (410, N' Psicologia organizacional')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (411, N' Psicopedagogia y administracion educativa')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (412, N' Psiquiatria')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (413, N' Publicidad')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (414, N' Publicidad y mercadeo')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (415, N' Quimica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (416, N' Quimica de alimentos')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (417, N' Quimica farmaceutica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (418, N' Quimica y farmacia')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (419, N' Recreacion')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (420, N' Relaciones economicas internacionales')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (421, N' Sacerdote')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (422, N' Sociologia')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (423, N' T.p administrativo en contabilidad y finanzas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (424, N' T.p en diseño grafico: - - - - ')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (425, N' T.p en laboratorio medico')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (426, N' T.p. Administrativo en relaciones industriales')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (427, N' T.p. Construccion y administracion de obras civiles')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (428, N' T.p. Diseño textil')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (429, N' T.p. Diseño y decoracion de espacios arquitectonica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (430, N' T.p. En administracion agropecuaria')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (431, N' T.p. En administracion bancaria y financiera')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (432, N' T.p. En administracion de comercio exterior')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (433, N' T.p. En administracion de construcciones')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (434, N' T.p. En administracion de costos y auditoria')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (435, N' T.p. En administracion de empresas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (436, N' T.p. En administracion de empresas agropecuarias')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (437, N' T.p. En administracion de la construccion')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (438, N' T.p. En administracion de obras civiles')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (439, N' T.p. En administracion de servicio de salud')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (440, N' T.p. En administracion empresarial e informatica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (441, N' T.p. En administracion hospitalaria')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (442, N' T.p. En administracion hotelera')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (443, N' T.p. En administracion industrial')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (444, N' T.p. En administracion informatica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (445, N' T.p. En administracion inmobiliaria')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (446, N' T.p. En administracion municipal')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (447, N' T.p. En administracion turistica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (448, N' T.p. En administracion turistica y hotelera')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (449, N' T.p. En administracion y auditoria de sistemas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (450, N' T.p. En administracion y avaluos de finca raiz')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (451, N' T.p. En administracion y finanzas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (452, N' T.p. En administracion y mercadotecnia')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (453, N' T.p. En admon. Bancaria de instituciones financier')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (454, N' T.p. En admon. De empresas con enfasis en agroindu')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (455, N' T.p. En admon. De empresas de economia solidaria')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (456, N' T.p. En admon. De planteles de educa. Basica primar')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (457, N' T.p. En agropecuaria: ')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (458, N' T.p. En analisis quimico industrial')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (459, N' T.p. En analisis y diseño de sistemas de computacion')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (460, N' T.p. En analisis y programacion de computadores')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (461, N' T.p. En arquitectura de interiores')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (462, N' T.p. En arte grafico y publicitario')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (463, N' T.p. En arte publicitario')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (464, N' T.p. En arte y decoracion: ')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (465, N' T.p. En auxiliar de arquitectura e ingenieria')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (466, N' T.p. En balistica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (467, N' T.p. En catequesis')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (468, N' T.p. En ciencias contables')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (469, N' T.p. En ciencias de la computacion')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (470, N' T.p. En citohistologia')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (471, N' T.p. En cocina internacional')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (472, N' T.p. En comercio exterior')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (473, N' T.p. En comercio internacional')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (474, N' T.p. En comercio internacional y legislacion aduan')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (475, N' T.p. En comercio y negocios internacionales')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (476, N' T.p. En computacion')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (477, N' T.p. En computacion y sistemas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (478, N' T.p. En confeccion, acabados y supervision')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (479, N' T.p. En construcciones')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (480, N' T.p. En contabilidad')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (481, N' T.p. En contabilidad comercial')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (482, N' T.p. En contabilidad sistematizada')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (483, N' T.p. En contabilidad y costos')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (484, N' T.p. En contabilidad y finanzas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (485, N' T.p. En contaduria')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (486, N' T.p. En contaduria tecnica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (487, N' T.p. En costos y contabilidad')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (488, N' T.p. En dactiloscopia')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (489, N' T.p. En decoracion de espacios arquitectonicos')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (490, N' T.p. En decoracion y diseño de interiores')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (491, N' T.p. En delineante y auxiliar de ingenieria mecani')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (492, N' T.p. En delineantes de arquitectura e ingenieria')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (493, N' T.p. En delineantes de arquitectura y decoracion')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (494, N' T.p. En deporte y recreacion')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (495, N' T.p. En dibujo arquitectonico')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (496, N' T.p. En dibujo arquitectonico y de ingenieria')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (497, N' T.p. En dibujo arquitectonico y decoracion')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (498, N' T.p. En dibujo de ingenieria mecanica y arquitectu')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (499, N' T.p. En dibujo publicitario: ')
GO
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (500, N' T.p. En diseño asistido por computador')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (501, N' T.p. En diseño de alta costura')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (502, N' T.p. En diseño de ambientes')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (503, N' T.p. En diseño de artes graficas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (504, N' T.p. En diseño de interiores:  - ')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (505, N' T.p. En diseño de maquinas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (506, N' T.p. En diseño de modas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (507, N' T.p. En diseño e industria de la moda')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (508, N' T.p. En diseño industrial')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (509, N' T.p. En diseño mecanico')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (510, N' T.p. En diseño publicitario: ')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (511, N' T.p. En diseño textil y de modas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (512, N' T.p. En diseño y confeccion de la moda')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (513, N' T.p. En diseño y decoracion de ambientes')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (514, N' T.p. En diseño y produccion de television')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (515, N' T.p. En documento logia')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (516, N' T.p. En educacion artistica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (517, N' T.p. En educacion basica primaria bilingüe')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (518, N' T.p. En educacion especial')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (519, N' T.p. En educacion fisica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (520, N' T.p. En educacion fisica y recreacion')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (521, N' T.p. En educacion preescolar')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (522, N' T.p. En electromecanica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (523, N' T.p. En electromedicina')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (524, N' T.p. En electronica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (525, N' T.p. En electronica industrial')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (526, N' T.p. En electronica y telecomunicaciones')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (527, N' T.p. En explosivos')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (528, N' T.p. En finanzas y sistemas contables')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (529, N' T.p. En fotografia')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (530, N' T.p. En fotografia judicial')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (531, N' T.p. En fotografia y camarografita')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (532, N' T.p. En gestion de pequeñas y medianas empresas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (533, N' T.p. En gestion de servicios gerontologicos')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (534, N' T.p. En gestion empresarial')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (535, N' T.p. En hoteleria')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (536, N' T.p. En identificacion de automotores')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (537, N' T.p. En informatica contable y financiera')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (538, N' T.p. En informatica gerencial')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (539, N' T.p. En informatica secretarial')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (540, N' T.p. En ingenieria agropecuaria')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (541, N' T.p. En ingenieria automotriz')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (542, N' T.p. En ingenieria comercial')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (543, N' T.p. En ingenieria de alimentos')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (544, N' T.p. En ingenieria de sistemas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (545, N' T.p. En ingenieria industrial')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (546, N' T.p. En ingenieria termica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (547, N' T.p. En ingenieria textil')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (548, N' T.p. En instrumentacion quirurgica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (549, N' T.p. En inteligencia')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (550, N' T.p. En laboratorio dental')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (551, N' T.p. En logistica de produccion y distribucion')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (552, N' T.p. En mantenimiento de computadores')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (553, N' T.p. En mantenimiento electronico')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (554, N' T.p. En marketing internacional')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (555, N' T.p. En mecanica automotriz')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (556, N' T.p. En mercadeo e informatica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (557, N' T.p. En mercadeo y comercializacion')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (558, N' T.p. En mercadeo y ventas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (559, N' T.p. En mercadeo, publicidad y ventas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (560, N' T.p. En mercado y finanzas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (561, N' T.p. En mercadotecnia')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (562, N' T.p. En microempresas y cooperativas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (563, N' T.p. En mineria')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (564, N' T.p. En nuevas tecnologias informaticas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (565, N' T.p. En optometria')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (566, N' T.p. En periodismo')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (567, N' T.p. En periodismo deportivo')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (568, N' T.p. En planimetria')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (569, N' T.p. En policia judicial')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (570, N' T.p. En procesos industriales')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (571, N' T.p. En produccion agropecuaria:  -  - ')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (572, N' T.p. En produccion de semillas: ')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (573, N' T.p. En produccion de television: ')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (574, N' T.p. En produccion y desarrollo industrial')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (575, N' T.p. En programacion de computadores')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (576, N' T.p. En promocion social')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (577, N' T.p. En publicidad')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (578, N' T.p. En publicidad y diseño')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (579, N' T.p. En publicidad y diseño publicitario: ')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (580, N' T.p. En radiologia medica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (581, N' T.p. En realizacion de video')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (582, N' T.p. En recreacion dirigida')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (583, N' T.p. En recursos energeticos')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (584, N' T.p. En relaciones industriales')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (585, N' T.p. En relaciones publicas y comunicacion')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (586, N' T.p. En rendimiento deportivo')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (587, N' T.p. En salud ocupacional y seguridad industrial')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (588, N' T.p. En salud y rendimiento humano')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (589, N' T.p. En secretariado')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (590, N' T.p. En secretariado bilingüe')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (591, N' T.p. En secretariado bilingüe y de sistemas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (592, N' T.p. En secretariado comercial')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (593, N' T.p. En secretariado contable de sistemas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (594, N' T.p. En secretariado ejecutivo')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (595, N' T.p. En secretariado ejecutivo bilingüe')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (596, N' T.p. En secretariado ejecutivo de sistemas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (597, N' T.p. En secretariado gerencial')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (598, N' T.p. En seguridad e higiene industrial')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (599, N' T.p. En seguridad e higiene ocupacional')
GO
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (600, N' T.p. En servicios a bordo')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (601, N' T.p. En sistemas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (602, N' T.p. En sistemas contables y financieros')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (603, N' T.p. En sistemas y analisis de la computacion')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (604, N' T.p. En sistemas y computacion')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (605, N' T.p. En sistematizacion')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (606, N' T.p. En tecnicas agropecuarias: ')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (607, N' T.p. En tecnicas forestales: ')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (608, N' T.p. En tecnico de laboratorio')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (609, N' T.p. En tecnico hotelero')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (610, N' T.p. En tecnologia de plasticos')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (611, N' T.p. En telecomunicaciones')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (612, N' T.p. En topografia')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (613, N' T.p. En turismo')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (614, N' T.p. Procesos mecanicos con enfasis produccion agr')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (615, N' T.p. Secretariado ejecutivo y de sistemas bilingüe')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (616, N' Teatro')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (617, N' Tecnico')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (618, N' Tecnol. Admon. Rec. Costeros y marin. Con enfasis')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (619, N' Tecnologia agricola')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (620, N' Tecnologia agroindustrial')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (621, N' Tecnologia agropecuaria')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (622, N' Tecnologia bilingüe en administracion de empresas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (623, N' Tecnologia bilingüe en comercio exterior')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (624, N' Tecnologia de alimentos')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (625, N' Tecnologia deportiva')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (626, N' Tecnologia electrica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (627, N' Tecnologia electronica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (628, N' Tecnologia empresarial')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (629, N' Tecnologia empresarial y de negocios')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (630, N' Tecnologia en acuicultura')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (631, N' Tecnologia en administracion aeronautica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (632, N' Tecnologia en administracion agropecuaria')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (633, N' Tecnologia en administracion bancaria')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (634, N' Tecnologia en administracion comercial')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (635, N' Tecnologia en administracion comercial y financier')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (636, N' Tecnologia en administracion de empresas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (637, N' Tecnologia en administracion de empresas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (638, N' Tecnologia en administracion de empresas cooperati')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (639, N' Tecnologia en administracion de empresas turistica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (640, N' Tecnologia en administracion de empresas turistica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (641, N' Tecnologia en administracion de la produccion')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (642, N' Tecnologia en administracion de la produccion indu')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (643, N' Tecnologia en administracion de negocios')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (644, N' Tecnologia en administracion de obras civiles')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (645, N' Tecnologia en administracion de oficinas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (646, N' Tecnologia en administracion de oficinas bilingüe')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (647, N' Tecnologia en administracion de personal')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (648, N' Tecnologia en administracion de redes de computado')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (649, N' Tecnologia en administracion de redes de datos')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (650, N' Tecnologia en administracion de riesgos y seguros')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (651, N' Tecnologia en administracion de seguros')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (652, N' Tecnologia en administracion de servicios de salud')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (653, N' Tecnologia en administracion de sistemas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (654, N' Tecnologia en administracion de sistemas de informe')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (655, N' Tecnologia en administracion de ventas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (656, N' Tecnologia en administracion del transporte')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (657, N' Tecnologia en administracion del turismo social')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (658, N' Tecnologia en administracion deportivas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (659, N' Tecnologia en administracion documental y microgra')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (660, N' Tecnologia en administracion financiera')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (661, N' Tecnologia en administracion financiera y de siste')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (662, N' Tecnologia en administracion hospitalaria')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (663, N' Tecnologia en administracion hotelera')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (664, N' Tecnologia en administracion industrial')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (665, N' Tecnologia en administracion informatica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (666, N' Tecnologia en administracion judicial')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (667, N' Tecnologia en administracion municipal')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (668, N' Tecnologia en administracion naviera y portuaria')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (669, N' Tecnologia en administracion tributaria')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (670, N' Tecnologia en administracion turistica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (671, N' Tecnologia en administracion y finanzas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (672, N' Tecnologia en admon. De aerolineas y agencias de v')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (673, N' Tecnologia en admon. de empresas de economia solida')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (674, N' Tecnologia en admon. De negocios internacionales')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (675, N' Tecnologia en alimentos')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (676, N' Tecnologia en analisis y diseño de sistemas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (677, N' Tecnologia en analisis y programacion de computado')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (678, N' Tecnologia en arte y decoracion arquitectonica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (679, N' Tecnologia en auditoria y control interno')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (680, N' Tecnologia en auditoria y costos')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (681, N' Tecnologia en automatizacion industrial')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (682, N' Tecnologia en banca e instituciones financieras')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (683, N' Tecnologia en cafe y diversificacion')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (684, N' Tecnologia en ceramica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (685, N' Tecnologia en cine y fotografia')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (686, N' Tecnologia en citohistologia')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (687, N' Tecnologia en comercio exterior')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (688, N' Tecnologia en comercio internacional')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (689, N' Tecnologia en computacion')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (690, N' Tecnologia en computacion grafica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (691, N' Tecnologia en comunicacion publicitaria')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (692, N' Tecnologia en comunicaciones aeronauticas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (693, N' Tecnologia en conmutacion')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (694, N' Tecnologia en construccion')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (695, N' Tecnologia en construccion de obras civiles')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (696, N' Tecnologia en construcciones')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (697, N' Tecnologia en construcciones civiles')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (698, N' Tecnologia en contabilidad')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (699, N' Tecnologia en contabilidad sistematizada')
GO
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (700, N' Tecnologia en contaduria')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (701, N' Tecnologia en contaduria publica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (702, N' Tecnologia en control de calidad')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (703, N' Tecnologia en costos y contaduria')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (704, N' Tecnologia en criminalistica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (705, N' Tecnologia en delineantes de arquitectura e ingeni')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (706, N' Tecnologia en desarrollo del software')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (707, N' Tecnologia en dibujo arquitectonico de ingenieria')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (708, N' Tecnologia en dibujo industrial')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (709, N' Tecnologia en direccion de ventas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (710, N' Tecnologia en direccion y produccion de television')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (711, N' Tecnologia en diseño de interiores')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (712, N' Tecnologia en diseño de modas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (713, N' Tecnologia en diseño de modas y alta costura')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (714, N' Tecnologia en diseño de modas y aplicaciones texti')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (715, N' Tecnologia en diseño de modas y textil')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (716, N' Tecnologia en diseño grafico')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (717, N' Tecnologia en diseño industrial')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (718, N' Tecnologia en diseño industrial')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (719, N' Tecnologia en diseño textil')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (720, N' Tecnologia en diseño textil y patronaje industrial')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (721, N' Tecnologia en diseño y decoracion de espacios arqu')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (722, N' Tecnologia en docencia rural')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (723, N' Tecnologia en educacion basica primaria')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (724, N' Tecnologia en educacion especial')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (725, N' Tecnologia en educacion fisica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (726, N' Tecnologia en educacion para el desarrollo de la c')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (727, N' Tecnologia en educacion preescolar')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (728, N' Tecnologia en electricidad')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (729, N' Tecnologia en electricidad industrial')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (730, N' Tecnologia en electrificacion y telefonia rural')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (731, N' Tecnologia en electromecanica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (732, N' Tecnologia en electronica aeronautica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (733, N' Tecnologia en electronica y automatizacion industr')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (734, N' Tecnologia en electronica y comunicaciones')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (735, N' Tecnologia en electronica y telecomunicaciones')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (736, N' Tecnologia en electroquimica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (737, N' Tecnologia en empresas turisticas y hoteleras')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (738, N' Tecnologia en estadistica e informatica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (739, N' Tecnologia en estudios policiales')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (740, N' Tecnologia en finanzas y comercio internacional')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (741, N' Tecnologia en finanzas y sistemas contables')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (742, N' Tecnologia en fisioterapia')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (743, N' Tecnologia en gerontologia')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (744, N' Tecnologia en gestion agropecuaria')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (745, N' Tecnologia en gestion bancaria y financiera')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (746, N' Tecnologia en gestion comercial y de negocios')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (747, N' Tecnologia en gestion de empresas asoc. Y organiz.')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (748, N' Tecnologia en gestion de obras civiles y construci')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (749, N' Tecnologia en gestion de servicios publicos sanita')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (750, N' Tecnologia en gestion de transportes')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (751, N' Tecnologia en gestion empresarial')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (752, N' Tecnologia en gestion empresarial y de negocios')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (753, N' Tecnologia en gestion industrial')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (754, N' Tecnologia en gestion informatica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (755, N' Tecnologia en gestion y administracion de empresas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (756, N' Tecnologia en higiene y seguridad industrial')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (757, N' Tecnologia en informatica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (758, N' Tecnologia en ingenieria de alimentos')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (759, N' Tecnologia en ingenieria de instrumentacion y cont.')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (760, N' Tecnologia en ingenieria de sistemas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (761, N' Tecnologia en ingenieria electromecanica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (762, N' Tecnologia en ingenieria electronica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (763, N' Tecnologia en ingenieria electronica digital')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (764, N' Tecnologia en ingenieria electronica y telecomunic')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (765, N' Tecnologia en ingenieria hidroneumatica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (766, N' Tecnologia en ingenieria industrial')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (767, N' Tecnologia en ingenieria industrial con enfasis en')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (768, N' Tecnologia en instrumentacion industrial')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (769, N' Tecnologia en instrumentacion quirurgica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (770, N' Tecnologia en instrumentacion y controles industria')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (771, N' Tecnologia en investigacion judicial')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (772, N' Tecnologia en laboratorio de protesis dental')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (773, N' Tecnologia en laboratorio de rehabilitacion dental')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (774, N' Tecnologia en laboratorio dental')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (775, N' Tecnologia en lacteos')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (776, N' Tecnologia en logistica de produccion distribucion')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (777, N' Tecnologia en maderas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (778, N' Tecnologia en mantenimiento aeronautico')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (779, N' Tecnologia en mecanica automotriz')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (780, N' Tecnologia en medicina veterinaria y zootecnia')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (781, N' Tecnologia en mercadeo agropecuario')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (782, N' Tecnologia en mercadeo y comercializacion')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (783, N' Tecnologia en mercadeo y finanzas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (784, N' Tecnologia en mercadeo y negocios internacionales')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (785, N' Tecnologia en mercadeo y publicidad')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (786, N' Tecnologia en mercadeo y ventas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (787, N' Tecnologia en mercadotecnia')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (788, N' Tecnologia en mercadotecnia y publicidad')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (789, N' Tecnologia en mercadotecnia y ventas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (790, N' Tecnologia en minas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (791, N' Tecnologia en mineria')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (792, N' Tecnologia en negocios internacionales')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (793, N' Tecnologia en obras civiles')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (794, N' Tecnologia en periodismo')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (795, N' Tecnologia en plasticos')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (796, N' Tecnologia en produccion agraria')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (797, N' Tecnologia en produccion agricola')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (798, N' Tecnologia en produccion agropecuaria')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (799, N' Tecnologia en produccion animal')
GO
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (800, N' Tecnologia en produccion industrial')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (801, N' Tecnologia en promocion social')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (802, N' Tecnologia en publicidad')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (803, N' Tecnologia en publicidad y comercializacion')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (804, N' Tecnologia en publicidad y comunicacion')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (805, N' Tecnologia en publicidad y mercadeo')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (806, N' Tecnologia en quimica de productos vegetales')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (807, N' Tecnologia en quimica industrial')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (808, N' Tecnologia en radiologia e imagenes')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (809, N' Tecnologia en recreacion dirigida')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (810, N' Tecnologia en recursos hidricos')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (811, N' Tecnologia en recursos naturales renovables')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (812, N' Tecnologia en redes y comunicaciones de datos')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (813, N' Tecnologia en regencia de farmacia')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (814, N' Tecnologia en relaciones industriales')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (815, N' Tecnologia en salud comunitaria')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (816, N' Tecnologia en salud ocupacional')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (817, N' Tecnologia en saneamiento ambiental')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (818, N' Tecnologia en secretariado bilingüe')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (819, N' Tecnologia en secretariado bilingüe y computacion')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (820, N' Tecnologia en secretariado comercial bilingüe')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (821, N' Tecnologia en secretariado ejecutivo')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (822, N' Tecnologia en secretariado ejecutivo bilingüe')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (823, N' Tecnologia en secretariado ejecutivo bilingüe espa')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (824, N' Tecnologia en secretariado ejecutivo con enfasis e')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (825, N' Tecnologia en seguridad aeronautica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (826, N' Tecnologia en seguridad e higiene ocupacional')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (827, N' Tecnologia en sistemas')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (828, N' Tecnologia en sistemas contables')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (829, N' Tecnologia en sistemas de informacion')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (830, N' Tecnologia en sistemas de informacion en salud')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (831, N' Tecnologia en sistemas industriales')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (832, N' Tecnologia en sistemas y computacion')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (833, N' Tecnologia en sistematizacion de datos')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (834, N' Tecnologia en supervision de industria y comercio')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (835, N' Tecnologia en terapia del lenguaje')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (836, N' Tecnologia en terapia recreativa')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (837, N' Tecnologia en terapia respiratoria')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (838, N' Tecnologia en textiles y moda')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (839, N' Tecnologia en topografia')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (840, N' Tecnologia en traduccion turistica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (841, N' Tecnologia en tributacion')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (842, N' Tecnologia en turismo recreativo')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (843, N' Tecnologia en turismo y relaciones industriales')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (844, N' Tecnologia en zootecnia')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (845, N' Tecnologia forestal')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (846, N' Tecnologia industrial')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (847, N' Tecnologia mecanica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (848, N' Tecnologia naval en electromecanica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (849, N' Tecnologia naval en electronica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (850, N' Tecnologia naviera')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (851, N' Tecnologia pecuaria')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (852, N' Tecnologia quimica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (853, N' Tecnologia textil')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (854, N' Teologia')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (855, N' Terapia fisica')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (856, N' Terapia ocupacional')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (857, N' Terapia respiratoria')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (858, N' Terapias psicosociales')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (859, N' Textiles')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (860, N' Trabajo social')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (861, N' Traduccion e interpretacion ruso - español')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (862, N' Traduccion simultanea')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (863, N' Universitario')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (864, N' Universitario esp.')
INSERT [dbo].[Profesion] ([Profesion_id], [Descripcion]) VALUES (865, N' Zootecnia')
SET IDENTITY_INSERT [dbo].[Profesion] OFF
SET IDENTITY_INSERT [dbo].[Provincia] ON 

INSERT [dbo].[Provincia] ([ProvinciaId], [Descripcion], [Codigo]) VALUES (1, N'Distrito Nacional', NULL)
INSERT [dbo].[Provincia] ([ProvinciaId], [Descripcion], [Codigo]) VALUES (2, N'Provincia Santo Domingo', NULL)
INSERT [dbo].[Provincia] ([ProvinciaId], [Descripcion], [Codigo]) VALUES (3, N'Provincia Espaillat', NULL)
INSERT [dbo].[Provincia] ([ProvinciaId], [Descripcion], [Codigo]) VALUES (4, N'Provincia Puerto Plata', NULL)
INSERT [dbo].[Provincia] ([ProvinciaId], [Descripcion], [Codigo]) VALUES (5, N'Provincia Santiago', NULL)
INSERT [dbo].[Provincia] ([ProvinciaId], [Descripcion], [Codigo]) VALUES (6, N'Provincia La Vega', NULL)
INSERT [dbo].[Provincia] ([ProvinciaId], [Descripcion], [Codigo]) VALUES (7, N'Provincia Sanchez Ramirez', NULL)
INSERT [dbo].[Provincia] ([ProvinciaId], [Descripcion], [Codigo]) VALUES (8, N'Provincia Monseñor Nouel', NULL)
INSERT [dbo].[Provincia] ([ProvinciaId], [Descripcion], [Codigo]) VALUES (9, N'Provincia Duarte', NULL)
INSERT [dbo].[Provincia] ([ProvinciaId], [Descripcion], [Codigo]) VALUES (10, N'Provincia Maria Trinidad Sanchez', NULL)
INSERT [dbo].[Provincia] ([ProvinciaId], [Descripcion], [Codigo]) VALUES (11, N'Provincia Hermanas Mirabal', NULL)
INSERT [dbo].[Provincia] ([ProvinciaId], [Descripcion], [Codigo]) VALUES (12, N'Provincia Samana', NULL)
INSERT [dbo].[Provincia] ([ProvinciaId], [Descripcion], [Codigo]) VALUES (13, N'Provincia Dajabon', NULL)
INSERT [dbo].[Provincia] ([ProvinciaId], [Descripcion], [Codigo]) VALUES (14, N'Provincia Monte Cristi', NULL)
INSERT [dbo].[Provincia] ([ProvinciaId], [Descripcion], [Codigo]) VALUES (15, N'Provincia Santiago Rodriguez', NULL)
INSERT [dbo].[Provincia] ([ProvinciaId], [Descripcion], [Codigo]) VALUES (16, N'Provincia Valverde', NULL)
INSERT [dbo].[Provincia] ([ProvinciaId], [Descripcion], [Codigo]) VALUES (17, N'Provincia Azua', NULL)
INSERT [dbo].[Provincia] ([ProvinciaId], [Descripcion], [Codigo]) VALUES (18, N'Provincia Peravia', NULL)
INSERT [dbo].[Provincia] ([ProvinciaId], [Descripcion], [Codigo]) VALUES (19, N'Provincia San Cristobal', NULL)
INSERT [dbo].[Provincia] ([ProvinciaId], [Descripcion], [Codigo]) VALUES (20, N'Provincia San Jose de Ocoa', NULL)
INSERT [dbo].[Provincia] ([ProvinciaId], [Descripcion], [Codigo]) VALUES (21, N'Provincia Baoruco', NULL)
INSERT [dbo].[Provincia] ([ProvinciaId], [Descripcion], [Codigo]) VALUES (22, N'Provincia Barahona', NULL)
INSERT [dbo].[Provincia] ([ProvinciaId], [Descripcion], [Codigo]) VALUES (23, N'Provincia Independencia', NULL)
INSERT [dbo].[Provincia] ([ProvinciaId], [Descripcion], [Codigo]) VALUES (24, N'Provincia Pedernales', NULL)
INSERT [dbo].[Provincia] ([ProvinciaId], [Descripcion], [Codigo]) VALUES (25, N'Provincia Elias Piña', NULL)
INSERT [dbo].[Provincia] ([ProvinciaId], [Descripcion], [Codigo]) VALUES (26, N'Provincia San Juan', NULL)
INSERT [dbo].[Provincia] ([ProvinciaId], [Descripcion], [Codigo]) VALUES (27, N'Provincia El Seibo', NULL)
INSERT [dbo].[Provincia] ([ProvinciaId], [Descripcion], [Codigo]) VALUES (28, N'Provincia La Altagracia', NULL)
INSERT [dbo].[Provincia] ([ProvinciaId], [Descripcion], [Codigo]) VALUES (29, N'Provincia La Romana', NULL)
INSERT [dbo].[Provincia] ([ProvinciaId], [Descripcion], [Codigo]) VALUES (30, N'Provincia San Pedro de Macoris', NULL)
INSERT [dbo].[Provincia] ([ProvinciaId], [Descripcion], [Codigo]) VALUES (31, N'Provincia Monte Plata', NULL)
INSERT [dbo].[Provincia] ([ProvinciaId], [Descripcion], [Codigo]) VALUES (32, N'Provincia Hato Mayor', NULL)
SET IDENTITY_INSERT [dbo].[Provincia] OFF
SET IDENTITY_INSERT [dbo].[Rango] ON 

INSERT [dbo].[Rango] ([Rango_id], [Descripcion], [Orden]) VALUES (1, N'MAYOR GENERAL', 0)
INSERT [dbo].[Rango] ([Rango_id], [Descripcion], [Orden]) VALUES (2, N'VICEALMIRANTE', 0)
INSERT [dbo].[Rango] ([Rango_id], [Descripcion], [Orden]) VALUES (3, N'CONTRALMIRANTE', 1)
INSERT [dbo].[Rango] ([Rango_id], [Descripcion], [Orden]) VALUES (4, N'GENERAL', 1)
INSERT [dbo].[Rango] ([Rango_id], [Descripcion], [Orden]) VALUES (5, N'CORONEL MEDICO', 2)
INSERT [dbo].[Rango] ([Rango_id], [Descripcion], [Orden]) VALUES (6, N'CORONEL', 2)
INSERT [dbo].[Rango] ([Rango_id], [Descripcion], [Orden]) VALUES (7, N'CAPITAN DE NAVIO', 2)
INSERT [dbo].[Rango] ([Rango_id], [Descripcion], [Orden]) VALUES (8, N'CAPITAN DE FRAGATA', 3)
INSERT [dbo].[Rango] ([Rango_id], [Descripcion], [Orden]) VALUES (9, N'TENIENTE CORONEL', 3)
INSERT [dbo].[Rango] ([Rango_id], [Descripcion], [Orden]) VALUES (10, N'MAYOR', 4)
INSERT [dbo].[Rango] ([Rango_id], [Descripcion], [Orden]) VALUES (11, N'CAPITAN DE CORBETA', 4)
INSERT [dbo].[Rango] ([Rango_id], [Descripcion], [Orden]) VALUES (12, N'TENIENTE DE NAVIO', 5)
INSERT [dbo].[Rango] ([Rango_id], [Descripcion], [Orden]) VALUES (13, N'CAPITAN', 5)
INSERT [dbo].[Rango] ([Rango_id], [Descripcion], [Orden]) VALUES (14, N'PRIMER TENIENTE', 6)
INSERT [dbo].[Rango] ([Rango_id], [Descripcion], [Orden]) VALUES (15, N'TENIENTE DE FRAGATA', 6)
INSERT [dbo].[Rango] ([Rango_id], [Descripcion], [Orden]) VALUES (16, N'TENIENTE DE CORBETA', 7)
INSERT [dbo].[Rango] ([Rango_id], [Descripcion], [Orden]) VALUES (17, N'SEGUNDO TENIENTE', 7)
INSERT [dbo].[Rango] ([Rango_id], [Descripcion], [Orden]) VALUES (18, N'SARGENTO MAYOR', 8)
INSERT [dbo].[Rango] ([Rango_id], [Descripcion], [Orden]) VALUES (19, N'SARGENTO', 9)
INSERT [dbo].[Rango] ([Rango_id], [Descripcion], [Orden]) VALUES (20, N'CABO', 10)
INSERT [dbo].[Rango] ([Rango_id], [Descripcion], [Orden]) VALUES (21, N'RASO', 11)
INSERT [dbo].[Rango] ([Rango_id], [Descripcion], [Orden]) VALUES (22, N'MARINERO', 11)
INSERT [dbo].[Rango] ([Rango_id], [Descripcion], [Orden]) VALUES (23, N'ASIMILADO', 14)
INSERT [dbo].[Rango] ([Rango_id], [Descripcion], [Orden]) VALUES (24, N'CIVIL', 90)
SET IDENTITY_INSERT [dbo].[Rango] OFF
SET IDENTITY_INSERT [dbo].[Regional] ON 

INSERT [dbo].[Regional] ([RegionalId], [Descripcion]) VALUES (1, N'GRAN SANTO DOMINGO
')
INSERT [dbo].[Regional] ([RegionalId], [Descripcion]) VALUES (2, N'REGIONAL NORTE (DIGESETT - 4)')
INSERT [dbo].[Regional] ([RegionalId], [Descripcion]) VALUES (3, N'REGIONAL NORDESTE (DIGESETT - 5)')
INSERT [dbo].[Regional] ([RegionalId], [Descripcion]) VALUES (4, N'REGIONAL SUR (DIGESETT - 6)')
INSERT [dbo].[Regional] ([RegionalId], [Descripcion]) VALUES (5, N'REGIONAL ESTE (DIGESETT - 7)')
INSERT [dbo].[Regional] ([RegionalId], [Descripcion]) VALUES (6, N'DOCA (DEPARTAMENTO DE ORDENAMIENTO DE CARRETERAS)')
SET IDENTITY_INSERT [dbo].[Regional] OFF
SET IDENTITY_INSERT [dbo].[Registro_Evento] ON 

INSERT [dbo].[Registro_Evento] ([Registro_EventoId], [RegionalId], [ComandanciaId], [ZonaId], [MunicipioId], [UsuarioId], [Tipo_InvolucradoId], [GeogCol1], [GeogCol2], [FechaReporte], [Direccion], [Fiscalizado], [Retenido], [Comentario], [Numero_Caso]) VALUES (2, 1, 1, 4, 1, 1, 1, CAST(-69.924926832318300 AS Numeric(18, 15)), CAST(18.458858668172148 AS Numeric(18, 15)), CAST(N'2019-10-25T00:00:00.000' AS DateTime), N'Calle Juan Tomás Díaz 109, Santo Domingo, Dominican Republic', 0, 0, N'Prueba2', NULL)
INSERT [dbo].[Registro_Evento] ([Registro_EventoId], [RegionalId], [ComandanciaId], [ZonaId], [MunicipioId], [UsuarioId], [Tipo_InvolucradoId], [GeogCol1], [GeogCol2], [FechaReporte], [Direccion], [Fiscalizado], [Retenido], [Comentario], [Numero_Caso]) VALUES (3, 1, 1, 4, 1, 1, 1, CAST(-69.924926832318300 AS Numeric(18, 15)), CAST(18.458858668172148 AS Numeric(18, 15)), CAST(N'2019-10-25T00:00:00.000' AS DateTime), N'Calle Juan Tomás Díaz 109, Santo Domingo, Dominican Republic', 1, 1, N'Prueba2', NULL)
INSERT [dbo].[Registro_Evento] ([Registro_EventoId], [RegionalId], [ComandanciaId], [ZonaId], [MunicipioId], [UsuarioId], [Tipo_InvolucradoId], [GeogCol1], [GeogCol2], [FechaReporte], [Direccion], [Fiscalizado], [Retenido], [Comentario], [Numero_Caso]) VALUES (4, 1, 1, 3, 1, 1, 1, CAST(-69.930419996380800 AS Numeric(18, 15)), CAST(18.488961387872100 AS Numeric(18, 15)), CAST(N'2019-10-25T00:00:00.000' AS DateTime), N'Partido Reformista Social Cristiano, Av. Tiradentes, Santo Domingo, Dominican Republic', 1, 1, N'Esto es un comentario.', NULL)
INSERT [dbo].[Registro_Evento] ([Registro_EventoId], [RegionalId], [ComandanciaId], [ZonaId], [MunicipioId], [UsuarioId], [Tipo_InvolucradoId], [GeogCol1], [GeogCol2], [FechaReporte], [Direccion], [Fiscalizado], [Retenido], [Comentario], [Numero_Caso]) VALUES (5, 1, 1, 3, 1, 1, 1, CAST(-69.913940504193300 AS Numeric(18, 15)), CAST(18.495328624333310 AS Numeric(18, 15)), CAST(N'2019-10-25T00:00:00.000' AS DateTime), N'Calle Anibal de Espinosa, Santo Domingo 10410, Dominican Republic', 1, 1, N'prueba3', NULL)
INSERT [dbo].[Registro_Evento] ([Registro_EventoId], [RegionalId], [ComandanciaId], [ZonaId], [MunicipioId], [UsuarioId], [Tipo_InvolucradoId], [GeogCol1], [GeogCol2], [FechaReporte], [Direccion], [Fiscalizado], [Retenido], [Comentario], [Numero_Caso]) VALUES (6, 1, 1, 3, 1, 1, 1, CAST(-69.913940504193300 AS Numeric(18, 15)), CAST(18.495328624333310 AS Numeric(18, 15)), CAST(N'2019-10-25T00:00:00.000' AS DateTime), N'Calle Anibal de Espinosa, Santo Domingo 10410, Dominican Republic', 1, 1, N'prueba3', NULL)
INSERT [dbo].[Registro_Evento] ([Registro_EventoId], [RegionalId], [ComandanciaId], [ZonaId], [MunicipioId], [UsuarioId], [Tipo_InvolucradoId], [GeogCol1], [GeogCol2], [FechaReporte], [Direccion], [Fiscalizado], [Retenido], [Comentario], [Numero_Caso]) VALUES (7, 1, 1, 3, 1, 1, 1, CAST(-69.913940504193300 AS Numeric(18, 15)), CAST(18.495328624333310 AS Numeric(18, 15)), CAST(N'2019-10-25T00:00:00.000' AS DateTime), N'Calle Anibal de Espinosa, Santo Domingo 10410, Dominican Republic', 1, 1, N'prueba3', NULL)
INSERT [dbo].[Registro_Evento] ([Registro_EventoId], [RegionalId], [ComandanciaId], [ZonaId], [MunicipioId], [UsuarioId], [Tipo_InvolucradoId], [GeogCol1], [GeogCol2], [FechaReporte], [Direccion], [Fiscalizado], [Retenido], [Comentario], [Numero_Caso]) VALUES (8, 1, 1, 3, 1, 1, 1, CAST(-69.913940504193300 AS Numeric(18, 15)), CAST(18.495328624333310 AS Numeric(18, 15)), CAST(N'2019-10-25T00:00:00.000' AS DateTime), N'Calle Anibal de Espinosa, Santo Domingo 10410, Dominican Republic', 1, 1, N'prueba3', NULL)
INSERT [dbo].[Registro_Evento] ([Registro_EventoId], [RegionalId], [ComandanciaId], [ZonaId], [MunicipioId], [UsuarioId], [Tipo_InvolucradoId], [GeogCol1], [GeogCol2], [FechaReporte], [Direccion], [Fiscalizado], [Retenido], [Comentario], [Numero_Caso]) VALUES (9, 1, 1, 3, 1, 1, 1, CAST(-69.913940504193300 AS Numeric(18, 15)), CAST(18.495328624333310 AS Numeric(18, 15)), CAST(N'2019-10-25T00:00:00.000' AS DateTime), N'Calle Anibal de Espinosa, Santo Domingo 10410, Dominican Republic', 1, 1, N'prueba3', NULL)
INSERT [dbo].[Registro_Evento] ([Registro_EventoId], [RegionalId], [ComandanciaId], [ZonaId], [MunicipioId], [UsuarioId], [Tipo_InvolucradoId], [GeogCol1], [GeogCol2], [FechaReporte], [Direccion], [Fiscalizado], [Retenido], [Comentario], [Numero_Caso]) VALUES (10, 1, 1, 3, 1, 1, 1, CAST(-69.913940504193300 AS Numeric(18, 15)), CAST(18.495328624333310 AS Numeric(18, 15)), CAST(N'2019-10-25T00:00:00.000' AS DateTime), N'Calle Anibal de Espinosa, Santo Domingo 10410, Dominican Republic', 1, 1, N'prueba3', NULL)
INSERT [dbo].[Registro_Evento] ([Registro_EventoId], [RegionalId], [ComandanciaId], [ZonaId], [MunicipioId], [UsuarioId], [Tipo_InvolucradoId], [GeogCol1], [GeogCol2], [FechaReporte], [Direccion], [Fiscalizado], [Retenido], [Comentario], [Numero_Caso]) VALUES (11, 1, 1, 3, 1, 1, 1, CAST(-69.952392652630800 AS Numeric(18, 15)), CAST(18.464069136728450 AS Numeric(18, 15)), CAST(N'2019-10-25T00:00:00.000' AS DateTime), N'Calle Carmen Mendoza de Cornielle 88, Santo Domingo, Dominican Republic', 1, 1, N'Hola', NULL)
INSERT [dbo].[Registro_Evento] ([Registro_EventoId], [RegionalId], [ComandanciaId], [ZonaId], [MunicipioId], [UsuarioId], [Tipo_InvolucradoId], [GeogCol1], [GeogCol2], [FechaReporte], [Direccion], [Fiscalizado], [Retenido], [Comentario], [Numero_Caso]) VALUES (12, 1, 1, 3, 1, 1, 1, CAST(-69.952392652630800 AS Numeric(18, 15)), CAST(18.464069136728450 AS Numeric(18, 15)), CAST(N'2019-10-25T00:00:00.000' AS DateTime), N'Calle Carmen Mendoza de Cornielle 88, Santo Domingo, Dominican Republic', 1, 1, N'Hola', NULL)
INSERT [dbo].[Registro_Evento] ([Registro_EventoId], [RegionalId], [ComandanciaId], [ZonaId], [MunicipioId], [UsuarioId], [Tipo_InvolucradoId], [GeogCol1], [GeogCol2], [FechaReporte], [Direccion], [Fiscalizado], [Retenido], [Comentario], [Numero_Caso]) VALUES (13, 1, 1, 2, 1, 1, 1, CAST(-69.924926832318300 AS Numeric(18, 15)), CAST(18.490697976444757 AS Numeric(18, 15)), CAST(N'2019-10-25T00:00:00.000' AS DateTime), N'Calle Pepillo Salcedo 35, Santo Domingo, Dominican Republic', 1, 1, N'Final', NULL)
INSERT [dbo].[Registro_Evento] ([Registro_EventoId], [RegionalId], [ComandanciaId], [ZonaId], [MunicipioId], [UsuarioId], [Tipo_InvolucradoId], [GeogCol1], [GeogCol2], [FechaReporte], [Direccion], [Fiscalizado], [Retenido], [Comentario], [Numero_Caso]) VALUES (15, 1, 1, 2, 1, 1, 1, CAST(-69.946899488568300 AS Numeric(18, 15)), CAST(18.489540212939083 AS Numeric(18, 15)), CAST(N'2019-10-25T00:00:00.000' AS DateTime), N'Av. de Los Próceres 4, Santo Domingo, Dominican Republic', 1, 1, N'Final Final', NULL)
INSERT [dbo].[Registro_Evento] ([Registro_EventoId], [RegionalId], [ComandanciaId], [ZonaId], [MunicipioId], [UsuarioId], [Tipo_InvolucradoId], [GeogCol1], [GeogCol2], [FechaReporte], [Direccion], [Fiscalizado], [Retenido], [Comentario], [Numero_Caso]) VALUES (16, 1, 1, 2, 1, 1, 1, CAST(-69.946899488568300 AS Numeric(18, 15)), CAST(18.489540212939083 AS Numeric(18, 15)), CAST(N'2019-10-25T00:00:00.000' AS DateTime), N'Av. de Los Próceres 4, Santo Domingo, Dominican Republic', 1, 1, N'Final Final', NULL)
INSERT [dbo].[Registro_Evento] ([Registro_EventoId], [RegionalId], [ComandanciaId], [ZonaId], [MunicipioId], [UsuarioId], [Tipo_InvolucradoId], [GeogCol1], [GeogCol2], [FechaReporte], [Direccion], [Fiscalizado], [Retenido], [Comentario], [Numero_Caso]) VALUES (17, 1, 1, 2, 1, 1, 1, CAST(-69.946899488568300 AS Numeric(18, 15)), CAST(18.489540212939083 AS Numeric(18, 15)), CAST(N'2019-10-25T00:00:00.000' AS DateTime), N'Av. de Los Próceres 4, Santo Domingo, Dominican Republic', 1, 1, N'Final Final', NULL)
INSERT [dbo].[Registro_Evento] ([Registro_EventoId], [RegionalId], [ComandanciaId], [ZonaId], [MunicipioId], [UsuarioId], [Tipo_InvolucradoId], [GeogCol1], [GeogCol2], [FechaReporte], [Direccion], [Fiscalizado], [Retenido], [Comentario], [Numero_Caso]) VALUES (18, 1, 1, 4, 1, 1, 1, CAST(-69.913940504193300 AS Numeric(18, 15)), CAST(18.464648095519390 AS Numeric(18, 15)), CAST(N'2019-10-25T00:00:00.000' AS DateTime), N'Av Santo Tomás de Aquino 159, Santo Domingo, Dominican Republic', 1, 1, N'Ya por fin ', NULL)
INSERT [dbo].[Registro_Evento] ([Registro_EventoId], [RegionalId], [ComandanciaId], [ZonaId], [MunicipioId], [UsuarioId], [Tipo_InvolucradoId], [GeogCol1], [GeogCol2], [FechaReporte], [Direccion], [Fiscalizado], [Retenido], [Comentario], [Numero_Caso]) VALUES (19, 1, 1, 4, 1, 1, 1, CAST(-69.913940504193300 AS Numeric(18, 15)), CAST(18.464648095519390 AS Numeric(18, 15)), CAST(N'2019-10-25T00:00:00.000' AS DateTime), N'Av Santo Tomás de Aquino 159, Santo Domingo, Dominican Republic', 1, 1, N'Ya por fin ', NULL)
INSERT [dbo].[Registro_Evento] ([Registro_EventoId], [RegionalId], [ComandanciaId], [ZonaId], [MunicipioId], [UsuarioId], [Tipo_InvolucradoId], [GeogCol1], [GeogCol2], [FechaReporte], [Direccion], [Fiscalizado], [Retenido], [Comentario], [Numero_Caso]) VALUES (20, 1, 1, 4, 1, 1, 1, CAST(-69.913940504193300 AS Numeric(18, 15)), CAST(18.464648095519390 AS Numeric(18, 15)), CAST(N'2019-10-25T00:00:00.000' AS DateTime), N'Av Santo Tomás de Aquino 159, Santo Domingo, Dominican Republic', 1, 1, N'Ya por fin ', NULL)
INSERT [dbo].[Registro_Evento] ([Registro_EventoId], [RegionalId], [ComandanciaId], [ZonaId], [MunicipioId], [UsuarioId], [Tipo_InvolucradoId], [GeogCol1], [GeogCol2], [FechaReporte], [Direccion], [Fiscalizado], [Retenido], [Comentario], [Numero_Caso]) VALUES (21, 1, 1, 4, 1, 1, 1, CAST(-69.913940504193300 AS Numeric(18, 15)), CAST(18.464648095519390 AS Numeric(18, 15)), CAST(N'2019-10-25T00:00:00.000' AS DateTime), N'Av Santo Tomás de Aquino 159, Santo Domingo, Dominican Republic', 1, 1, N'Ya por fin ', NULL)
INSERT [dbo].[Registro_Evento] ([Registro_EventoId], [RegionalId], [ComandanciaId], [ZonaId], [MunicipioId], [UsuarioId], [Tipo_InvolucradoId], [GeogCol1], [GeogCol2], [FechaReporte], [Direccion], [Fiscalizado], [Retenido], [Comentario], [Numero_Caso]) VALUES (22, 1, 1, 2, 1, 1, 1, CAST(-69.941406324505800 AS Numeric(18, 15)), CAST(18.471595051123730 AS Numeric(18, 15)), CAST(N'2019-10-25T00:00:00.000' AS DateTime), N'Av. Winston Churchill 80, Santo Domingo, Dominican Republic', 1, 1, N'tato', NULL)
INSERT [dbo].[Registro_Evento] ([Registro_EventoId], [RegionalId], [ComandanciaId], [ZonaId], [MunicipioId], [UsuarioId], [Tipo_InvolucradoId], [GeogCol1], [GeogCol2], [FechaReporte], [Direccion], [Fiscalizado], [Retenido], [Comentario], [Numero_Caso]) VALUES (23, 1, 1, 2, 1, 1, 1, CAST(-69.941406324505800 AS Numeric(18, 15)), CAST(18.471595051123730 AS Numeric(18, 15)), CAST(N'2019-10-25T00:00:00.000' AS DateTime), N'Av. Winston Churchill 80, Santo Domingo, Dominican Republic', 1, 1, N'tato', NULL)
INSERT [dbo].[Registro_Evento] ([Registro_EventoId], [RegionalId], [ComandanciaId], [ZonaId], [MunicipioId], [UsuarioId], [Tipo_InvolucradoId], [GeogCol1], [GeogCol2], [FechaReporte], [Direccion], [Fiscalizado], [Retenido], [Comentario], [Numero_Caso]) VALUES (24, 1, 1, 3, 1, 1, 1, CAST(-69.924926832318300 AS Numeric(18, 15)), CAST(18.501116820249127 AS Numeric(18, 15)), CAST(N'2019-10-25T00:00:00.000' AS DateTime), N'Calle San Juan De la Maguana 272, Santo Domingo, Dominican Republic', 1, 1, N'YAAAAAAAAAAAAAAAAAAA', NULL)
INSERT [dbo].[Registro_Evento] ([Registro_EventoId], [RegionalId], [ComandanciaId], [ZonaId], [MunicipioId], [UsuarioId], [Tipo_InvolucradoId], [GeogCol1], [GeogCol2], [FechaReporte], [Direccion], [Fiscalizado], [Retenido], [Comentario], [Numero_Caso]) VALUES (25, 1, 1, 3, 1, 1, 1, CAST(-69.931991100311280 AS Numeric(18, 15)), CAST(18.476149310145427 AS Numeric(18, 15)), CAST(N'2019-10-29T00:00:00.000' AS DateTime), N'Avenida Gustavo Mejía Ricart 67, Santo Domingo, Dominican Republic', 1, 1, N'Esto es un comentario final', N'000000001')
INSERT [dbo].[Registro_Evento] ([Registro_EventoId], [RegionalId], [ComandanciaId], [ZonaId], [MunicipioId], [UsuarioId], [Tipo_InvolucradoId], [GeogCol1], [GeogCol2], [FechaReporte], [Direccion], [Fiscalizado], [Retenido], [Comentario], [Numero_Caso]) VALUES (26, 1, 1, 4, 1, 1, 1, CAST(-69.939179420471190 AS Numeric(18, 15)), CAST(18.469636658315476 AS Numeric(18, 15)), CAST(N'2019-11-08T00:00:00.000' AS DateTime), N'Caribbean Cinema Acrópolis Center, Calle Freddy Prestol Castillo, Santo Domingo, Dominican Republic', 0, 0, N'Comentario.', N'2')
INSERT [dbo].[Registro_Evento] ([Registro_EventoId], [RegionalId], [ComandanciaId], [ZonaId], [MunicipioId], [UsuarioId], [Tipo_InvolucradoId], [GeogCol1], [GeogCol2], [FechaReporte], [Direccion], [Fiscalizado], [Retenido], [Comentario], [Numero_Caso]) VALUES (27, 1, 1, 6, 1, 1, 1, CAST(-69.886844158172610 AS Numeric(18, 15)), CAST(18.470654276465060 AS Numeric(18, 15)), CAST(N'2019-11-05T00:00:00.000' AS DateTime), N'Calle Padre Billini 256-258, Santo Domingo 10210, Dominican Republic', 0, 0, N'AJa', N'000000003')
INSERT [dbo].[Registro_Evento] ([Registro_EventoId], [RegionalId], [ComandanciaId], [ZonaId], [MunicipioId], [UsuarioId], [Tipo_InvolucradoId], [GeogCol1], [GeogCol2], [FechaReporte], [Direccion], [Fiscalizado], [Retenido], [Comentario], [Numero_Caso]) VALUES (29, 1, 1, 4, 1, 1, 1, CAST(-69.962426732353070 AS Numeric(18, 15)), CAST(18.435525048118738 AS Numeric(18, 15)), CAST(N'2020-01-17T00:00:00.000' AS DateTime), N'Calle San Juan 38, Santo Domingo, Dominican Republic', 1, 0, N'Comentario de prueba', N'000000003')
INSERT [dbo].[Registro_Evento] ([Registro_EventoId], [RegionalId], [ComandanciaId], [ZonaId], [MunicipioId], [UsuarioId], [Tipo_InvolucradoId], [GeogCol1], [GeogCol2], [FechaReporte], [Direccion], [Fiscalizado], [Retenido], [Comentario], [Numero_Caso]) VALUES (30, 1, 1, 2, 1, 1, 1, CAST(-69.901199340820310 AS Numeric(18, 15)), CAST(18.448367057878760 AS Numeric(18, 15)), CAST(N'2020-01-17T00:00:00.000' AS DateTime), N'Av. George Washington, Santo Domingo, Dominican Republic', 1, 1, N'Otro comentario mas', N'000000003')
INSERT [dbo].[Registro_Evento] ([Registro_EventoId], [RegionalId], [ComandanciaId], [ZonaId], [MunicipioId], [UsuarioId], [Tipo_InvolucradoId], [GeogCol1], [GeogCol2], [FechaReporte], [Direccion], [Fiscalizado], [Retenido], [Comentario], [Numero_Caso]) VALUES (31, 1, 1, 3, 1, 1, 1, CAST(-69.890213012695310 AS Numeric(18, 15)), CAST(18.469209256892460 AS Numeric(18, 15)), CAST(N'2020-01-17T00:00:00.000' AS DateTime), N'Calle Palo Hincado 115, Santo Domingo 10210, Dominican Republic', 1, 1, N'No se que mas poner', N'000000003')
INSERT [dbo].[Registro_Evento] ([Registro_EventoId], [RegionalId], [ComandanciaId], [ZonaId], [MunicipioId], [UsuarioId], [Tipo_InvolucradoId], [GeogCol1], [GeogCol2], [FechaReporte], [Direccion], [Fiscalizado], [Retenido], [Comentario], [Numero_Caso]) VALUES (32, 1, 1, 4, 1, 1, 1, CAST(-69.924926832318300 AS Numeric(18, 15)), CAST(18.486356631001010 AS Numeric(18, 15)), CAST(N'2020-02-07T00:00:00.000' AS DateTime), N'Calle Pepillo Salcedo No22, Santo Domingo, Dominican Republic', 1, 1, N'Esto es un comentario', N'000000003')
INSERT [dbo].[Registro_Evento] ([Registro_EventoId], [RegionalId], [ComandanciaId], [ZonaId], [MunicipioId], [UsuarioId], [Tipo_InvolucradoId], [GeogCol1], [GeogCol2], [FechaReporte], [Direccion], [Fiscalizado], [Retenido], [Comentario], [Numero_Caso]) VALUES (33, 1, 1, 3, 1, 1, 1, CAST(-69.897461012005800 AS Numeric(18, 15)), CAST(18.469568895564397 AS Numeric(18, 15)), CAST(N'2020-02-07T00:00:00.000' AS DateTime), N'Av Dr Delgado 58, Santo Domingo 10209, Dominican Republic', 1, 1, N'Nacion del fuego', N'000000003')
INSERT [dbo].[Registro_Evento] ([Registro_EventoId], [RegionalId], [ComandanciaId], [ZonaId], [MunicipioId], [UsuarioId], [Tipo_InvolucradoId], [GeogCol1], [GeogCol2], [FechaReporte], [Direccion], [Fiscalizado], [Retenido], [Comentario], [Numero_Caso]) VALUES (34, 1, 1, 2, 1, 1, 1, CAST(-69.913940504193300 AS Numeric(18, 15)), CAST(18.464937569213340 AS Numeric(18, 15)), CAST(N'2020-02-07T00:00:00.000' AS DateTime), N'Av Santo Tomás de Aquino 165, Santo Domingo, Dominican Republic', 1, 1, N'Faya fayaa', N'000000003')
INSERT [dbo].[Registro_Evento] ([Registro_EventoId], [RegionalId], [ComandanciaId], [ZonaId], [MunicipioId], [UsuarioId], [Tipo_InvolucradoId], [GeogCol1], [GeogCol2], [FechaReporte], [Direccion], [Fiscalizado], [Retenido], [Comentario], [Numero_Caso]) VALUES (35, 1, 1, 2, 1, 1, 1, CAST(-69.897766113281250 AS Numeric(18, 15)), CAST(18.470165820506672 AS Numeric(18, 15)), CAST(N'2020-07-15T00:00:00.000' AS DateTime), N'Calle Enrique Henriquez no. 206, Santo Domingo 10209, Dominican Republic', 1, 1, N'Este es un comentario nuevo editado.', N'000000003')
SET IDENTITY_INSERT [dbo].[Registro_Evento] OFF
SET IDENTITY_INSERT [dbo].[Rol] ON 

INSERT [dbo].[Rol] ([idRol], [descripcion]) VALUES (1, N'Admin')
INSERT [dbo].[Rol] ([idRol], [descripcion]) VALUES (2, N'Digitador')
INSERT [dbo].[Rol] ([idRol], [descripcion]) VALUES (3, N'Consulta')
SET IDENTITY_INSERT [dbo].[Rol] OFF
SET IDENTITY_INSERT [dbo].[Tipo_Involucrado] ON 

INSERT [dbo].[Tipo_Involucrado] ([Tipo_InvolucradoId], [Descripcion]) VALUES (1, N'Choque en autopista')
SET IDENTITY_INSERT [dbo].[Tipo_Involucrado] OFF
SET IDENTITY_INSERT [dbo].[Usuario] ON 

INSERT [dbo].[Usuario] ([UsuarioId], [Nombre], [Apellido], [Flota], [ComandanciaId], [Usuario1], [Contraseña], [idRol]) VALUES (1, N'Randolph', N'Marte', N'8298904141', 1, N'rr.marte', N'1234', 1)
INSERT [dbo].[Usuario] ([UsuarioId], [Nombre], [Apellido], [Flota], [ComandanciaId], [Usuario1], [Contraseña], [idRol]) VALUES (2, N'Prueba1', N'Digitador', N'8096532563', 3, N'p.digitador', N'1234', 2)
SET IDENTITY_INSERT [dbo].[Usuario] OFF
SET IDENTITY_INSERT [dbo].[Zona] ON 

INSERT [dbo].[Zona] ([ZonaId], [ComandanciaId], [Descripcion]) VALUES (1, 1, N'ZONA 16')
INSERT [dbo].[Zona] ([ZonaId], [ComandanciaId], [Descripcion]) VALUES (2, 1, N'ZONA 17')
INSERT [dbo].[Zona] ([ZonaId], [ComandanciaId], [Descripcion]) VALUES (3, 1, N'ZONA 18')
INSERT [dbo].[Zona] ([ZonaId], [ComandanciaId], [Descripcion]) VALUES (4, 1, N'ZONA 19')
INSERT [dbo].[Zona] ([ZonaId], [ComandanciaId], [Descripcion]) VALUES (5, 1, N'ZONA 20')
INSERT [dbo].[Zona] ([ZonaId], [ComandanciaId], [Descripcion]) VALUES (6, 1, N'ZONA COLONIAL')
INSERT [dbo].[Zona] ([ZonaId], [ComandanciaId], [Descripcion]) VALUES (7, 2, N'ZONA 15')
INSERT [dbo].[Zona] ([ZonaId], [ComandanciaId], [Descripcion]) VALUES (8, 4, N'ZONA 21')
INSERT [dbo].[Zona] ([ZonaId], [ComandanciaId], [Descripcion]) VALUES (9, 3, N'ZONA 22')
INSERT [dbo].[Zona] ([ZonaId], [ComandanciaId], [Descripcion]) VALUES (10, 3, N'ZONA 23')
INSERT [dbo].[Zona] ([ZonaId], [ComandanciaId], [Descripcion]) VALUES (11, 3, N'ZONA 24')
INSERT [dbo].[Zona] ([ZonaId], [ComandanciaId], [Descripcion]) VALUES (12, 49, N'AUTOPISTA DUARTE')
INSERT [dbo].[Zona] ([ZonaId], [ComandanciaId], [Descripcion]) VALUES (13, 50, N'ZONA LAS AMERICAS')
INSERT [dbo].[Zona] ([ZonaId], [ComandanciaId], [Descripcion]) VALUES (14, 51, N'ZONA ESTE')
INSERT [dbo].[Zona] ([ZonaId], [ComandanciaId], [Descripcion]) VALUES (15, 52, N'ZONA NORDESTE')
INSERT [dbo].[Zona] ([ZonaId], [ComandanciaId], [Descripcion]) VALUES (16, 53, N'ZONA SUR')
SET IDENTITY_INSERT [dbo].[Zona] OFF
ALTER TABLE [dbo].[Area]  WITH CHECK ADD  CONSTRAINT [FK_Area_Zona] FOREIGN KEY([ZonaId])
REFERENCES [dbo].[Zona] ([ZonaId])
GO
ALTER TABLE [dbo].[Area] CHECK CONSTRAINT [FK_Area_Zona]
GO
ALTER TABLE [dbo].[Comandancia]  WITH CHECK ADD  CONSTRAINT [FK_Comandancia_Provincia] FOREIGN KEY([ProvinciaId])
REFERENCES [dbo].[Provincia] ([ProvinciaId])
GO
ALTER TABLE [dbo].[Comandancia] CHECK CONSTRAINT [FK_Comandancia_Provincia]
GO
ALTER TABLE [dbo].[Comandancia]  WITH CHECK ADD  CONSTRAINT [FK_Comandancia_Regional] FOREIGN KEY([RegionalId])
REFERENCES [dbo].[Regional] ([RegionalId])
GO
ALTER TABLE [dbo].[Comandancia] CHECK CONSTRAINT [FK_Comandancia_Regional]
GO
ALTER TABLE [dbo].[Evento_Caso]  WITH CHECK ADD  CONSTRAINT [FK_Evento_Caso_Evento] FOREIGN KEY([EventoId])
REFERENCES [dbo].[Evento] ([EventoId])
GO
ALTER TABLE [dbo].[Evento_Caso] CHECK CONSTRAINT [FK_Evento_Caso_Evento]
GO
ALTER TABLE [dbo].[Evento_Caso]  WITH CHECK ADD  CONSTRAINT [FK_Evento_Caso_Registro_Evento] FOREIGN KEY([Registro_EventoId])
REFERENCES [dbo].[Registro_Evento] ([Registro_EventoId])
GO
ALTER TABLE [dbo].[Evento_Caso] CHECK CONSTRAINT [FK_Evento_Caso_Registro_Evento]
GO
ALTER TABLE [dbo].[Implicado]  WITH CHECK ADD FOREIGN KEY([Condicion_implicado_id])
REFERENCES [dbo].[Condicion_implicado] ([Id])
GO
ALTER TABLE [dbo].[Implicado]  WITH CHECK ADD FOREIGN KEY([Nacionalidad])
REFERENCES [dbo].[Nacionalidad] ([Nacionalidad_id])
GO
ALTER TABLE [dbo].[Implicado]  WITH CHECK ADD FOREIGN KEY([Profesion_id])
REFERENCES [dbo].[Profesion] ([Profesion_id])
GO
ALTER TABLE [dbo].[Implicado]  WITH CHECK ADD FOREIGN KEY([Rango_id])
REFERENCES [dbo].[Rango] ([Rango_id])
GO
ALTER TABLE [dbo].[Implicado]  WITH CHECK ADD  CONSTRAINT [FK__Implicado__Regis__07C12930] FOREIGN KEY([Registro_Evento_id])
REFERENCES [dbo].[Registro_Evento] ([Registro_EventoId])
GO
ALTER TABLE [dbo].[Implicado] CHECK CONSTRAINT [FK__Implicado__Regis__07C12930]
GO
ALTER TABLE [dbo].[Municipio]  WITH CHECK ADD  CONSTRAINT [FK_Municipio_Provincia] FOREIGN KEY([ProvinciaId])
REFERENCES [dbo].[Provincia] ([ProvinciaId])
GO
ALTER TABLE [dbo].[Municipio] CHECK CONSTRAINT [FK_Municipio_Provincia]
GO
ALTER TABLE [dbo].[Registro_Evento]  WITH CHECK ADD  CONSTRAINT [FK_Registro_Evento_Comandancia] FOREIGN KEY([ComandanciaId])
REFERENCES [dbo].[Comandancia] ([ComandanciaId])
GO
ALTER TABLE [dbo].[Registro_Evento] CHECK CONSTRAINT [FK_Registro_Evento_Comandancia]
GO
ALTER TABLE [dbo].[Registro_Evento]  WITH CHECK ADD  CONSTRAINT [FK_Registro_Evento_Municipio] FOREIGN KEY([MunicipioId])
REFERENCES [dbo].[Municipio] ([MunicipioId])
GO
ALTER TABLE [dbo].[Registro_Evento] CHECK CONSTRAINT [FK_Registro_Evento_Municipio]
GO
ALTER TABLE [dbo].[Registro_Evento]  WITH CHECK ADD  CONSTRAINT [FK_Registro_Evento_Regional] FOREIGN KEY([RegionalId])
REFERENCES [dbo].[Regional] ([RegionalId])
GO
ALTER TABLE [dbo].[Registro_Evento] CHECK CONSTRAINT [FK_Registro_Evento_Regional]
GO
ALTER TABLE [dbo].[Registro_Evento]  WITH CHECK ADD  CONSTRAINT [FK_Registro_Evento_Tipo_Involucrado] FOREIGN KEY([Tipo_InvolucradoId])
REFERENCES [dbo].[Tipo_Involucrado] ([Tipo_InvolucradoId])
GO
ALTER TABLE [dbo].[Registro_Evento] CHECK CONSTRAINT [FK_Registro_Evento_Tipo_Involucrado]
GO
ALTER TABLE [dbo].[Registro_Evento]  WITH CHECK ADD  CONSTRAINT [FK_Registro_Evento_Usuario] FOREIGN KEY([UsuarioId])
REFERENCES [dbo].[Usuario] ([UsuarioId])
GO
ALTER TABLE [dbo].[Registro_Evento] CHECK CONSTRAINT [FK_Registro_Evento_Usuario]
GO
ALTER TABLE [dbo].[Registro_Evento]  WITH CHECK ADD  CONSTRAINT [FK_Registro_Evento_Zona] FOREIGN KEY([ZonaId])
REFERENCES [dbo].[Zona] ([ZonaId])
GO
ALTER TABLE [dbo].[Registro_Evento] CHECK CONSTRAINT [FK_Registro_Evento_Zona]
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD FOREIGN KEY([idRol])
REFERENCES [dbo].[Rol] ([idRol])
GO
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Comandancia] FOREIGN KEY([ComandanciaId])
REFERENCES [dbo].[Comandancia] ([ComandanciaId])
GO
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_Comandancia]
GO
ALTER TABLE [dbo].[Zona]  WITH CHECK ADD  CONSTRAINT [FK_Zona_Comandancia] FOREIGN KEY([ComandanciaId])
REFERENCES [dbo].[Comandancia] ([ComandanciaId])
GO
ALTER TABLE [dbo].[Zona] CHECK CONSTRAINT [FK_Zona_Comandancia]
GO
/****** Object:  StoredProcedure [dbo].[Usp_Delete_Implicado]    Script Date: 5/8/2020 10:10:55 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Usp_Delete_Implicado]
@Profesion_id int = null,
@Rango_id int = null,
@Condicion_implicado_id int = null,
@Nacionalidad int = null,
@Nombres varchar(100),
@Apellidos varchar(100),
@Sexo varchar(1),
@Edad int = null
AS
BEGIN
	Delete from Implicado where Profesion_id = @Profesion_id 
	and Rango_id = @Rango_id 
	and Condicion_implicado_id = @Condicion_implicado_id
	and Nacionalidad = @Nacionalidad
	and Nombres = @Nombres
	and Apellidos = @Apellidos
	and Sexo = @Sexo
	and Edad = @Edad


	select 1 as res

END
GO
/****** Object:  StoredProcedure [dbo].[Usp_Delete_Implicado_edit]    Script Date: 5/8/2020 10:10:55 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create PROCEDURE [dbo].[Usp_Delete_Implicado_edit]
@Registro_EventoId int
AS
BEGIN
	Delete from Implicado where Registro_Evento_id = @Registro_EventoId 

	select 1 as res

END
GO
/****** Object:  StoredProcedure [dbo].[Usp_editar_Registro_Evento]    Script Date: 5/8/2020 10:10:55 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Usp_editar_Registro_Evento]
@Registro_EventoId int,
@RegionalId int, 
@ComandanciaId int, 
@ZonaId int,  
@MunicipioId int, 
@UsuarioId int,
@Tipo_InvolucradoId int, 
@GeogCol1 numeric(18,15), 
@GeogCol2 numeric(18,15), 
@FechaReporte datetime, 
@Direccion nvarchar(max), 
@Fiscalizado bit, 
@Retenido bit, 
@Comentario nvarchar(max) 
as
Begin
UPDATE Registro_Evento
SET 
	RegionalId = ISNULL(@RegionalId,RegionalId), 
	ComandanciaId = ISNULL(@ComandanciaId,ComandanciaId),
	ZonaId = ISNULL(@ZonaId,ZonaId),
	MunicipioId = ISNULL(@MunicipioId,MunicipioId),
	UsuarioId = ISNULL(@UsuarioId,UsuarioId),
	Tipo_InvolucradoId = ISNULL(@Tipo_InvolucradoId,Tipo_InvolucradoId),
	GeogCol1 = ISNULL(@GeogCol1,GeogCol1),
	GeogCol2 = ISNULL(@GeogCol2,GeogCol2),
	FechaReporte = ISNULL(@FechaReporte,FechaReporte),
	Direccion = ISNULL(@Direccion,Direccion),
	Fiscalizado = ISNULL(@Fiscalizado,Fiscalizado),
	Retenido = ISNULL(@Retenido,Retenido),
	Comentario = @Comentario
WHERE Registro_EventoId = @Registro_EventoId
End
Select @Registro_EventoId as Html
GO
/****** Object:  StoredProcedure [dbo].[Usp_Insert_Implicado]    Script Date: 5/8/2020 10:10:55 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Usp_Insert_Implicado]
@Registro_Evento_id int = null,
@Profesion_id int = null,
@Rango_id int = null,
@Condicion_implicado_id int = null,
@Nacionalidad int = null,
@Nombres varchar(100),
@Apellidos varchar(100),
@Sexo varchar(1),
@Edad int = null
AS
BEGIN
Insert into Implicado values(@Registro_Evento_id, @Profesion_id, @Rango_id, @Condicion_implicado_id, @Nacionalidad, @Nombres, @Apellidos, @Sexo, @Edad);
END
GO
/****** Object:  StoredProcedure [dbo].[Usp_Registra_Evento]    Script Date: 5/8/2020 10:10:55 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Usp_Registra_Evento]
@RegionalId int, 
@ComandanciaId int, 
@ZonaId int,  
@MunicipioId int, 
@UsuarioId int,
@Tipo_InvolucradoId int, 
@GeogCol1 numeric(18,15), 
@GeogCol2 numeric(18,15), 
@FechaReporte datetime, 
@Direccion nvarchar(max), 
@Fiscalizado bit, 
@Retenido bit, 
@Comentario nvarchar(max) 
as
Begin 
 
	Declare @CantCeros int = 9
	Declare @Numero_Caso nvarchar(50)

	--Genera Numero de Caso
	Set @Numero_Caso = (Select replicate('0',@CantCeros - len(max(isnull(Numero_Caso,'0'))))+''+cast(max(isnull(Numero_Caso,'0'))+1 as nvarchar(50)) From Registro_Evento)

	Declare @Registro_EventoId int
	Insert Into registro_Evento (RegionalId, ComandanciaId, ZonaId, MunicipioId, UsuarioId, Tipo_InvolucradoId, GeogCol1, GeogCol2, FechaReporte, Direccion, Fiscalizado, Retenido, Comentario, Numero_Caso)
	Values (@RegionalId,@ComandanciaId,@ZonaId,@MunicipioId,@UsuarioId,@Tipo_InvolucradoId,@GeogCol1,@GeogCol2,@FechaReporte,@Direccion,@Fiscalizado,@Retenido,@Comentario,@Numero_Caso)
	Set @Registro_EventoId = (select SCOPE_IDENTITY())

End

Select @Registro_EventoId as Html
GO
/****** Object:  StoredProcedure [dbo].[Usp_Registro_Evento_Id]    Script Date: 5/8/2020 10:10:55 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Usp_Registro_Evento_Id]
as
begin
Declare @Registro_EventoId int = (select TOP 1(Registro_EventoId) from Registro_Evento ORDER by Registro_EventoId DESC)
end
Select @Registro_EventoId as Html
GO
/****** Object:  StoredProcedure [dbo].[Usp_Select_Comandancia]    Script Date: 5/8/2020 10:10:55 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[Usp_Select_Comandancia]
@Usuarioid int
as
select c.* from [dbo].[Usuario] u
inner join [dbo].[Comandancia] c on u.ComandanciaId = c.ComandanciaId
inner join [dbo].[Regional] t on c.RegionalId= t.RegionalId
where u.UsuarioId = @Usuarioid


GO
/****** Object:  StoredProcedure [dbo].[Usp_Select_Condicion]    Script Date: 5/8/2020 10:10:55 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Usp_Select_Condicion] as
select * from Condicion_implicado
GO
/****** Object:  StoredProcedure [dbo].[Usp_Select_Municipio]    Script Date: 5/8/2020 10:10:55 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[Usp_Select_Municipio]
@Usuarioid int
as
select m.* from [dbo].[Usuario] u
inner join [dbo].[Comandancia] c on u.ComandanciaId = c.ComandanciaId
inner join [dbo].[Provincia] p on c.ProvinciaId = p.ProvinciaId
inner join [dbo].[Municipio] m on p.ProvinciaId = m.ProvinciaId
where u.UsuarioId = @Usuarioid
GO
/****** Object:  StoredProcedure [dbo].[Usp_Select_Nacionalidad]    Script Date: 5/8/2020 10:10:55 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Usp_Select_Nacionalidad] as
select * from Nacionalidad
GO
/****** Object:  StoredProcedure [dbo].[Usp_Select_Nombre]    Script Date: 5/8/2020 10:10:55 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[Usp_Select_Nombre]
@Usuarioid int
as
select u.Nombre,u.Apellido from [dbo].[Usuario] u
where u.UsuarioId = @Usuarioid
GO
/****** Object:  StoredProcedure [dbo].[Usp_Select_Profesion]    Script Date: 5/8/2020 10:10:55 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Usp_Select_Profesion] as
select * from Profesion
GO
/****** Object:  StoredProcedure [dbo].[Usp_Select_Rango]    Script Date: 5/8/2020 10:10:55 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Usp_Select_Rango] as
select Rango_id, SUBSTRING(UPPER(Descripcion), 1, 1)+ SUBSTRING(LOWER (Descripcion), 2,25)as Descripcion, Orden from Rango order by Orden asc
GO
/****** Object:  StoredProcedure [dbo].[Usp_Select_Regional]    Script Date: 5/8/2020 10:10:55 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[Usp_Select_Regional]
@Usuarioid int
as
select t.* from [dbo].[Usuario] u
inner join [dbo].[Comandancia] c on u.ComandanciaId = c.ComandanciaId
inner join [dbo].[Regional] t on c.RegionalId= t.RegionalId
where u.UsuarioId = @Usuarioid
GO
/****** Object:  StoredProcedure [dbo].[Usp_Select_TipoInvolucrado]    Script Date: 5/8/2020 10:10:55 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[Usp_Select_TipoInvolucrado] as
Select * from Tipo_Involucrado
GO
/****** Object:  StoredProcedure [dbo].[Usp_Select_Zona]    Script Date: 5/8/2020 10:10:55 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[Usp_Select_Zona]
@Usuarioid int
as
select z.* from [dbo].[Usuario] u
inner join [dbo].[Comandancia] c on u.ComandanciaId = c.ComandanciaId
inner join [dbo].[Zona] z on c.ComandanciaId = z.ComandanciaId
where u.UsuarioId = @Usuarioid
GO
ALTER DATABASE [InfraccionesDB] SET  READ_WRITE 
GO
