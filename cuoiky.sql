use cuoiky
GO
/****** Object:  Table [dbo].[City]    Script Date: 3/27/2023 7:32:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[CityKey] [int] NOT NULL,
	[CityName] [nvarchar](255) NULL,
	[CountryKey] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CityKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 3/27/2023 7:32:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[CountryKey] [int] NOT NULL,
	[CountryCode] [int] NULL,
	[CountryName] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[CountryKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 3/27/2023 7:32:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerKey] [int] NOT NULL,
	[CustomerName] [nvarchar](255) NULL,
	[CityKey] [int] NULL,
	[PhoneNumber] [int] NULL,
	[PostalCode] [int] NULL,
	[Comment] [nvarchar] (255) NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[District]    Script Date: 3/27/2023 7:32:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[District](
	[DistrictKey] [int] NOT NULL,
	[DistrictName] [nvarchar](255) NULL,
	[CityKey] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[DistrictKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 3/27/2023 7:32:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmployeeKey] [int] NOT NULL,
	[FirstName] [nvarchar](255) NULL,
	[LastName] [nvarchar](255) NULL,
	[City] [nvarchar](255) NULL,
	[PhoneNumber] [int] NULL,
	[PostalCode] [int] NULL,
	[Country] [nvarchar](255) NULL,
	[Birthday] [datetime] NULL,
	[HireDate] [datetime] NULL,
	[WorkplaceKey] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[EmployeeKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[Price]    Script Date: 3/27/2023 7:32:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Price](
	[PriceKey] [int] NOT NULL,
	[UnitPrice] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[PriceKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Seat]    Script Date: 3/27/2023 7:32:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Seat](
	[SeatKey] [int] NOT NULL,
	[SeatNumber] [nvarchar](255) NULL,
	[Description] [nvarchar](255) NULL,
	[ServiceKey] [int] NULL,
	[PriceKey] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[SeatKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Service]    Script Date: 3/27/2023 7:32:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Service](
	[ServiceKey] [int] NOT NULL,
	[Description] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ServiceKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Station]    Script Date: 3/27/2023 7:32:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Station](
	[StationKey] [int] NOT NULL,
	[StationName] [nvarchar](255) NULL,
	[DistrictKey] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[StationKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Time]    Script Date: 3/27/2023 7:32:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Time](
	[TimeKey] [int] NOT NULL,
	[Date] [datetime] NULL,
	[Year] [int] NULL,
	[QuarterNumber] [int] NULL,
	[MonthNumber] [int] NULL,
	[DayNumberOfTheWeek] [int] NULL,
	[DayNumberInTheMonth] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[TimeKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Train]    Script Date: 3/27/2023 7:32:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Train](
	[TrainKey] [int] NOT NULL,
	[TrainNumber] [nvarchar](255) NULL,
	[ModelName] [nvarchar](255) NULL,
	[MaxSpeed] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[TrainKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Trip]    Script Date: 3/27/2023 7:32:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trip](
	[TripNumber] [int] NULL,
	[FromStationKey] [int] NULL,
	[ToStationKey] [int] NULL,
	[TimeFromKey] [int] NULL,
	[TimeToKey] [int] NULL,
	[CustomerKey] [int] NULL,
	[EmployeeKey] [int] NULL,
	[SeatKey] [int] NULL,
	[TrainKey] [int] NULL,
	[TotalDistance] [float] NULL,
	[TotalDuration] [time](7) NULL,
	[TotalOfSeats] [int] NULL,
	[TotalPrice] [float] NULL,
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkPlace]    Script Date: 3/27/2023 7:32:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkPlace](
	[WorkplaceKey] [int] NOT NULL,
	[Job] [nvarchar](255) NULL,
	[Area] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[WorkplaceKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[City]  WITH CHECK ADD FOREIGN KEY([CountryKey])
REFERENCES [dbo].[Country] ([CountryKey])
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD FOREIGN KEY([CityKey])
REFERENCES [dbo].[City] ([CityKey])
GO
ALTER TABLE [dbo].[District]  WITH CHECK ADD FOREIGN KEY([CityKey])
REFERENCES [dbo].[City] ([CityKey])
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD FOREIGN KEY([WorkplaceKey])
REFERENCES [dbo].[WorkPlace] ([WorkplaceKey])
GO
ALTER TABLE [dbo].[Seat]  WITH CHECK ADD FOREIGN KEY([PriceKey])
REFERENCES [dbo].[Price] ([PriceKey])
GO
ALTER TABLE [dbo].[Seat]  WITH CHECK ADD FOREIGN KEY([ServiceKey])
REFERENCES [dbo].[Service] ([ServiceKey])
GO
ALTER TABLE [dbo].[Station]  WITH CHECK ADD FOREIGN KEY([DistrictKey])
REFERENCES [dbo].[District] ([DistrictKey])
GO

ALTER TABLE [dbo].[Trip]  WITH CHECK ADD FOREIGN KEY([CustomerKey])
REFERENCES [dbo].[Customer] ([CustomerKey])
GO
ALTER TABLE [dbo].[Trip]  WITH CHECK ADD FOREIGN KEY([EmployeeKey])
REFERENCES [dbo].[Employee] ([EmployeeKey])
GO
ALTER TABLE [dbo].[Trip]  WITH CHECK ADD FOREIGN KEY([FromStationKey])
REFERENCES [dbo].[Station] ([StationKey])
GO
ALTER TABLE [dbo].[Trip]  WITH CHECK ADD FOREIGN KEY([SeatKey])
REFERENCES [dbo].[Seat] ([SeatKey])
GO
ALTER TABLE [dbo].[Trip]  WITH CHECK ADD FOREIGN KEY([TimeFromKey])
REFERENCES [dbo].[Time] ([TimeKey])
GO
ALTER TABLE [dbo].[Trip]  WITH CHECK ADD FOREIGN KEY([TimeToKey])
REFERENCES [dbo].[Time] ([TimeKey])
GO
ALTER TABLE [dbo].[Trip]  WITH CHECK ADD FOREIGN KEY([ToStationKey])
REFERENCES [dbo].[Station] ([StationKey])
GO
ALTER TABLE [dbo].[Trip]  WITH CHECK ADD FOREIGN KEY([TrainKey])
REFERENCES [dbo].[Train] ([TrainKey])
GO

/******SELECT 
    CASE 
        WHEN ISDATE(FirstServiceDate)=1 THEN CONVERT(datetime, FirstServiceDate, 103 ) 
        ELSE null 
    END
FROM Train
******/