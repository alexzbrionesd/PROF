USE [AgenciaDeViajes]
GO
/****** Object:  Table [dbo].[Compañia]    Script Date: 07/11/2017 11:54:17 ******/
DROP TABLE [dbo].[Compañia]
GO
/****** Object:  Table [dbo].[Compañia]    Script Date: 07/11/2017 11:54:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Compañia](
	[IdCompañia] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](50) NULL,
 CONSTRAINT [PK_Compañia] PRIMARY KEY CLUSTERED 
(
	[IdCompañia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
