USE [AgenciaDeViajes]
GO
ALTER TABLE [dbo].[Paquete] DROP CONSTRAINT [FK_Paquete_Venta]
GO
ALTER TABLE [dbo].[Paquete] DROP CONSTRAINT [FK_Paquete_Cliente]
GO
/****** Object:  Table [dbo].[Paquete]    Script Date: 07/11/2017 11:54:17 ******/
DROP TABLE [dbo].[Paquete]
GO
/****** Object:  Table [dbo].[Paquete]    Script Date: 07/11/2017 11:54:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paquete](
	[IdPaquete] [uniqueidentifier] NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[IdCliente] [uniqueidentifier] NULL,
	[IdVenta] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Paquete] PRIMARY KEY CLUSTERED 
(
	[IdPaquete] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Paquete]  WITH CHECK ADD  CONSTRAINT [FK_Paquete_Cliente] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[Cliente] ([IdCliente])
GO
ALTER TABLE [dbo].[Paquete] CHECK CONSTRAINT [FK_Paquete_Cliente]
GO
ALTER TABLE [dbo].[Paquete]  WITH CHECK ADD  CONSTRAINT [FK_Paquete_Venta] FOREIGN KEY([IdVenta])
REFERENCES [dbo].[Venta] ([IdVenta])
GO
ALTER TABLE [dbo].[Paquete] CHECK CONSTRAINT [FK_Paquete_Venta]
GO
