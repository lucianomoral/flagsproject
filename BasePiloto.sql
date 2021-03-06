USE [FLAGS]
GO
/****** Object:  Table [dbo].[Cuenta]    Script Date: 28/08/2018 12:11:59 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cuenta](
	[IdCuenta] [int] IDENTITY(1,1) NOT NULL,
	[TipoCuenta] [int] NOT NULL,
	[Saldo] [numeric](32, 16) NOT NULL,
	[IdMoneda] [int] NOT NULL,
	[DescCuenta] [nvarchar](60) NULL,
	[Activo] [tinyint] NOT NULL,
	[IdUsuarioCreador] [int] NOT NULL,
	[IdUsuarioModificador] [int] NOT NULL,
	[FechaHoraCreacion] [datetime] NOT NULL,
	[FechaHoraModificacion] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCuenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FormaPago]    Script Date: 28/08/2018 12:11:59 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FormaPago](
	[IdFormaPago] [int] IDENTITY(1,1) NOT NULL,
	[DescFormaPago] [nvarchar](60) NOT NULL,
	[Activo] [tinyint] NOT NULL,
	[IdUsuarioCreador] [int] NOT NULL,
	[IdUsuarioModificador] [int] NOT NULL,
	[FechaHoraCreacion] [datetime] NOT NULL,
	[FechaHoraModificacion] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdFormaPago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Moneda]    Script Date: 28/08/2018 12:11:59 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Moneda](
	[IdMoneda] [int] IDENTITY(1,1) NOT NULL,
	[CodigoMoneda] [varchar](3) NOT NULL,
	[DescMoneda] [varchar](60) NOT NULL,
	[Activo] [tinyint] NOT NULL,
	[IdUsuarioCreador] [int] NOT NULL,
	[IdUsuarioModificador] [int] NOT NULL,
	[FechaHoraCreacion] [datetime] NOT NULL,
	[FechaHoraModificacion] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdMoneda] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Movimiento]    Script Date: 28/08/2018 12:11:59 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Movimiento](
	[IdMovimiento] [int] IDENTITY(1,1) NOT NULL,
	[DescMovimiento] [nvarchar](60) NOT NULL,
	[Monto] [numeric](32, 16) NOT NULL,
	[IdMoneda] [int] NOT NULL,
	[FechaHoraMovimiento] [datetime] NOT NULL,
	[IdFormaPago] [int] NOT NULL,
	[DocumentoOrigen] [varchar](20) NOT NULL,
	[IdCuentaDesde] [int] NOT NULL,
	[IdCuentaHasta] [int] NOT NULL,
	[Activo] [tinyint] NOT NULL,
	[IdUsuarioCreador] [int] NOT NULL,
	[IdUsuarioModificador] [int] NOT NULL,
	[FechaHoraCreacion] [datetime] NOT NULL,
	[FechaHoraModificacion] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdMovimiento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TipoCuenta]    Script Date: 28/08/2018 12:11:59 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoCuenta](
	[IdTipoCuenta] [int] IDENTITY(1,1) NOT NULL,
	[DescTipoCuenta] [nvarchar](60) NULL,
	[Activo] [tinyint] NOT NULL,
	[IdUsuarioCreador] [int] NOT NULL,
	[IdUsuarioModificador] [int] NOT NULL,
	[FechaHoraCreacion] [datetime] NOT NULL,
	[FechaHoraModificacion] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdTipoCuenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TipoDeCambio]    Script Date: 28/08/2018 12:11:59 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TipoDeCambio](
	[IdTipoDeCambio] [int] IDENTITY(1,1) NOT NULL,
	[CodigoMonedaDesde] [varchar](3) NOT NULL,
	[CodigoMonedaHasta] [varchar](10) NOT NULL,
	[Fecha] [datetime] NOT NULL,
	[FactorCompra] [numeric](21, 6) NOT NULL,
	[FactorVenta] [numeric](21, 6) NOT NULL,
	[Activo] [tinyint] NOT NULL,
	[IdUsuarioCreador] [int] NOT NULL,
	[IdUsuarioModificador] [int] NOT NULL,
	[FechaHoraCreacion] [datetime] NOT NULL,
	[FechaHoraModificacion] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdTipoDeCambio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 28/08/2018 12:11:59 a.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Usuario](
	[IdUsuario] [int] IDENTITY(1,1) NOT NULL,
	[NombreUsuario] [varchar](10) NOT NULL,
	[Contrasenia] [varchar](10) NOT NULL,
	[Activo] [tinyint] NOT NULL,
	[IdUsuarioCreador] [int] NOT NULL,
	[IdUsuarioModificador] [int] NOT NULL,
	[FechaHoraCreacion] [datetime] NOT NULL,
	[FechaHoraModificacion] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
