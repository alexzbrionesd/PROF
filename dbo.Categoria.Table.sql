USE [AgenciaDeViajes]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 07/11/2017 11:54:17 ******/
DROP TABLE [dbo].[Categoria]
GO
/****** Object:  Table [dbo].[Categoria]    Script Date: 07/11/2017 11:54:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoria](
	[IdCategoria] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Costo] [money] NULL,
 CONSTRAINT [PK_Categoria] PRIMARY KEY CLUSTERED 
(
	[IdCategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
