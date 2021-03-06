USE [AgenciaDeViajes]
GO
ALTER TABLE [dbo].[TipoBoleto] DROP CONSTRAINT [FK_TipoBoleto_Categoria]
GO
/****** Object:  Table [dbo].[TipoBoleto]    Script Date: 07/11/2017 11:54:17 ******/
DROP TABLE [dbo].[TipoBoleto]
GO
/****** Object:  Table [dbo].[TipoBoleto]    Script Date: 07/11/2017 11:54:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoBoleto](
	[IdTipoBoleto] [uniqueidentifier] NOT NULL,
	[Tipo] [varchar](40) NULL,
	[Precio] [money] NULL,
	[IdCategoria] [uniqueidentifier] NULL,
 CONSTRAINT [PK_TipoBoleto] PRIMARY KEY CLUSTERED 
(
	[IdTipoBoleto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TipoBoleto]  WITH CHECK ADD  CONSTRAINT [FK_TipoBoleto_Categoria] FOREIGN KEY([IdCategoria])
REFERENCES [dbo].[Categoria] ([IdCategoria])
GO
ALTER TABLE [dbo].[TipoBoleto] CHECK CONSTRAINT [FK_TipoBoleto_Categoria]
GO
