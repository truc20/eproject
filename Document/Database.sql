USE [OnlineHelpDesk]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 27/01/2021 17:50:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](250) NULL,
	[Password] [varchar](250) NULL,
	[FullName] [varchar](250) NULL,
	[Status] [bit] NULL,
	[Email] [varchar](250) NULL,
	[Roleld] [int] NULL,
	[Phone] [varchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 27/01/2021 17:50:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](250) NOT NULL,
	[Status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Discussion]    Script Date: 27/01/2021 17:50:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discussion](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Content] [text] NULL,
	[CreateDate] [date] NULL,
	[TicketId] [int] NULL,
	[AccountId] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Period]    Script Date: 27/01/2021 17:50:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Period](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](250) NOT NULL,
	[Status] [bit] NULL,
	[Color] [varchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Photo]    Script Date: 27/01/2021 17:50:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Photo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](250) NOT NULL,
	[TicketId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 27/01/2021 17:50:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 27/01/2021 17:50:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](250) NOT NULL,
	[Display] [bit] NULL,
	[Color] [varchar](250) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ticket]    Script Date: 27/01/2021 17:50:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ticket](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](250) NULL,
	[Description] [text] NULL,
	[CreateDate] [date] NULL,
	[StatusId] [int] NULL,
	[CategoryId] [int] NULL,
	[PeriodId] [int] NULL,
	[EmployeeId] [int] NULL,
	[SupporterId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([Id], [UserName], [Password], [FullName], [Status], [Email], [Roleld], [Phone]) VALUES (1, N'admin1', N'$2b$10$pUcruJQw90kK5dxyNxFQ5eRp0dbvzQzcCGuPctHOkeROkNnTSZcyq', N'Administrator', 1, N'administrator@gmail.com', 1, N'098')
INSERT [dbo].[Account] ([Id], [UserName], [Password], [FullName], [Status], [Email], [Roleld], [Phone]) VALUES (3, N'sup01', N'$2b$10$pUcruJQw90kK5dxyNxFQ5eRp0dbvzQzcCGuPctHOkeROkNnTSZcyq', N'An', 1, N'An@gmail.com', 2, N'0961608294')
INSERT [dbo].[Account] ([Id], [UserName], [Password], [FullName], [Status], [Email], [Roleld], [Phone]) VALUES (6, N'admin', N'$2b$10$pUcruJQw90kK5dxyNxFQ5eRp0dbvzQzcCGuPctHOkeROkNnTSZcyq', N'DTT', 1, N'admin@gmail.com', 1, N'090')
INSERT [dbo].[Account] ([Id], [UserName], [Password], [FullName], [Status], [Email], [Roleld], [Phone]) VALUES (11, N'sup02', N'$2b$10$pUcruJQw90kK5dxyNxFQ5eRp0dbvzQzcCGuPctHOkeROkNnTSZcyq', N'Kim Ngoc', 1, N'luongngockimngoc265@gmail.com', 2, N'0961608294')
INSERT [dbo].[Account] ([Id], [UserName], [Password], [FullName], [Status], [Email], [Roleld], [Phone]) VALUES (12, N'sup03', N'$2b$10$pUcruJQw90kK5dxyNxFQ5eRp0dbvzQzcCGuPctHOkeROkNnTSZcyq', N'Ngo Chi', 1, N'chi@gmail.com', 2, N'0909098732')
INSERT [dbo].[Account] ([Id], [UserName], [Password], [FullName], [Status], [Email], [Roleld], [Phone]) VALUES (13, N'admin2', N'$2b$10$pUcruJQw90kK5dxyNxFQ5eRp0dbvzQzcCGuPctHOkeROkNnTSZcyq', N'administrator', 1, N'admin2@gmail.com', 1, N'8179')
INSERT [dbo].[Account] ([Id], [UserName], [Password], [FullName], [Status], [Email], [Roleld], [Phone]) VALUES (14, N'student1', N'$2b$10$VoiEkYpZ9fpSR5ueatjvjOoKnb8rB0MvvPImCbVq4WlFuQOFYSDX.', N'Duong', 1, N'TrucDTTS1908022@fpt.edu.vn', 3, N'0124')
INSERT [dbo].[Account] ([Id], [UserName], [Password], [FullName], [Status], [Email], [Roleld], [Phone]) VALUES (15, N'student2', N'$2b$10$1EPlilMmyxjXRXGGUAILveSkRm8UqHTsFLed9ys7MZvEprR/MIe36', N'TrucDuong', 1, N'duongtontruc1996@gmail.com', 2, N'0972374446')
INSERT [dbo].[Account] ([Id], [UserName], [Password], [FullName], [Status], [Email], [Roleld], [Phone]) VALUES (16, N'student3', N'$2b$10$H0NwcFuw8UgyfGJmgqoxv.J8XEvj0hNB9uI5fsgiYm71G9QqJbFlW', N'DuongTon', 1, N'duongtontruc1996@gmail.com', 3, N'0961608294')
INSERT [dbo].[Account] ([Id], [UserName], [Password], [FullName], [Status], [Email], [Roleld], [Phone]) VALUES (17, N'student4', N'$2b$10$H0NwcFuw8UgyfGJmgqoxv.J8XEvj0hNB9uI5fsgiYm71G9QqJbFlW', N'DuongTonT', 1, N'duongtontruc1996@gmail.com', 3, N'961608294')
INSERT [dbo].[Account] ([Id], [UserName], [Password], [FullName], [Status], [Email], [Roleld], [Phone]) VALUES (18, N'student5', N'$2b$10$H0NwcFuw8UgyfGJmgqoxv.J8XEvj0hNB9uI5fsgiYm71G9QqJbFlW', N'DuongTonT', 1, N'duongtontruc1996@gmail.com', 3, N'961608294')
INSERT [dbo].[Account] ([Id], [UserName], [Password], [FullName], [Status], [Email], [Roleld], [Phone]) VALUES (19, N'student6', N'$2b$10$pUcruJQw90kK5dxyNxFQ5eRp0dbvzQzcCGuPctHOkeROkNnTSZcyq', N'DuongT', 1, N'duong@gmail.com', 3, N'973792916')
INSERT [dbo].[Account] ([Id], [UserName], [Password], [FullName], [Status], [Email], [Roleld], [Phone]) VALUES (20, N'student7', N'$2b$10$H0NwcFuw8UgyfGJmgqoxv.J8XEvj0hNB9uI5fsgiYm71G9QqJbFlW', N'DuongT', 1, N'duong@gmail.com', 3, N'973792916')
INSERT [dbo].[Account] ([Id], [UserName], [Password], [FullName], [Status], [Email], [Roleld], [Phone]) VALUES (21, N'student8', N'$2b$10$H0NwcFuw8UgyfGJmgqoxv.J8XEvj0hNB9uI5fsgiYm71G9QqJbFlW', N'DuongT', 1, N'duong@gmail.com', 3, N'973792916')
INSERT [dbo].[Account] ([Id], [UserName], [Password], [FullName], [Status], [Email], [Roleld], [Phone]) VALUES (22, N'student9', N'$2b$10$H0NwcFuw8UgyfGJmgqoxv.J8XEvj0hNB9uI5fsgiYm71G9QqJbFlW', N'Duong', 1, N'duong@gmail.com', 3, N'1246789')
INSERT [dbo].[Account] ([Id], [UserName], [Password], [FullName], [Status], [Email], [Roleld], [Phone]) VALUES (23, N'student10', N'$2b$10$H0NwcFuw8UgyfGJmgqoxv.J8XEvj0hNB9uI5fsgiYm71G9QqJbFlW', N'Duong', 1, N'duong@gmail.com', 3, N'1246789')
INSERT [dbo].[Account] ([Id], [UserName], [Password], [FullName], [Status], [Email], [Roleld], [Phone]) VALUES (24, N'sup4', N'$2b$10$DLdW0IrXROABJb/5VRrYre48QHIEsqnZxnfpRnDAD7Ad/5SXatS3a', N'Truc', 1, N'1@gmail.com', 2, N'123')
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Id], [Name], [Status]) VALUES (1, N'Traditional Students', 1)
INSERT [dbo].[Category] ([Id], [Name], [Status]) VALUES (8, N'Nontraditional Students', 1)
INSERT [dbo].[Category] ([Id], [Name], [Status]) VALUES (9, N'International Students', 1)
INSERT [dbo].[Category] ([Id], [Name], [Status]) VALUES (10, N'Nonnative Speakers of English Student', 1)
INSERT [dbo].[Category] ([Id], [Name], [Status]) VALUES (11, N'Working Students', 0)
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[Discussion] ON 

