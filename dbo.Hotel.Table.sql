USE [AgenciaDeViajes]
GO
ALTER TABLE [dbo].[Hotel] DROP CONSTRAINT [FK_Hotel_Habitacion]
GO
/****** Object:  Table [dbo].[Hotel]    Script Date: 07/11/2017 11:54:17 ******/
DROP TABLE [dbo].[Hotel]
GO
/****** Object:  Table [dbo].[Hotel]    Script Date: 07/11/2017 11:54:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hotel](
	[IdHotel] [uniqueidentifier] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[MontoTotal] [money] NULL,
	[IdHabiacion] [uniqueidentifier] NULL,
 CONSTRAINT [PK_Hotel] PRIMARY KEY CLUSTERED 
(
	[IdHotel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Hotel]  WITH CHECK ADD  CONSTRAINT [FK_Hotel_Habitacion] FOREIGN KEY([IdHabiacion])
REFERENCES [dbo].[Habitacion] ([IdHabitacion])
GO
ALTER TABLE [dbo].[Hotel] CHECK CONSTRAINT [FK_Hotel_Habitacion]
GO
