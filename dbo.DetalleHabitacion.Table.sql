USE [AgenciaDeViajes]
GO
/****** Object:  Table [dbo].[DetalleHabitacion]    Script Date: 07/11/2017 11:54:17 ******/
DROP TABLE [dbo].[DetalleHabitacion]
GO
/****** Object:  Table [dbo].[DetalleHabitacion]    Script Date: 07/11/2017 11:54:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleHabitacion](
	[IdDetalleHabitacion] [uniqueidentifier] NOT NULL,
	[Precio] [money] NULL,
	[NºPersonas] [int] NULL,
 CONSTRAINT [PK_DetalleHabitacion] PRIMARY KEY CLUSTERED 
(
	[IdDetalleHabitacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
