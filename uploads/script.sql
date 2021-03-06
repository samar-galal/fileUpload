USE [MSQ1]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 1/6/2022 6:04:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ambulances]    Script Date: 1/6/2022 6:04:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ambulances](
	[Id] [int] NOT NULL,
	[Availiable] [bit] NULL,
	[CityId] [int] NULL,
	[Cost] [bigint] NULL,
	[DriverName] [nvarchar](max) NULL,
	[Mobile] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[UserId] [int] NULL,
	[lang] [float] NULL,
	[lat] [float] NULL,
	[CarLicense] [nvarchar](max) NULL,
	[CarNumber] [nvarchar](max) NULL,
	[DriverLicense] [nvarchar](max) NULL,
	[MedicalCenterId] [int] NULL,
 CONSTRAINT [PK_Ambulances] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[App_Booking_Channel]    Script Date: 1/6/2022 6:04:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[App_Booking_Channel](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[App_Booking_channel1] [nvarchar](max) NULL,
 CONSTRAINT [PK_App_Booking_Channel] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Appointement_Ambulances]    Script Date: 1/6/2022 6:04:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Appointement_Ambulances](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AmbulanceId] [int] NULL,
	[App_Booking_ChannelId] [int] NULL,
	[Appointement_StatusId] [int] NULL,
	[In_Network_InsuranceId] [int] NULL,
	[IsAttend] [bit] NOT NULL,
	[Notes] [nvarchar](max) NULL,
	[ReajectReason] [nvarchar](max) NULL,
	[Start_Time] [datetime2](7) NULL,
	[Taken_Date] [datetime2](7) NULL,
	[UserId] [int] NULL,
 CONSTRAINT [PK_Appointement_Ambulances] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[appointement_Insurances]    Script Date: 1/6/2022 6:04:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[appointement_Insurances](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AppointementId] [int] NULL,
	[Cost] [bigint] NOT NULL,
	[In_Network_InsuranceId] [int] NULL,
	[ResponceDate] [datetime2](7) NULL,
 CONSTRAINT [PK_appointement_Insurances] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Appointement_Nurses]    Script Date: 1/6/2022 6:04:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Appointement_Nurses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[App_Booking_ChannelId] [int] NULL,
	[Appointement_StatusId] [int] NULL,
	[IsAttend] [bit] NOT NULL,
	[Notes] [nvarchar](max) NULL,
	[NurseId] [int] NULL,
	[ReajectReason] [nvarchar](max) NULL,
	[Start_Time] [datetime2](7) NULL,
	[Taken_Date] [datetime2](7) NULL,
	[UserId] [int] NULL,
	[In_Network_InsuranceId] [int] NULL,
 CONSTRAINT [PK_Appointement_Nurses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[appointement_Pharmcies]    Script Date: 1/6/2022 6:04:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[appointement_Pharmcies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AppointementId] [int] NULL,
	[Cost] [bigint] NOT NULL,
	[PharmcyId] [int] NULL,
	[ResponceDate] [datetime2](7) NULL,
 CONSTRAINT [PK_appointement_Pharmcies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Appointement_Status]    Script Date: 1/6/2022 6:04:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Appointement_Status](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Status] [nvarchar](max) NULL,
 CONSTRAINT [PK_Appointement_Status] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Appointements]    Script Date: 1/6/2022 6:04:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Appointements](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[App_Booking_ChannelId] [int] NULL,
	[Appointement_StatusId] [int] NULL,
	[Diagonies] [nvarchar](max) NULL,
	[InsuranceName] [nvarchar](max) NULL,
	[IsAttend] [bit] NOT NULL,
	[Medicine] [nvarchar](max) NULL,
	[Notes] [nvarchar](max) NULL,
	[ReajectReason] [nvarchar](max) NULL,
	[Start_Time] [datetime2](7) NULL,
	[Taken_Date] [datetime2](7) NULL,
	[UserId] [int] NULL,
	[actual_End_Time] [datetime2](7) NULL,
	[Hospital_AffiliationId] [int] NULL,
 CONSTRAINT [PK_Appointements] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cities]    Script Date: 1/6/2022 6:04:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cities](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[NameAr] [nvarchar](max) NULL,
 CONSTRAINT [PK_Cities] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Client_review]    Script Date: 1/6/2022 6:04:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Client_review](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DoctorId] [int] NULL,
	[Is_Doctor_Recommended] [bit] NULL,
	[OverAll_Rating] [decimal](18, 2) NULL,
	[Review] [nvarchar](max) NULL,
	[Review_Date] [datetime2](7) NULL,
	[UserId] [int] NULL,
	[Wait_Time_Rating] [int] NULL,
	[bedSite_Time_Rating] [int] NULL,
	[NurseId] [int] NULL,
	[AmbulanceId] [int] NULL,
 CONSTRAINT [PK_Client_review] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Doctor_Specialization]    Script Date: 1/6/2022 6:04:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doctor_Specialization](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DoctorId] [int] NULL,
	[SpecializationId] [int] NULL,
 CONSTRAINT [PK_Doctor_Specialization] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Doctors]    Script Date: 1/6/2022 6:04:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doctors](
	[Id] [int] NOT NULL,
	[Ampm] [nvarchar](max) NULL,
	[CityId] [int] NULL,
	[Cost] [bigint] NULL,
	[Country] [nvarchar](max) NULL,
	[Currency] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[FName] [nvarchar](max) NULL,
	[LName] [nvarchar](max) NULL,
	[Practice_From] [datetime2](7) NULL,
	[Prof_Statement] [nvarchar](max) NULL,
	[SpecializationId] [int] NULL,
	[State] [nvarchar](max) NULL,
	[Time] [time](7) NOT NULL,
	[isPaid] [bit] NULL,
	[isVolunteer] [bit] NULL,
 CONSTRAINT [PK_Doctors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 1/6/2022 6:04:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[EmployeeId] [int] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](max) NULL,
	[CompanyName] [nvarchar](max) NULL,
	[Designation] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EventAttachments]    Script Date: 1/6/2022 6:04:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventAttachments](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[EventId] [int] NULL,
	[FileBaseName] [nvarchar](max) NULL,
	[FileContent] [varbinary](max) NULL,
	[FileExtention] [nvarchar](max) NULL,
 CONSTRAINT [PK_EventAttachments] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hospital_Affiliation]    Script Date: 1/6/2022 6:04:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hospital_Affiliation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DoctorId] [int] NULL,
	[End_date] [datetime2](7) NULL,
	[Start_Date] [datetime2](7) NULL,
	[MedicalCenterId] [int] NULL,
 CONSTRAINT [PK_Hospital_Affiliation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[In_Network_Insurance]    Script Date: 1/6/2022 6:04:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[In_Network_Insurance](
	[Id] [int] NOT NULL,
	[Brunch] [nvarchar](max) NULL,
	[Insurance_Name] [nvarchar](max) NULL,
	[Location] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[WorkingHours] [nvarchar](max) NULL,
	[lang] [nvarchar](max) NULL,
	[lat] [nvarchar](max) NULL,
	[phone] [nvarchar](max) NULL,
 CONSTRAINT [PK_In_Network_Insurance] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MedicalCenters]    Script Date: 1/6/2022 6:04:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MedicalCenters](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CityId] [int] NULL,
	[CommercialNumber] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Mobile] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[Type] [nvarchar](max) NULL,
	[address] [nvarchar](max) NULL,
	[lang] [nvarchar](max) NULL,
	[lat] [nvarchar](max) NULL,
 CONSTRAINT [PK_MedicalCenters] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nurses]    Script Date: 1/6/2022 6:04:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nurses](
	[Id] [int] NOT NULL,
	[CityId] [int] NULL,
	[Cost] [bigint] NULL,
	[Description] [nvarchar](max) NULL,
	[Lang] [float] NULL,
	[Lat] [float] NULL,
	[AttendTime] [datetime2](7) NULL,
	[OfficeId] [int] NULL,
 CONSTRAINT [PK_Nurses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Office_Doctor_Avaliablity]    Script Date: 1/6/2022 6:04:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Office_Doctor_Avaliablity](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DayOfWeek] [nvarchar](max) NULL,
	[DoctorId] [int] NULL,
	[End_time] [datetime2](7) NULL,
	[IsAvaliable] [bit] NULL,
	[OfficeId] [int] NULL,
	[Reason] [nvarchar](max) NULL,
	[Start_Time] [datetime2](7) NULL,
 CONSTRAINT [PK_Office_Doctor_Avaliablity] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pharmcy]    Script Date: 1/6/2022 6:04:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pharmcy](
	[Id] [int] NOT NULL,
	[Brunch] [nvarchar](max) NULL,
	[Location] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[UserId] [int] NULL,
	[WorkingHours] [nvarchar](max) NULL,
	[lang] [nvarchar](max) NULL,
	[lat] [nvarchar](max) NULL,
	[phone] [nvarchar](max) NULL,
 CONSTRAINT [PK_Pharmcy] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Qualifications]    Script Date: 1/6/2022 6:04:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Qualifications](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DoctorId] [int] NULL,
	[Doctor_Id] [int] NULL,
	[Institute_Name] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[graduation_Year] [datetime2](7) NULL,
 CONSTRAINT [PK_Qualifications] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Specializations]    Script Date: 1/6/2022 6:04:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Specializations](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[NameAr] [nvarchar](max) NULL,
	[Path] [nvarchar](max) NULL,
 CONSTRAINT [PK_Specializations] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserFavourites]    Script Date: 1/6/2022 6:04:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserFavourites](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DoctorId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_UserFavourites] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRoles]    Script Date: 1/6/2022 6:04:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRoles](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_UserRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 1/6/2022 6:04:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](max) NULL,
	[Citizenship] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Gender] [nvarchar](max) NULL,
	[In_Network_InsuranceId] [int] NULL,
	[InsuranceNumber] [nvarchar](max) NULL,
	[Mobile] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[NationalId] [nvarchar](max) NULL,
	[PassportNumber] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[Role] [nvarchar](max) NULL,
	[VerificationCode] [nvarchar](max) NULL,
	[isVerified] [bit] NULL,
	[Nationality] [nvarchar](max) NULL,
	[ResidencyNumber] [nvarchar](max) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UsersPhotos]    Script Date: 1/6/2022 6:04:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UsersPhotos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Type] [nvarchar](max) NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_UsersPhotos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserStatuses]    Script Date: 1/6/2022 6:04:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserStatuses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DeviceId] [nvarchar](max) NULL,
	[Status] [nvarchar](max) NULL,
	[Date] [datetime2](7) NULL,
	[Tempreture] [float] NULL,
 CONSTRAINT [PK_UserStatuses] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserTokens]    Script Date: 1/6/2022 6:04:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTokens](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](max) NULL,
	[Token] [nvarchar](max) NULL,
 CONSTRAINT [PK_UserTokens] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191116143602_initial4', N'2.1.4-rtm-31024')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191116152817_initial5', N'2.1.4-rtm-31024')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191116154258_initial6', N'2.1.4-rtm-31024')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191116154904_initial7', N'2.1.4-rtm-31024')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191116155306_initial8', N'2.1.4-rtm-31024')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191116180011_Initialize33', N'2.1.4-rtm-31024')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191122212637_changeInClient_Review', N'2.1.11-servicing-32099')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191122230427_changeInClient_Review_rank', N'2.1.11-servicing-32099')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191123003541_AddSpecialization', N'2.1.11-servicing-32099')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191123142245_addPathInSpec', N'2.1.11-servicing-32099')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191123173513_addPathInSpec1', N'2.1.11-servicing-32099')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191123201457_addAppointement', N'2.1.11-servicing-32099')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191123221012_addAppointement1', N'2.1.11-servicing-32099')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191123234412_addAppointement2', N'2.1.11-servicing-32099')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191128214120_AddUSerPhotoTable', N'2.1.11-servicing-32099')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191129133748_AddUSerFavouriteTable', N'2.1.11-servicing-32099')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191130185718_AddCityTable', N'2.1.11-servicing-32099')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191201123222_AddAppointementTable', N'2.1.11-servicing-32099')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191201210800_UpdateAvaliableTable', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191201233020_UpdateAppointementsTable', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191202214213_AddVCInUserTable', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191202225303_AddVerifiednUserTable', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191213121553_addRejectReason', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191221155714_updateAppointement', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191223222319_AddUSerToken', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191223222406_AddUSerToken1', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200102220150_test', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200103003940_updateUserTable', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200104140125_updateDoctorAva', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200104151201_updateDoctorAva1', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200104153239_updateDoctorAva2', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200104190842_updateDoctorAva3', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200111233055_test1', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200112021247_test2', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200117172239_addpharmcy', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200117175505_addpharmcy1', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200118220248_changeSpecial', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200119004322_changeCity', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200119153508_changePharmcy', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200124194357_sddsd', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200124200002_sddsddd', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200124201930_sddsdddddd', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200125134911_insuranceInUser', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200125135548_insuranceInUser1', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200125140006_insuranceInUser2', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200125162310_insuranceInUser3', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200125171358_insuranceInUser4', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200130225647_insurance', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200130225753_insurance1', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200131232200_migrate', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200201005631_migrate1', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200201154506_migrate2', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200207203415_fdfdfd', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200215150738_Nurse', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200215150901_Nurse1', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200216231003_nurse3', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200216231917_nurse4', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200216234407_nurse6', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200216234814_nurse7', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200221165507_addNurseAppointement', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200221170741_addNurseAppointement1', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200222142332_nurseClientReview', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200227215828_AddAmbiliance', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200227220008_AddAmbiliance1', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200228185157_AddAmbiliance2', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200228191653_AddAmbiliance3', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200228200049_AddAmbilianceAppo', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200228225006_AddAmbiliance4', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200229124039_AddAmbiliance5', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200305153342_AddAmbiliance6', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200305155015_AddAmbiliance7', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200307003321_AddAmbiliance9', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200307114322_AddCityInAmbulance', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200403164314_addUSerStatus', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20200404213623_addStatusDate', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220101145147_updatedb', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220101153116_updatedb1', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220102194111_updatedb2', N'2.0.0-rtm-26452')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220102201748_removeISinsuranceVerified', N'2.0.0-rtm-26452')
