USE [AgenciaDeViajes]
GO
ALTER TABLE [dbo].[Habitacion] DROP CONSTRAINT [FK_Habitacion_DetalleHabitacion]
GO
/****** Object:  Table [dbo].[Habitacion]    Script Date: 07/11/2017 11:54:17 ******/
DROP TABLE [dbo].[Habitacion]
GO
/****** Object:  Table [dbo].[Habitacion]    Script Date: 07/11/2017 11:54:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Habitacion](
	[IdHabitacion] [uniqueidentifier] NOT NULL,
	[Monto] [money] NULL,
	[Cantidad] [int] NULL,
	[Descripcion] [varchar](50) NULL,
	[IdDetalleHabitacion] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Habitacion] PRIMARY KEY CLUSTERED 
(
	[IdHabitacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Habitacion]  WITH CHECK ADD  CONSTRAINT [FK_Habitacion_DetalleHabitacion] FOREIGN KEY([IdDetalleHabitacion])
REFERENCES [dbo].[DetalleHabitacion] ([IdDetalleHabitacion])
GO
ALTER TABLE [dbo].[Habitacion] CHECK CONSTRAINT [FK_Habitacion_DetalleHabitacion]
GO