INSERT [dbo].[Discussion] ([Id], [Content], [CreateDate], [TicketId], [AccountId]) VALUES (1, N'OK', CAST(N'2023-03-01' AS Date), 21, 24)
INSERT [dbo].[Discussion] ([Id], [Content], [CreateDate], [TicketId], [AccountId]) VALUES (3, N'KO', CAST(N'2021-01-27' AS Date), 21, 24)
SET IDENTITY_INSERT [dbo].[Discussion] OFF
GO
SET IDENTITY_INSERT [dbo].[Period] ON 

INSERT [dbo].[Period] ([Id], [Name], [Status], [Color]) VALUES (1, N'Period 1', 1, N'success')
INSERT [dbo].[Period] ([Id], [Name], [Status], [Color]) VALUES (5, N'Period 2', 1, N'warning')
INSERT [dbo].[Period] ([Id], [Name], [Status], [Color]) VALUES (6, N'Period 3', 1, N'danger')
INSERT [dbo].[Period] ([Id], [Name], [Status], [Color]) VALUES (7, N'Period 4', 1, N'info')
SET IDENTITY_INSERT [dbo].[Period] OFF
GO
SET IDENTITY_INSERT [dbo].[Photo] ON 

INSERT [dbo].[Photo] ([Id], [Name], [TicketId]) VALUES (1, N'01262021101940paper_359489.jpg', 13)
INSERT [dbo].[Photo] ([Id], [Name], [TicketId]) VALUES (2, N'01262021110416paper_359489 - Copy.jpg', 14)
INSERT [dbo].[Photo] ([Id], [Name], [TicketId]) VALUES (3, N'01262021114929paper_359489 - Copy.jpg', 15)
INSERT [dbo].[Photo] ([Id], [Name], [TicketId]) VALUES (4, N'01262021114959h1.jpg', 16)
INSERT [dbo].[Photo] ([Id], [Name], [TicketId]) VALUES (5, N'27012021021641h1.jpg', 21)
SET IDENTITY_INSERT [dbo].[Photo] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([Id], [Name]) VALUES (1, N'Administrator')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (2, N'Support')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (3, N'Employee')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Status] ON 