SET IDENTITY_INSERT [dbo].[App_Booking_Channel] ON 

INSERT [dbo].[App_Booking_Channel] ([Id], [App_Booking_channel1]) VALUES (1, N'Cash')
INSERT [dbo].[App_Booking_Channel] ([Id], [App_Booking_channel1]) VALUES (2, N'Insurance')
SET IDENTITY_INSERT [dbo].[App_Booking_Channel] OFF
SET IDENTITY_INSERT [dbo].[Appointement_Status] ON 

INSERT [dbo].[Appointement_Status] ([Id], [Status]) VALUES (1, N'Pending')
INSERT [dbo].[Appointement_Status] ([Id], [Status]) VALUES (2, N'Confirmed')
INSERT [dbo].[Appointement_Status] ([Id], [Status]) VALUES (3, N'Declined')
SET IDENTITY_INSERT [dbo].[Appointement_Status] OFF
SET IDENTITY_INSERT [dbo].[Cities] ON 

INSERT [dbo].[Cities] ([Id], [Name], [NameAr]) VALUES (1, N'Riyadh', N'الرياض')
INSERT [dbo].[Cities] ([Id], [Name], [NameAr]) VALUES (2, N'Jeddah', N'جدة')
INSERT [dbo].[Cities] ([Id], [Name], [NameAr]) VALUES (3, N'Medina', N'المدينة')
INSERT [dbo].[Cities] ([Id], [Name], [NameAr]) VALUES (4, N'Mecca', N'مكة')
INSERT [dbo].[Cities] ([Id], [Name], [NameAr]) VALUES (5, N'Dammam', N'الدمام')
INSERT [dbo].[Cities] ([Id], [Name], [NameAr]) VALUES (6, N'Taif', N'الطائف')
INSERT [dbo].[Cities] ([Id], [Name], [NameAr]) VALUES (7, N'Abha', N'أبها')
INSERT [dbo].[Cities] ([Id], [Name], [NameAr]) VALUES (8, N'Al Khobar', N'الخبر')
INSERT [dbo].[Cities] ([Id], [Name], [NameAr]) VALUES (9, N'Yanbu', N'ينبوع')
INSERT [dbo].[Cities] ([Id], [Name], [NameAr]) VALUES (10, N'Jazan', N'جازان')
INSERT [dbo].[Cities] ([Id], [Name], [NameAr]) VALUES (11, N'Dhahran', N'الظهران')
INSERT [dbo].[Cities] ([Id], [Name], [NameAr]) VALUES (12, N'Al Bahah', N'الباحة')
INSERT [dbo].[Cities] ([Id], [Name], [NameAr]) VALUES (13, N'Najran', N'نجران')
INSERT [dbo].[Cities] ([Id], [Name], [NameAr]) VALUES (14, N'Al Kharj', N'الخرج')
INSERT [dbo].[Cities] ([Id], [Name], [NameAr]) VALUES (15, N'Al Jubail', N'الجبيل')
SET IDENTITY_INSERT [dbo].[Cities] OFF
INSERT [dbo].[Doctors] ([Id], [Ampm], [CityId], [Cost], [Country], [Currency], [Description], [FName], [LName], [Practice_From], [Prof_Statement], [SpecializationId], [State], [Time], [isPaid], [isVolunteer]) VALUES (99, NULL, 5, 100, N'السعودية', NULL, N'ewrwerwe', NULL, NULL, NULL, NULL, 2, NULL, CAST(N'00:00:00' AS Time), 1, 0)
SET IDENTITY_INSERT [dbo].[Hospital_Affiliation] ON 

