USE [AgenciaDeViajes]
GO
ALTER TABLE [dbo].[Ruta] DROP CONSTRAINT [FK_Ruta_Transporte]
GO
ALTER TABLE [dbo].[Ruta] DROP CONSTRAINT [FK_Ruta_DetalleRuta]
GO
ALTER TABLE [dbo].[Ruta] DROP CONSTRAINT [FK_Ruta_Ciudad1]
GO
ALTER TABLE [dbo].[Ruta] DROP CONSTRAINT [FK_Ruta_Ciudad]
GO
/****** Object:  Table [dbo].[Ruta]    Script Date: 07/11/2017 11:54:17 ******/
DROP TABLE [dbo].[Ruta]
GO
/****** Object:  Table [dbo].[Ruta]    Script Date: 07/11/2017 11:54:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ruta](
	[IdRuta] [uniqueidentifier] NOT NULL,
	[PrecioBase] [money] NULL,
	[CiudadOrigen] [uniqueidentifier] NULL,
	[CiudadDestino] [uniqueidentifier] NULL,
	[IdDetalleRuta] [uniqueidentifier] NULL,
	[IdTransporte] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Ruta] PRIMARY KEY CLUSTERED 
(
	[IdRuta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Ruta]  WITH CHECK ADD  CONSTRAINT [FK_Ruta_Ciudad] FOREIGN KEY([CiudadOrigen])
REFERENCES [dbo].[Ciudad] ([IdCiudad])
GO
ALTER TABLE [dbo].[Ruta] CHECK CONSTRAINT [FK_Ruta_Ciudad]
GO
ALTER TABLE [dbo].[Ruta]  WITH CHECK ADD  CONSTRAINT [FK_Ruta_Ciudad1] FOREIGN KEY([CiudadDestino])
REFERENCES [dbo].[Ciudad] ([IdCiudad])
GO
ALTER TABLE [dbo].[Ruta] CHECK CONSTRAINT [FK_Ruta_Ciudad1]
GO
ALTER TABLE [dbo].[Ruta]  WITH CHECK ADD  CONSTRAINT [FK_Ruta_DetalleRuta] FOREIGN KEY([IdDetalleRuta])
REFERENCES [dbo].[DetalleRuta] ([IdDetalleRuta])
GO
ALTER TABLE [dbo].[Ruta] CHECK CONSTRAINT [FK_Ruta_DetalleRuta]
GO
ALTER TABLE [dbo].[Ruta]  WITH CHECK ADD  CONSTRAINT [FK_Ruta_Transporte] FOREIGN KEY([IdTransporte])
REFERENCES [dbo].[Transporte] ([IdTransporte])
GO
ALTER TABLE [dbo].[Ruta] CHECK CONSTRAINT [FK_Ruta_Transporte]
GO
