USE [master]
GO
/****** Object:  Database [Vakantie]    Script Date: 20-11-2021 12:58:41 ******/
CREATE DATABASE [Vakantie]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Vakantie', FILENAME = N'C:\Users\Richard Swinkels\Vakantie.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Vakantie_log', FILENAME = N'C:\Users\Richard Swinkels\Vakantie_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Vakantie] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Vakantie].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Vakantie] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Vakantie] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Vakantie] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Vakantie] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Vakantie] SET ARITHABORT OFF 
GO
ALTER DATABASE [Vakantie] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Vakantie] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Vakantie] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Vakantie] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Vakantie] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Vakantie] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Vakantie] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Vakantie] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Vakantie] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Vakantie] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Vakantie] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Vakantie] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Vakantie] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Vakantie] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Vakantie] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Vakantie] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Vakantie] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Vakantie] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Vakantie] SET  MULTI_USER 
GO
ALTER DATABASE [Vakantie] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Vakantie] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Vakantie] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Vakantie] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Vakantie] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Vakantie] SET QUERY_STORE = OFF
GO
USE [Vakantie]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [Vakantie]
GO
/****** Object:  Table [dbo].[Klanten]    Script Date: 20-11-2021 12:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Klanten](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Voornaam] [varchar](100) NOT NULL,
	[Achternaam] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Klanten] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KlantenLanden]    Script Date: 20-11-2021 12:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KlantenLanden](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[KlantId] [int] NOT NULL,
	[LandId] [int] NOT NULL,
 CONSTRAINT [PK_Favorieten] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Landen]    Script Date: 20-11-2021 12:58:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Landen](
	[ID] [int] NOT NULL,
	[Naam] [varchar](100) NOT NULL,
 CONSTRAINT [PK_tblLanden] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Klanten] ON 

INSERT [dbo].[Klanten] ([ID], [Voornaam], [Achternaam]) VALUES (1, N'Richard', N'Swinkels')
SET IDENTITY_INSERT [dbo].[Klanten] OFF
GO
SET IDENTITY_INSERT [dbo].[KlantenLanden] ON 

INSERT [dbo].[KlantenLanden] ([ID], [KlantId], [LandId]) VALUES (1, 1, 138)
INSERT [dbo].[KlantenLanden] ([ID], [KlantId], [LandId]) VALUES (2, 1, 74)
INSERT [dbo].[KlantenLanden] ([ID], [KlantId], [LandId]) VALUES (3, 1, 12)
SET IDENTITY_INSERT [dbo].[KlantenLanden] OFF
GO
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (1, N'Albania')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (2, N'Algeria')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (3, N'American_Samoa')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (4, N'Andorra')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (5, N'Angola')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (6, N'Anguilla')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (7, N'Antigua_and_Barbuda')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (8, N'Argentina')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (9, N'Armenia')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (10, N'Aruba')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (11, N'Australia')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (12, N'Austria')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (13, N'Azerbaijan')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (14, N'Bahamas')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (15, N'Bahrain')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (16, N'Bangladesh')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (17, N'Barbados')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (18, N'Belarus')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (19, N'Belgium')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (20, N'Belize')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (21, N'Benin')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (22, N'Bermuda')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (23, N'Bhutan')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (24, N'Bolivia')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (25, N'Bosnia')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (26, N'Botswana')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (27, N'Brazil')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (28, N'British_Virgin_Islands')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (29, N'Brunei')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (30, N'Bulgaria')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (31, N'Burkina_Faso')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (32, N'Burundi')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (33, N'Cambodia')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (34, N'Cameroon')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (35, N'Canada')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (36, N'Cape_Verde')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (37, N'Cayman_Islands')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (38, N'Central_African_Republic')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (39, N'Chad')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (40, N'Chile')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (41, N'China')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (42, N'Christmas_Island')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (43, N'Colombia')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (44, N'Comoros')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (45, N'Cook_Islands')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (46, N'Costa_Rica')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (47, N'Croatia')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (48, N'Cuba')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (49, N'Cyprus')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (50, N'Cyprus_Northern')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (51, N'Czech_Republic')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (52, N'C?te_d''Ivoire')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (53, N'Democratic_Republic_of_the_Congo')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (54, N'Denmark')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (55, N'Djibouti')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (56, N'Dominica')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (57, N'Dominican_Republic')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (58, N'Ecuador')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (59, N'Egypt')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (60, N'El_Salvador')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (61, N'Equatorial_Guinea')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (62, N'Eritrea')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (63, N'Estonia')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (64, N'Ethiopia')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (65, N'Falkland_Islands')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (66, N'Faroe_Islands')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (67, N'Fiji')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (68, N'Finland')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (69, N'France')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (70, N'French_Polynesia')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (71, N'Gabon')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (72, N'Gambia')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (73, N'Georgia')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (74, N'Germany')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (75, N'Ghana')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (76, N'Gibraltar')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (77, N'Greece')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (78, N'Greenland')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (79, N'Grenada')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (80, N'Guam')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (81, N'Guatemala')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (82, N'Guinea')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (83, N'Guinea_Bissau')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (84, N'Guyana')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (85, N'Haiti')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (86, N'Honduras')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (87, N'Hong_Kong')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (88, N'Hungary')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (89, N'Iceland')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (90, N'India')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (91, N'Indonesia')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (92, N'Iran')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (93, N'Iraq')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (94, N'Ireland')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (95, N'Israel')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (96, N'Italy')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (97, N'Jamaica')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (98, N'Japan')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (99, N'Jordan')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (100, N'Kazakhstan')
GO
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (101, N'Kenya')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (102, N'Kiribati')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (103, N'Kuwait')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (104, N'Kyrgyzstan')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (105, N'Laos')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (106, N'Latvia')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (107, N'Lebanon')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (108, N'Lesotho')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (109, N'Liberia')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (110, N'Libya')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (111, N'Liechtenstein')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (112, N'Lithuania')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (113, N'Luxembourg')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (114, N'Macao')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (115, N'Macedonia')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (116, N'Madagascar')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (117, N'Malawi')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (118, N'Malaysia')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (119, N'Maldives')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (120, N'Mali')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (121, N'Malta')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (122, N'Marshall_Islands')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (123, N'Martinique')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (124, N'Mauritania')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (125, N'Mauritius')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (126, N'Mexico')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (127, N'Micronesia')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (128, N'Moldova')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (129, N'Monaco')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (130, N'Mongolia')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (131, N'Montserrat')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (132, N'Morocco')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (133, N'Mozambique')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (134, N'Myanmar')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (135, N'Namibia')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (136, N'Nauru')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (137, N'Nepal')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (138, N'Netherlands')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (139, N'Netherlands_Antilles')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (140, N'New_Zealand')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (141, N'Nicaragua')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (142, N'Niger')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (143, N'Nigeria')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (144, N'Niue')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (145, N'Norfolk_Island')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (146, N'North_Korea')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (147, N'Norway')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (148, N'Oman')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (149, N'Pakistan')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (150, N'Palau')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (151, N'Panama')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (152, N'Papua_New_Guinea')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (153, N'Paraguay')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (154, N'Peru')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (155, N'Philippines')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (156, N'Pitcairn_Islands')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (157, N'Poland')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (158, N'Portugal')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (159, N'Puerto_Rico')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (160, N'Qatar')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (161, N'Republic_of_the_Congo')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (162, N'Romania')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (163, N'Russian_Federation')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (164, N'Rwanda')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (165, N'Saint_Kitts_and_Nevis')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (166, N'Saint_Lucia')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (167, N'Saint_Pierre')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (168, N'Saint_Vicent_and_the_Grenadines')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (169, N'Samoa')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (170, N'San_Marino')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (171, N'Sao_Tom?_and_Pr?ncipe')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (172, N'Saudi_Arabia')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (173, N'Senegal')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (174, N'Serbia_and_Montenegro')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (175, N'Seychelles')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (176, N'Sierra_Leone')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (177, N'Singapore')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (178, N'Slovakia')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (179, N'Slovenia')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (180, N'Soloman_Islands')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (181, N'Somalia')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (182, N'South_Africa')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (183, N'South_Georgia')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (184, N'South_Korea')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (185, N'Soviet_Union')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (186, N'Spain')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (187, N'Sri_Lanka')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (188, N'Sudan')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (189, N'Suriname')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (190, N'Swaziland')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (191, N'Sweden')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (192, N'Switzerland')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (193, N'Syria')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (194, N'Taiwan')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (195, N'Tajikistan')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (196, N'Tanzania')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (197, N'Thailand')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (198, N'Tibet')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (199, N'Timor-Leste')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (200, N'Togo')
GO
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (201, N'Tonga')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (202, N'Trinidad_and_Tobago')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (203, N'Tunisia')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (204, N'Turkey')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (205, N'Turkmenistan')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (206, N'Turks_and_Caicos_Islands')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (207, N'Tuvalu')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (208, N'UAE')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (209, N'Uganda')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (210, N'Ukraine')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (211, N'United_Kingdom')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (212, N'United_States_of_America')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (213, N'Uruguay')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (214, N'US_Virgin_Islands')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (215, N'Uzbekistan')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (216, N'Vanuatu')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (217, N'Vatican_City')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (218, N'Venezuela')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (219, N'Vietnam')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (220, N'Wallis_and_Futuna')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (221, N'Yemen')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (222, N'Zambia')
INSERT [dbo].[Landen] ([ID], [Naam]) VALUES (223, N'Zimbabwe')
GO
ALTER TABLE [dbo].[KlantenLanden]  WITH CHECK ADD  CONSTRAINT [FK_Favorieten_Klanten] FOREIGN KEY([KlantId])
REFERENCES [dbo].[Klanten] ([ID])
GO
ALTER TABLE [dbo].[KlantenLanden] CHECK CONSTRAINT [FK_Favorieten_Klanten]
GO
ALTER TABLE [dbo].[KlantenLanden]  WITH CHECK ADD  CONSTRAINT [FK_Favorieten_Landen] FOREIGN KEY([LandId])
REFERENCES [dbo].[Landen] ([ID])
GO
ALTER TABLE [dbo].[KlantenLanden] CHECK CONSTRAINT [FK_Favorieten_Landen]
GO
USE [master]
GO
ALTER DATABASE [Vakantie] SET  READ_WRITE 
GO