INSERT [dbo].[Hospital_Affiliation] ([Id], [DoctorId], [End_date], [Start_Date], [MedicalCenterId]) VALUES (1, 99, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Hospital_Affiliation] OFF
INSERT [dbo].[In_Network_Insurance] ([Id], [Brunch], [Insurance_Name], [Location], [Name], [WorkingHours], [lang], [lat], [phone]) VALUES (68, N'ShburaElkhema', N'Roshdy', N'ShburaElkhema', N'Roshdy', N'31.283153', N'30.131844', N'+9665328491', NULL)
INSERT [dbo].[In_Network_Insurance] ([Id], [Brunch], [Insurance_Name], [Location], [Name], [WorkingHours], [lang], [lat], [phone]) VALUES (69, NULL, N'47', N'3azby', N'3azby', NULL, NULL, NULL, NULL)
INSERT [dbo].[In_Network_Insurance] ([Id], [Brunch], [Insurance_Name], [Location], [Name], [WorkingHours], [lang], [lat], [phone]) VALUES (71, NULL, NULL, NULL, N'insurance2', NULL, NULL, NULL, N'+966112225558')
INSERT [dbo].[In_Network_Insurance] ([Id], [Brunch], [Insurance_Name], [Location], [Name], [WorkingHours], [lang], [lat], [phone]) VALUES (72, NULL, NULL, NULL, N'Alianz', NULL, NULL, NULL, N'+966501235965')
INSERT [dbo].[In_Network_Insurance] ([Id], [Brunch], [Insurance_Name], [Location], [Name], [WorkingHours], [lang], [lat], [phone]) VALUES (73, NULL, NULL, NULL, N'Alrajhi Takaful', NULL, NULL, NULL, N'+966501223666')
SET IDENTITY_INSERT [dbo].[MedicalCenters] ON 

