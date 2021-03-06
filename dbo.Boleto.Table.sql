USE [AgenciaDeViajes]
GO
ALTER TABLE [dbo].[Boleto] DROP CONSTRAINT [FK_Boleto_TipoBoleto]
GO
ALTER TABLE [dbo].[Boleto] DROP CONSTRAINT [FK_Boleto_Ruta]
GO
/****** Object:  Table [dbo].[Boleto]    Script Date: 07/11/2017 11:54:17 ******/
DROP TABLE [dbo].[Boleto]
GO
/****** Object:  Table [dbo].[Boleto]    Script Date: 07/11/2017 11:54:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Boleto](
	[IdBoleto] [uniqueidentifier] NOT NULL,
	[PrecioTotal] [money] NULL,
	[IdTipoBoleto] [uniqueidentifier] NULL,
	[IdRuta] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Boleto] PRIMARY KEY CLUSTERED 
(
	[IdBoleto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Boleto]  WITH CHECK ADD  CONSTRAINT [FK_Boleto_Ruta] FOREIGN KEY([IdRuta])
REFERENCES [dbo].[Ruta] ([IdRuta])
GO
ALTER TABLE [dbo].[Boleto] CHECK CONSTRAINT [FK_Boleto_Ruta]
GO
ALTER TABLE [dbo].[Boleto]  WITH CHECK ADD  CONSTRAINT [FK_Boleto_TipoBoleto] FOREIGN KEY([IdTipoBoleto])
REFERENCES [dbo].[TipoBoleto] ([IdTipoBoleto])
GO
ALTER TABLE [dbo].[Boleto] CHECK CONSTRAINT [FK_Boleto_TipoBoleto]
GO
