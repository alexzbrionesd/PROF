USE [AgenciaDeViajes]
GO
ALTER TABLE [dbo].[Transporte] DROP CONSTRAINT [FK_Transporte_Compañia]
GO
/****** Object:  Table [dbo].[Transporte]    Script Date: 07/11/2017 11:54:17 ******/
DROP TABLE [dbo].[Transporte]
GO
/****** Object:  Table [dbo].[Transporte]    Script Date: 07/11/2017 11:54:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Transporte](
	[IdTransporte] [uniqueidentifier] NOT NULL,
	[Capacidad] [int] NULL,
	[IdCompañia] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Transporte] PRIMARY KEY CLUSTERED 
(
	[IdTransporte] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Transporte]  WITH CHECK ADD  CONSTRAINT [FK_Transporte_Compañia] FOREIGN KEY([IdCompañia])
REFERENCES [dbo].[Compañia] ([IdCompañia])
GO
ALTER TABLE [dbo].[Transporte] CHECK CONSTRAINT [FK_Transporte_Compañia]
GO