INSERT [dbo].[MedicalCenters] ([Id], [CityId], [CommercialNumber], [Email], [Mobile], [Name], [Type], [address], [lang], [lat]) VALUES (1, 1, N'123456789', N'Rabaa@gmail.com', N'01285252902', N'Rabaa El addwaya', N'Center', N'xsdsds', N'3.1233', N'3.122')
SET IDENTITY_INSERT [dbo].[MedicalCenters] OFF
SET IDENTITY_INSERT [dbo].[Specializations] ON 

INSERT [dbo].[Specializations] ([Id], [Name], [NameAr], [Path]) VALUES (1, N'Psychiatry', N'الطب النفسي', N'psychiarty-colored.svg')
INSERT [dbo].[Specializations] ([Id], [Name], [NameAr], [Path]) VALUES (2, N'Cardiology
', N'القلب', N'cardiology-colored.svg')
INSERT [dbo].[Specializations] ([Id], [Name], [NameAr], [Path]) VALUES (3, N'Dentistry', N'الأسنان', N'dentistry-colored.svg')
INSERT [dbo].[Specializations] ([Id], [Name], [NameAr], [Path]) VALUES (4, N'Pediatrics and New Born
', N'الاطفال وحديثي الولادة', N'new-born-colored.svg')
INSERT [dbo].[Specializations] ([Id], [Name], [NameAr], [Path]) VALUES (5, N'Nose, Ears and Throat
', N'أنف وأذن وحنجرة', N'nose-ear-throat-colored.svg')
INSERT [dbo].[Specializations] ([Id], [Name], [NameAr], [Path]) VALUES (6, N'Orthopedics
', N'العظام', N'orthopedics-colored.svg')
INSERT [dbo].[Specializations] ([Id], [Name], [NameAr], [Path]) VALUES (7, N'Allergy and Immunity
', N'الحساسية والمناعة', N'allegry-and-immunology-colored.svg')
INSERT [dbo].[Specializations] ([Id], [Name], [NameAr], [Path]) VALUES (8, N'Chest and Respiratory System
', N'الصدر والجهاز التنفسي', N'chest-and-respiratory-colored.svg
')
INSERT [dbo].[Specializations] ([Id], [Name], [NameAr], [Path]) VALUES (9, N'General Surgery
', N'جراحة عامة', N'general-surgery-colored.svg')
INSERT [dbo].[Specializations] ([Id], [Name], [NameAr], [Path]) VALUES (10, N'Geriatrics', N'الشيخوخة', N'geriatrics-colored.svg')
INSERT [dbo].[Specializations] ([Id], [Name], [NameAr], [Path]) VALUES (11, N'Hematology', N'الدم', N'hematology-colored.svg')
INSERT [dbo].[Specializations] ([Id], [Name], [NameAr], [Path]) VALUES (12, N'Hepatology
', N'الكبد', N'hepatology-colored.svg')
INSERT [dbo].[Specializations] ([Id], [Name], [NameAr], [Path]) VALUES (13, N'Neurosurgry', N'جراحة الأعصاب', N'neurosurgry-colored.svg')
INSERT [dbo].[Specializations] ([Id], [Name], [NameAr], [Path]) VALUES (14, N'Internal Medicine Physician
', N'الباطنة', N'internal-medicine-physician-colored.svg')
INSERT [dbo].[Specializations] ([Id], [Name], [NameAr], [Path]) VALUES (15, N'Nephrology', N'الكلي', N'nephrology-colored.svg')
SET IDENTITY_INSERT [dbo].[Specializations] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Id], [Address], [Citizenship], [Email], [Gender], [In_Network_InsuranceId], [InsuranceNumber], [Mobile], [Name], [NationalId], [PassportNumber], [Password], [Role], [VerificationCode], [isVerified], [Nationality], [ResidencyNumber]) VALUES (99, N'asdasdasdasd', NULL, N'Doctor@gmail.com', N'male', NULL, NULL, N'+966112345678', N'doctor', N'111111111111', NULL, N'wArilz/QIT55GuLgpRQlCEGAMVh9Epm9mTwkUqPQl20=', N'doctor', N'VFNM', 1, NULL, NULL)
INSERT [dbo].[Users] ([Id], [Address], [Citizenship], [Email], [Gender], [In_Network_InsuranceId], [InsuranceNumber], [Mobile], [Name], [NationalId], [PassportNumber], [Password], [Role], [VerificationCode], [isVerified], [Nationality], [ResidencyNumber]) VALUES (100, N'asaSasASasA', N'citizen', N'user@gmail.com', N'male', 69, N'211212', N'+966112345678', N'user test', N'11112345678', N'', N'wArilz/QIT55GuLgpRQlCEGAMVh9Epm9mTwkUqPQl20=', N'user', N'ZA7N', 1, NULL, N'')
INSERT [dbo].[Users] ([Id], [Address], [Citizenship], [Email], [Gender], [In_Network_InsuranceId], [InsuranceNumber], [Mobile], [Name], [NationalId], [PassportNumber], [Password], [Role], [VerificationCode], [isVerified], [Nationality], [ResidencyNumber]) VALUES (101, N'qweeeeeeeee', N'citizen', N'sadasda@gmail.com', N'male', NULL, NULL, N'+966112345678', N'sddasa', N'11123345678', N'', N'wArilz/QIT55GuLgpRQlCEGAMVh9Epm9mTwkUqPQl20=', N'user', N'KRDG', 1, NULL, N'')
SET IDENTITY_INSERT [dbo].[Users] OFF
SET IDENTITY_INSERT [dbo].[UsersPhotos] ON 

INSERT [dbo].[UsersPhotos] ([Id], [Name], [Type], [UserId]) VALUES (41, N'99-Spec.png', N'Spec', 99)
SET IDENTITY_INSERT [dbo].[UsersPhotos] OFF
SET IDENTITY_INSERT [dbo].[UserStatuses] ON 

INSERT [dbo].[UserStatuses] ([Id], [DeviceId], [Status], [Date], [Tempreture]) VALUES (1, NULL, N'right', CAST(N'2020-04-04T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[UserStatuses] ([Id], [DeviceId], [Status], [Date], [Tempreture]) VALUES (2, N'8c390766-9df0-c3aa-8647-530317641858', N'suffered', CAST(N'2020-04-04T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[UserStatuses] ([Id], [DeviceId], [Status], [Date], [Tempreture]) VALUES (3, N'f98db375-2055-34d9-8675-640220620198', N'right', CAST(N'2020-04-04T00:00:00.0000000' AS DateTime2), NULL)
INSERT [dbo].[UserStatuses] ([Id], [DeviceId], [Status], [Date], [Tempreture]) VALUES (4, N'e951d848-45ba-147b-8655-280426137568', N'right', CAST(N'2020-04-06T02:51:15.6202958' AS DateTime2), NULL)
INSERT [dbo].[UserStatuses] ([Id], [DeviceId], [Status], [Date], [Tempreture]) VALUES (5, N'1317558e-5793-b958-8662-940457408778', N'suffered', CAST(N'2020-04-07T16:50:35.7038256' AS DateTime2), NULL)
INSERT [dbo].[UserStatuses] ([Id], [DeviceId], [Status], [Date], [Tempreture]) VALUES (6, N'182db517-43f8-5439-3517-621055275198', N'right', CAST(N'2020-04-10T07:16:38.4206435' AS DateTime2), NULL)
SET IDENTITY_INSERT [dbo].[UserStatuses] OFF
SET IDENTITY_INSERT [dbo].[UserTokens] ON 

INSERT [dbo].[UserTokens] ([Id], [Email], [Token]) VALUES (1, N'kareemgamoh@gmail.com', N'dbZZlqhjDTI:APA91bFeIQPPSOyGzE0t4oXpeSqctW9Xjg1lD5dhKb2Kr5K2jecxmMEQYTMlv9p-qZ4jpWNutlzn7mmaVxU8njOb7ZDxk2grArc36LJa5ayUS7IDA7D6voDSTM2IphHC36XKUXQfz-0N')
INSERT [dbo].[UserTokens] ([Id], [Email], [Token]) VALUES (2, N'kareemgamoh@gmail.com', N'eK2Zb5kajEI:APA91bE3G912kT5BTIvtHX_VoMw4AT7gywyvqVSZTZ-VUcFfdx8yo9_mAv1PCYJi8T7WRsD4aOBLTkaBq4jRyYNv-yWMuf5sVgHETkpyN1AX50neBkIfnfPtiQxB518PBEwnhRDbCIO-')
INSERT [dbo].[UserTokens] ([Id], [Email], [Token]) VALUES (3, N'm.refaatmadkour@gmail.com', N'dAcZoQ92mLc:APA91bHG6q0kPtvskf6GFaxQNugN-dsnJKKuVBSd7wf6Yf6XI4z8RKoLISIwFfl4EXs5Lr4Sv7SNt2kU8BVU-Ve3sxDhkT3xHLI5aoJ33b6v2YZ0vxzzsbA_pyVTYHE45KkB0dLU5Kz_')
INSERT [dbo].[UserTokens] ([Id], [Email], [Token]) VALUES (4, N'test9@gmail.com', N'dbZZlqhjDTI:APA91bFeIQPPSOyGzE0t4oXpeSqctW9Xjg1lD5dhKb2Kr5K2jecxmMEQYTMlv9p-qZ4jpWNutlzn7mmaVxU8njOb7ZDxk2grArc36LJa5ayUS7IDA7D6voDSTM2IphHC36XKUXQfz-0N')
INSERT [dbo].[UserTokens] ([Id], [Email], [Token]) VALUES (5, N'm.refaat41@ymail.com', N'dAcZoQ92mLc:APA91bHG6q0kPtvskf6GFaxQNugN-dsnJKKuVBSd7wf6Yf6XI4z8RKoLISIwFfl4EXs5Lr4Sv7SNt2kU8BVU-Ve3sxDhkT3xHLI5aoJ33b6v2YZ0vxzzsbA_pyVTYHE45KkB0dLU5Kz_')
INSERT [dbo].[UserTokens] ([Id], [Email], [Token]) VALUES (6, N'tareksherief@gmail.com', N'fqFFW4z7XNY:APA91bGoX5mM_1p1KsvpPu7lc14PM0CXFyXhMw1MXPLfh-60BkgO30Y0OinD7dPN54xceWjgQ_rq9hvMUe9Y1UXKpmoRFoYzYDq34hANmM7HgPNeXxrcqWY9KP0NrfX5vtm4TFwgX81-')
INSERT [dbo].[UserTokens] ([Id], [Email], [Token]) VALUES (7, N'kareem@gmail.com', N'evI6BX-dSe8:APA91bECulhhJTJ9H7aDdoScLg-jyT220EETWepEFdi_SpUs-pro3a4DQbN7BhaWPcpLeViRAQgBaXK7e8MF-zvZUXRyQpYS6I_LfPFgx0OBkWFYm2L_QMvLmRqeRCrynesOJz4u632b')
INSERT [dbo].[UserTokens] ([Id], [Email], [Token]) VALUES (8, N'doctormohamed@gmail.com', N'evI6BX-dSe8:APA91bECulhhJTJ9H7aDdoScLg-jyT220EETWepEFdi_SpUs-pro3a4DQbN7BhaWPcpLeViRAQgBaXK7e8MF-zvZUXRyQpYS6I_LfPFgx0OBkWFYm2L_QMvLmRqeRCrynesOJz4u632b')
INSERT [dbo].[UserTokens] ([Id], [Email], [Token]) VALUES (9, N'testuser3@gmail.com', N'dD_br8XWNs8:APA91bEOXoGSh9BR9NAlHvRjJWrxyUkGZExafgoNBXPfukGIuuFUy09GNkdwQmB0_AWyPCsu7eV-9dJxEppyIgp_mKNFPML8kA47m9Djr6jKH1HjYzcpZ0YkXZluahjvu8M9PY8aahHy')
INSERT [dbo].[UserTokens] ([Id], [Email], [Token]) VALUES (10, N'testdoctor3@gmail.com', N'dD_br8XWNs8:APA91bEOXoGSh9BR9NAlHvRjJWrxyUkGZExafgoNBXPfukGIuuFUy09GNkdwQmB0_AWyPCsu7eV-9dJxEppyIgp_mKNFPML8kA47m9Djr6jKH1HjYzcpZ0YkXZluahjvu8M9PY8aahHy')
INSERT [dbo].[UserTokens] ([Id], [Email], [Token]) VALUES (11, N'amz5582@gmail.com', N'czop1Hv_NGQ:APA91bHx7oZiuPKrbd7RDYKEsy10ZqkRo_ELlS3R6_cK0BNbxaeu0jDOIO1gqenhl_pjd1kCZWP7ufYx97TqRL6B6NzsP-HjgqnyaxpLcR22jw4g5oid5xJdydLtJeJAA7_XHqSHmusG')
INSERT [dbo].[UserTokens] ([Id], [Email], [Token]) VALUES (12, N'testdoctor@gmail.com', N'fHTIYT4i2Ao:APA91bHXyecv6JJU4sBOPARRUch3mUgZtU5erYgilhe1-W-olHXpmdJcgZdwY652RcAZ1iD08Lvxeg-SVoPpyk7_y7NHXbjoLrrEOgA54hESFOYtqCmO_uwdrE6yABlD-W-ps7IsJa1t')
INSERT [dbo].[UserTokens] ([Id], [Email], [Token]) VALUES (13, N'testuser@gmail.com', N'eNcy_ykNYrQ:APA91bE2VGRZXPra_Z7uiDvGA_-2jfBM4B-Efzvx0vdNiQtocM_yFpTyujefxtFpF6iXsjLPbEiE0rdUHiw-QOSYjQOOXiRt9DEmrMxSaTFZoCBmWiyEZ4YkG1iwVMIjS-P3XgERK4Lp')
INSERT [dbo].[UserTokens] ([Id], [Email], [Token]) VALUES (14, N'testuser@gmail.com', N'czop1Hv_NGQ:APA91bHx7oZiuPKrbd7RDYKEsy10ZqkRo_ELlS3R6_cK0BNbxaeu0jDOIO1gqenhl_pjd1kCZWP7ufYx97TqRL6B6NzsP-HjgqnyaxpLcR22jw4g5oid5xJdydLtJeJAA7_XHqSHmusG')
INSERT [dbo].[UserTokens] ([Id], [Email], [Token]) VALUES (15, N'testuser@gmail.com', N'czop1Hv_NGQ:APA91bHx7oZiuPKrbd7RDYKEsy10ZqkRo_ELlS3R6_cK0BNbxaeu0jDOIO1gqenhl_pjd1kCZWP7ufYx97TqRL6B6NzsP-HjgqnyaxpLcR22jw4g5oid5xJdydLtJeJAA7_XHqSHmusG')
SET IDENTITY_INSERT [dbo].[UserTokens] OFF
ALTER TABLE [dbo].[Ambulances]  WITH CHECK ADD  CONSTRAINT [FK_Ambulances_Cities_CityId] FOREIGN KEY([CityId])
REFERENCES [dbo].[Cities] ([Id])
GO
ALTER TABLE [dbo].[Ambulances] CHECK CONSTRAINT [FK_Ambulances_Cities_CityId]
GO
ALTER TABLE [dbo].[Ambulances]  WITH CHECK ADD  CONSTRAINT [FK_Ambulances_MedicalCenters_MedicalCenterId] FOREIGN KEY([MedicalCenterId])
REFERENCES [dbo].[MedicalCenters] ([Id])
GO
ALTER TABLE [dbo].[Ambulances] CHECK CONSTRAINT [FK_Ambulances_MedicalCenters_MedicalCenterId]
GO
ALTER TABLE [dbo].[Ambulances]  WITH CHECK ADD  CONSTRAINT [FK_Ambulances_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Ambulances] CHECK CONSTRAINT [FK_Ambulances_Users_UserId]
GO
ALTER TABLE [dbo].[Appointement_Ambulances]  WITH CHECK ADD  CONSTRAINT [FK_Appointement_Ambulances_Ambulances_AmbulanceId] FOREIGN KEY([AmbulanceId])
REFERENCES [dbo].[Ambulances] ([Id])
GO
ALTER TABLE [dbo].[Appointement_Ambulances] CHECK CONSTRAINT [FK_Appointement_Ambulances_Ambulances_AmbulanceId]
GO
ALTER TABLE [dbo].[Appointement_Ambulances]  WITH CHECK ADD  CONSTRAINT [FK_Appointement_Ambulances_App_Booking_Channel_App_Booking_ChannelId] FOREIGN KEY([App_Booking_ChannelId])
REFERENCES [dbo].[App_Booking_Channel] ([Id])
GO
ALTER TABLE [dbo].[Appointement_Ambulances] CHECK CONSTRAINT [FK_Appointement_Ambulances_App_Booking_Channel_App_Booking_ChannelId]
GO
ALTER TABLE [dbo].[Appointement_Ambulances]  WITH CHECK ADD  CONSTRAINT [FK_Appointement_Ambulances_Appointement_Status_Appointement_StatusId] FOREIGN KEY([Appointement_StatusId])
REFERENCES [dbo].[Appointement_Status] ([Id])
GO
ALTER TABLE [dbo].[Appointement_Ambulances] CHECK CONSTRAINT [FK_Appointement_Ambulances_Appointement_Status_Appointement_StatusId]
GO
ALTER TABLE [dbo].[Appointement_Ambulances]  WITH CHECK ADD  CONSTRAINT [FK_Appointement_Ambulances_In_Network_Insurance_In_Network_InsuranceId] FOREIGN KEY([In_Network_InsuranceId])
REFERENCES [dbo].[In_Network_Insurance] ([Id])
GO
ALTER TABLE [dbo].[Appointement_Ambulances] CHECK CONSTRAINT [FK_Appointement_Ambulances_In_Network_Insurance_In_Network_InsuranceId]
GO
ALTER TABLE [dbo].[Appointement_Ambulances]  WITH CHECK ADD  CONSTRAINT [FK_Appointement_Ambulances_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Appointement_Ambulances] CHECK CONSTRAINT [FK_Appointement_Ambulances_Users_UserId]
GO
ALTER TABLE [dbo].[appointement_Insurances]  WITH CHECK ADD  CONSTRAINT [FK_appointement_Insurances_Appointements_AppointementId] FOREIGN KEY([AppointementId])
REFERENCES [dbo].[Appointements] ([Id])
GO
ALTER TABLE [dbo].[appointement_Insurances] CHECK CONSTRAINT [FK_appointement_Insurances_Appointements_AppointementId]
GO
ALTER TABLE [dbo].[appointement_Insurances]  WITH CHECK ADD  CONSTRAINT [FK_appointement_Insurances_In_Network_Insurance_In_Network_InsuranceId] FOREIGN KEY([In_Network_InsuranceId])
REFERENCES [dbo].[In_Network_Insurance] ([Id])
GO
ALTER TABLE [dbo].[appointement_Insurances] CHECK CONSTRAINT [FK_appointement_Insurances_In_Network_Insurance_In_Network_InsuranceId]
GO
ALTER TABLE [dbo].[Appointement_Nurses]  WITH CHECK ADD  CONSTRAINT [FK_Appointement_Nurses_App_Booking_Channel_App_Booking_ChannelId] FOREIGN KEY([App_Booking_ChannelId])
REFERENCES [dbo].[App_Booking_Channel] ([Id])
GO
ALTER TABLE [dbo].[Appointement_Nurses] CHECK CONSTRAINT [FK_Appointement_Nurses_App_Booking_Channel_App_Booking_ChannelId]
GO
ALTER TABLE [dbo].[Appointement_Nurses]  WITH CHECK ADD  CONSTRAINT [FK_Appointement_Nurses_Appointement_Status_Appointement_StatusId] FOREIGN KEY([Appointement_StatusId])
REFERENCES [dbo].[Appointement_Status] ([Id])
GO
ALTER TABLE [dbo].[Appointement_Nurses] CHECK CONSTRAINT [FK_Appointement_Nurses_Appointement_Status_Appointement_StatusId]
GO
ALTER TABLE [dbo].[Appointement_Nurses]  WITH CHECK ADD  CONSTRAINT [FK_Appointement_Nurses_In_Network_Insurance_In_Network_InsuranceId] FOREIGN KEY([In_Network_InsuranceId])
REFERENCES [dbo].[In_Network_Insurance] ([Id])
GO
ALTER TABLE [dbo].[Appointement_Nurses] CHECK CONSTRAINT [FK_Appointement_Nurses_In_Network_Insurance_In_Network_InsuranceId]
GO
ALTER TABLE [dbo].[Appointement_Nurses]  WITH CHECK ADD  CONSTRAINT [FK_Appointement_Nurses_Nurses_NurseId] FOREIGN KEY([NurseId])
REFERENCES [dbo].[Nurses] ([Id])
GO
ALTER TABLE [dbo].[Appointement_Nurses] CHECK CONSTRAINT [FK_Appointement_Nurses_Nurses_NurseId]
GO
ALTER TABLE [dbo].[Appointement_Nurses]  WITH CHECK ADD  CONSTRAINT [FK_Appointement_Nurses_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Appointement_Nurses] CHECK CONSTRAINT [FK_Appointement_Nurses_Users_UserId]
GO
ALTER TABLE [dbo].[appointement_Pharmcies]  WITH CHECK ADD  CONSTRAINT [FK_appointement_Pharmcies_Appointements_AppointementId] FOREIGN KEY([AppointementId])
REFERENCES [dbo].[Appointements] ([Id])
GO
ALTER TABLE [dbo].[appointement_Pharmcies] CHECK CONSTRAINT [FK_appointement_Pharmcies_Appointements_AppointementId]
GO
ALTER TABLE [dbo].[appointement_Pharmcies]  WITH CHECK ADD  CONSTRAINT [FK_appointement_Pharmcies_Pharmcy_PharmcyId] FOREIGN KEY([PharmcyId])
REFERENCES [dbo].[Pharmcy] ([Id])
GO
ALTER TABLE [dbo].[appointement_Pharmcies] CHECK CONSTRAINT [FK_appointement_Pharmcies_Pharmcy_PharmcyId]
GO
ALTER TABLE [dbo].[Appointements]  WITH CHECK ADD  CONSTRAINT [FK_Appointements_App_Booking_Channel_App_Booking_ChannelId] FOREIGN KEY([App_Booking_ChannelId])
REFERENCES [dbo].[App_Booking_Channel] ([Id])
GO
ALTER TABLE [dbo].[Appointements] CHECK CONSTRAINT [FK_Appointements_App_Booking_Channel_App_Booking_ChannelId]
GO
ALTER TABLE [dbo].[Appointements]  WITH CHECK ADD  CONSTRAINT [FK_Appointements_Appointement_Status_Appointement_StatusId] FOREIGN KEY([Appointement_StatusId])
REFERENCES [dbo].[Appointement_Status] ([Id])
GO
ALTER TABLE [dbo].[Appointements] CHECK CONSTRAINT [FK_Appointements_Appointement_Status_Appointement_StatusId]
GO
ALTER TABLE [dbo].[Appointements]  WITH CHECK ADD  CONSTRAINT [FK_Appointements_Hospital_Affiliation_Hospital_AffiliationId] FOREIGN KEY([Hospital_AffiliationId])
REFERENCES [dbo].[Hospital_Affiliation] ([Id])
GO
ALTER TABLE [dbo].[Appointements] CHECK CONSTRAINT [FK_Appointements_Hospital_Affiliation_Hospital_AffiliationId]
GO
ALTER TABLE [dbo].[Appointements]  WITH CHECK ADD  CONSTRAINT [FK_Appointements_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Appointements] CHECK CONSTRAINT [FK_Appointements_Users_UserId]
GO
ALTER TABLE [dbo].[Client_review]  WITH CHECK ADD  CONSTRAINT [FK_Client_review_Ambulances_AmbulanceId] FOREIGN KEY([AmbulanceId])
REFERENCES [dbo].[Ambulances] ([Id])
GO
ALTER TABLE [dbo].[Client_review] CHECK CONSTRAINT [FK_Client_review_Ambulances_AmbulanceId]
GO
ALTER TABLE [dbo].[Client_review]  WITH CHECK ADD  CONSTRAINT [FK_Client_review_Doctors_DoctorId] FOREIGN KEY([DoctorId])
REFERENCES [dbo].[Doctors] ([Id])
GO
ALTER TABLE [dbo].[Client_review] CHECK CONSTRAINT [FK_Client_review_Doctors_DoctorId]
GO
ALTER TABLE [dbo].[Client_review]  WITH CHECK ADD  CONSTRAINT [FK_Client_review_Nurses_NurseId] FOREIGN KEY([NurseId])
REFERENCES [dbo].[Nurses] ([Id])
GO
ALTER TABLE [dbo].[Client_review] CHECK CONSTRAINT [FK_Client_review_Nurses_NurseId]
GO
ALTER TABLE [dbo].[Client_review]  WITH CHECK ADD  CONSTRAINT [FK_Client_review_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Client_review] CHECK CONSTRAINT [FK_Client_review_Users_UserId]
GO
ALTER TABLE [dbo].[Doctor_Specialization]  WITH CHECK ADD  CONSTRAINT [FK_Doctor_Specialization_Doctors_DoctorId] FOREIGN KEY([DoctorId])
REFERENCES [dbo].[Doctors] ([Id])
GO
ALTER TABLE [dbo].[Doctor_Specialization] CHECK CONSTRAINT [FK_Doctor_Specialization_Doctors_DoctorId]
GO
ALTER TABLE [dbo].[Doctor_Specialization]  WITH CHECK ADD  CONSTRAINT [FK_Doctor_Specialization_Specializations_SpecializationId] FOREIGN KEY([SpecializationId])
REFERENCES [dbo].[Specializations] ([Id])
GO
ALTER TABLE [dbo].[Doctor_Specialization] CHECK CONSTRAINT [FK_Doctor_Specialization_Specializations_SpecializationId]
GO
ALTER TABLE [dbo].[Doctors]  WITH CHECK ADD  CONSTRAINT [FK_Doctors_Cities_CityId] FOREIGN KEY([CityId])
REFERENCES [dbo].[Cities] ([Id])
GO
ALTER TABLE [dbo].[Doctors] CHECK CONSTRAINT [FK_Doctors_Cities_CityId]
GO
ALTER TABLE [dbo].[Doctors]  WITH CHECK ADD  CONSTRAINT [FK_Doctors_Specializations_SpecializationId] FOREIGN KEY([SpecializationId])
REFERENCES [dbo].[Specializations] ([Id])
GO
ALTER TABLE [dbo].[Doctors] CHECK CONSTRAINT [FK_Doctors_Specializations_SpecializationId]
GO
ALTER TABLE [dbo].[Hospital_Affiliation]  WITH CHECK ADD  CONSTRAINT [FK_Hospital_Affiliation_Doctors_DoctorId] FOREIGN KEY([DoctorId])
REFERENCES [dbo].[Doctors] ([Id])
GO
ALTER TABLE [dbo].[Hospital_Affiliation] CHECK CONSTRAINT [FK_Hospital_Affiliation_Doctors_DoctorId]
GO
ALTER TABLE [dbo].[Hospital_Affiliation]  WITH CHECK ADD  CONSTRAINT [FK_Hospital_Affiliation_MedicalCenters_MedicalCenterId] FOREIGN KEY([MedicalCenterId])
REFERENCES [dbo].[MedicalCenters] ([Id])
GO
ALTER TABLE [dbo].[Hospital_Affiliation] CHECK CONSTRAINT [FK_Hospital_Affiliation_MedicalCenters_MedicalCenterId]
GO
ALTER TABLE [dbo].[MedicalCenters]  WITH CHECK ADD  CONSTRAINT [FK_MedicalCenters_Cities_CityId] FOREIGN KEY([CityId])
REFERENCES [dbo].[Cities] ([Id])
GO
ALTER TABLE [dbo].[MedicalCenters] CHECK CONSTRAINT [FK_MedicalCenters_Cities_CityId]
GO
ALTER TABLE [dbo].[Nurses]  WITH CHECK ADD  CONSTRAINT [FK_Nurses_Cities_CityId] FOREIGN KEY([CityId])
REFERENCES [dbo].[Cities] ([Id])
GO
ALTER TABLE [dbo].[Nurses] CHECK CONSTRAINT [FK_Nurses_Cities_CityId]
GO
ALTER TABLE [dbo].[Nurses]  WITH CHECK ADD  CONSTRAINT [FK_Nurses_MedicalCenters_OfficeId] FOREIGN KEY([OfficeId])
REFERENCES [dbo].[MedicalCenters] ([Id])
GO
ALTER TABLE [dbo].[Nurses] CHECK CONSTRAINT [FK_Nurses_MedicalCenters_OfficeId]
GO
ALTER TABLE [dbo].[Office_Doctor_Avaliablity]  WITH CHECK ADD  CONSTRAINT [FK_Office_Doctor_Avaliablity_Doctors_DoctorId] FOREIGN KEY([DoctorId])
REFERENCES [dbo].[Doctors] ([Id])
GO
ALTER TABLE [dbo].[Office_Doctor_Avaliablity] CHECK CONSTRAINT [FK_Office_Doctor_Avaliablity_Doctors_DoctorId]
GO
ALTER TABLE [dbo].[Office_Doctor_Avaliablity]  WITH CHECK ADD  CONSTRAINT [FK_Office_Doctor_Avaliablity_MedicalCenters_OfficeId] FOREIGN KEY([OfficeId])
REFERENCES [dbo].[MedicalCenters] ([Id])
GO
ALTER TABLE [dbo].[Office_Doctor_Avaliablity] CHECK CONSTRAINT [FK_Office_Doctor_Avaliablity_MedicalCenters_OfficeId]
GO
ALTER TABLE [dbo].[Pharmcy]  WITH CHECK ADD  CONSTRAINT [FK_Pharmcy_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Pharmcy] CHECK CONSTRAINT [FK_Pharmcy_Users_UserId]
GO
ALTER TABLE [dbo].[Qualifications]  WITH CHECK ADD  CONSTRAINT [FK_Qualifications_Doctors_DoctorId] FOREIGN KEY([DoctorId])
REFERENCES [dbo].[Doctors] ([Id])
GO
ALTER TABLE [dbo].[Qualifications] CHECK CONSTRAINT [FK_Qualifications_Doctors_DoctorId]
GO
ALTER TABLE [dbo].[UserFavourites]  WITH CHECK ADD  CONSTRAINT [FK_UserFavourites_Doctors_DoctorId] FOREIGN KEY([DoctorId])
REFERENCES [dbo].[Doctors] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserFavourites] CHECK CONSTRAINT [FK_UserFavourites_Doctors_DoctorId]
GO
ALTER TABLE [dbo].[UserFavourites]  WITH CHECK ADD  CONSTRAINT [FK_UserFavourites_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserFavourites] CHECK CONSTRAINT [FK_UserFavourites_Users_UserId]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_In_Network_Insurance_In_Network_InsuranceId] FOREIGN KEY([In_Network_InsuranceId])
REFERENCES [dbo].[In_Network_Insurance] ([Id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_In_Network_Insurance_In_Network_InsuranceId]
GO
ALTER TABLE [dbo].[UsersPhotos]  WITH CHECK ADD  CONSTRAINT [FK_UsersPhotos_Users_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UsersPhotos] CHECK CONSTRAINT [FK_UsersPhotos_Users_UserId]
GO
/****** Object:  StoredProcedure [dbo].[getNearestLocation]    Script Date: 1/6/2022 6:04:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getNearestLocation]
	-- Add the parameters for the stored procedure here
	@lat decimal,
	@lang decimal
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	
select * from (SELECT lat, lang, SQRT(
    power(69.1 * (lat - @lat), 2) +
    POWer(69.1 * (@lang - lang) * COS(lat / 57.3), 2)) AS distance
	FROM MSQ.sa1.Pharmcy) as d
where distance < 25 ORDER BY distance;
END
GO
