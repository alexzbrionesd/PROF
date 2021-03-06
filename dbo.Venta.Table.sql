USE [AgenciaDeViajes]
GO
ALTER TABLE [dbo].[Venta] DROP CONSTRAINT [FK_Venta_DetalleVenta]
GO
/****** Object:  Table [dbo].[Venta]    Script Date: 07/11/2017 11:54:17 ******/
DROP TABLE [dbo].[Venta]
GO
/****** Object:  Table [dbo].[Venta]    Script Date: 07/11/2017 11:54:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Venta](
	[IdVenta] [uniqueidentifier] NOT NULL,
	[Fecha] [date] NULL,
	[Hora] [time](7) NULL,
	[Total] [money] NULL,
	[IdDetalleVenta] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Venta] PRIMARY KEY CLUSTERED 
(
	[IdVenta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Venta]  WITH CHECK ADD  CONSTRAINT [FK_Venta_DetalleVenta] FOREIGN KEY([IdDetalleVenta])
REFERENCES [dbo].[DetalleVenta] ([IdDetalleVenta])
GO
ALTER TABLE [dbo].[Venta] CHECK CONSTRAINT [FK_Venta_DetalleVenta]
GO
