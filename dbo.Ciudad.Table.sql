USE [AgenciaDeViajes]
GO
/****** Object:  Table [dbo].[Ciudad]    Script Date: 07/11/2017 11:54:17 ******/
DROP TABLE [dbo].[Ciudad]
GO
/****** Object:  Table [dbo].[Ciudad]    Script Date: 07/11/2017 11:54:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ciudad](
	[IdCiudad] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](50) NULL,
 CONSTRAINT [PK_Ciudad] PRIMARY KEY CLUSTERED 
(
	[IdCiudad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
