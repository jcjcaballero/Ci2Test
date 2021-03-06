USE [DB_PRUEBA_CI2]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 26/12/2019 5:04:01 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 26/12/2019 5:04:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 26/12/2019 5:04:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 26/12/2019 5:04:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 26/12/2019 5:04:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 26/12/2019 5:04:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 26/12/2019 5:04:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 26/12/2019 5:04:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TAREAS]    Script Date: 26/12/2019 5:04:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TAREAS](
	[id_tarea] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[fecha_cre] [datetime] NOT NULL,
	[descripcion] [varchar](100) NULL,
	[estado_tarea] [bit] NOT NULL,
	[fecha_venc] [datetime] NOT NULL,
	[id_user] [nvarchar](900) NOT NULL,
 CONSTRAINT [PK_TAREAS] PRIMARY KEY CLUSTERED 
(
	[id_tarea] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191225174950_Add_user_Indentity', N'2.1.4-rtm-31024')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'c3e4eb0f-7626-490e-98d3-81c644260617', N'caballero@ht.com', N'CABALLERO@HT.COM', N'caballero@ht.com', N'CABALLERO@HT.COM', 0, N'AQAAAAEAACcQAAAAEPqrqqFIBbhi2nhr1pC5pntDeaZIkAQ1hc1g6gDhiCdNerKcMqbigv3dyhhRcQmMDg==', N'dfceb7ce-d5d2-49be-bcbb-a7d4dfce696a', N'0467d3d3-42cd-4334-8e5f-4161ede2ab96', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'c58d258f-d7e6-4bdc-bad7-422307e7d049', N'jcj@hotmial.com', N'JCJ@HOTMIAL.COM', N'jcj30@caballero.com', N'JCJ30@CABALLERO.COM', 0, N'AQAAAAEAACcQAAAAEODnjCsFMjhwANe6lij5rAg6nui35/EbOO2a0vQzXAeJOTe2SkTxbIoAhVuJSGCnKQ==', N'036cee23-9a8e-49c6-a01e-4e4c3c840c07', N'05920e59-ed92-4e95-9470-ae5cd7af4463', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'da5d4200-897e-4792-bc0b-02d0000d6dd5', N'nca@hotmial.com', N'NCA@HOTMIAL.COM', N'nca@hotmial.com', N'NCA@HOTMIAL.COM', 0, N'AQAAAAEAACcQAAAAEIvZuLLIvaJ7+0rpv0xGoMXZPVZngjE6eeV7df3+Mp3auaF4Nfc1/5EtquGpGMezNg==', N'95115b64-1b51-4752-9c10-b87cf91a68ed', N'b8bd8a6e-2cf1-4b37-80e4-8d1c95fbce27', NULL, 0, 0, NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[TAREAS] ON 

INSERT [dbo].[TAREAS] ([id_tarea], [fecha_cre], [descripcion], [estado_tarea], [fecha_venc], [id_user]) VALUES (CAST(1 AS Numeric(18, 0)), CAST(N'2019-12-26T20:16:12.803' AS DateTime), N'Esta es una tarea importante.', 0, CAST(N'2019-12-30T23:00:00.000' AS DateTime), N'da5d4200-897e-4792-bc0b-02d0000d6dd5')
INSERT [dbo].[TAREAS] ([id_tarea], [fecha_cre], [descripcion], [estado_tarea], [fecha_venc], [id_user]) VALUES (CAST(3 AS Numeric(18, 0)), CAST(N'2019-12-22T15:59:02.970' AS DateTime), N'Segunda Tarea', 1, CAST(N'2019-12-28T23:00:00.000' AS DateTime), N'c3e4eb0f-7626-490e-98d3-81c644260617')
INSERT [dbo].[TAREAS] ([id_tarea], [fecha_cre], [descripcion], [estado_tarea], [fecha_venc], [id_user]) VALUES (CAST(4 AS Numeric(18, 0)), CAST(N'2019-12-21T20:16:12.803' AS DateTime), N'Actulizando 3 la tercera Tarea', 1, CAST(N'2019-12-31T23:00:00.000' AS DateTime), N'c3e4eb0f-7626-490e-98d3-81c644260617')
INSERT [dbo].[TAREAS] ([id_tarea], [fecha_cre], [descripcion], [estado_tarea], [fecha_venc], [id_user]) VALUES (CAST(6 AS Numeric(18, 0)), CAST(N'2019-12-22T15:59:54.580' AS DateTime), N'Quinta Tarea', 0, CAST(N'2019-12-27T23:00:00.000' AS DateTime), N'da5d4200-897e-4792-bc0b-02d0000d6dd5')
INSERT [dbo].[TAREAS] ([id_tarea], [fecha_cre], [descripcion], [estado_tarea], [fecha_venc], [id_user]) VALUES (CAST(7 AS Numeric(18, 0)), CAST(N'2019-12-22T16:00:04.490' AS DateTime), N'Sexta Tarea', 0, CAST(N'2019-12-31T23:00:00.000' AS DateTime), N'da5d4200-897e-4792-bc0b-02d0000d6dd5')
INSERT [dbo].[TAREAS] ([id_tarea], [fecha_cre], [descripcion], [estado_tarea], [fecha_venc], [id_user]) VALUES (CAST(9 AS Numeric(18, 0)), CAST(N'2019-12-26T20:16:12.803' AS DateTime), N'Tarea de rprogramación', 0, CAST(N'2019-12-30T23:00:00.000' AS DateTime), N'da5d4200-897e-4792-bc0b-02d0000d6dd5')
INSERT [dbo].[TAREAS] ([id_tarea], [fecha_cre], [descripcion], [estado_tarea], [fecha_venc], [id_user]) VALUES (CAST(10 AS Numeric(18, 0)), CAST(N'2019-12-21T20:16:12.803' AS DateTime), N'Primera Tarea', 1, CAST(N'2019-12-26T23:00:00.000' AS DateTime), N'c3e4eb0f-7626-490e-98d3-81c644260617')
SET IDENTITY_INSERT [dbo].[TAREAS] OFF
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
