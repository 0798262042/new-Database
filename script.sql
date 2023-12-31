USE [AssessmentDDB]
GO
/****** Object:  Table [dbo].[tblAdministrator]    Script Date: 10/18/2023 11:46:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAdministrator](
	[UserID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblAssessment]    Script Date: 10/18/2023 11:46:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAssessment](
	[AssessmentID] [int] IDENTITY(10001,1) NOT NULL,
	[StudentLectureModuleID] [int] NOT NULL,
	[DueDate] [nvarchar](50) NOT NULL,
	[AssessmentTypeID] [int] NOT NULL,
	[AssessmentStatus] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AssessmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblAssessmentType]    Script Date: 10/18/2023 11:46:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAssessmentType](
	[AssessmentTypeID] [int] IDENTITY(10001,1) NOT NULL,
	[AssessmentTypeDescription] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AssessmentTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLecturer]    Script Date: 10/18/2023 11:46:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLecturer](
	[UserID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLecturerModule]    Script Date: 10/18/2023 11:46:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLecturerModule](
	[LecturerModuleID] [int] IDENTITY(10001,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[ModuleID] [int] NOT NULL,
	[Date] [nvarchar](50) NOT NULL,
	[ModLecturerStatus] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[LecturerModuleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblModule]    Script Date: 10/18/2023 11:46:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblModule](
	[ModuleID] [int] IDENTITY(10001,1) NOT NULL,
	[ModuleName] [nvarchar](50) NOT NULL,
	[ModuleDuration] [nvarchar](50) NOT NULL,
	[ModuleTypeID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ModuleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblModuleType]    Script Date: 10/18/2023 11:46:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblModuleType](
	[ModuleTypeID] [int] IDENTITY(10001,1) NOT NULL,
	[ModuleTypeDescription] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ModuleTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblStudent]    Script Date: 10/18/2023 11:46:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblStudent](
	[UserID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblStudentModule]    Script Date: 10/18/2023 11:46:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblStudentModule](
	[StudentModuleID] [int] IDENTITY(10001,1) NOT NULL,
	[LecturerModuleID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[Date] [nvarchar](50) NOT NULL,
	[StudModStatus] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[StudentModuleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUser]    Script Date: 10/18/2023 11:46:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUser](
	[UserID] [int] IDENTITY(10001,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Surname] [nvarchar](50) NOT NULL,
	[Title] [nchar](10) NOT NULL,
	[Role] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[UserStatus] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblUser] ON 

INSERT [dbo].[tblUser] ([UserID], [Name], [Surname], [Title], [Role], [Email], [Password], [UserStatus]) VALUES (10001, N'Tumi', N'Mphahle', N'Mr        ', N'Admin', N'tumi@gmail.com', N'Tumi123', N'Active')
SET IDENTITY_INSERT [dbo].[tblUser] OFF
GO
ALTER TABLE [dbo].[tblAdministrator]  WITH CHECK ADD  CONSTRAINT [FK_tblAdministrator_tblUser] FOREIGN KEY([UserID])
REFERENCES [dbo].[tblUser] ([UserID])
GO
ALTER TABLE [dbo].[tblAdministrator] CHECK CONSTRAINT [FK_tblAdministrator_tblUser]
GO
ALTER TABLE [dbo].[tblAssessment]  WITH CHECK ADD FOREIGN KEY([AssessmentTypeID])
REFERENCES [dbo].[tblAssessmentType] ([AssessmentTypeID])
GO
ALTER TABLE [dbo].[tblAssessment]  WITH CHECK ADD FOREIGN KEY([StudentLectureModuleID])
REFERENCES [dbo].[tblStudentModule] ([StudentModuleID])
GO
ALTER TABLE [dbo].[tblLecturer]  WITH CHECK ADD  CONSTRAINT [FK_tblLecturer_tblUser] FOREIGN KEY([UserID])
REFERENCES [dbo].[tblUser] ([UserID])
GO
ALTER TABLE [dbo].[tblLecturer] CHECK CONSTRAINT [FK_tblLecturer_tblUser]
GO
ALTER TABLE [dbo].[tblLecturerModule]  WITH CHECK ADD FOREIGN KEY([ModuleID])
REFERENCES [dbo].[tblModule] ([ModuleID])
GO
ALTER TABLE [dbo].[tblLecturerModule]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[tblUser] ([UserID])
GO
ALTER TABLE [dbo].[tblModule]  WITH CHECK ADD FOREIGN KEY([ModuleTypeID])
REFERENCES [dbo].[tblModuleType] ([ModuleTypeID])
GO
ALTER TABLE [dbo].[tblStudent]  WITH CHECK ADD  CONSTRAINT [FK_tblStudent_tblUser] FOREIGN KEY([UserID])
REFERENCES [dbo].[tblUser] ([UserID])
GO
ALTER TABLE [dbo].[tblStudent] CHECK CONSTRAINT [FK_tblStudent_tblUser]
GO
ALTER TABLE [dbo].[tblStudentModule]  WITH CHECK ADD FOREIGN KEY([LecturerModuleID])
REFERENCES [dbo].[tblLecturerModule] ([LecturerModuleID])
GO
ALTER TABLE [dbo].[tblStudentModule]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[tblUser] ([UserID])
GO
/****** Object:  StoredProcedure [dbo].[Sp_ADD_AssessmentType]    Script Date: 10/18/2023 11:46:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_ADD_AssessmentType] 
	-- Add the parameters for the stored procedure here
@AssessmentTypeDescription varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here
INSERT INTO tblAssessmentType([AssessmentTypeDescription] )
Values (@AssessmentTypeDescription )
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ADD_LectureModule]    Script Date: 10/18/2023 11:46:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_ADD_LectureModule]
	-- Add the parameters for the stored procedure here
 @UserID int ,
 @ModuleID int ,
 @Date nvarchar(50),
 @ModLecturerStatus nvarchar(50)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
insert into tblLecturerModule(UserID,ModuleID,[Date],ModLecturerStatus )
Values ( @UserID , @ModuleID, @Date, @ModLecturerStatus)
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ADD_Module]    Script Date: 10/18/2023 11:46:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_ADD_Module]
	-- Add the parameters for the stored procedure here
	@ModuleName nvarchar(50),
	@ModuleDuration nvarchar(50),
	@ModuleTypeID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

   Insert into tblModule(ModuleName,ModuleDuration,ModuleTypeID )
   Values(@ModuleName,@ModuleDuration,@ModuleTypeID)
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ADD_ModuleType]    Script Date: 10/18/2023 11:46:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_ADD_ModuleType]
	-- Add the parameters for the stored procedure here
	@ModuleTypeDescription nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into tblModuleType(ModuleTypeDescription)
	Values(@ModuleTypeDescription)
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ADD_StudentModule]    Script Date: 10/18/2023 11:46:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_ADD_StudentModule] 
	-- Add the parameters for the stored procedure here
    @LecturerModuleID int,
	@UserID int ,
	@Date nvarchar(50),
	@StudModStatus nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here
	   Insert into tblStudentModule(LecturerModuleID,UserID,[Date] ,StudModStatus)
	   Values( @LecturerModuleID,@UserID ,	@Date,	@StudModStatus)
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ADD_tblLectureModule]    Script Date: 10/18/2023 11:46:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_ADD_tblLectureModule] 
	-- Add the parameters for the stored procedure here
	@UserID int,
	@ModuleID int,
	@Date nvarchar(50),
	@ModLecturerStatus nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO tblLecturerModule(UserID, ModuleID, Date, ModLecturerStatus)
	  VALUES (@UserID, @ModuleID, @Date, @ModLecturerStatus)
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_Delete_AssemTypeDesc]    Script Date: 10/18/2023 11:46:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_Delete_AssemTypeDesc]
	-- Add the parameters for the stored procedure here
      @AssessmentTypeID int 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here
	delete from tblAssessmentType
	Where  AssessmentTypeID=@AssessmentTypeID
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_Delete_Module]    Script Date: 10/18/2023 11:46:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_Delete_Module]
	-- Add the parameters for the stored procedure here
    @ModuleID int 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here
	 delete from tblModule
	 Where ModuleID=@ModuleID
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_Delete_StudentModule]    Script Date: 10/18/2023 11:46:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_Delete_StudentModule]
	-- Add the parameters for the stored procedure here
  @StudentModuleID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here
  delete from tblStudentModule
  Where  StudentModuleID=@StudentModuleID
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_DeleteAssessment]    Script Date: 10/18/2023 11:46:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_DeleteAssessment]
	-- Add the parameters for the stored procedure here
 @AssessmentID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here
	Delete from tblAssessment
	Where AssessmentID=@AssessmentID
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_DeleteLectureModule]    Script Date: 10/18/2023 11:46:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_DeleteLectureModule]
	-- Add the parameters for the stored procedure here
	@LecturerModuleID int 

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here
        Delete from tblLecturerModule
		Where LecturerModuleID=@LecturerModuleID
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_DeleteUser]    Script Date: 10/18/2023 11:46:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_DeleteUser]
	-- Add the parameters for the stored procedure here>
	@UserID int 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here
	Delete From tblUser
	Where UserID=@UserID
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_DispalyUsers]    Script Date: 10/18/2023 11:46:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_DispalyUsers]
	-- Add the parameters for the stored procedure here>
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT *From tblUser
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_Display_Assessment]    Script Date: 10/18/2023 11:46:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_Display_Assessment]
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from tblAssessment
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_Display_AssmentType]    Script Date: 10/18/2023 11:46:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_Display_AssmentType]
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from tblAssessmentType
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_Display_Moduletype]    Script Date: 10/18/2023 11:46:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_Display_Moduletype] 
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here
	select * from tblModuleType
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_Display_StudentModule]    Script Date: 10/18/2023 11:46:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_Display_StudentModule]
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here
	 --select S.StudentModuleID,J.ModuleName,Concat (U.Name,' ',Surname)AS FullName,S.[Date],S.StudModStatus
	-- from (	SELECT LecturerModuleID,ModuleName
	--From tblUser,tblModule,tblLecturerModule
	--Where tblModule.ModuleID=tblLecturerModule.ModuleID And tblUser.UserID=tblLecturerModule.UserID) AS J
	--INNER JOIN tblStudentModule AS S ON J.LecturerModuleID=S.LecturerModuleID
	--	inner join tblUser AS U ON S.UserID=U.UserID

	SELECT StudentModuleID,Concat(Name,' ',Surname) As FullName,ModuleName,[Date],StudModStatus
	From tblUser,tblModule,tblStudentModule
	Where tblModule.ModuleID=tblStudentModule.LecturerModuleID And tblUser.UserID=tblStudentModule.UserID


	
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_DisplayLectureModule]    Script Date: 10/18/2023 11:46:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_DisplayLectureModule]
	-- Add the parameters for the stored procedure here
 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT LecturerModuleID,Concat(Name,' ',Surname) As FullName,ModuleName,[Date],ModLecturerStatus
	From tblUser,tblModule,tblLecturerModule
	Where tblModule.ModuleID=tblLecturerModule.ModuleID And tblUser.UserID=tblLecturerModule.UserID
END
select * from tblLecturerModule
GO
/****** Object:  StoredProcedure [dbo].[Sp_DisplayModule]    Script Date: 10/18/2023 11:46:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_DisplayModule]
	-- Add the parameters for the stored procedure here
  
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    Select ModuleID,ModuleName,ModuleDuration,ModuleTypeDescription 
	from tblModule,tblModuleType
	where tblModuleType.ModuleTypeID=tblModule.ModuleTypeID
END
select * from tblModule
Delete from tblModule
where ModuleID='100001'
GO
/****** Object:  StoredProcedure [dbo].[SP_LoadCmb_ModuleTypeID]    Script Date: 10/18/2023 11:46:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_LoadCmb_ModuleTypeID]
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here
	select  ModuleTypeDescription,ModuleTypeID  from tblModuleType 
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_LoadCmbAssessmentTypeDecr_intblAssessment]    Script Date: 10/18/2023 11:46:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_LoadCmbAssessmentTypeDecr_intblAssessment]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT AssessmentTypeDescription,AssessmentTypeID from tblAssessmentType
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_LoadCmbLectureModuleName_intblStudentModule]    Script Date: 10/18/2023 11:46:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_LoadCmbLectureModuleName_intblStudentModule] 
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here
	select ModuleName,ModuleID from tblModule
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_LoadCmbModuleID_IntblLectureModule]    Script Date: 10/18/2023 11:46:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_LoadCmbModuleID_IntblLectureModule]
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

	select ModuleName,ModuleID from tblModule
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_LoadCmbUserID_IntblLectureModule]    Script Date: 10/18/2023 11:46:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_LoadCmbUserID_IntblLectureModule]
	-- Add the parameters for the stored procedure here
   -- @Role nvarchar(50)


AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	---SET NOCOUNT ON;

    -- Insert statements for procedure here
Select  UserID,Concat (Name,'  ',Surname) As FullName
	From  tblUser 
	Where Role='Lecture'
END
GO
/****** Object:  StoredProcedure [dbo].[sp_LoadCmbUserID_IntblStudentModule]    Script Date: 10/18/2023 11:46:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_LoadCmbUserID_IntblStudentModule]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here
	Select  UserID,Concat (Name,'  ',Surname) As FullName
	From  tblUser 
	Where Role='Student' and UserStatus='Active'
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Logins]    Script Date: 10/18/2023 11:46:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[SP_Logins]
	-- Add the parameters for the stored procedure here
  @UserID int ,
  @Password Nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	---SET NOCOUNT ON;
	Select * from tblUser
	Where UserID=@UserID and [Password]=@Password
    -- Insert statements for procedure here

END
GO
/****** Object:  StoredProcedure [dbo].[Sp_ReportAdmin]    Script Date: 10/18/2023 11:46:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_ReportAdmin]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here
		SELECT *From tblUser
	   Where [Role]='Admin'
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_ReportLecture]    Script Date: 10/18/2023 11:46:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_ReportLecture]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here
		SELECT *From tblUser
	Where [Role]='Lecture'
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_ReportLoadDgView]    Script Date: 10/18/2023 11:46:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_ReportLoadDgView]
	-- Add the parameters for the stored procedure here

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT *  from tblUser
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_ReportStudent]    Script Date: 10/18/2023 11:46:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_ReportStudent]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT *From tblUser
	Where [Role]='Student'
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_SearchUsers]    Script Date: 10/18/2023 11:46:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_SearchUsers]
	-- Add the parameters for the stored procedure here
	@Name nvarchar(50)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
  Select * from tblUser
  Where [Name] lIke '%'+@Name+'%' 
END
GO
/****** Object:  StoredProcedure [dbo].[Sp_Update_AssemTypeDesc]    Script Date: 10/18/2023 11:46:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_Update_AssemTypeDesc]
	-- Add the parameters for the stored procedure here
 @AssessmentTypeID int,
 @AssessmentTypeDescription nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	update tblAssessmentType
	Set AssessmentTypeDescription=@AssessmentTypeDescription
	Where AssessmentTypeID=@AssessmentTypeID
END
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateAssemType]    Script Date: 10/18/2023 11:46:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_UpdateAssemType]
	-- Add the parameters for the stored procedure here
	     @AssessmentTypeID int ,
		@AssessmentTypeDescription nvarchar(50)
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here
  update tblAssessmentType
  Set AssessmentTypeDescription =@AssessmentTypeDescription
  where AssessmentTypeID=@AssessmentTypeID
END
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateLectureModule]    Script Date: 10/18/2023 11:46:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_UpdateLectureModule]  
	-- Add the parameters for the stored procedure here
	@LecturerModuleID int,
	@UserID int,
	@ModuleID int,
	@Date nvarchar(50),
	@ModLecturerStatus nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here
	Update tblLecturerModule
	SET UserID = @UserID, ModuleID = @ModuleID, Date = @Date, ModLecturerStatus =@ModLecturerStatus
	WHERE LecturerModuleID = @LecturerModuleID






















END
GO
/****** Object:  StoredProcedure [dbo].[Sp_UpdateModule]    Script Date: 10/18/2023 11:46:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_UpdateModule]
	-- Add the parameters for the stored procedure here
	@ModuleID int ,
	@ModuleName nvarchar(50),
	@ModuleDuration nvarchar(50),
	@ModuleTypeID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	Update tblModule
	set ModuleName=@ModuleName,ModuleDuration=@ModuleDuration,ModuleTypeID =@ModuleTypeID 
	Where ModuleID=@ModuleID

END
GO
/****** Object:  StoredProcedure [dbo].[Sp_User_Insert]    Script Date: 10/18/2023 11:46:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Sp_User_Insert]
@Name varchar(100),
@Surname varchar(100),
@Title char(100),
@Role varchar(100),
@Email nvarchar(100),
@Password nvarchar(100),
@UserStatus nvarchar(100)
AS 
BEGIN
 INSERT INTO tblUser(Name,Surname,Title,Role,Email,Password,UserStatus)
 values(@Name,@Surname,@Title,@Role,@Email,@Password,@UserStatus)
END
select *From tblUser
GO
/****** Object:  StoredProcedure [dbo].[Sp_User_Update]    Script Date: 10/18/2023 11:46:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[Sp_User_Update]
	-- Add the parameters for the stored procedure here
	@UserID int,
	@Name  nvarchar(50),
	@Surname  nvarchar(50),
	@Role  nvarchar(50),
	@Email nvarchar(50),
	@Password  nvarchar(50),
	@UserStatus  nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	--SET NOCOUNT ON;

    -- Insert statements for procedure here
   Update tblUser
    Set [Name]= @Name ,  Surname= @Surname, Email =@Email,[Role]=@Role,[Password] =@Password , UserStatus =@UserStatus 
  Where UserID=@UserID
END
GO
/****** Object:  StoredProcedure [dbo].[spLogStudent]    Script Date: 10/18/2023 11:46:16 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[spLogStudent]
@FullName nvarchar(100)
AS
BEGIN
	select *
	from(	SELECT StudentModuleID,Concat(Name,' ',Surname) As FullName,ModuleName,[Date],StudModStatus
	From tblUser,tblModule,tblStudentModule
	Where tblModule.ModuleID=tblStudentModule.LecturerModuleID And tblUser.UserID=tblStudentModule.UserID) as TS
	WHERE FullName=@FullName AND StudModStatus='Active'
END
GO
