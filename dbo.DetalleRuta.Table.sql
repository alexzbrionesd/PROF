USE [AgenciaDeViajes]
GO
/****** Object:  Table [dbo].[DetalleRuta]    Script Date: 07/11/2017 11:54:17 ******/
DROP TABLE [dbo].[DetalleRuta]
GO
/****** Object:  Table [dbo].[DetalleRuta]    Script Date: 07/11/2017 11:54:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleRuta](
	[IdDetalleRuta] [uniqueidentifier] NOT NULL,
	[FechaSalida] [date] NULL,
	[HoraSalida] [time](7) NULL,
 CONSTRAINT [PK_DetalleRuta] PRIMARY KEY CLUSTERED 
(
	[IdDetalleRuta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