INSERT [dbo].[Status] ([Id], [Name], [Display], [Color]) VALUES (5, N'Open', 1, N'danger')
INSERT [dbo].[Status] ([Id], [Name], [Display], [Color]) VALUES (6, N'On Going', 1, N'warning')
INSERT [dbo].[Status] ([Id], [Name], [Display], [Color]) VALUES (7, N'Solved', 1, N'success')
INSERT [dbo].[Status] ([Id], [Name], [Display], [Color]) VALUES (8, N'New', 1, N'info')
SET IDENTITY_INSERT [dbo].[Status] OFF
GO
SET IDENTITY_INSERT [dbo].[Ticket] ON 

INSERT [dbo].[Ticket] ([Id], [Title], [Description], [CreateDate], [StatusId], [CategoryId], [PeriodId], [EmployeeId], [SupporterId]) VALUES (13, N'Hello', N'I Want to send my first Ticket', CAST(N'2021-01-26' AS Date), 5, 1, 1, 16, 12)
INSERT [dbo].[Ticket] ([Id], [Title], [Description], [CreateDate], [StatusId], [CategoryId], [PeriodId], [EmployeeId], [SupporterId]) VALUES (14, N'I need Help', N'My account not work, can''t load HOME', CAST(N'2021-01-26' AS Date), 8, 1, 1, 17, 11)
INSERT [dbo].[Ticket] ([Id], [Title], [Description], [CreateDate], [StatusId], [CategoryId], [PeriodId], [EmployeeId], [SupporterId]) VALUES (15, N'URGENT', N'Plese help me check my point', CAST(N'2021-01-26' AS Date), 8, 9, 5, 19, 11)
INSERT [dbo].[Ticket] ([Id], [Title], [Description], [CreateDate], [StatusId], [CategoryId], [PeriodId], [EmployeeId], [SupporterId]) VALUES (16, N'I NEED HELP', N'HELLO Could you send me a ....', CAST(N'2021-01-26' AS Date), 5, 8, 6, 19, 3)
INSERT [dbo].[Ticket] ([Id], [Title], [Description], [CreateDate], [StatusId], [CategoryId], [PeriodId], [EmployeeId], [SupporterId]) VALUES (17, N'Hello', N'I want some ....', CAST(N'2021-01-26' AS Date), 8, 1, 1, 19, 3)
INSERT [dbo].[Ticket] ([Id], [Title], [Description], [CreateDate], [StatusId], [CategoryId], [PeriodId], [EmployeeId], [SupporterId]) VALUES (18, N'I need Help', N'I want to ask ... .123123', CAST(N'2021-01-26' AS Date), 5, 1, 1, 19, 24)
INSERT [dbo].[Ticket] ([Id], [Title], [Description], [CreateDate], [StatusId], [CategoryId], [PeriodId], [EmployeeId], [SupporterId]) VALUES (19, N'Hello', N'I want to ask', CAST(N'2021-01-27' AS Date), 5, 1, 5, 16, 24)
INSERT [dbo].[Ticket] ([Id], [Title], [Description], [CreateDate], [StatusId], [CategoryId], [PeriodId], [EmployeeId], [SupporterId]) VALUES (20, N'Hello', N'I want to ask', CAST(N'2021-01-27' AS Date), 8, 8, 5, 23, 24)
INSERT [dbo].[Ticket] ([Id], [Title], [Description], [CreateDate], [StatusId], [CategoryId], [PeriodId], [EmployeeId], [SupporterId]) VALUES (21, N'URGENT', N'I want to ask', CAST(N'2021-01-27' AS Date), 5, 1, 1, 23, 24)
SET IDENTITY_INSERT [dbo].[Ticket] OFF
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD  CONSTRAINT [FK_Account_Role] FOREIGN KEY([Roleld])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[Account] CHECK CONSTRAINT [FK_Account_Role]
GO
ALTER TABLE [dbo].[Discussion]  WITH CHECK ADD  CONSTRAINT [Discussion_FK] FOREIGN KEY([TicketId])
REFERENCES [dbo].[Ticket] ([Id])
GO
ALTER TABLE [dbo].[Discussion] CHECK CONSTRAINT [Discussion_FK]
GO
ALTER TABLE [dbo].[Discussion]  WITH CHECK ADD  CONSTRAINT [Discussion_FK_2] FOREIGN KEY([Id])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Discussion] CHECK CONSTRAINT [Discussion_FK_2]
GO
ALTER TABLE [dbo].[Discussion]  WITH CHECK ADD  CONSTRAINT [FK_Discussion_Account] FOREIGN KEY([AccountId])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Discussion] CHECK CONSTRAINT [FK_Discussion_Account]
GO
ALTER TABLE [dbo].[Photo]  WITH CHECK ADD  CONSTRAINT [FK_Photo_Ticket] FOREIGN KEY([TicketId])
REFERENCES [dbo].[Ticket] ([Id])
GO
ALTER TABLE [dbo].[Photo] CHECK CONSTRAINT [FK_Photo_Ticket]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_Account] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Ticket_Account]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_Account1] FOREIGN KEY([SupporterId])
REFERENCES [dbo].[Account] ([Id])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Ticket_Account1]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_Category] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Ticket_Category]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_Period] FOREIGN KEY([PeriodId])
REFERENCES [dbo].[Period] ([Id])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Ticket_Period]
GO
ALTER TABLE [dbo].[Ticket]  WITH CHECK ADD  CONSTRAINT [FK_Ticket_Status] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([Id])
GO
ALTER TABLE [dbo].[Ticket] CHECK CONSTRAINT [FK_Ticket_Status]
GO
