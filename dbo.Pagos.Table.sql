USE [AgenciaDeViajes]
GO
ALTER TABLE [dbo].[Pagos] DROP CONSTRAINT [FK_Pagos_Venta]
GO
/****** Object:  Table [dbo].[Pagos]    Script Date: 07/11/2017 11:54:17 ******/
DROP TABLE [dbo].[Pagos]
GO
/****** Object:  Table [dbo].[Pagos]    Script Date: 07/11/2017 11:54:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pagos](
	[IdPagos] [uniqueidentifier] NOT NULL,
	[Monto] [money] NULL,
	[Fecha] [date] NULL,
	[TipoDePago] [varchar](50) NULL,
	[Saldo] [money] NULL,
	[IdVenta] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Pagos] PRIMARY KEY CLUSTERED 
(
	[IdPagos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Pagos]  WITH CHECK ADD  CONSTRAINT [FK_Pagos_Venta] FOREIGN KEY([IdVenta])
REFERENCES [dbo].[Venta] ([IdVenta])
GO
ALTER TABLE [dbo].[Pagos] CHECK CONSTRAINT [FK_Pagos_Venta]
GO
