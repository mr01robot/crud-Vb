USE [master]
GO
/****** Object:  Database [personal]    Script Date: 2/02/2021 18:01:54 ******/
CREATE DATABASE [personal]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'personal', FILENAME = N'M:\expres\MSSQL15.SQLEXPRESS\MSSQL\DATA\personal.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'personal_log', FILENAME = N'M:\expres\MSSQL15.SQLEXPRESS\MSSQL\DATA\personal_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [personal] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [personal].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [personal] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [personal] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [personal] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [personal] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [personal] SET ARITHABORT OFF 
GO
ALTER DATABASE [personal] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [personal] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [personal] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [personal] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [personal] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [personal] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [personal] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [personal] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [personal] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [personal] SET  ENABLE_BROKER 
GO
ALTER DATABASE [personal] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [personal] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [personal] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [personal] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [personal] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [personal] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [personal] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [personal] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [personal] SET  MULTI_USER 
GO
ALTER DATABASE [personal] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [personal] SET DB_CHAINING OFF 
GO
ALTER DATABASE [personal] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [personal] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [personal] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [personal] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [personal] SET QUERY_STORE = OFF
GO
USE [personal]
GO
/****** Object:  ColumnMasterKey [CMK_Auto1]    Script Date: 2/02/2021 18:01:54 ******/
CREATE COLUMN MASTER KEY [CMK_Auto1]
WITH
(
	KEY_STORE_PROVIDER_NAME = N'MSSQL_CERTIFICATE_STORE',
	KEY_PATH = N'CurrentUser/my/D527FC6644C3BB730EBA397ED917BC872FBFD9F4'
)
GO
/****** Object:  ColumnEncryptionKey [CEK_Auto1]    Script Date: 2/02/2021 18:01:54 ******/
CREATE COLUMN ENCRYPTION KEY [CEK_Auto1]
WITH VALUES
(
	COLUMN_MASTER_KEY = [CMK_Auto1],
	ALGORITHM = 'RSA_OAEP',
	ENCRYPTED_VALUE = 0x016E000001630075007200720065006E00740075007300650072002F006D0079002F0064003500320037006600630036003600340034006300330062006200370033003000650062006100330039003700650064003900310037006200630038003700320066006200660064003900660034008BF9F586BEBC0E98E3E8F7117D02DD9E619A5993130CB8E574008A2B1453B26E25B7065F8493360DA7D78AF4586CCC422450C8659AC2E9433272248B08FFDD0FD3FE7087779BE3DBA73413DF155472C001E2C723E3B764E2C8405677D85ADE53B2DAD0B8FCDE70686C0725FBCD1B2E22455723B49A9E2EB1B3B6A42939E3D76E11D8F15EE6A4E049E84161DEA54D09945B3DCB43DBA3357DC2FA41814C6C8AA87DC16876F349B0787B5941B3578949207C40A01F08DBD3EF0D42537182B23EB3AD40A77C7BBEB205481131AD3C17F60EEFE25D3CEBD37140A7865EBF89180A35D18D0DE3DC27854B15938892287BB5218B52C4596CE3EDA8AB35EFA9A7A23562818E8488B0350B00384E088C4C4019433E320780FACD15415EA0EF4093FEB8A5F14C1F3D0FA8B1C8CC8A142527B2D4356815C2E858F8C0DAB50F2CB4D893AEFC24BA87A30B4B4986A155D7FB1F30FFAEC2E0AD4AADF72681FF912ACD2EB1BC0F2CAB5CF841B11399E8D2EA9443DA07D481FF870B30BEB88A6ABD1F0A6E35125B01E983651DBDF2AA499920D3C84664DDADB7EB53FA6E99C9B81583BC9F12B312B6D0C9CEB8DB02825AFD2D0A4AD5F87D1D60BA12DAE147C0066AD08137113E772E0D1595B0CE64A68DDCB0B55D9C74BB092397C2EC405E9FDD0471C187ED33DBAC1B8FE70D875AD89B81FE91DEDDF2439839BDEABA2C309C2BB75F64902DEA01
)
GO
/****** Object:  Table [dbo].[personal2]    Script Date: 2/02/2021 18:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[personal2](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
	[Apellidos] [varchar](80) NULL,
	[Direccion] [varchar](80) NULL,
	[telefono] [varchar](7) NULL,
	[dni] [varchar](8) NULL,
PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuarios2]    Script Date: 2/02/2021 18:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuarios2](
	[id] [int] NULL,
	[usuario] [varchar](50) NULL,
	[contraseña] [varchar](50) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[personal2] ON 

INSERT [dbo].[personal2] ([codigo], [nombre], [Apellidos], [Direccion], [telefono], [dni]) VALUES (1, N'das', N'das', N'dad', N'dsada', N'321312')
INSERT [dbo].[personal2] ([codigo], [nombre], [Apellidos], [Direccion], [telefono], [dni]) VALUES (2, N'bmf', N'marf', N'dsad', N'asdasda', N'dsadasda')
INSERT [dbo].[personal2] ([codigo], [nombre], [Apellidos], [Direccion], [telefono], [dni]) VALUES (3, N'dsad', N'qweqwe', N'dwqwq', N'wqeqw', N'ewqqeeqw')
SET IDENTITY_INSERT [dbo].[personal2] OFF
GO
INSERT [dbo].[usuarios2] ([id], [usuario], [contraseña]) VALUES (1, N'admin', N'123')
GO
/****** Object:  StoredProcedure [dbo].[editar_personal]    Script Date: 2/02/2021 18:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[editar_personal]
@codigo integer,
@nombre varchar(50),
@apellidos varchar(80),
@direccion varchar (80),
@telefono varchar (7),
@dni varchar (8)
as 
update personal2
set 
nombre=@nombre,
apellidos=@apellidos,
direccion=@direccion,
telefono=@telefono,
dni=@dni where codigo=@codigo
GO
/****** Object:  StoredProcedure [dbo].[eliminar_personal]    Script Date: 2/02/2021 18:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure  [dbo].[eliminar_personal]
@codigo integer

as 
delete from personal2 where 

@codigo=codigo
GO
/****** Object:  StoredProcedure [dbo].[insertar_personal]    Script Date: 2/02/2021 18:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insertar_personal]
@nombre varchar (50),
@apellidos varchar(80),
@direccion varchar(80),
@telefono varchar(7),
@dni varchar(8)
as
 insert into dbo.personal2 (nombre,apellidos,direccion,telefono,dni)values (@nombre,@apellidos,@direccion,@telefono,@dni)
GO
/****** Object:  StoredProcedure [dbo].[mostrar_personal]    Script Date: 2/02/2021 18:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[mostrar_personal]

as
select  codigo,nombre,apellidos,direccion,telefono,dni from personal2 order by codigo desc
GO
USE [master]
GO
ALTER DATABASE [personal] SET  READ_WRITE 
GO
