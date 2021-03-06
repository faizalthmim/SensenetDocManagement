USE [master]
GO

/****** DROP DATABASE: [SenseNetContentRepository] ******/
IF EXISTS (SELECT name FROM sys.databases WHERE name = N'SensenetPercobaan')
BEGIN
	/****** Restricts access to this database to only one user at a time  ******/
	ALTER DATABASE [SensenetPercobaan] SET SINGLE_USER WITH ROLLBACK IMMEDIATE 
	
	USE [master]
	DROP DATABASE [SensenetPercobaan]
END 
GO

/****** CREATE DATABASE: [SenseNetContentRepository] ******/
CREATE DATABASE [SensenetPercobaan]
GO
EXEC dbo.sp_dbcmptlevel @dbname=N'SensenetPercobaan' --, @new_cmptlevel=100
GO
--IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
--begin
--EXEC [SensenetPercobaan].[dbo].[sp_fulltext_database] @action = 'disable'
--end
--GO
--EXEC sp_fulltext_database enable
--GO
ALTER DATABASE [SensenetPercobaan] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SensenetPercobaan] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SensenetPercobaan] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SensenetPercobaan] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SensenetPercobaan] SET ARITHABORT OFF 
GO
ALTER DATABASE [SensenetPercobaan] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SensenetPercobaan] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [SensenetPercobaan] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SensenetPercobaan] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SensenetPercobaan] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SensenetPercobaan] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SensenetPercobaan] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SensenetPercobaan] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SensenetPercobaan] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SensenetPercobaan] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SensenetPercobaan] SET  ENABLE_BROKER 
GO
ALTER DATABASE [SensenetPercobaan] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SensenetPercobaan] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SensenetPercobaan] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SensenetPercobaan] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SensenetPercobaan] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SensenetPercobaan] SET  READ_WRITE 
GO
ALTER DATABASE [SensenetPercobaan] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SensenetPercobaan] SET  MULTI_USER 
GO
ALTER DATABASE [SensenetPercobaan] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SensenetPercobaan] SET DB_CHAINING OFF
GO
ALTER DATABASE [SensenetPercobaan] SET ALLOW_SNAPSHOT_ISOLATION ON
GO
USE [SensenetPercobaan]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [SensenetPercobaan]
GO
/****** Object:  UserDefinedFunction [dbo].[udfSplitCsvToIntTable]    Script Date: 26/08/2019 16:30:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[udfSplitCsvToIntTable]
(
	@Csv varchar(8000)
)
RETURNS @temptable TABLE ([Id] int)
AS
BEGIN
	IF @Csv IS NOT NULL
	BEGIN
		DECLARE @pos int
		DECLARE @p int
		SET @pos = 1
		SELECT @p = charindex(',', @Csv)
		WHILE @p <> 0
		BEGIN
			INSERT INTO @temptable SELECT CONVERT(int, SUBSTRING(@Csv, @pos, @p - @pos))
			SET @pos = @p + 1
			SELECT @p = CHARINDEX(',', @Csv, @pos)
		END

		INSERT INTO @temptable
		SELECT CONVERT(int, SUBSTRING(@Csv, @pos, len(@Csv) - @pos + 1))
	END
	RETURN
END
GO
/****** Object:  Table [dbo].[SchemaPropertySets]    Script Date: 26/08/2019 16:30:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SchemaPropertySets](
	[PropertySetId] [int] IDENTITY(1,1) NOT NULL,
	[ParentId] [int] NULL,
	[Name] [varchar](450) NOT NULL,
	[PropertySetTypeId] [int] NOT NULL,
	[ClassName] [varchar](450) NULL,
	[RowGuid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Timestamp] [timestamp] NOT NULL,
 CONSTRAINT [PK_PropertySets] PRIMARY KEY CLUSTERED 
(
	[PropertySetId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[udfGetAllDerivatedNodeTypesByNodeTypeId]    Script Date: 26/08/2019 16:30:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		SN\molnarg
-- Create date: 2009-05-12
-- Description:	Returns a table that with one column of type int.
--				The table contains all the node types (IDs) derivated from the given node type (ID).
-- =============================================
CREATE FUNCTION [dbo].[udfGetAllDerivatedNodeTypesByNodeTypeId] 
(
	@BaseNodeTypeId int	
)
RETURNS TABLE 
AS
RETURN 
(
	WITH AllDerivates (NodeTypeId)
	AS
	(
		SELECT @BaseNodeTypeId

		UNION ALL
		
		SELECT PropertySetId
		FROM SchemaPropertySets JOIN AllDerivates
			ON	SchemaPropertySets.ParentId = AllDerivates.NodeTypeId
	)
	SELECT NodeTypeId
	FROM AllDerivates
)
GO
/****** Object:  Table [dbo].[Nodes]    Script Date: 26/08/2019 16:30:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nodes](
	[NodeId] [int] IDENTITY(1,1) NOT NULL,
	[NodeTypeId] [int] NOT NULL,
	[ContentListTypeId] [int] NULL,
	[ContentListId] [int] NULL,
	[CreatingInProgress] [tinyint] NOT NULL,
	[IsDeleted] [tinyint] NOT NULL,
	[IsInherited] [tinyint] NOT NULL,
	[ParentNodeId] [int] NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Path] [nvarchar](450) NOT NULL,
	[Index] [int] NOT NULL,
	[Locked] [tinyint] NOT NULL,
	[LockedById] [int] NULL,
	[ETag] [varchar](50) NOT NULL,
	[LockType] [int] NOT NULL,
	[LockTimeout] [int] NOT NULL,
	[LockDate] [datetime] NOT NULL,
	[LockToken] [varchar](50) NOT NULL,
	[LastLockUpdate] [datetime] NOT NULL,
	[LastMinorVersionId] [int] NULL,
	[LastMajorVersionId] [int] NULL,
	[CreationDate] [datetime] NOT NULL,
	[CreatedById] [int] NOT NULL,
	[ModificationDate] [datetime] NOT NULL,
	[ModifiedById] [int] NOT NULL,
	[DisplayName] [nvarchar](450) NULL,
	[IsSystem] [tinyint] NULL,
	[OwnerId] [int] NOT NULL,
	[SavingState] [int] NULL,
	[RowGuid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Timestamp] [timestamp] NOT NULL,
 CONSTRAINT [PK_tblFpsNodes] PRIMARY KEY CLUSTERED 
(
	[NodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FlatProperties]    Script Date: 26/08/2019 16:30:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FlatProperties](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[VersionId] [int] NOT NULL,
	[Page] [int] NOT NULL,
	[nvarchar_1] [nvarchar](450) NULL,
	[nvarchar_2] [nvarchar](450) NULL,
	[nvarchar_3] [nvarchar](450) NULL,
	[nvarchar_4] [nvarchar](450) NULL,
	[nvarchar_5] [nvarchar](450) NULL,
	[nvarchar_6] [nvarchar](450) NULL,
	[nvarchar_7] [nvarchar](450) NULL,
	[nvarchar_8] [nvarchar](450) NULL,
	[nvarchar_9] [nvarchar](450) NULL,
	[nvarchar_10] [nvarchar](450) NULL,
	[nvarchar_11] [nvarchar](450) NULL,
	[nvarchar_12] [nvarchar](450) NULL,
	[nvarchar_13] [nvarchar](450) NULL,
	[nvarchar_14] [nvarchar](450) NULL,
	[nvarchar_15] [nvarchar](450) NULL,
	[nvarchar_16] [nvarchar](450) NULL,
	[nvarchar_17] [nvarchar](450) NULL,
	[nvarchar_18] [nvarchar](450) NULL,
	[nvarchar_19] [nvarchar](450) NULL,
	[nvarchar_20] [nvarchar](450) NULL,
	[nvarchar_21] [nvarchar](450) NULL,
	[nvarchar_22] [nvarchar](450) NULL,
	[nvarchar_23] [nvarchar](450) NULL,
	[nvarchar_24] [nvarchar](450) NULL,
	[nvarchar_25] [nvarchar](450) NULL,
	[nvarchar_26] [nvarchar](450) NULL,
	[nvarchar_27] [nvarchar](450) NULL,
	[nvarchar_28] [nvarchar](450) NULL,
	[nvarchar_29] [nvarchar](450) NULL,
	[nvarchar_30] [nvarchar](450) NULL,
	[nvarchar_31] [nvarchar](450) NULL,
	[nvarchar_32] [nvarchar](450) NULL,
	[nvarchar_33] [nvarchar](450) NULL,
	[nvarchar_34] [nvarchar](450) NULL,
	[nvarchar_35] [nvarchar](450) NULL,
	[nvarchar_36] [nvarchar](450) NULL,
	[nvarchar_37] [nvarchar](450) NULL,
	[nvarchar_38] [nvarchar](450) NULL,
	[nvarchar_39] [nvarchar](450) NULL,
	[nvarchar_40] [nvarchar](450) NULL,
	[nvarchar_41] [nvarchar](450) NULL,
	[nvarchar_42] [nvarchar](450) NULL,
	[nvarchar_43] [nvarchar](450) NULL,
	[nvarchar_44] [nvarchar](450) NULL,
	[nvarchar_45] [nvarchar](450) NULL,
	[nvarchar_46] [nvarchar](450) NULL,
	[nvarchar_47] [nvarchar](450) NULL,
	[nvarchar_48] [nvarchar](450) NULL,
	[nvarchar_49] [nvarchar](450) NULL,
	[nvarchar_50] [nvarchar](450) NULL,
	[nvarchar_51] [nvarchar](450) NULL,
	[nvarchar_52] [nvarchar](450) NULL,
	[nvarchar_53] [nvarchar](450) NULL,
	[nvarchar_54] [nvarchar](450) NULL,
	[nvarchar_55] [nvarchar](450) NULL,
	[nvarchar_56] [nvarchar](450) NULL,
	[nvarchar_57] [nvarchar](450) NULL,
	[nvarchar_58] [nvarchar](450) NULL,
	[nvarchar_59] [nvarchar](450) NULL,
	[nvarchar_60] [nvarchar](450) NULL,
	[nvarchar_61] [nvarchar](450) NULL,
	[nvarchar_62] [nvarchar](450) NULL,
	[nvarchar_63] [nvarchar](450) NULL,
	[nvarchar_64] [nvarchar](450) NULL,
	[nvarchar_65] [nvarchar](450) NULL,
	[nvarchar_66] [nvarchar](450) NULL,
	[nvarchar_67] [nvarchar](450) NULL,
	[nvarchar_68] [nvarchar](450) NULL,
	[nvarchar_69] [nvarchar](450) NULL,
	[nvarchar_70] [nvarchar](450) NULL,
	[nvarchar_71] [nvarchar](450) NULL,
	[nvarchar_72] [nvarchar](450) NULL,
	[nvarchar_73] [nvarchar](450) NULL,
	[nvarchar_74] [nvarchar](450) NULL,
	[nvarchar_75] [nvarchar](450) NULL,
	[nvarchar_76] [nvarchar](450) NULL,
	[nvarchar_77] [nvarchar](450) NULL,
	[nvarchar_78] [nvarchar](450) NULL,
	[nvarchar_79] [nvarchar](450) NULL,
	[nvarchar_80] [nvarchar](450) NULL,
	[int_1] [int] NULL,
	[int_2] [int] NULL,
	[int_3] [int] NULL,
	[int_4] [int] NULL,
	[int_5] [int] NULL,
	[int_6] [int] NULL,
	[int_7] [int] NULL,
	[int_8] [int] NULL,
	[int_9] [int] NULL,
	[int_10] [int] NULL,
	[int_11] [int] NULL,
	[int_12] [int] NULL,
	[int_13] [int] NULL,
	[int_14] [int] NULL,
	[int_15] [int] NULL,
	[int_16] [int] NULL,
	[int_17] [int] NULL,
	[int_18] [int] NULL,
	[int_19] [int] NULL,
	[int_20] [int] NULL,
	[int_21] [int] NULL,
	[int_22] [int] NULL,
	[int_23] [int] NULL,
	[int_24] [int] NULL,
	[int_25] [int] NULL,
	[int_26] [int] NULL,
	[int_27] [int] NULL,
	[int_28] [int] NULL,
	[int_29] [int] NULL,
	[int_30] [int] NULL,
	[int_31] [int] NULL,
	[int_32] [int] NULL,
	[int_33] [int] NULL,
	[int_34] [int] NULL,
	[int_35] [int] NULL,
	[int_36] [int] NULL,
	[int_37] [int] NULL,
	[int_38] [int] NULL,
	[int_39] [int] NULL,
	[int_40] [int] NULL,
	[datetime_1] [datetime] NULL,
	[datetime_2] [datetime] NULL,
	[datetime_3] [datetime] NULL,
	[datetime_4] [datetime] NULL,
	[datetime_5] [datetime] NULL,
	[datetime_6] [datetime] NULL,
	[datetime_7] [datetime] NULL,
	[datetime_8] [datetime] NULL,
	[datetime_9] [datetime] NULL,
	[datetime_10] [datetime] NULL,
	[datetime_11] [datetime] NULL,
	[datetime_12] [datetime] NULL,
	[datetime_13] [datetime] NULL,
	[datetime_14] [datetime] NULL,
	[datetime_15] [datetime] NULL,
	[datetime_16] [datetime] NULL,
	[datetime_17] [datetime] NULL,
	[datetime_18] [datetime] NULL,
	[datetime_19] [datetime] NULL,
	[datetime_20] [datetime] NULL,
	[datetime_21] [datetime] NULL,
	[datetime_22] [datetime] NULL,
	[datetime_23] [datetime] NULL,
	[datetime_24] [datetime] NULL,
	[datetime_25] [datetime] NULL,
	[money_1] [money] NULL,
	[money_2] [money] NULL,
	[money_3] [money] NULL,
	[money_4] [money] NULL,
	[money_5] [money] NULL,
	[money_6] [money] NULL,
	[money_7] [money] NULL,
	[money_8] [money] NULL,
	[money_9] [money] NULL,
	[money_10] [money] NULL,
	[money_11] [money] NULL,
	[money_12] [money] NULL,
	[money_13] [money] NULL,
	[money_14] [money] NULL,
	[money_15] [money] NULL,
	[RowGuid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Timestamp] [timestamp] NOT NULL,
 CONSTRAINT [PK_FlatProperties_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Versions]    Script Date: 26/08/2019 16:30:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Versions](
	[VersionId] [int] IDENTITY(1,1) NOT NULL,
	[NodeId] [int] NOT NULL,
	[MajorNumber] [smallint] NOT NULL,
	[MinorNumber] [smallint] NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[CreatedById] [int] NOT NULL,
	[ModificationDate] [datetime] NOT NULL,
	[ModifiedById] [int] NOT NULL,
	[Status] [smallint] NOT NULL,
	[IndexDocument] [varbinary](max) NULL,
	[ChangedData] [ntext] NULL,
	[RowGuid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Timestamp] [timestamp] NOT NULL,
 CONSTRAINT [PK_Versions] PRIMARY KEY CLUSTERED 
(
	[VersionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  View [dbo].[NodeInfoView]    Script Date: 26/08/2019 16:30:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[NodeInfoView]
AS
SELECT     N.NodeId, T.Name AS Type, N.Name, N.Path, N.LockedById, V.VersionId, CONVERT(Varchar, V.MajorNumber) + '.' + CONVERT(Varchar, V.MinorNumber) 
                      + '.' + CASE [Status] WHEN 1 THEN 'A' WHEN 2 THEN 'L' WHEN 4 THEN 'D' WHEN 8 THEN 'R' WHEN 16 THEN 'P' ELSE '' END AS Version, 
                      CASE V.VersionId WHEN N .LastMajorVersionId THEN 'TRUE' ELSE 'false' END AS LastPub, 
                      CASE V.VersionId WHEN N .LastMinorVersionId THEN 'TRUE' ELSE 'false' END AS LastWork, 
                      CASE F.int_4 WHEN 1 THEN 'off' WHEN 2 THEN 'ON' ELSE 'inh' END AS AMode, 
                      CASE F.int_1 WHEN 1 THEN 'None' WHEN 2 THEN 'Major' WHEN 3 THEN 'Full' ELSE 'inh' END AS VMode
FROM         dbo.Versions AS V INNER JOIN
                      dbo.Nodes AS N ON V.NodeId = N.NodeId INNER JOIN
                      dbo.SchemaPropertySets AS T ON N.NodeTypeId = T.PropertySetId LEFT OUTER JOIN
                      dbo.FlatProperties AS F ON V.VersionId = F.VersionId AND F.Page = 0
GO
/****** Object:  Table [dbo].[SchemaDataTypes]    Script Date: 26/08/2019 16:30:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SchemaDataTypes](
	[DataTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[RowGuid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Timestamp] [timestamp] NOT NULL,
 CONSTRAINT [PK_DataTypes] PRIMARY KEY CLUSTERED 
(
	[DataTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SchemaPropertyTypes]    Script Date: 26/08/2019 16:30:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SchemaPropertyTypes](
	[PropertyTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](450) NOT NULL,
	[DataTypeId] [int] NOT NULL,
	[Mapping] [int] NOT NULL,
	[IsContentListProperty] [tinyint] NOT NULL,
	[RowGuid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Timestamp] [timestamp] NOT NULL,
 CONSTRAINT [PK_PropertySlots] PRIMARY KEY CLUSTERED 
(
	[PropertyTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[PropertyInfoView]    Script Date: 26/08/2019 16:30:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[PropertyInfoView]
AS
WITH PropInfo(PropId, Page, [Table], [Column]) AS (
	SELECT     PropertyTypeId AS PropId, 
		CASE PT.DataTypeId WHEN 1 THEN PT.Mapping / 80 WHEN 3 THEN PT.Mapping / 40 WHEN 5 THEN PT.Mapping / 25 WHEN 4 THEN PT.Mapping / 15 ELSE NULL END AS Page,
		CASE PT.DataTypeId WHEN 2 THEN 'Text' WHEN 6 THEN 'Binary'  WHEN 7 THEN 'Reference'  ELSE 'Flat' END AS [Table],
		CASE PT.DataTypeId WHEN 1 THEN 'nvarchar_' + CONVERT(VARCHAR, PT.Mapping % 80 + 1) WHEN 2 THEN NULL WHEN 3 THEN 'int_' + CONVERT(VARCHAR, PT.Mapping % 40 + 1) WHEN 4 THEN 'money_' + CONVERT(VARCHAR, PT.Mapping % 15 + 1) WHEN 5 THEN 'datetime_' + CONVERT(VARCHAR, PT.Mapping % 25 + 1) WHEN 6 THEN NULL WHEN 7 THEN NULL ELSE NULL END AS [Column]
    FROM SchemaPropertyTypes AS PT)
SELECT
	PT.PropertyTypeId AS Id, PT.Name, DT.Name AS [Type], PT.Mapping, PT.IsContentListProperty AS IsList, P.[Table], P.Page, P.[Column]
FROM
	SchemaPropertyTypes PT 
		INNER JOIN SchemaDataTypes DT ON DT.DataTypeId = PT.DataTypeId
			INNER JOIN PropInfo P ON P.PropId = PT.PropertyTypeId
GO
/****** Object:  Table [dbo].[SchemaPropertySetTypes]    Script Date: 26/08/2019 16:30:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SchemaPropertySetTypes](
	[PropertySetTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](450) NOT NULL,
	[RowGuid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Timestamp] [timestamp] NOT NULL,
 CONSTRAINT [PK_PropertySetTypes] PRIMARY KEY CLUSTERED 
(
	[PropertySetTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SchemaPropertySetsPropertyTypes]    Script Date: 26/08/2019 16:30:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SchemaPropertySetsPropertyTypes](
	[PropertyTypeId] [int] NOT NULL,
	[PropertySetId] [int] NOT NULL,
	[IsDeclared] [tinyint] NOT NULL,
	[RowGuid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Timestamp] [timestamp] NOT NULL,
 CONSTRAINT [PK_SchemaPropertySetsPropertyTypes] PRIMARY KEY CLUSTERED 
(
	[PropertyTypeId] ASC,
	[PropertySetId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[PropertySetsInfoView]    Script Date: 26/08/2019 16:30:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[PropertySetsInfoView]
AS
SELECT PS.PropertySetId, PS.ParentId, PS.Name AS PropertySet, PSP.Name AS Parent, 
	PST.Name AS SetType, PT.Name AS Property, DT.Name AS DataType, PT.Mapping, Link.IsDeclared
FROM SchemaPropertySets AS PS
	INNER JOIN SchemaPropertySetTypes PST ON PS.PropertySetTypeId = PST.PropertySetTypeId
	LEFT OUTER JOIN SchemaPropertySets PSP ON PS.ParentId = PSP.PropertySetId
	LEFT OUTER JOIN SchemaPropertyTypes PT
		INNER JOIN SchemaPropertySetsPropertyTypes Link ON PT.PropertyTypeId = Link.PropertyTypeId
		INNER JOIN SchemaDataTypes DT ON PT.DataTypeId = DT.DataTypeId
	ON PS.PropertySetId = Link.PropertySetId
GO
/****** Object:  Table [dbo].[ReferenceProperties]    Script Date: 26/08/2019 16:30:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReferenceProperties](
	[ReferencePropertyId] [int] IDENTITY(1,1) NOT NULL,
	[VersionId] [int] NOT NULL,
	[PropertyTypeId] [int] NOT NULL,
	[ReferredNodeId] [int] NOT NULL,
	[RowGuid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Timestamp] [timestamp] NOT NULL,
 CONSTRAINT [PK_ReferenceProperties] PRIMARY KEY CLUSTERED 
(
	[ReferencePropertyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[ReferencesInfoView]    Script Date: 26/08/2019 16:30:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ReferencesInfoView]
AS
--SELECT     Nodes.Name AS SrcName, 'V' + CAST(Versions.MajorNumber AS nvarchar(20)) + '.' + CAST(Versions.MinorNumber AS nvarchar(20)) AS SrcVer, 
--                      Slots.Name AS RelType, RefNodes.Name AS TargetName, Nodes.NodeId AS SrcId, RefNodes.NodeId AS TargetId, Nodes.Path AS SrcPath, 
--                      RefNodes.Path AS TargetPath
--FROM         dbo.ReferenceProperties AS Refs INNER JOIN
--                      dbo.Versions AS Versions ON Refs.VersionId = Versions.VersionId INNER JOIN
--                      dbo.Nodes AS Nodes ON Versions.NodeId = Nodes.NodeId INNER JOIN
--                      dbo.Nodes AS RefNodes ON Refs.ReferredNodeId = RefNodes.NodeId INNER JOIN
--                      dbo.SchemaPropertyTypes AS Slots ON Refs.PropertyTypeId = Slots.PropertyTypeId

-- ReferenceProperties
	SELECT     Nodes.Name AS SrcName, 'V' + CAST(Versions.MajorNumber AS nvarchar(20)) + '.' + CAST(Versions.MinorNumber AS nvarchar(20)) AS SrcVer, 
						  Slots.Name AS RelType, RefNodes.Name AS TargetName, Nodes.NodeId AS SrcId, RefNodes.NodeId AS TargetId, Nodes.Path AS SrcPath, 
						  RefNodes.Path AS TargetPath
	FROM         dbo.ReferenceProperties AS Refs INNER JOIN
						  dbo.Versions AS Versions ON Refs.VersionId = Versions.VersionId INNER JOIN
						  dbo.Nodes AS Nodes ON Versions.NodeId = Nodes.NodeId INNER JOIN
						  dbo.Nodes AS RefNodes ON Refs.ReferredNodeId = RefNodes.NodeId INNER JOIN
						  dbo.SchemaPropertyTypes AS Slots ON Refs.PropertyTypeId = Slots.PropertyTypeId
UNION ALL
-- Parent
	SELECT     Nodes.Name AS SrcName, 'V*.*' AS SrcVer, 'Parent' AS RelType, RefNodes.Name AS TargetName, Nodes.NodeId AS SrcId, 
						  RefNodes.NodeId AS TargetId, Nodes.Path AS SrcPath, RefNodes.Path AS TargetPath
	FROM         dbo.Nodes AS Nodes INNER JOIN
						  dbo.Nodes AS RefNodes ON Nodes.ParentNodeId = RefNodes.NodeId
UNION ALL
-- LockedById
	SELECT     Nodes.Name AS SrcName, 'V*.*' AS SrcVer, 'LockedById' AS RelType, RefNodes.Name AS TargetName, Nodes.NodeId AS SrcId, 
						  RefNodes.NodeId AS TargetId, Nodes.Path AS SrcPath, RefNodes.Path AS TargetPath
	FROM         dbo.Nodes AS Nodes INNER JOIN
						  dbo.Nodes AS RefNodes ON Nodes.LockedById = RefNodes.NodeId
UNION ALL
-- CreatedById
	SELECT     Nodes.Name AS SrcName, 'V' + CAST(Versions.MajorNumber AS nvarchar(20)) + '.' + CAST(Versions.MinorNumber AS nvarchar(20)) AS SrcVer, 
						  'CreatedById', RefNodes.Name AS TargetName, Nodes.NodeId AS SrcId, RefNodes.NodeId AS TargetId, Nodes.Path AS SrcPath, 
						  RefNodes.Path AS TargetPath
	FROM         dbo.Nodes AS Nodes INNER JOIN
		                  dbo.Versions AS Versions ON Nodes.NodeId = Versions.NodeId INNER JOIN
			              dbo.Nodes AS RefNodes ON Versions.CreatedById = RefNodes.NodeId
UNION ALL
-- ModifiedById
	SELECT     Nodes.Name AS SrcName, 'V' + CAST(Versions.MajorNumber AS nvarchar(20)) + '.' + CAST(Versions.MinorNumber AS nvarchar(20)) AS SrcVer, 
						  'ModifiedById', RefNodes.Name AS TargetName, Nodes.NodeId AS SrcId, RefNodes.NodeId AS TargetId, Nodes.Path AS SrcPath, 
						  RefNodes.Path AS TargetPath
	FROM         dbo.Nodes AS Nodes INNER JOIN
		                  dbo.Versions AS Versions ON Nodes.NodeId = Versions.NodeId INNER JOIN
			              dbo.Nodes AS RefNodes ON Versions.ModifiedById = RefNodes.NodeId
GO
/****** Object:  Table [dbo].[EFEntities]    Script Date: 26/08/2019 16:30:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EFEntities](
	[Id] [int] NOT NULL,
	[OwnerId] [int] NULL,
	[ParentId] [int] NULL,
	[IsInherited] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.EFEntities] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EFEntries]    Script Date: 26/08/2019 16:30:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EFEntries](
	[EFEntityId] [int] NOT NULL,
	[IdentityId] [int] NOT NULL,
	[LocalOnly] [bit] NOT NULL,
	[AllowBits] [bigint] NOT NULL,
	[DenyBits] [bigint] NOT NULL,
 CONSTRAINT [PK_dbo.EFEntries] PRIMARY KEY CLUSTERED 
(
	[EFEntityId] ASC,
	[IdentityId] ASC,
	[LocalOnly] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[PermissionInfoView]    Script Date: 26/08/2019 16:30:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[PermissionInfoView]
AS
SELECT n.Path, e1.IsInherited, i.Path IdentityPath, e.LocalOnly,
	(SELECT CASE (DenyBits & 0x8000000000000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x8000000000000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) +
	(SELECT CASE (DenyBits & 0x4000000000000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x4000000000000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) +
	(SELECT CASE (DenyBits & 0x2000000000000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x2000000000000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) +
	(SELECT CASE (DenyBits & 0x1000000000000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x1000000000000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) +
	(SELECT CASE (DenyBits & 0x0800000000000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x0800000000000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) +
	(SELECT CASE (DenyBits & 0x0400000000000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x0400000000000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) +
	(SELECT CASE (DenyBits & 0x0200000000000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x0200000000000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) +
	(SELECT CASE (DenyBits & 0x0100000000000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x0100000000000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) +
	(SELECT CASE (DenyBits & 0x0080000000000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x0080000000000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) +
	(SELECT CASE (DenyBits & 0x0040000000000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x0040000000000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) +
	(SELECT CASE (DenyBits & 0x0020000000000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x0020000000000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) +
	(SELECT CASE (DenyBits & 0x0010000000000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x0010000000000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) +
	(SELECT CASE (DenyBits & 0x0008000000000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x0008000000000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) +
	(SELECT CASE (DenyBits & 0x0004000000000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x0004000000000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) +
	(SELECT CASE (DenyBits & 0x0002000000000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x0002000000000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) +
	(SELECT CASE (DenyBits & 0x0001000000000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x0001000000000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) +
	(SELECT CASE (DenyBits & 0x0000800000000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x0000800000000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) +
	(SELECT CASE (DenyBits & 0x0000400000000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x0000400000000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) +
	(SELECT CASE (DenyBits & 0x0000200000000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x0000200000000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) +
	(SELECT CASE (DenyBits & 0x0000100000000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x0000100000000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) +
	(SELECT CASE (DenyBits & 0x0000080000000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x0000080000000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) +
	(SELECT CASE (DenyBits & 0x0000040000000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x0000040000000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) +
	(SELECT CASE (DenyBits & 0x0000020000000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x0000020000000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) +
	(SELECT CASE (DenyBits & 0x0000010000000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x0000010000000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) +
	(SELECT CASE (DenyBits & 0x0000008000000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x0000008000000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) +
	(SELECT CASE (DenyBits & 0x0000004000000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x0000004000000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) +
	(SELECT CASE (DenyBits & 0x0000002000000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x0000002000000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) +
	(SELECT CASE (DenyBits & 0x0000001000000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x0000001000000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) +
	(SELECT CASE (DenyBits & 0x0000000800000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x0000000800000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) +
	(SELECT CASE (DenyBits & 0x0000000400000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x0000000400000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) +
	(SELECT CASE (DenyBits & 0x0000000200000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x0000000200000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) +
	(SELECT CASE (DenyBits & 0x0000000100000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x0000000100000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) AS CustomBits,
	(SELECT CASE (DenyBits & 0x80000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x80000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) +
	(SELECT CASE (DenyBits & 0x40000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x40000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) +
	(SELECT CASE (DenyBits & 0x20000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x20000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) +
	(SELECT CASE (DenyBits & 0x10000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x10000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) +
	(SELECT CASE (DenyBits & 0x08000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x08000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) +
	(SELECT CASE (DenyBits & 0x04000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x04000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) +
	(SELECT CASE (DenyBits & 0x02000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x02000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) +
	(SELECT CASE (DenyBits & 0x01000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x01000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) +
	(SELECT CASE (DenyBits & 0x00800000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x00800000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) +
	(SELECT CASE (DenyBits & 0x00400000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x00400000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) +
	(SELECT CASE (DenyBits & 0x00200000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x00200000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) +
	(SELECT CASE (DenyBits & 0x00100000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x00100000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) +
	(SELECT CASE (DenyBits & 0x00080000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x00080000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) +
	(SELECT CASE (DenyBits & 0x00040000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x00040000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) +
	(SELECT CASE (DenyBits & 0x00020000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x00020000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) +
	(SELECT CASE (DenyBits & 0x00010000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x00010000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) +
	(SELECT CASE (DenyBits & 0x00008000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x00008000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) +
	(SELECT CASE (DenyBits & 0x00004000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x00004000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) +
	(SELECT CASE (DenyBits & 0x00002000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x00002000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) +
	(SELECT CASE (DenyBits & 0x00001000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x00001000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) +
	(SELECT CASE (DenyBits & 0x00000800) WHEN 0 THEN (SELECT CASE (AllowBits & 0x00000800) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) +
	(SELECT CASE (DenyBits & 0x00000400) WHEN 0 THEN (SELECT CASE (AllowBits & 0x00000400) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) +
	(SELECT CASE (DenyBits & 0x00000200) WHEN 0 THEN (SELECT CASE (AllowBits & 0x00000200) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) +
	(SELECT CASE (DenyBits & 0x00000100) WHEN 0 THEN (SELECT CASE (AllowBits & 0x00000100) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) +
	(SELECT CASE (DenyBits & 0x00000080) WHEN 0 THEN (SELECT CASE (AllowBits & 0x00000080) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) +
	(SELECT CASE (DenyBits & 0x00000040) WHEN 0 THEN (SELECT CASE (AllowBits & 0x00000040) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) +
	(SELECT CASE (DenyBits & 0x00000020) WHEN 0 THEN (SELECT CASE (AllowBits & 0x00000020) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) +
	(SELECT CASE (DenyBits & 0x00000010) WHEN 0 THEN (SELECT CASE (AllowBits & 0x00000010) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) +
	(SELECT CASE (DenyBits & 0x00000008) WHEN 0 THEN (SELECT CASE (AllowBits & 0x00000008) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) +
	(SELECT CASE (DenyBits & 0x00000004) WHEN 0 THEN (SELECT CASE (AllowBits & 0x00000004) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) +
	(SELECT CASE (DenyBits & 0x00000002) WHEN 0 THEN (SELECT CASE (AllowBits & 0x00000002) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) +
	(SELECT CASE (DenyBits & 0x00000001) WHEN 0 THEN (SELECT CASE (AllowBits & 0x00000001) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) As SystemBits,
	e.EFEntityId, e.IdentityId, e.AllowBits, e.DenyBits,
	(SELECT CASE (DenyBits & 0x00000001) WHEN 0 THEN (SELECT CASE (AllowBits & 0x00000001) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) AS See,
	(SELECT CASE (DenyBits & 0x00000002) WHEN 0 THEN (SELECT CASE (AllowBits & 0x00000002) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) AS Pre,
	(SELECT CASE (DenyBits & 0x00000004) WHEN 0 THEN (SELECT CASE (AllowBits & 0x00000004) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) AS PWa,
	(SELECT CASE (DenyBits & 0x00000008) WHEN 0 THEN (SELECT CASE (AllowBits & 0x00000008) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) AS PRd,
	(SELECT CASE (DenyBits & 0x00000010) WHEN 0 THEN (SELECT CASE (AllowBits & 0x00000010) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) AS Opn,
	(SELECT CASE (DenyBits & 0x00000020) WHEN 0 THEN (SELECT CASE (AllowBits & 0x00000020) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) AS OpM,
	(SELECT CASE (DenyBits & 0x00000040) WHEN 0 THEN (SELECT CASE (AllowBits & 0x00000040) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) AS Sav,
	(SELECT CASE (DenyBits & 0x00000080) WHEN 0 THEN (SELECT CASE (AllowBits & 0x00000080) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) AS Pub,
	(SELECT CASE (DenyBits & 0x00000100) WHEN 0 THEN (SELECT CASE (AllowBits & 0x00000100) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) AS Chk,
	(SELECT CASE (DenyBits & 0x00000200) WHEN 0 THEN (SELECT CASE (AllowBits & 0x00000200) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) AS [Add],
	(SELECT CASE (DenyBits & 0x00000400) WHEN 0 THEN (SELECT CASE (AllowBits & 0x00000400) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) AS Apr,
	(SELECT CASE (DenyBits & 0x00000800) WHEN 0 THEN (SELECT CASE (AllowBits & 0x00000800) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) AS Del,
	(SELECT CASE (DenyBits & 0x00001000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x00001000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) AS ReV,
	(SELECT CASE (DenyBits & 0x00002000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x00002000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) AS DeV,
	(SELECT CASE (DenyBits & 0x00004000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x00004000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) AS ReP,
	(SELECT CASE (DenyBits & 0x00008000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x00008000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) AS WrP,
	(SELECT CASE (DenyBits & 0x00010000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x00010000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) AS Run,
	(SELECT CASE (DenyBits & 0x00020000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x00020000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) AS LST,
	(SELECT CASE (DenyBits & 0x00040000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x00040000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) AS Own,
	(SELECT CASE (DenyBits & 0x00080000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x00080000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) AS U13,
	(SELECT CASE (DenyBits & 0x00100000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x00100000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) AS U12,
	(SELECT CASE (DenyBits & 0x00200000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x00200000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) AS U11,
	(SELECT CASE (DenyBits & 0x00400000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x00400000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) AS U10,
	(SELECT CASE (DenyBits & 0x00800000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x00800000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) AS U09,
	(SELECT CASE (DenyBits & 0x01000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x01000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) AS U08,
	(SELECT CASE (DenyBits & 0x02000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x02000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) AS U07,
	(SELECT CASE (DenyBits & 0x04000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x04000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) AS U06,
	(SELECT CASE (DenyBits & 0x08000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x08000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) AS U05,
	(SELECT CASE (DenyBits & 0x10000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x10000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) AS U04,
	(SELECT CASE (DenyBits & 0x20000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x20000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) AS U03,
	(SELECT CASE (DenyBits & 0x40000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x40000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) AS U02,
	(SELECT CASE (DenyBits & 0x80000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x80000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) AS U01,

	(SELECT CASE (DenyBits & 0x0000000100000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x0000000100000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) AS C01,
	(SELECT CASE (DenyBits & 0x0000000200000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x0000000200000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) AS C02,
	(SELECT CASE (DenyBits & 0x0000000400000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x0000000400000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) AS C03,
	(SELECT CASE (DenyBits & 0x0000000800000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x0000000800000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) AS C04,
	(SELECT CASE (DenyBits & 0x0000001000000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x0000001000000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) AS C05,
	(SELECT CASE (DenyBits & 0x0000002000000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x0000002000000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) AS C06,
	(SELECT CASE (DenyBits & 0x0000004000000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x0000004000000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) AS C07,
	(SELECT CASE (DenyBits & 0x0000008000000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x0000008000000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) AS C08,
	(SELECT CASE (DenyBits & 0x0000010000000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x0000010000000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) AS C09,
	(SELECT CASE (DenyBits & 0x0000020000000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x0000020000000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) AS C10,
	(SELECT CASE (DenyBits & 0x0000040000000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x0000040000000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) AS C11,
	(SELECT CASE (DenyBits & 0x0000080000000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x0000080000000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) AS C12,
	(SELECT CASE (DenyBits & 0x0000100000000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x0000100000000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) AS C13,
	(SELECT CASE (DenyBits & 0x0000200000000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x0000200000000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) AS C14,
	(SELECT CASE (DenyBits & 0x0000400000000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x0000400000000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) AS C15,
	(SELECT CASE (DenyBits & 0x0000800000000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x0000800000000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) AS C16,
	(SELECT CASE (DenyBits & 0x0001000000000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x0001000000000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) AS C17,
	(SELECT CASE (DenyBits & 0x0002000000000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x0002000000000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) AS C18,
	(SELECT CASE (DenyBits & 0x0004000000000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x0004000000000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) AS C19,
	(SELECT CASE (DenyBits & 0x0008000000000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x0008000000000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) AS C20,
	(SELECT CASE (DenyBits & 0x0010000000000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x0010000000000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) AS C21,
	(SELECT CASE (DenyBits & 0x0020000000000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x0020000000000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) AS C22,
	(SELECT CASE (DenyBits & 0x0040000000000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x0040000000000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) AS C23,
	(SELECT CASE (DenyBits & 0x0080000000000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x0080000000000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) AS C24,
	(SELECT CASE (DenyBits & 0x0100000000000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x0100000000000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) AS C25,
	(SELECT CASE (DenyBits & 0x0200000000000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x0200000000000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) AS C26,
	(SELECT CASE (DenyBits & 0x0400000000000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x0400000000000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) AS C27,
	(SELECT CASE (DenyBits & 0x0800000000000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x0800000000000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) AS C28,
	(SELECT CASE (DenyBits & 0x1000000000000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x1000000000000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) AS C29,
	(SELECT CASE (DenyBits & 0x2000000000000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x2000000000000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) AS C30,
	(SELECT CASE (DenyBits & 0x4000000000000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x4000000000000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) AS C31,
	(SELECT CASE (DenyBits & 0x8000000000000000) WHEN 0 THEN (SELECT CASE (AllowBits & 0x8000000000000000) WHEN 0 THEN '_' ELSE '+' END) ELSE '-' END) AS C32

FROM EFEntries e
	join EFEntities e1 on e.EFEntityId = e1.Id
	join Nodes n on e.EFEntityId = n.NodeId
	join Nodes i on e.IdentityId = i.NodeId
GO
/****** Object:  View [dbo].[SysSearchView]    Script Date: 26/08/2019 16:30:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[SysSearchView]
AS
SELECT
	N.NodeId, 
	N.NodeTypeId, 
	N.ContentListId, 
	N.ContentListTypeId, 
	N.CreatingInProgress, 
	N.IsDeleted, 
	N.IsInherited, 
	N.ParentNodeId, 
	N.Name, 
	N.Path, 
	N.[Index],
	V.VersionId, 
	V.MajorNumber, 
	V.MinorNumber, 
	V.CreationDate, 
	V.CreatedById, 
	V.ModificationDate, 
	V.ModifiedById, 
	V.Status,
	N.Locked, 
	N.LockedById, 
	N.ETag, 
	N.LockType, 
	N.LockTimeout, 
	N.LockDate, 
	N.LockToken, 
	N.LastLockUpdate
FROM dbo.Nodes AS N 
	INNER JOIN dbo.Versions AS V ON N.LastMinorVersionId = V.VersionId OR N.LastMajorVersionId = V.VersionId
GO
/****** Object:  View [dbo].[SysSearchWithFlatsView]    Script Date: 26/08/2019 16:30:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[SysSearchWithFlatsView]
AS
SELECT
N.NodeId, 
N.NodeTypeId, 
N.ContentListId, 
N.ContentListTypeId, 
N.CreatingInProgress,
N.IsDeleted, 
N.IsInherited,
N.ParentNodeId, 
N.Name, 
N.Path, 
V.VersionId, 
V.MajorNumber, 
V.MinorNumber, 
V.CreationDate, 
V.CreatedById, 
V.ModificationDate, 
V.ModifiedById, 
V.Status,
N.Locked, 
N.LockedById, 
N.ETag, 
N.LockType, 
N.LockTimeout, 
N.LockDate, 
N.LockToken, 
N.LastLockUpdate, 
N.[Index],
		F.Page, F.nvarchar_1, F.nvarchar_2, F.nvarchar_3, F.nvarchar_4, F.nvarchar_5, F.nvarchar_6, F.nvarchar_7, 
		F.nvarchar_8, F.nvarchar_9, F.nvarchar_10, F.nvarchar_11, F.nvarchar_12, F.nvarchar_13, F.nvarchar_14, F.nvarchar_15, F.nvarchar_16, 
		F.nvarchar_17, F.nvarchar_18, F.nvarchar_19, F.nvarchar_20, F.nvarchar_21, F.nvarchar_22, F.nvarchar_23, F.nvarchar_24, F.nvarchar_25, 
		F.nvarchar_26, F.nvarchar_27, F.nvarchar_28, F.nvarchar_29, F.nvarchar_30, F.nvarchar_31, F.nvarchar_32, F.nvarchar_33, F.nvarchar_34, 
		F.nvarchar_35, F.nvarchar_36, F.nvarchar_37, F.nvarchar_38, F.nvarchar_39, F.nvarchar_40, F.nvarchar_41, F.nvarchar_42, F.nvarchar_43, 
		F.nvarchar_44, F.nvarchar_45, F.nvarchar_46, F.nvarchar_47, F.nvarchar_48, F.nvarchar_49, F.nvarchar_50, F.nvarchar_51, F.nvarchar_52, 
		F.nvarchar_53, F.nvarchar_54, F.nvarchar_55, F.nvarchar_56, F.nvarchar_57, F.nvarchar_58, F.nvarchar_59, F.nvarchar_60, F.nvarchar_61, 
		F.nvarchar_62, F.nvarchar_63, F.nvarchar_64, F.nvarchar_65, F.nvarchar_66, F.nvarchar_67, F.nvarchar_68, F.nvarchar_69, F.nvarchar_70, 
		F.nvarchar_71, F.nvarchar_72, F.nvarchar_73, F.nvarchar_74, F.nvarchar_75, F.nvarchar_76, F.nvarchar_77, F.nvarchar_78, F.nvarchar_79, 
		F.nvarchar_80, F.int_1, F.int_2, F.int_3, F.int_4, F.int_5, F.int_6, F.int_7, F.int_8, F.int_9, F.int_10, F.int_11, F.int_12, F.int_13, F.int_14, F.int_15, 
		F.int_16, F.int_17, F.int_18, F.int_19, F.int_20, F.int_21, F.int_22, F.int_23, F.int_24, F.int_25, F.int_26, F.int_27, F.int_28, F.int_29, F.int_30, F.int_31, 
		F.int_32, F.int_33, F.int_34, F.int_35, F.int_36, F.int_37, F.int_38, F.int_39, F.int_40, F.datetime_1, F.datetime_2, F.datetime_3, F.datetime_4, 
		F.datetime_5, F.datetime_6, F.datetime_7, F.datetime_8, F.datetime_9, F.datetime_10, F.datetime_11, F.datetime_12, F.datetime_13, F.datetime_14, 
		F.datetime_15, F.datetime_16, F.datetime_17, F.datetime_18, F.datetime_19, F.datetime_20, F.datetime_21, F.datetime_22, F.datetime_23, 
		F.datetime_24, F.datetime_25, F.money_1, F.money_2, F.money_3, F.money_4, F.money_5, F.money_6, F.money_7, F.money_8, F.money_9, 
		F.money_10, F.money_11, F.money_12, F.money_13, F.money_14, F.money_15
FROM         dbo.Nodes AS N 
INNER JOIN dbo.SysSearchView AS S on N.NodeId = S.NodeId
INNER JOIN dbo.Versions AS V ON N.LastMinorVersionId = V.VersionId OR N.LastMajorVersionId = V.VersionId
LEFT OUTER JOIN dbo.FlatProperties AS F ON V.VersionId = F.VersionId
GO
/****** Object:  Table [dbo].[BinaryProperties]    Script Date: 26/08/2019 16:30:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BinaryProperties](
	[BinaryPropertyId] [int] IDENTITY(1,1) NOT NULL,
	[VersionId] [int] NULL,
	[PropertyTypeId] [int] NULL,
	[FileId] [int] NOT NULL,
 CONSTRAINT [PK_BinaryProperties] PRIMARY KEY CLUSTERED 
(
	[BinaryPropertyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EFMemberships]    Script Date: 26/08/2019 16:30:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EFMemberships](
	[GroupId] [int] NOT NULL,
	[MemberId] [int] NOT NULL,
	[IsUser] [bit] NOT NULL,
 CONSTRAINT [PK_dbo.EFMemberships] PRIMARY KEY CLUSTERED 
(
	[GroupId] ASC,
	[MemberId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EFMessages]    Script Date: 26/08/2019 16:30:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EFMessages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SavedBy] [nvarchar](max) NULL,
	[SavedAt] [datetime] NOT NULL,
	[ExecutionState] [nvarchar](max) NULL,
	[LockedBy] [nvarchar](max) NULL,
	[LockedAt] [datetime] NULL,
	[Body] [varbinary](max) NULL,
 CONSTRAINT [PK_dbo.EFMessages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Files]    Script Date: 26/08/2019 16:30:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Files](
	[FileId] [int] IDENTITY(1,1) NOT NULL,
	[ContentType] [nvarchar](450) NOT NULL,
	[FileNameWithoutExtension] [nvarchar](450) NULL,
	[Extension] [nvarchar](50) NOT NULL,
	[Size] [bigint] NOT NULL,
	[Checksum] [varchar](200) NULL,
	[Stream] [varbinary](max) NULL,
	[CreationDate] [datetime] NOT NULL,
	[RowGuid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Timestamp] [timestamp] NOT NULL,
	[Staging] [bit] NULL,
	[StagingVersionId] [int] NULL,
	[StagingPropertyTypeId] [int] NULL,
	[IsDeleted] [bit] NULL,
	[BlobProvider] [nvarchar](450) NULL,
	[BlobProviderData] [nvarchar](max) NULL,
 CONSTRAINT [PK_Files] PRIMARY KEY CLUSTERED 
(
	[FileId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[RowGuid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IndexBackup]    Script Date: 26/08/2019 16:30:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IndexBackup](
	[IndexBackupId] [int] IDENTITY(1,1) NOT NULL,
	[BackupNumber] [int] NOT NULL,
	[IsActive] [tinyint] NOT NULL,
	[BackupDate] [datetime] NOT NULL,
	[ComputerName] [nvarchar](100) NOT NULL,
	[AppDomain] [nvarchar](500) NOT NULL,
	[BackupFile] [varbinary](max) NULL,
	[RowGuid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Timestamp] [timestamp] NOT NULL,
 CONSTRAINT [PK_IndexBackup] PRIMARY KEY CLUSTERED 
(
	[IndexBackupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IndexBackup2]    Script Date: 26/08/2019 16:30:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IndexBackup2](
	[IndexBackupId] [int] IDENTITY(1,1) NOT NULL,
	[BackupNumber] [int] NOT NULL,
	[IsActive] [tinyint] NOT NULL,
	[BackupDate] [datetime] NOT NULL,
	[ComputerName] [nvarchar](100) NOT NULL,
	[AppDomain] [nvarchar](500) NOT NULL,
	[BackupFile] [varbinary](max) NULL,
	[RowGuid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Timestamp] [timestamp] NOT NULL,
 CONSTRAINT [PK_IndexBackup2] PRIMARY KEY CLUSTERED 
(
	[IndexBackupId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IndexingActivity]    Script Date: 26/08/2019 16:30:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IndexingActivity](
	[IndexingActivityId] [int] IDENTITY(1,1) NOT NULL,
	[ActivityType] [varchar](50) NULL,
	[CreationDate] [datetime] NOT NULL,
	[NodeId] [int] NOT NULL,
	[VersionId] [int] NOT NULL,
	[SingleVersion] [bit] NULL,
	[MoveOrRename] [bit] NULL,
	[IsLastDraftValue] [bit] NULL,
	[Path] [nvarchar](450) NULL,
	[VersionTimestamp] [bigint] NULL,
	[Hash] [varbinary](50) NULL,
	[Extension] [varchar](max) NULL,
 CONSTRAINT [PK_IndexingActivity] PRIMARY KEY CLUSTERED 
(
	[IndexingActivityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JournalItems]    Script Date: 26/08/2019 16:30:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JournalItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[When] [datetime] NOT NULL,
	[Wherewith] [nvarchar](450) NOT NULL,
	[What] [nvarchar](100) NOT NULL,
	[Who] [nvarchar](200) NOT NULL,
	[RowGuid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Timestamp] [timestamp] NOT NULL,
	[NodeId] [int] NOT NULL,
	[DisplayName] [nvarchar](450) NOT NULL,
	[NodeTypeName] [nvarchar](100) NOT NULL,
	[SourcePath] [nvarchar](450) NULL,
	[TargetPath] [nvarchar](450) NULL,
	[TargetDisplayName] [nvarchar](450) NULL,
	[Hidden] [bit] NOT NULL,
	[Details] [nvarchar](450) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LogEntries]    Script Date: 26/08/2019 16:30:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LogEntries](
	[LogId] [int] IDENTITY(1,1) NOT NULL,
	[EventId] [int] NOT NULL,
	[Category] [nvarchar](50) NULL,
	[Priority] [int] NOT NULL,
	[Severity] [varchar](30) NOT NULL,
	[Title] [nvarchar](256) NULL,
	[ContentId] [int] NULL,
	[ContentPath] [nvarchar](450) NULL,
	[UserName] [nvarchar](450) NULL,
	[LogDate] [datetime] NOT NULL,
	[MachineName] [varchar](32) NULL,
	[AppDomainName] [varchar](512) NULL,
	[ProcessID] [varchar](256) NULL,
	[ProcessName] [varchar](512) NULL,
	[ThreadName] [varchar](512) NULL,
	[Win32ThreadId] [varchar](128) NULL,
	[Message] [nvarchar](1500) NULL,
	[FormattedMessage] [ntext] NULL,
	[RowGuid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Timestamp] [timestamp] NOT NULL,
 CONSTRAINT [PK_Log] PRIMARY KEY CLUSTERED 
(
	[LogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Packages]    Script Date: 26/08/2019 16:30:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Packages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PackageType] [varchar](50) NOT NULL,
	[ComponentId] [nvarchar](450) NULL,
	[ComponentVersion] [varchar](50) NULL,
	[ReleaseDate] [datetime] NOT NULL,
	[ExecutionDate] [datetime] NOT NULL,
	[ExecutionResult] [varchar](50) NOT NULL,
	[ExecutionError] [nvarchar](max) NULL,
	[Description] [nvarchar](1000) NULL,
	[Manifest] [nvarchar](max) NULL,
 CONSTRAINT [PK_Packages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SchemaModification]    Script Date: 26/08/2019 16:30:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SchemaModification](
	[SchemaModificationId] [int] IDENTITY(1,1) NOT NULL,
	[ModificationDate] [datetime] NOT NULL,
	[Timestamp] [timestamp] NOT NULL,
 CONSTRAINT [PK_SchemaModification] PRIMARY KEY CLUSTERED 
(
	[SchemaModificationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TextPropertiesNText]    Script Date: 26/08/2019 16:30:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TextPropertiesNText](
	[TextPropertyNTextId] [int] IDENTITY(1,1) NOT NULL,
	[VersionId] [int] NOT NULL,
	[PropertyTypeId] [int] NOT NULL,
	[Value] [ntext] NULL,
	[RowGuid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Timestamp] [timestamp] NOT NULL,
 CONSTRAINT [PK_TextPropertiesNText] PRIMARY KEY CLUSTERED 
(
	[TextPropertyNTextId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TextPropertiesNVarchar]    Script Date: 26/08/2019 16:30:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TextPropertiesNVarchar](
	[TextPropertyNVarcharId] [int] IDENTITY(1,1) NOT NULL,
	[VersionId] [int] NOT NULL,
	[PropertyTypeId] [int] NOT NULL,
	[Value] [nvarchar](4000) NULL,
	[RowGuid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
	[Timestamp] [timestamp] NOT NULL,
 CONSTRAINT [PK_TextPropertiesNVarchar] PRIMARY KEY CLUSTERED 
(
	[TextPropertyNVarcharId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TreeLocks]    Script Date: 26/08/2019 16:30:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TreeLocks](
	[TreeLockId] [int] IDENTITY(1,1) NOT NULL,
	[Path] [nvarchar](450) NOT NULL,
	[LockedAt] [datetime] NOT NULL,
 CONSTRAINT [PK_TreeLocks] PRIMARY KEY CLUSTERED 
(
	[TreeLockId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkflowNotification]    Script Date: 26/08/2019 16:30:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkflowNotification](
	[NotificationId] [int] IDENTITY(1,1) NOT NULL,
	[NodeId] [int] NOT NULL,
	[WorkflowInstanceId] [uniqueidentifier] NOT NULL,
	[WorkflowNodePath] [nvarchar](450) NOT NULL,
	[BookmarkName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_WorkflowNotification] PRIMARY KEY CLUSTERED 
(
	[NotificationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 50) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [ix_file_id]    Script Date: 26/08/2019 16:30:15 ******/
CREATE NONCLUSTERED INDEX [ix_file_id] ON [dbo].[BinaryProperties]
(
	[FileId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [ix_version_id]    Script Date: 26/08/2019 16:30:15 ******/
CREATE NONCLUSTERED INDEX [ix_version_id] ON [dbo].[BinaryProperties]
(
	[VersionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ParentId]    Script Date: 26/08/2019 16:30:15 ******/
CREATE NONCLUSTERED INDEX [IX_ParentId] ON [dbo].[EFEntities]
(
	[ParentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_EFEntityId]    Script Date: 26/08/2019 16:30:15 ******/
CREATE NONCLUSTERED INDEX [IX_EFEntityId] ON [dbo].[EFEntries]
(
	[EFEntityId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_FlatProperties]    Script Date: 26/08/2019 16:30:15 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_FlatProperties] ON [dbo].[FlatProperties]
(
	[Page] ASC,
	[VersionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [ix_version_id]    Script Date: 26/08/2019 16:30:15 ******/
CREATE NONCLUSTERED INDEX [ix_version_id] ON [dbo].[FlatProperties]
(
	[VersionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_JournalItems]    Script Date: 26/08/2019 16:30:15 ******/
CREATE NONCLUSTERED INDEX [IX_JournalItems] ON [dbo].[JournalItems]
(
	[When] DESC,
	[Wherewith] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Nodes_NodeTypeId]    Script Date: 26/08/2019 16:30:15 ******/
CREATE NONCLUSTERED INDEX [IX_Nodes_NodeTypeId] ON [dbo].[Nodes]
(
	[NodeTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Nodes_ParentNodeId]    Script Date: 26/08/2019 16:30:15 ******/
CREATE NONCLUSTERED INDEX [IX_Nodes_ParentNodeId] ON [dbo].[Nodes]
(
	[ParentNodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Nodes_Path]    Script Date: 26/08/2019 16:30:15 ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Nodes_Path] ON [dbo].[Nodes]
(
	[Path] ASC
)
INCLUDE ( 	[NodeId]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ReferenceProperties_ReferredNodeId]    Script Date: 26/08/2019 16:30:15 ******/
CREATE NONCLUSTERED INDEX [IX_ReferenceProperties_ReferredNodeId] ON [dbo].[ReferenceProperties]
(
	[ReferredNodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [ix_version_id]    Script Date: 26/08/2019 16:30:15 ******/
CREATE NONCLUSTERED INDEX [ix_version_id] ON [dbo].[ReferenceProperties]
(
	[VersionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_VersionIdPropertyTypeId]    Script Date: 26/08/2019 16:30:15 ******/
CREATE NONCLUSTERED INDEX [IX_VersionIdPropertyTypeId] ON [dbo].[ReferenceProperties]
(
	[VersionId] ASC,
	[PropertyTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [ix_name]    Script Date: 26/08/2019 16:30:15 ******/
CREATE NONCLUSTERED INDEX [ix_name] ON [dbo].[SchemaPropertySets]
(
	[Name] ASC
)
INCLUDE ( 	[PropertySetId]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 50) ON [PRIMARY]
GO
/****** Object:  Index [ix_parentid]    Script Date: 26/08/2019 16:30:15 ******/
CREATE NONCLUSTERED INDEX [ix_parentid] ON [dbo].[SchemaPropertySets]
(
	[ParentId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [ix_name]    Script Date: 26/08/2019 16:30:15 ******/
CREATE NONCLUSTERED INDEX [ix_name] ON [dbo].[SchemaPropertyTypes]
(
	[Name] ASC
)
INCLUDE ( 	[PropertyTypeId]) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 50) ON [PRIMARY]
GO
/****** Object:  Index [ix_version_id]    Script Date: 26/08/2019 16:30:15 ******/
CREATE NONCLUSTERED INDEX [ix_version_id] ON [dbo].[TextPropertiesNText]
(
	[VersionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [ix_version_id]    Script Date: 26/08/2019 16:30:15 ******/
CREATE NONCLUSTERED INDEX [ix_version_id] ON [dbo].[TextPropertiesNVarchar]
(
	[VersionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [ix_Versions_NodeId]    Script Date: 26/08/2019 16:30:15 ******/
CREATE NONCLUSTERED INDEX [ix_Versions_NodeId] ON [dbo].[Versions]
(
	[NodeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [ix_Versions_NodeId_MinorNumber_MajorNumber_Status]    Script Date: 26/08/2019 16:30:15 ******/
CREATE NONCLUSTERED INDEX [ix_Versions_NodeId_MinorNumber_MajorNumber_Status] ON [dbo].[Versions]
(
	[NodeId] ASC,
	[MinorNumber] ASC,
	[Status] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Files] ADD  CONSTRAINT [DF_Files_CreationDate]  DEFAULT (getutcdate()) FOR [CreationDate]
GO
ALTER TABLE [dbo].[Files] ADD  DEFAULT (newid()) FOR [RowGuid]
GO
ALTER TABLE [dbo].[FlatProperties] ADD  DEFAULT (newid()) FOR [RowGuid]
GO
ALTER TABLE [dbo].[IndexBackup] ADD  CONSTRAINT [DF_IndexBackup_RowGuid]  DEFAULT (newid()) FOR [RowGuid]
GO
ALTER TABLE [dbo].[IndexBackup2] ADD  CONSTRAINT [DF_IndexBackup2_RowGuid]  DEFAULT (newid()) FOR [RowGuid]
GO
ALTER TABLE [dbo].[JournalItems] ADD  DEFAULT (newid()) FOR [RowGuid]
GO
ALTER TABLE [dbo].[LogEntries] ADD  DEFAULT (newid()) FOR [RowGuid]
GO
ALTER TABLE [dbo].[Nodes] ADD  CONSTRAINT [DF_Nodes_CreatingInProgress]  DEFAULT ((0)) FOR [CreatingInProgress]
GO
ALTER TABLE [dbo].[Nodes] ADD  CONSTRAINT [DF_Nodes_IsInherited]  DEFAULT ((1)) FOR [IsInherited]
GO
ALTER TABLE [dbo].[Nodes] ADD  DEFAULT (newid()) FOR [RowGuid]
GO
ALTER TABLE [dbo].[ReferenceProperties] ADD  DEFAULT (newid()) FOR [RowGuid]
GO
ALTER TABLE [dbo].[SchemaDataTypes] ADD  DEFAULT (newid()) FOR [RowGuid]
GO
ALTER TABLE [dbo].[SchemaPropertySets] ADD  DEFAULT (newid()) FOR [RowGuid]
GO
ALTER TABLE [dbo].[SchemaPropertySetsPropertyTypes] ADD  DEFAULT (newid()) FOR [RowGuid]
GO
ALTER TABLE [dbo].[SchemaPropertySetTypes] ADD  DEFAULT (newid()) FOR [RowGuid]
GO
ALTER TABLE [dbo].[SchemaPropertyTypes] ADD  DEFAULT ((0)) FOR [IsContentListProperty]
GO
ALTER TABLE [dbo].[SchemaPropertyTypes] ADD  DEFAULT (newid()) FOR [RowGuid]
GO
ALTER TABLE [dbo].[TextPropertiesNText] ADD  DEFAULT (newid()) FOR [RowGuid]
GO
ALTER TABLE [dbo].[TextPropertiesNVarchar] ADD  DEFAULT (newid()) FOR [RowGuid]
GO
ALTER TABLE [dbo].[Versions] ADD  CONSTRAINT [DF_Versions_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Versions] ADD  DEFAULT (newid()) FOR [RowGuid]
GO
ALTER TABLE [dbo].[BinaryProperties]  WITH NOCHECK ADD  CONSTRAINT [FK_BinaryProperties_Files] FOREIGN KEY([FileId])
REFERENCES [dbo].[Files] ([FileId])
GO
ALTER TABLE [dbo].[BinaryProperties] NOCHECK CONSTRAINT [FK_BinaryProperties_Files]
GO
ALTER TABLE [dbo].[BinaryProperties]  WITH NOCHECK ADD  CONSTRAINT [FK_BinaryProperties_SchemaPropertyTypes] FOREIGN KEY([PropertyTypeId])
REFERENCES [dbo].[SchemaPropertyTypes] ([PropertyTypeId])
GO
ALTER TABLE [dbo].[BinaryProperties] NOCHECK CONSTRAINT [FK_BinaryProperties_SchemaPropertyTypes]
GO
ALTER TABLE [dbo].[BinaryProperties]  WITH NOCHECK ADD  CONSTRAINT [FK_BinaryProperties_Versions] FOREIGN KEY([VersionId])
REFERENCES [dbo].[Versions] ([VersionId])
GO
ALTER TABLE [dbo].[BinaryProperties] NOCHECK CONSTRAINT [FK_BinaryProperties_Versions]
GO
ALTER TABLE [dbo].[EFEntities]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EFEntities_dbo.EFEntities_ParentId] FOREIGN KEY([ParentId])
REFERENCES [dbo].[EFEntities] ([Id])
GO
ALTER TABLE [dbo].[EFEntities] CHECK CONSTRAINT [FK_dbo.EFEntities_dbo.EFEntities_ParentId]
GO
ALTER TABLE [dbo].[EFEntries]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EFEntries_dbo.EFEntities_EFEntityId] FOREIGN KEY([EFEntityId])
REFERENCES [dbo].[EFEntities] ([Id])
GO
ALTER TABLE [dbo].[EFEntries] CHECK CONSTRAINT [FK_dbo.EFEntries_dbo.EFEntities_EFEntityId]
GO
ALTER TABLE [dbo].[FlatProperties]  WITH NOCHECK ADD  CONSTRAINT [FK_FlatProperties_Versions] FOREIGN KEY([VersionId])
REFERENCES [dbo].[Versions] ([VersionId])
GO
ALTER TABLE [dbo].[FlatProperties] NOCHECK CONSTRAINT [FK_FlatProperties_Versions]
GO
ALTER TABLE [dbo].[Nodes]  WITH NOCHECK ADD  CONSTRAINT [FK_Nodes_LockedBy] FOREIGN KEY([LockedById])
REFERENCES [dbo].[Nodes] ([NodeId])
GO
ALTER TABLE [dbo].[Nodes] NOCHECK CONSTRAINT [FK_Nodes_LockedBy]
GO
ALTER TABLE [dbo].[Nodes]  WITH NOCHECK ADD  CONSTRAINT [FK_Nodes_Nodes_CreatedById] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[Nodes] ([NodeId])
GO
ALTER TABLE [dbo].[Nodes] NOCHECK CONSTRAINT [FK_Nodes_Nodes_CreatedById]
GO
ALTER TABLE [dbo].[Nodes]  WITH NOCHECK ADD  CONSTRAINT [FK_Nodes_Nodes_ModifiedById] FOREIGN KEY([ModifiedById])
REFERENCES [dbo].[Nodes] ([NodeId])
GO
ALTER TABLE [dbo].[Nodes] NOCHECK CONSTRAINT [FK_Nodes_Nodes_ModifiedById]
GO
ALTER TABLE [dbo].[Nodes]  WITH NOCHECK ADD  CONSTRAINT [FK_Nodes_Parent] FOREIGN KEY([ParentNodeId])
REFERENCES [dbo].[Nodes] ([NodeId])
GO
ALTER TABLE [dbo].[Nodes] NOCHECK CONSTRAINT [FK_Nodes_Parent]
GO
ALTER TABLE [dbo].[Nodes]  WITH NOCHECK ADD  CONSTRAINT [FK_Nodes_SchemaPropertySets] FOREIGN KEY([NodeTypeId])
REFERENCES [dbo].[SchemaPropertySets] ([PropertySetId])
GO
ALTER TABLE [dbo].[Nodes] NOCHECK CONSTRAINT [FK_Nodes_SchemaPropertySets]
GO
ALTER TABLE [dbo].[ReferenceProperties]  WITH NOCHECK ADD  CONSTRAINT [FK_ReferenceProperties_SchemaPropertyTypes] FOREIGN KEY([PropertyTypeId])
REFERENCES [dbo].[SchemaPropertyTypes] ([PropertyTypeId])
GO
ALTER TABLE [dbo].[ReferenceProperties] NOCHECK CONSTRAINT [FK_ReferenceProperties_SchemaPropertyTypes]
GO
ALTER TABLE [dbo].[SchemaPropertySets]  WITH CHECK ADD  CONSTRAINT [FK_PropertySets_PropertySets] FOREIGN KEY([ParentId])
REFERENCES [dbo].[SchemaPropertySets] ([PropertySetId])
GO
ALTER TABLE [dbo].[SchemaPropertySets] CHECK CONSTRAINT [FK_PropertySets_PropertySets]
GO
ALTER TABLE [dbo].[SchemaPropertySets]  WITH CHECK ADD  CONSTRAINT [FK_PropertySets_PropertySetTypes] FOREIGN KEY([PropertySetTypeId])
REFERENCES [dbo].[SchemaPropertySetTypes] ([PropertySetTypeId])
GO
ALTER TABLE [dbo].[SchemaPropertySets] CHECK CONSTRAINT [FK_PropertySets_PropertySetTypes]
GO
ALTER TABLE [dbo].[SchemaPropertySetsPropertyTypes]  WITH CHECK ADD  CONSTRAINT [FK_PropertyTypes_PropertySets] FOREIGN KEY([PropertySetId])
REFERENCES [dbo].[SchemaPropertySets] ([PropertySetId])
GO
ALTER TABLE [dbo].[SchemaPropertySetsPropertyTypes] CHECK CONSTRAINT [FK_PropertyTypes_PropertySets]
GO
ALTER TABLE [dbo].[SchemaPropertySetsPropertyTypes]  WITH CHECK ADD  CONSTRAINT [FK_PropertyTypes_PropertySlots] FOREIGN KEY([PropertyTypeId])
REFERENCES [dbo].[SchemaPropertyTypes] ([PropertyTypeId])
GO
ALTER TABLE [dbo].[SchemaPropertySetsPropertyTypes] CHECK CONSTRAINT [FK_PropertyTypes_PropertySlots]
GO
ALTER TABLE [dbo].[SchemaPropertyTypes]  WITH CHECK ADD  CONSTRAINT [FK_PropertySlots_DataTypes] FOREIGN KEY([DataTypeId])
REFERENCES [dbo].[SchemaDataTypes] ([DataTypeId])
GO
ALTER TABLE [dbo].[SchemaPropertyTypes] CHECK CONSTRAINT [FK_PropertySlots_DataTypes]
GO
ALTER TABLE [dbo].[TextPropertiesNText]  WITH NOCHECK ADD  CONSTRAINT [FK_TextPropertiesNText_SchemaPropertyTypes] FOREIGN KEY([PropertyTypeId])
REFERENCES [dbo].[SchemaPropertyTypes] ([PropertyTypeId])
GO
ALTER TABLE [dbo].[TextPropertiesNText] NOCHECK CONSTRAINT [FK_TextPropertiesNText_SchemaPropertyTypes]
GO
ALTER TABLE [dbo].[TextPropertiesNText]  WITH NOCHECK ADD  CONSTRAINT [FK_TextPropertiesNText_Versions] FOREIGN KEY([VersionId])
REFERENCES [dbo].[Versions] ([VersionId])
GO
ALTER TABLE [dbo].[TextPropertiesNText] NOCHECK CONSTRAINT [FK_TextPropertiesNText_Versions]
GO
ALTER TABLE [dbo].[TextPropertiesNVarchar]  WITH NOCHECK ADD  CONSTRAINT [FK_TextPropertiesNVarchar_SchemaPropertyTypes] FOREIGN KEY([PropertyTypeId])
REFERENCES [dbo].[SchemaPropertyTypes] ([PropertyTypeId])
GO
ALTER TABLE [dbo].[TextPropertiesNVarchar] NOCHECK CONSTRAINT [FK_TextPropertiesNVarchar_SchemaPropertyTypes]
GO
ALTER TABLE [dbo].[TextPropertiesNVarchar]  WITH NOCHECK ADD  CONSTRAINT [FK_TextPropertiesNVarchar_Versions] FOREIGN KEY([VersionId])
REFERENCES [dbo].[Versions] ([VersionId])
GO
ALTER TABLE [dbo].[TextPropertiesNVarchar] NOCHECK CONSTRAINT [FK_TextPropertiesNVarchar_Versions]
GO
ALTER TABLE [dbo].[Versions]  WITH NOCHECK ADD  CONSTRAINT [FK_Versions_Nodes] FOREIGN KEY([NodeId])
REFERENCES [dbo].[Nodes] ([NodeId])
GO
ALTER TABLE [dbo].[Versions] NOCHECK CONSTRAINT [FK_Versions_Nodes]
GO
ALTER TABLE [dbo].[Versions]  WITH NOCHECK ADD  CONSTRAINT [FK_Versions_Nodes_CreatedBy] FOREIGN KEY([CreatedById])
REFERENCES [dbo].[Nodes] ([NodeId])
GO
ALTER TABLE [dbo].[Versions] NOCHECK CONSTRAINT [FK_Versions_Nodes_CreatedBy]
GO
ALTER TABLE [dbo].[Versions]  WITH NOCHECK ADD  CONSTRAINT [FK_Versions_Nodes_ModifiedBy] FOREIGN KEY([ModifiedById])
REFERENCES [dbo].[Nodes] ([NodeId])
GO
ALTER TABLE [dbo].[Versions] NOCHECK CONSTRAINT [FK_Versions_Nodes_ModifiedBy]
GO
/****** Object:  StoredProcedure [dbo].[proc_BinaryProperty_Delete]    Script Date: 26/08/2019 16:30:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_BinaryProperty_Delete]
(
	@VersionId int,
	@PropertyTypeId int
)
AS
	DELETE FROM BinaryProperties
	WHERE VersionId = @VersionId
	 AND PropertyTypeId = @PropertyTypeId
GO
/****** Object:  StoredProcedure [dbo].[proc_BinaryProperty_GetPointer]    Script Date: 26/08/2019 16:30:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_BinaryProperty_GetPointer]
(
	@VersionId int,
	@PropertyTypeId int,
	@FileId int OUTPUT,
	@Length int OUTPUT
)
AS
	SELECT @FileId = F.FileId, 
		@Length = DATALENGTH(F.Stream)
	FROM BinaryProperties B
		JOIN Files F ON F.FileId = B.FileId
	WHERE B.VersionId = @VersionId AND B.PropertyTypeId = @PropertyTypeId AND F.Staging IS NULL
GO
/****** Object:  StoredProcedure [dbo].[proc_BinaryProperty_LoadValue]    Script Date: 26/08/2019 16:30:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_BinaryProperty_LoadValue]
	@VersionId int,
	@PropertyTypeId int
AS
BEGIN
	SELECT B.BinaryPropertyId, B.VersionId, B.PropertyTypeId, F.FileId, F.ContentType, F.FileNameWithoutExtension,
		F.Extension, F.[Size], F.[Checksum], NULL AS Stream, 0 AS Loaded, F.[Timestamp], F.[BlobProvider], F.[BlobProviderData] 
	FROM dbo.BinaryProperties B
		JOIN dbo.Files F ON B.FileId = F.FileId
	WHERE VersionId = @VersionId AND PropertyTypeId = @PropertyTypeId AND Staging IS NULL
END
GO
/****** Object:  StoredProcedure [dbo].[proc_BinaryProperty_Update]    Script Date: 26/08/2019 16:30:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_BinaryProperty_Update]
(
	@BinaryPropertyId int,
	@ContentType nvarchar(450),
	@FileNameWithoutExtension nvarchar(450),
	@Extension nvarchar(50),
	@Size bigint,
	@Checksum varchar(200),
	@BlobProvider nvarchar(450),
	@BlobProviderData nvarchar(max)
)
AS
DECLARE @FileId int
SELECT @FileId = FileId FROM BinaryProperties WHERE BinaryPropertyId = @BinaryPropertyId

DECLARE @EnsureNewFileRow tinyint
IF (@BlobProvider IS NULL) AND (EXISTS (SELECT FileId FROM Files WHERE @FileId = FileId AND BlobProvider IS NOT NULL))
	SET @EnsureNewFileRow = 1
ELSE
	SET @EnsureNewFileRow = 0

IF (@EnsureNewFileRow = 1) OR (EXISTS (SELECT FileId FROM BinaryProperties WHERE FileId = @FileId AND BinaryPropertyId != @BinaryPropertyId)) BEGIN
	INSERT INTO Files (ContentType, FileNameWithoutExtension, Extension, [Size], [BlobProvider], [BlobProviderData], [Checksum], [Stream])
	    VALUES (@ContentType, @FileNameWithoutExtension, @Extension, @Size, @BlobProvider, @BlobProviderData,
			CASE WHEN (@Size <= 0) THEN NULL ELSE @Checksum END,
			CASE WHEN (@Size <= 0) THEN NULL ELSE CONVERT(varbinary, '') END)

	SELECT @FileId = @@IDENTITY

	UPDATE BinaryProperties SET FileId = @FileId WHERE BinaryPropertyId = @BinaryPropertyId
END
ELSE BEGIN
	UPDATE Files
	SET	ContentType = @ContentType,
		FileNameWithoutExtension = @FileNameWithoutExtension,
		Extension = @Extension,
		[Size] = @Size,
		[BlobProvider] = @BlobProvider,
		[BlobProviderData] = @BlobProviderData,
		-- [Checksum] = IIF (@Size <= 0, NULL, @Checksum)
		-- [Stream]   = IIF (@Size <= 0, NULL, CONVERT(varbinary, '')
		[Checksum] = CASE WHEN (@Size <= 0) THEN NULL ELSE @Checksum END,
		[Stream]   = CASE WHEN (@Size <= 0) THEN NULL ELSE CONVERT(varbinary, '') END
	WHERE FileId = @FileId
END
SELECT @FileId
GO
/****** Object:  StoredProcedure [dbo].[proc_BinaryProperty_WriteStream]    Script Date: 26/08/2019 16:30:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_BinaryProperty_WriteStream]
(
	@Id int,
	@Offset int,
	@Value varbinary(max)
)
AS
	UPDATE Files SET Stream = @Value WHERE FileId = @Id;
GO
/****** Object:  StoredProcedure [dbo].[proc_FlatProperties_GetExistingPages]    Script Date: 26/08/2019 16:30:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_FlatProperties_GetExistingPages]
(
	@VersionId int
)
AS
	SELECT Page FROM FlatProperties WHERE VersionId = @VersionId
GO
/****** Object:  StoredProcedure [dbo].[proc_LoadChildTypesToAllow]    Script Date: 26/08/2019 16:30:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_LoadChildTypesToAllow]
(
	@NodeId int
)
AS
DECLARE @FolderNodeTypeId int
SELECT @FolderNodeTypeId = PropertySetId FROM SchemaPropertySets WHERE Name = 'Folder'
DECLARE @PageNodeTypeId int
SELECT @PageNodeTypeId = PropertySetId FROM SchemaPropertySets WHERE Name = 'Page'

;WITH Tree(Id, ParentId, TypeId) AS
(
	SELECT NodeId, ParentNodeId, NodeTypeId
	FROM Nodes WHERE NodeId = @NodeId
	UNION ALL
	SELECT NodeId, ParentNodeId, NodeTypeId
	FROM Nodes
		INNER JOIN Tree ON Tree.Id = Nodes.ParentNodeId
	WHERE Tree.TypeId IN (@FolderNodeTypeId, @PageNodeTypeId)
)
SELECT DISTINCT S.Name FROM SchemaPropertySets S
	JOIN Nodes N ON N.NodeTypeId = S.PropertySetId
	INNER JOIN Tree ON N.NodeId = Tree.Id

GO
/****** Object:  StoredProcedure [dbo].[proc_LogAddCategory]    Script Date: 26/08/2019 16:30:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_LogAddCategory]
	@CategoryName nvarchar(50), @LogId int
AS
-- do nothing
GO
/****** Object:  StoredProcedure [dbo].[proc_LogSelect]    Script Date: 26/08/2019 16:30:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_LogSelect] 
	-- Add the parameters for the stored procedure here
	@startDate	datetime,
	@endDate	datetime,
	@usrName	nvarchar(450),
	@title		nvarchar(256),
	@params		nvarchar(500)
AS
BEGIN
	SELECT TOP 100 * FROM [LogEntries] 
	WHERE ((@startDate is null) OR ((@startDate is not null) AND ([LogDate] >= @startDate)))
	AND	  ((@endDate is null) OR ((@endDate is not null) AND ([LogDate] <= @endDate)))
	AND	  ((@usrName is null) OR ((@usrName is not null) AND ([UserName] like @usrName)))
	AND	  ((@title is null) OR ((@title is not null) AND ([Title] like @title)))
	AND	  ((@params is null) OR ((@params is not null) AND ([FormattedMessage] like @params)))
	Order by [LogDate]
END
GO
/****** Object:  StoredProcedure [dbo].[proc_LogWrite]    Script Date: 26/08/2019 16:30:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_LogWrite]
	@EventId int,
	@Priority int,
	@Severity varchar(30),
	@Title nvarchar(256),
	@Timestamp datetime,
	@MachineName varchar(32),
	@AppDomainName varchar(512),
	@ProcessID varchar(256),
	@ProcessName varchar(512),
	@ThreadName varchar(512),
	@Win32ThreadId varchar(128),
	@Message nvarchar(1500),
	@FormattedMessage ntext,
	@LogId int out,
	@ContentPath nvarchar(450) = null,
	@UserName nvarchar(450) = null
AS
BEGIN
declare @xmlDoc xml
set @xmlDoc = CAST(@FormattedMessage as xml)

declare @Category nvarchar(50)
set @Category = CAST(@xmlDoc.query('//Category/text()') as nvarchar(50))

declare @ContentId int
set @ContentId = CAST(CAST(@xmlDoc.query('//Id/text()') as nvarchar(450)) as int)

set @ContentPath = CAST(@xmlDoc.query('//Path/text()') as nvarchar(450))
set @UserName = CAST(@xmlDoc.query('//UserName/text()') as nvarchar(450))
INSERT INTO [dbo].[LogEntries]
           ([EventId]
           ,[Category]
           ,[Priority]
           ,[Severity]
           ,[Title]
		   ,[ContentId]
           ,[ContentPath]
           ,[UserName]
           ,[LogDate]
           ,[MachineName]
           ,[AppDomainName]
           ,[ProcessID]
           ,[ProcessName]
           ,[ThreadName]
           ,[Win32ThreadId]
           ,[Message]
           ,[FormattedMessage])
     VALUES
           (@EventId
           ,@Category
           ,@Priority
           ,@Severity
           ,@Title
		   ,@ContentId
           ,@ContentPath
           ,@UserName
           ,@Timestamp
           ,@MachineName
           ,@AppDomainName
           ,@ProcessID
           ,@ProcessName
           ,@ThreadName
           ,@Win32ThreadId
           ,@Message
           ,@FormattedMessage)
SELECT @LogId = @@IDENTITY
END
GO
/****** Object:  StoredProcedure [dbo].[proc_Node_DeletePhysical]    Script Date: 26/08/2019 16:30:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_Node_DeletePhysical]
	@NodeId INT,
	@Timestamp TIMESTAMP,
	@PartitionSize INT = 100
AS
BEGIN
	DECLARE @Path NVARCHAR(450)
	IF @Timestamp IS NOT NULL AND (NOT EXISTS (SELECT NodeId FROM Nodes WHERE NodeId = @NodeId and @Timestamp = [Timestamp])) BEGIN
		SELECT @Path = [Path] FROM Nodes WHERE NodeId = @NodeId
		RAISERROR (N'Node is out of date. Id: %d, path: %s.', 12, 1, @NodeId, @Path);
	END
	ELSE BEGIN
		SET NOCOUNT ON
		DECLARE @LocalTranNeeded BIT
			
		IF @@TRANCOUNT < 1
			SET @LocalTranNeeded = 1
		ELSE
			SET @LocalTranNeeded = 0

		DECLARE @startpath nvarchar(450)
		SELECT @startpath = REPLACE(REPLACE(Path, '[', '\['), ']', '\]') FROM Nodes WHERE NodeId = @NodeId

		DECLARE @NIDall TABLE (Id INT IDENTITY(1, 1), NodeId INT)
		DECLARE @NIDpartition TABLE (Id INT IDENTITY(1, 1), NodeId INT)
		DECLARE @VID TABLE (Id INT IDENTITY(1, 1), VersionId INT)

		INSERT INTO @NIDall 
			SELECT NodeId FROM Nodes 
			WHERE Path = @startpath OR Path LIKE REPLACE(@startpath, '_', '[_]') + '/%'
			ORDER BY Path DESC

		DECLARE @nodeCount INT
		SELECT @nodeCount = COUNT(1) FROM @NIDall

		WHILE @nodeCount > 0 BEGIN
			BEGIN TRY
				IF @LocalTranNeeded = 1
					BEGIN TRAN LocalTran

				DELETE FROM @NIDpartition
				INSERT INTO @NIDpartition
					SELECT TOP(@PartitionSize) NodeId FROM @NIDall ORDER BY Id

				DELETE FROM @VID
				INSERT INTO @VID
					SELECT VersionId FROM Versions WHERE NodeId IN (SELECT NodeId FROM @NIDpartition)

				--=============================================================

				DELETE BinaryProperties WHERE VersionId IN (SELECT VersionId FROM @VID)
				DELETE TextPropertiesNText WHERE VersionId IN (SELECT VersionId FROM @VID)
				DELETE TextPropertiesNVarchar WHERE VersionId IN (SELECT VersionId FROM @VID)
				DELETE FlatProperties WHERE VersionId IN (SELECT VersionId FROM @VID)
				DELETE ReferenceProperties WHERE (VersionId IN (SELECT VersionId FROM @VID)) OR
												 (ReferredNodeId IN (SELECT NodeId FROM @NIDpartition))

				DELETE Versions WHERE NodeId IN (SELECT NodeId FROM @NIDpartition)
				DELETE Nodes WHERE NodeId IN (SELECT NodeId FROM @NIDpartition)

				--=============================================================

				IF @LocalTranNeeded = 1
					COMMIT TRAN LocalTran

				DELETE FROM @NIDall WHERE NodeId IN (SELECT NodeId FROM @NIDpartition)
				SELECT @nodeCount = COUNT(1) FROM @NIDall
								
				print convert(varchar(10), @nodeCount) + ' nodes left'
			END TRY
			BEGIN CATCH
				SET NOCOUNT OFF
				IF @LocalTranNeeded = 1
					ROLLBACK TRAN LocalTran
				DECLARE @ErrMsg nvarchar(4000), @ErrSeverity int
				SELECT 
					@ErrMsg = ERROR_MESSAGE(),
					@ErrSeverity = ERROR_SEVERITY()
				RAISERROR(@ErrMsg, @ErrSeverity, 1)
				RETURN
			END CATCH
		END -- WHILE
	END -- ELSE
	SET NOCOUNT OFF
END
GO
/****** Object:  StoredProcedure [dbo].[proc_Node_DeleteVersion]    Script Date: 26/08/2019 16:30:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_Node_DeleteVersion] 
(
	@VersionId int
)
AS
BEGIN

DECLARE @NodeId int
SELECT @NodeId = NodeId FROM Versions WHERE VersionId = @VersionId

	DELETE FROM BinaryProperties WHERE VersionId = @VersionId

	DELETE FROM TextPropertiesNText WHERE VersionId = @VersionId

	DELETE FROM TextPropertiesNVarchar WHERE VersionId = @VersionId

	DELETE FROM ReferenceProperties WHERE VersionId = @VersionId

	DELETE FROM FlatProperties WHERE VersionId = @VersionId

--ALTER TABLE [BinaryProperties] NOCHECK CONSTRAINT ALL
--ALTER TABLE [FlatProperties] NOCHECK CONSTRAINT ALL
--ALTER TABLE [Nodes] NOCHECK CONSTRAINT ALL
--ALTER TABLE [ReferenceProperties] NOCHECK CONSTRAINT ALL
--ALTER TABLE [TextPropertiesNText] NOCHECK CONSTRAINT ALL
--ALTER TABLE [TextPropertiesNVarchar] NOCHECK CONSTRAINT ALL
--ALTER TABLE [Versions] NOCHECK CONSTRAINT ALL
--ALTER TABLE [VersionExtensions] NOCHECK CONSTRAINT ALL

	UPDATE Nodes SET LastMinorVersionId = NULL, LastMajorVersionId = NULL WHERE NodeId = @NodeId

	DELETE FROM Versions WHERE VersionId = @VersionId

--ALTER TABLE [BinaryProperties] CHECK CONSTRAINT ALL
--ALTER TABLE [FlatProperties] CHECK CONSTRAINT ALL
--ALTER TABLE [Nodes] CHECK CONSTRAINT ALL
--ALTER TABLE [ReferenceProperties] CHECK CONSTRAINT ALL
--ALTER TABLE [TextPropertiesNText] CHECK CONSTRAINT ALL
--ALTER TABLE [TextPropertiesNVarchar] CHECK CONSTRAINT ALL
--ALTER TABLE [Versions] CHECK CONSTRAINT ALL
--ALTER TABLE [VersionExtensions] CHECK CONSTRAINT ALL

	EXEC proc_Node_SetLastVersion @NodeId = @NodeId

-- Return the new timestamp and version ids
SELECT [Timestamp] as NodeTimestamp, LastMajorVersionId, LastMinorVersionId FROM Nodes WHERE NodeId = @NodeId

END
GO
/****** Object:  StoredProcedure [dbo].[proc_Node_GetTreeSize]    Script Date: 26/08/2019 16:30:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[proc_Node_GetTreeSize] 
	@NodePath nvarchar(450),
	@IncludeChildren tinyint
AS
BEGIN

    WITH x AS (
		SELECT Path, SUM(F.Size) SumSize
		FROM BinaryProperties B
			JOIN Files F ON B.FileId = F.FileId
		LEFT OUTER JOIN Versions V on V.VersionId = B.VersionId
		LEFT OUTER JOIN Nodes N on V.NodeId = N.NodeId
		WHERE (N.[Path] = @NodePath OR (@IncludeChildren = 1 AND N.[Path] + '/' LIKE REPLACE(@NodePath, '_', '[_]') + '/%')) AND F.Staging IS NULL
		GROUP BY N.[Path]
    )

	SELECT SUM(SumSize) from x

END
GO
/****** Object:  StoredProcedure [dbo].[proc_Node_HasChild]    Script Date: 26/08/2019 16:30:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_Node_HasChild]
	@NodeId int
AS
BEGIN

SELECT Count(*)
  FROM Nodes
 WHERE ParentNodeId = @NodeId

END
GO
/****** Object:  StoredProcedure [dbo].[proc_Node_LoadData_Batch]    Script Date: 26/08/2019 16:30:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_Node_LoadData_Batch]
	@IdsInXml xml
AS
BEGIN

	DECLARE @versionids AS TABLE(Id INT)
	INSERT @versionids 
	SELECT Id.value('.', 'int') FROM @IdsInXml.nodes('/Identifiers/VersionIds/Id') as Identifiers(Id)


	-- #1: FlatProperties
	SELECT * FROM FlatProperties
		WHERE VersionId IN (select Id from @versionids)


	-- #2: BinaryProperties
	SELECT B.BinaryPropertyId, B.VersionId, B.PropertyTypeId, F.FileId, F.ContentType, F.FileNameWithoutExtension,
		F.Extension, F.[Size], F.[BlobProvider], F.[BlobProviderData], F.[Checksum], NULL AS Stream, 0 AS Loaded, F.[Timestamp]
	FROM dbo.BinaryProperties B
		JOIN dbo.Files F ON B.FileId = F.FileId
	WHERE VersionId IN (select Id from @versionids) AND Staging IS NULL


	-- #3: ReferencePropertyInfo + Referred NodeToken
	SELECT VersionId, PropertyTypeId, ReferredNodeId
	FROM dbo.ReferenceProperties
	WHERE VersionId IN (select Id from @versionids)


	-- #4: TextPropertyInfo (NText:Lazy, NVarchar(4000):loaded)
	SELECT VersionId, PropertyTypeId, NULL AS Value, 0 AS Loaded
	FROM dbo.TextPropertiesNText
	WHERE VersionId IN (select Id from @versionids)
	UNION ALL
	SELECT VersionId, PropertyTypeId, Value, 1 AS Loaded
	FROM dbo.TextPropertiesNVarchar
	WHERE VersionId IN (select Id from @versionids)

	-- #5: BaseData
	SELECT N.NodeId, N.NodeTypeId, N.ContentListTypeId, N.ContentListId, N.CreatingInProgress, N.IsDeleted, N.IsInherited, 
		N.ParentNodeId, N.[Name], N.DisplayName, N.[Path], N.[Index], N.Locked, N.LockedById, 
		N.ETag, N.LockType, N.LockTimeout, N.LockDate, N.LockToken, N.LastLockUpdate,
		N.CreationDate AS NodeCreationDate, N.CreatedById AS NodeCreatedById, 
		N.ModificationDate AS NodeModificationDate, N.ModifiedById AS NodeModifiedById,
		N.IsSystem, N.OwnerId,
		N.SavingState, V.ChangedData,
		N.Timestamp AS NodeTimestamp,
		V.VersionId, V.MajorNumber, V.MinorNumber, V.CreationDate, V.CreatedById, 
		V.ModificationDate, V.ModifiedById, V.[Status],
		V.Timestamp AS VersionTimestamp
	FROM dbo.Nodes AS N 
		INNER JOIN dbo.Versions AS V ON N.NodeId = V.NodeId
	WHERE V.VersionId IN (select Id from @versionids)

END
GO
/****** Object:  StoredProcedure [dbo].[proc_Node_Move]    Script Date: 26/08/2019 16:30:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_Node_Move]
(
	@SourceNodeId int,
	@TargetNodeId int,
    @SourceTimestamp timestamp,
    @TargetTimestamp timestamp
)
AS

DECLARE @Path nvarchar(450)
DECLARE @HasTrans INT
SET @HasTrans = @@TRANCOUNT

-----------------------------------------------------------------------  Existence checks

IF NOT EXISTS (SELECT NodeId FROM Nodes WHERE NodeId = @TargetNodeId)
	RAISERROR (N'Cannot move under a deleted node. Id: %d', 12, 1, @TargetNodeId);

IF NOT EXISTS (SELECT NodeId FROM Nodes WHERE NodeId = @SourceNodeId)
	RAISERROR (N'Cannot move a deleted node.Id: %d', 12, 1, @SourceNodeId);

IF @SourceTimestamp IS NOT NULL BEGIN
	IF NOT EXISTS (SELECT NodeId FROM Nodes WHERE NodeId = @SourceNodeId and @SourceTimestamp = [Timestamp]) BEGIN
		SELECT @Path = [Path] FROM Nodes WHERE NodeId = @SourceNodeId
		RAISERROR (N'Source node is out of date. Id: %d, path: %s.', 12, 1, @SourceNodeId, @Path);
	END
END

BEGIN TRY

	-----------------------------------------------------------------------  Ensure transactionalitality

	IF @HasTrans < 1
	BEGIN
		BEGIN TRAN TRNSP
	END

	-----------------------------------------------------------------------  Declare and Initialize variables and temp table variables

	DECLARE @AffectedSubtreeIds table (NodeId int);
	DECLARE @SourcePath nvarchar(450);
	DECLARE @SourcePathUnderscoreEscaped nvarchar(450);


	-- Get Source Path
	SELECT
		@SourcePath = [Path]
	FROM
		Nodes
	WHERE
		NodeId = @SourceNodeId

	SET @SourcePathUnderscoreEscaped = REPLACE(@SourcePath, '_', '[_]')

	-- Collect the Ids of the affected entries
	-- (the source node and all nodes under that)
	INSERT INTO
		@AffectedSubtreeIds
	SELECT
		NodeId
	FROM
		Nodes
	WHERE
		Path = @SourcePath
		OR
		Path LIKE @SourcePathUnderscoreEscaped + '/%'

	-- source and target system flags
	DECLARE @SourceIsSystem tinyint
	DECLARE @SourceType int
	SELECT @SourceIsSystem = IsSystem, @SourceType = NodeTypeId FROM Nodes WHERE NodeId = @SourceNodeId
	DECLARE @TargetIsSystem tinyint
	DECLARE @TargetType int
	SELECT @TargetIsSystem = IsSystem, @TargetType = NodeTypeId FROM Nodes WHERE NodeId = @TargetNodeId

	-- system folder types
	DECLARE @SystemFolderIds TABLE (NodeTypeId int)
	;WITH TypeSubtree (Id)
	AS
	(
		SELECT PropertySetId Id FROM SchemaPropertySets WHERE PropertySetId IN (SELECT TOP 1 PropertySetId FROM SchemaPropertySets WHERE Name = 'SystemFolder')
		UNION ALL
		SELECT p.PropertySetId Id FROM SchemaPropertySets AS p INNER JOIN TypeSubtree AS t ON p.ParentId = t.Id
	)
	INSERT @SystemFolderIds SELECT Id FROM TypeSubtree

	-- determine whether source is system folders
	DECLARE @SourceIsSystemFolder tinyint
	IF EXISTS (SELECT NodeTypeId FROM @SystemFolderIds WHERE NodeTypeId = @SourceType)
		SET @SourceIsSystemFolder = 1
	ELSE
		SET @SourceIsSystemFolder = 0

	-- determine whether source is system folders
	DECLARE @TargetIsSystemFolder tinyint
	IF EXISTS (SELECT NodeTypeId FROM @SystemFolderIds WHERE NodeTypeId = @TargetType)
		SET @TargetIsSystemFolder = 1
	ELSE
		SET @TargetIsSystemFolder = 0

	DECLARE @SystemFlagUpdatingStrategy varchar(9)
	IF @SourceIsSystem = 0 AND @TargetIsSystem = 0 SET @SystemFlagUpdatingStrategy = 'NoChange'
	IF @SourceIsSystem = 0 AND @TargetIsSystem = 1 SET @SystemFlagUpdatingStrategy = 'AllSystem'
	IF @SourceIsSystem = 1 AND @TargetIsSystem = 0 SET @SystemFlagUpdatingStrategy = 'Recompute'
	IF @SourceIsSystem = 1 AND @TargetIsSystem = 1 SET @SystemFlagUpdatingStrategy = 'NoChange'
	
	-----------------------------------------------------------------------  ContentList functionality: pre-check

	DECLARE @SourceTreeContentListCount int
	
	SELECT
		@SourceTreeContentListCount = COUNT(*)
	FROM
		Nodes
	WHERE
		NodeId IN (SELECT NodeId FROM @AffectedSubtreeIds)
		AND
		ContentListTypeId IS NOT NULL
		AND
		ContentListId IS NULL
	
	-- Must not move contentlists under another list(s)
	IF @SourceTreeContentListCount > 0 AND (SELECT ContentListTypeId FROM Nodes WHERE NodeId = @TargetNodeId) IS NOT NULL
	BEGIN
		RAISERROR('Invalid operation: moving a contentlist / a subtree that contains a contentlist under an another contentlist', 18, 2)
	END

----------------------------------------------------------------------- Move

	DECLARE @TargetPath nvarchar(450)
	DECLARE @OldPath nvarchar(450)
	DECLARE @OldPathUnderscoreEscaped nvarchar(450)
	DECLARE @SourceParentPath nvarchar(450)
	DECLARE @TargetTypePath nvarchar(450)
	DECLARE @TrashBagTypePath nvarchar(450)

	SELECT @TargetPath = Path FROM Nodes WHERE Nodes.NodeId = @TargetNodeId
	SELECT @OldPath = Path FROM Nodes WHERE Nodes.NodeId = @SourceNodeId
	SELECT @OldPathUnderscoreEscaped = REPLACE(@OldPath,'_','[_]')
	SELECT @SourceParentPath = Path FROM Nodes WHERE Nodes.NodeId = (SELECT ParentNodeId FROM Nodes WHERE Nodes.NodeId = @SourceNodeId)
	SELECT @TrashBagTypePath = Path FROM Nodes WHERE (Path LIKE '/Root/System/Schema/ContentTypes/%' AND Name = 'TrashBag')
	SELECT @TargetTypePath = Path FROM Nodes WHERE (Path LIKE '/Root/System/Schema/ContentTypes/%' AND Name = 
			(SELECT Name FROM SchemaPropertySets 
			 WHERE PropertySetId = (SELECT NodeTypeId FROM Nodes WHERE NodeId = @TargetNodeId)))

	DECLARE @OldPathLen int
	SET @OldPathLen = LEN(@SourceParentPath)


	DECLARE @SourceContentListTypeId int
	DECLARE @SourceContentListId int
	DECLARE @TargetContentListTypeId int
	DECLARE @TargetContentListId int

	SELECT  @SourceContentListTypeId = ContentListTypeId, @SourceContentListId = ContentListId
	FROM Nodes
	WHERE NodeId = @SourceNodeId

	SELECT  @TargetContentListTypeId = ContentListTypeId, @TargetContentListId = ContentListId
	FROM Nodes
	WHERE NodeId = @TargetNodeId
	
	
	-- If the source is under a ContentList (is a ContentListFolder or a ContentListItem)
	-- then the old contentlist properties have to be dropped.
	-- (except when we are moving into the trash)
	IF (@SourceContentListTypeId IS NOT NULL AND @SourceContentListId IS NOT NULL 
		AND (@TargetContentListTypeId IS NULL OR @TargetContentListTypeId <> @SourceContentListTypeId) 
		AND @TargetTypePath+ '/' NOT LIKE REPLACE(@TrashBagTypePath,'_','[_]') + '/%' )
	BEGIN
		-- Get the VersionIds of the nodes to be moved.
		DECLARE @VersionsTemp table (VersionId int)
		
		INSERT INTO @VersionsTemp
		SELECT VersionId
		FROM Versions
		WHERE NodeId IN (SELECT NodeId FROM @AffectedSubtreeIds)
		
		-- Get the PropertyTypeIds of the contentlist properties
		DECLARE @ContentListPropertyTypesTemp table (PropertyTypeId int)
		
		INSERT INTO @ContentListPropertyTypesTemp
		SELECT PropertyTypeId
		FROM SchemaPropertyTypes
		WHERE IsContentListProperty = 1

		-- drop binary contentlist properties
		DELETE BinaryProperties
		WHERE
			VersionId IN (SELECT VersionId FROM @VersionsTemp)
			AND
			PropertyTypeId IN (SELECT PropertyTypeId FROM @ContentListPropertyTypesTemp)
		
		-- drop NText contentlist properties
		DELETE
			TextPropertiesNText
		WHERE
			VersionId IN (SELECT VersionId FROM @VersionsTemp)
			AND
			PropertyTypeId IN (SELECT PropertyTypeId FROM @ContentListPropertyTypesTemp)
			
		-- drop NVarchar contentlist properties
		DELETE
			TextPropertiesNVarchar
		WHERE
			VersionId IN (SELECT VersionId FROM @VersionsTemp)
			AND
			PropertyTypeId IN (SELECT PropertyTypeId FROM @ContentListPropertyTypesTemp)

		-- drop flat contentlist properties
		DELETE
			FlatProperties
		WHERE
			VersionId IN (SELECT VersionId FROM @VersionsTemp)
			AND
			Page >= 10000000
			
		---- The target is NOT a ContentList nor a ContentListFolder.
		---- ContentListTypeId, ContentListId should be updated to null.
		---- (except if it is the trash)
		UPDATE
			Nodes
		SET
			ContentListTypeId = null,
			ContentListId = null
		WHERE
			NodeId IN (SELECT NodeId FROM @AffectedSubtreeIds)
	END
	
	-- If the target is a ContentList or a ContentListFolder
	-- then the ContentListTypeId and ContentListId should be updated to the new ContentListTypeId and ContentListId. 
	-- (except if the source node already has a ContentListTypeId)
	IF (@TargetContentListTypeId IS NOT NULL)
	BEGIN
		
		IF @TargetContentListId IS NULL
			-- In this case the ContentListId is null, because the ContentListId is the NodeId.
			SET @TargetContentListId = @TargetNodeId

		UPDATE
			Nodes
		SET
			ContentListTypeId = @TargetContentListTypeId,
			ContentListId = @TargetContentListId
		WHERE
			NodeId IN (SELECT NodeId FROM @AffectedSubtreeIds)
		
	END
	
	--==== Updating subtree by strategy (@SystemFlagUpdatingStrategy: 'NoChange' | 'AllSystem' | 'Recompute'
	IF @SystemFlagUpdatingStrategy = 'NoChange' BEGIN
		--	subtree root
		UPDATE Nodes
		SET 
			Path = @TargetPath + RIGHT(Path, LEN(Path) - @OldPathLen),
			ParentNodeId = @TargetNodeId
		WHERE Nodes.NodeId = @SourceNodeId
		--	subtree elements
		UPDATE Nodes
		SET Path = @TargetPath + RIGHT(Path, LEN(Path) - @OldPathLen)
		WHERE Path LIKE @OldPathUnderscoreEscaped + '/%'
	END
	ELSE IF @SystemFlagUpdatingStrategy = 'AllSystem' BEGIN
		--	subtree root
		UPDATE Nodes
		SET 
			Path = @TargetPath + RIGHT(Path, LEN(Path) - @OldPathLen),
			ParentNodeId = @TargetNodeId,
			IsSystem = 1
		WHERE Nodes.NodeId = @SourceNodeId
		--	subtree elements
		UPDATE Nodes
			SET Path = @TargetPath + RIGHT(Path, LEN(Path) - @OldPathLen),
				IsSystem = 1
		WHERE Path LIKE @OldPathUnderscoreEscaped + '/%'
	END
	ELSE IF @SystemFlagUpdatingStrategy = 'Recompute' BEGIN
		--	subtree root
		UPDATE Nodes
		SET 
			Path = @TargetPath + RIGHT(Path, LEN(Path) - @OldPathLen),
			ParentNodeId = @TargetNodeId,
			IsSystem = @SourceIsSystemFolder
		WHERE Nodes.NodeId = @SourceNodeId
		--	reset subtree elements
		UPDATE Nodes
			SET Path = @TargetPath + RIGHT(Path, LEN(Path) - @OldPathLen),
				IsSystem = 0
		WHERE Path LIKE @OldPathUnderscoreEscaped + '/%'

		-- set IsSystem flag on all nodes that have SystemFolder ancestor in this subtree
		DECLARE @currentPath nvarchar(450)
		DECLARE sysfolder_cursor CURSOR FOR  
			SELECT [Path] FROM Nodes WHERE [Path] LIKE  REPLACE(@TargetPath,'_','[_]') + '/%' AND NodeTypeId IN (SELECT NodeTypeId FROM @SystemFolderIds)
		OPEN sysfolder_cursor   
		FETCH NEXT FROM sysfolder_cursor INTO @currentPath   
		WHILE @@FETCH_STATUS = 0   
		BEGIN   
			UPDATE Nodes SET IsSystem = 1 WHERE NodeId IN (
				SELECT NodeId
				FROM Nodes
				WHERE Path = @currentPath OR Path LIKE REPLACE(@currentPath,'_','[_]') + '/%'
			)
			FETCH NEXT FROM sysfolder_cursor INTO @currentPath   
		END   
		CLOSE sysfolder_cursor   
		DEALLOCATE sysfolder_cursor
	END

	-- commit
	IF @HasTrans < 1
	BEGIN
		COMMIT TRAN TRNSP
	END
END TRY
BEGIN CATCH

  -- there was an error
  	IF @HasTrans < 1
	BEGIN
		ROLLBACK TRAN TRNSP
	END

  DECLARE @ErrMsg nvarchar(4000), @ErrSeverity int, @ErrState int
  SELECT 
	@ErrMsg = ERROR_MESSAGE(),
    @ErrSeverity = ERROR_SEVERITY(),
    @ErrState = ERROR_STATE();
  IF @ErrSeverity >= 18 
	SET @ErrSeverity = 12
  RAISERROR(@ErrMsg, @ErrSeverity, @ErrState)

END CATCH
GO
/****** Object:  StoredProcedure [dbo].[proc_Node_SetLastVersion]    Script Date: 26/08/2019 16:30:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_Node_SetLastVersion]
(
	@NodeId int
)
AS
UPDATE Nodes
	SET LastMinorVersionId = (
		SELECT TOP (1) VersionId
		FROM Versions
		WHERE NodeId = @NodeId
		ORDER BY MajorNumber DESC, MinorNumber DESC/*, ModificationDate DESC*/),
		LastMajorVersionId = (
		SELECT TOP (1) VersionId
		FROM Versions
		WHERE NodeId = @NodeId AND MinorNumber = 0 AND Status = 1 /* Public */
		ORDER BY MajorNumber DESC, MinorNumber DESC/*, ModificationDate DESC*/)
	WHERE NodeId = @NodeId
GO
/****** Object:  StoredProcedure [dbo].[proc_Node_Update]    Script Date: 26/08/2019 16:30:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_Node_Update]
(
	@NodeId int,
	@NodeTypeId int,
	@ContentListTypeId int = null,
	@ContentListId int = null,
	@CreatingInProgress tinyint,
	@IsDeleted tinyint,
	@IsInherited tinyint,
	@ParentNodeId int,
	@Name nvarchar(450),
	@DisplayName nvarchar(450),
	@Path nvarchar(450),
	@Index int,
	@Locked tinyint,
	@LockedById int,
	@ETag varchar(50),
	@LockType int,
	@LockTimeout int,
	@LockDate datetime,
	@LockToken varchar(50),
	@LastLockUpdate datetime,
	@CreationDate datetime,
	@CreatedById int,
	@ModificationDate datetime,
	@ModifiedById int,
	@IsSystem tinyint,
	@OwnerId int,
	@SavingState int,
	@NodeTimestamp timestamp
)
AS

IF (@NodeId = 2)
	BEGIN

-- Root node: no need to deal with parent
UPDATE Node SET
	Node.NodeTypeId = @NodeTypeId,
	Node.ContentListTypeId = @ContentListTypeId,
	Node.ContentListId = @ContentListId,
	Node.CreatingInProgress = @CreatingInProgress,
	Node.IsDeleted = @IsDeleted,
	Node.IsInherited = @IsInherited,
	Node.ParentNodeId = @ParentNodeId,
	Node.[Name] = @Name,
	Node.DisplayName = @DisplayName,
	Node.Path = '/Root',
	Node.[Index] = @Index,
	Node.Locked = @Locked,
	Node.LockedById = @LockedById,
	Node.ETag = @ETag,
	Node.LockType = @LockType,
	Node.LockTimeout = @LockTimeout,
	Node.LockDate = @LockDate,
	Node.LockToken = @LockToken,
	Node.LastLockUpdate = @LastLockUpdate,
	Node.CreationDate = @CreationDate,
	Node.CreatedById = @CreatedById,
	Node.ModificationDate = @ModificationDate,
	Node.ModifiedById = @ModifiedById,
	Node.IsSystem = @IsSystem,
	Node.OwnerId = @OwnerId,
	Node.SavingState = @SavingState
FROM
	Nodes Node 
WHERE Node.NodeId = @NodeId AND Node.[Timestamp] = @NodeTimestamp
		
	END
	ELSE BEGIN

-- with calculated path
UPDATE Node SET
	Node.NodeTypeId = @NodeTypeId,
	Node.ContentListTypeId = @ContentListTypeId,
	Node.ContentListId = @ContentListId,
	Node.CreatingInProgress = @CreatingInProgress,
	Node.IsDeleted = @IsDeleted,
	Node.IsInherited = @IsInherited,
	Node.ParentNodeId = @ParentNodeId,
	Node.[Name] = @Name,
	Node.DisplayName = @DisplayName,
	Node.Path = Parent.Path + '/' + @Name,
	Node.[Index] = @Index,
	Node.Locked = @Locked,
	Node.LockedById = @LockedById,
	Node.ETag = @ETag,
	Node.LockType = @LockType,
	Node.LockTimeout = @LockTimeout,
	Node.LockDate = @LockDate,
	Node.LockToken = @LockToken,
	Node.LastLockUpdate = @LastLockUpdate,
	Node.CreationDate = @CreationDate,
	Node.CreatedById = @CreatedById,
	Node.ModificationDate = @ModificationDate,
	Node.ModifiedById = @ModifiedById,
	Node.IsSystem = @IsSystem,
	Node.OwnerId = @OwnerId,
	Node.SavingState = @SavingState
FROM
	Nodes Node JOIN Nodes Parent ON Parent.NodeId = Node.ParentNodeId
WHERE Node.NodeId = @NodeId AND Node.[Timestamp] = @NodeTimestamp

	END

IF @@ROWCOUNT = 0 BEGIN
	DECLARE @Count int
	SELECT @Count = COUNT(*) FROM Nodes WHERE NodeId = @NodeId
	IF @Count = 0
		RAISERROR (N'Cannot update a deleted Node. Id: %d, path: %s.', 12, 1, @NodeId, @Path);
	ELSE
		RAISERROR (N'Node is out of date Id: %d, path: %s.', 12, 1, @NodeId, @Path);
END
ELSE BEGIN
	SELECT [Path], [Timestamp] FROM Nodes WHERE NodeId = @NodeId
END
GO
/****** Object:  StoredProcedure [dbo].[proc_Node_UpdateSubTreePath]    Script Date: 26/08/2019 16:30:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_Node_UpdateSubTreePath]
(
	@OldPath nvarchar(450),
	@NewPath nvarchar(450)
)
AS
		DECLARE @OldPathLen int
		SET @OldPathLen = LEN(@OldPath)

		UPDATE Nodes
		SET Path = @NewPath + RIGHT(Path, LEN(Path) - @OldPathLen)
		WHERE Path LIKE REPLACE(@OldPath, '_', '[_]') + '/%'
GO
/****** Object:  StoredProcedure [dbo].[proc_NodeAndVersion_Insert]    Script Date: 26/08/2019 16:30:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_NodeAndVersion_Insert]
(
	@NodeTypeId int,
	@ContentListTypeId int = null,
	@ContentListId int = null,
	@CreatingInProgress tinyint,
	@IsDeleted tinyint,
	@IsInherited tinyint,
	@ParentNodeId int,
	@Name nvarchar(450),
	@DisplayName nvarchar(450),
	@Path nvarchar(450),
	@Index int,
	@Locked tinyint,
	@LockedById int,
	@ETag varchar(50),
	@LockType int,
	@LockTimeout int,
	@LockDate datetime,
	@LockToken varchar(50),
	@LastLockUpdate datetime,
	@NodeCreationDate datetime,
	@NodeCreatedById int,
	@NodeModificationDate datetime,
	@NodeModifiedById int,
	@IsSystem tinyint,
	@OwnerId int,
	@SavingState int,
	@ChangedData ntext,
	@MajorNumber smallint,
	@MinorNumber smallint,
	@Status smallint,
	@CreationDate datetime,
	@CreatedById int,
	@ModificationDate datetime,
	@ModifiedById int
)
AS
-- for result
DECLARE @NodeId int, @VersionId int
DECLARE @NodeTimestamp timestamp, @VersionTimestamp timestamp

-- with calculated path
INSERT INTO Nodes
	(NodeTypeId, ContentListTypeId, ContentListId, CreatingInProgress, IsDeleted, IsInherited, ParentNodeId, [Name], DisplayName, [Index], Locked, LockedById, ETag, LockType, LockTimeout, LockDate, LockToken, LastLockUpdate, CreationDate, CreatedById, ModificationDate, ModifiedById, IsSystem, OwnerId, SavingState
		, Path)
	VALUES
	(@NodeTypeId, @ContentListTypeId, @ContentListId, @CreatingInProgress, @IsDeleted, @IsInherited, @ParentNodeId, @Name, @DisplayName, @Index, @Locked, @LockedById, @ETag, @LockType, @LockTimeout, @LockDate, @LockToken, @LastLockUpdate, @NodeCreationDate, @NodeCreatedById, @NodeModificationDate, @NodeModifiedById, @IsSystem, @OwnerId, @SavingState
		,(select [Path] from Nodes where NodeId = @ParentNodeId) + '/' + @Name)

SELECT @NodeId = @@IDENTITY

-- skip the rest, if the insert above was not successful
IF (@NodeId is NOT NULL)
BEGIN
	INSERT INTO Versions 
		( NodeId,  MajorNumber,  MinorNumber,  CreationDate,  CreatedById,  ModificationDate,  ModifiedById,  Status,  ChangedData) VALUES
		(@NodeId, @MajorNumber, @MinorNumber, @CreationDate, @CreatedById, @ModificationDate, @ModifiedById, @Status, @ChangedData)

	SELECT @VersionId = @@IDENTITY
	SELECT @VersionTimestamp = [Timestamp] FROM Versions WHERE VersionId = @VersionId

	IF @Status = 1
		UPDATE Nodes SET LastMinorVersionId = @VersionId, LastMajorVersionId = @VersionId WHERE NodeId = @NodeId
	ELSE
		UPDATE Nodes SET LastMinorVersionId = @VersionId WHERE NodeId = @NodeId
	SELECT @NodeTimestamp = [Timestamp] FROM Nodes WHERE NodeId = @NodeId

	SELECT @NodeId, @VersionId, @NodeTimestamp, @VersionTimestamp, LastMajorVersionId, LastMinorVersionId, Path FROM Nodes WHERE NodeId = @NodeId
END
GO
/****** Object:  StoredProcedure [dbo].[proc_NodeHead_Load_Batch]    Script Date: 26/08/2019 16:30:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  PROCEDURE [dbo].[proc_NodeHead_Load_Batch]
(
	@IdsInXml xml
)as
BEGIN
	declare @nodeids as table(id int)
	insert @nodeids 
	SELECT id.value('.', 'int') FROM @IdsInXml.nodes('/NodeHeads/id') as Identifiers(id)

	SELECT
		Node.NodeId,             -- 0
		Node.Name,               -- 1
		Node.DisplayName,        -- 2
		Node.Path,               -- 3
		Node.ParentNodeId,       -- 4
		Node.NodeTypeId,         -- 5
		Node.ContentListTypeId,  -- 6
		Node.ContentListId,      -- 7
		Node.CreationDate,       -- 8
		Node.ModificationDate,   -- 9
		Node.LastMinorVersionId, -- 10
		Node.LastMajorVersionId, -- 11
		Node.OwnerId,            -- 12
		Node.CreatedById,        -- 13
		Node.ModifiedById,       -- 14
		Node.[Index],            -- 15
		Node.LockedById,         -- 16
		Node.Timestamp           -- 17
	FROM
		Nodes Node RIGHT OUTER JOIN @nodeids nodelist ON Node.NodeId = nodelist.id  
END
GO
/****** Object:  StoredProcedure [dbo].[proc_ReferenceProperty_Update]    Script Date: 26/08/2019 16:30:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_ReferenceProperty_Update]
(
	@VersionId int,
	@PropertyTypeId int,
	@ReferredNodeIdListXml xml
)
AS

-- ReferredNodeId (Parse XML into ID table)
DECLARE @ReferredNodeIds TABLE (Id int NOT NULL)
INSERT INTO @ReferredNodeIds (Id)
SELECT Id.value('.', 'int') AS Id FROM @ReferredNodeIdListXml.nodes('/Identifiers/ReferredNodeIds/Id') as Ids(Id) 

-- Remove obsolete items
DELETE FROM ReferenceProperties
WHERE VersionId = @VersionId
AND PropertyTypeId = @PropertyTypeId

-- Add new items
INSERT INTO ReferenceProperties (VersionId, PropertyTypeId, ReferredNodeId)
	SELECT	@VersionId AS VersionId,
			@PropertyTypeId AS PropertyTypeId,
			Id AS ReferredNodeId
	FROM @ReferredNodeIds
GO
/****** Object:  StoredProcedure [dbo].[proc_Schema_LoadAll]    Script Date: 26/08/2019 16:30:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_Schema_LoadAll]
AS
BEGIN

	SET TRANSACTION ISOLATION LEVEL SNAPSHOT;
	
	BEGIN TRANSACTION;

	SELECT TOP 1 * FROM [dbo].[SchemaModification]
	SELECT * FROM [dbo].[SchemaDataTypes]
	SELECT * FROM [dbo].[SchemaPropertySetTypes]
	SELECT * FROM [dbo].[SchemaPropertySets]
	SELECT * FROM [dbo].[SchemaPropertyTypes]
	SELECT * FROM [dbo].[SchemaPropertySetsPropertyTypes]

	COMMIT TRANSACTION;
END
GO
/****** Object:  StoredProcedure [dbo].[proc_TextProperty_Delete]    Script Date: 26/08/2019 16:30:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_TextProperty_Delete]
(
	@VersionId int,
	@PropertyTypeId int
)
AS
	DELETE FROM TextPropertiesNText
	 WHERE (VersionId = @VersionId) AND (PropertyTypeId = @PropertyTypeId)

	DELETE FROM TextPropertiesNVarchar
	 WHERE (VersionId = @VersionId) AND (PropertyTypeId = @PropertyTypeId)
GO
/****** Object:  StoredProcedure [dbo].[proc_TextProperty_InsertNText]    Script Date: 26/08/2019 16:30:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_TextProperty_InsertNText]
(
	@VersionId int,
	@PropertyTypeId int,
	@Value ntext
)
AS
	  INSERT INTO TextPropertiesNText (
					  VersionId,
					  PropertyTypeId,
					  Value)
	   VALUES (		  @VersionId,
					  @PropertyTypeId,
					  @Value)
GO
/****** Object:  StoredProcedure [dbo].[proc_TextProperty_InsertNVarchar]    Script Date: 26/08/2019 16:30:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_TextProperty_InsertNVarchar]
(
	@VersionId int,
	@PropertyTypeId int,
	@Value nvarchar(4000)
)
AS
	  INSERT INTO TextPropertiesNVarchar (
					  VersionId,
					  PropertyTypeId,
					  Value)
	   VALUES (		  @VersionId,
					  @PropertyTypeId,
					  @Value)
GO
/****** Object:  StoredProcedure [dbo].[proc_TextProperty_LoadValue]    Script Date: 26/08/2019 16:30:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_TextProperty_LoadValue]
(
	@VersionId int,
	@PropertyTypeId int
)
AS
	SELECT Value
	FROM TextPropertiesNText
	WHERE VersionId = @VersionId
	AND PropertyTypeId = @PropertyTypeId
GO
/****** Object:  StoredProcedure [dbo].[proc_Version_CopyAndUpdate]    Script Date: 26/08/2019 16:30:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_Version_CopyAndUpdate] 
	@PreviousVersionId int,
	@DestinationVersionId int,
	@NodeId int,
	@MajorNumber smallint,
	@MinorNumber smallint,
	@CreationDate datetime,
	@CreatedById int,
	@ModificationDate datetime,
	@ModifiedById int,
	@Status smallint,
	@ChangedData ntext
AS
BEGIN
	DECLARE @NewVersionId int
	
	-- Before inserting set versioning status code from "Locked" to "Draft" on all older versions
	UPDATE Versions SET Status = 4 WHERE NodeId = @NodeId AND Status = 2

	IF @DestinationVersionId IS NULL
	BEGIN
		-- Insert version row
		INSERT INTO Versions
			( NodeId, MajorNumber, MinorNumber, CreationDate, CreatedById, ModificationDate, ModifiedById, Status, ChangedData)
			VALUES
			(@NodeId,@MajorNumber,@MinorNumber,@CreationDate,@CreatedById,@ModificationDate,@ModifiedById,@Status,@ChangedData)
		SELECT @NewVersionId = @@IDENTITY
	END
	ELSE
	BEGIN
		-- Update existing version
		SET @NewVersionId = @DestinationVersionId;
		
		UPDATE Versions SET
			NodeId = @NodeId,
			MajorNumber = @MajorNumber,
			MinorNumber = @MinorNumber,
			CreationDate = @CreationDate,
			CreatedById = @CreatedById,
			ModificationDate = @ModificationDate,
			ModifiedById = @ModifiedById,
			Status = @Status,
			ChangedData =	@ChangedData
		WHERE VersionId = @NewVersionId
		
		-- Delete previous property values
		DELETE FROM BinaryProperties WHERE VersionId = @NewVersionId;
		DELETE FROM FlatProperties WHERE VersionId = @NewVersionId;
		DELETE FROM ReferenceProperties WHERE VersionId = @NewVersionId;
		DELETE FROM TextPropertiesNVarchar WHERE VersionId = @NewVersionId;
		DELETE FROM TextPropertiesNText WHERE VersionId = @NewVersionId;
	END	
	

	-- Copy properties
	INSERT INTO BinaryProperties ([VersionId],[PropertyTypeId],[FileId])
		SELECT @NewVersionId,[PropertyTypeId],[FileId] FROM BinaryProperties WHERE VersionId = @PreviousVersionId
	INSERT INTO FlatProperties
		([VersionId],[Page]
			,[nvarchar_1],[nvarchar_2],[nvarchar_3],[nvarchar_4],[nvarchar_5],[nvarchar_6],[nvarchar_7],[nvarchar_8],[nvarchar_9],[nvarchar_10],[nvarchar_11],[nvarchar_12],[nvarchar_13],[nvarchar_14],[nvarchar_15],[nvarchar_16],[nvarchar_17],[nvarchar_18],[nvarchar_19],[nvarchar_20],[nvarchar_21],[nvarchar_22],[nvarchar_23],[nvarchar_24],[nvarchar_25],[nvarchar_26],[nvarchar_27],[nvarchar_28],[nvarchar_29],[nvarchar_30],[nvarchar_31],[nvarchar_32],[nvarchar_33],[nvarchar_34],[nvarchar_35],[nvarchar_36],[nvarchar_37],[nvarchar_38],[nvarchar_39],[nvarchar_40]
			,[nvarchar_41],[nvarchar_42],[nvarchar_43],[nvarchar_44],[nvarchar_45],[nvarchar_46],[nvarchar_47],[nvarchar_48],[nvarchar_49],[nvarchar_50],[nvarchar_51],[nvarchar_52],[nvarchar_53],[nvarchar_54],[nvarchar_55],[nvarchar_56],[nvarchar_57],[nvarchar_58],[nvarchar_59],[nvarchar_60],[nvarchar_61],[nvarchar_62],[nvarchar_63],[nvarchar_64],[nvarchar_65],[nvarchar_66],[nvarchar_67],[nvarchar_68],[nvarchar_69],[nvarchar_70],[nvarchar_71],[nvarchar_72],[nvarchar_73],[nvarchar_74],[nvarchar_75],[nvarchar_76],[nvarchar_77],[nvarchar_78],[nvarchar_79],[nvarchar_80]
			,[int_1],[int_2],[int_3],[int_4],[int_5],[int_6],[int_7],[int_8],[int_9],[int_10],[int_11],[int_12],[int_13],[int_14],[int_15],[int_16],[int_17],[int_18],[int_19],[int_20],[int_21],[int_22],[int_23],[int_24],[int_25],[int_26],[int_27],[int_28],[int_29],[int_30],[int_31],[int_32],[int_33],[int_34],[int_35],[int_36],[int_37],[int_38],[int_39],[int_40]
			,[datetime_1],[datetime_2],[datetime_3],[datetime_4],[datetime_5],[datetime_6],[datetime_7],[datetime_8],[datetime_9],[datetime_10],[datetime_11],[datetime_12],[datetime_13],[datetime_14],[datetime_15],[datetime_16],[datetime_17],[datetime_18],[datetime_19],[datetime_20],[datetime_21],[datetime_22],[datetime_23],[datetime_24],[datetime_25]
			,[money_1],[money_2],[money_3],[money_4],[money_5],[money_6],[money_7],[money_8],[money_9],[money_10],[money_11],[money_12],[money_13],[money_14],[money_15]
		)
		SELECT @NewVersionId,[Page]
			,[nvarchar_1],[nvarchar_2],[nvarchar_3],[nvarchar_4],[nvarchar_5],[nvarchar_6],[nvarchar_7],[nvarchar_8],[nvarchar_9],[nvarchar_10],[nvarchar_11],[nvarchar_12],[nvarchar_13],[nvarchar_14],[nvarchar_15],[nvarchar_16],[nvarchar_17],[nvarchar_18],[nvarchar_19],[nvarchar_20],[nvarchar_21],[nvarchar_22],[nvarchar_23],[nvarchar_24],[nvarchar_25],[nvarchar_26],[nvarchar_27],[nvarchar_28],[nvarchar_29],[nvarchar_30],[nvarchar_31],[nvarchar_32],[nvarchar_33],[nvarchar_34],[nvarchar_35],[nvarchar_36],[nvarchar_37],[nvarchar_38],[nvarchar_39],[nvarchar_40]
			,[nvarchar_41],[nvarchar_42],[nvarchar_43],[nvarchar_44],[nvarchar_45],[nvarchar_46],[nvarchar_47],[nvarchar_48],[nvarchar_49],[nvarchar_50],[nvarchar_51],[nvarchar_52],[nvarchar_53],[nvarchar_54],[nvarchar_55],[nvarchar_56],[nvarchar_57],[nvarchar_58],[nvarchar_59],[nvarchar_60],[nvarchar_61],[nvarchar_62],[nvarchar_63],[nvarchar_64],[nvarchar_65],[nvarchar_66],[nvarchar_67],[nvarchar_68],[nvarchar_69],[nvarchar_70],[nvarchar_71],[nvarchar_72],[nvarchar_73],[nvarchar_74],[nvarchar_75],[nvarchar_76],[nvarchar_77],[nvarchar_78],[nvarchar_79],[nvarchar_80]
			,[int_1],[int_2],[int_3],[int_4],[int_5],[int_6],[int_7],[int_8],[int_9],[int_10],[int_11],[int_12],[int_13],[int_14],[int_15],[int_16],[int_17],[int_18],[int_19],[int_20],[int_21],[int_22],[int_23],[int_24],[int_25],[int_26],[int_27],[int_28],[int_29],[int_30],[int_31],[int_32],[int_33],[int_34],[int_35],[int_36],[int_37],[int_38],[int_39],[int_40]
			,[datetime_1],[datetime_2],[datetime_3],[datetime_4],[datetime_5],[datetime_6],[datetime_7],[datetime_8],[datetime_9],[datetime_10],[datetime_11],[datetime_12],[datetime_13],[datetime_14],[datetime_15],[datetime_16],[datetime_17],[datetime_18],[datetime_19],[datetime_20],[datetime_21],[datetime_22],[datetime_23],[datetime_24],[datetime_25]
			,[money_1],[money_2],[money_3],[money_4],[money_5],[money_6],[money_7],[money_8],[money_9],[money_10],[money_11],[money_12],[money_13],[money_14],[money_15]
		FROM FlatProperties WHERE VersionId = @PreviousVersionId
	INSERT INTO ReferenceProperties
		([VersionId],[PropertyTypeId],[ReferredNodeId])
		SELECT @NewVersionId,[PropertyTypeId],[ReferredNodeId]
		FROM ReferenceProperties WHERE VersionId = @PreviousVersionId
	INSERT INTO TextPropertiesNVarchar
		([VersionId],[PropertyTypeId],[Value])
		SELECT @NewVersionId,[PropertyTypeId],[Value]
		FROM TextPropertiesNVarchar WHERE VersionId = @PreviousVersionId
	INSERT INTO TextPropertiesNText
		([VersionId],[PropertyTypeId],[Value])
		SELECT @NewVersionId,[PropertyTypeId],[Value]
		FROM TextPropertiesNText WHERE VersionId = @PreviousVersionId

	-- Set last version pointers
	EXEC proc_Node_SetLastVersion @NodeId
	
	-- Return
	DECLARE @NodeTimestamp timestamp
	DECLARE @LastMajorVersionId int
	DECLARE @LastMinorVersionId int
	SELECT @NodeTimestamp = [Timestamp], @LastMajorVersionId = LastMajorVersionId, @LastMinorVersionId = LastMinorVersionId FROM Nodes WHERE NodeId = @NodeId

	SELECT VersionId, @NodeTimestamp as NodeTimestamp, [Timestamp] as Versiontimestamp, @LastMajorVersionId as LastMajorVersionId, @LastMinorVersionId as LastMinorVersionId FROM Versions WHERE VersionId = @NewVersionId

	SELECT B.BinaryPropertyId, B.PropertyTypeId FROM BinaryProperties B JOIN Files F ON B.FileId = F.FileId
		WHERE B.VersionId = @NewVersionId AND Staging IS NULL
END
GO
/****** Object:  StoredProcedure [dbo].[proc_Version_Insert]    Script Date: 26/08/2019 16:30:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_Version_Insert]
(
	@NodeId int,
	@MajorNumber smallint,
	@MinorNumber smallint,
	@CreationDate datetime,
	@CreatedById int,
	@ModificationDate datetime,
	@ModifiedById int,
	@Status smallint,
	@ChangedData ntext
)
AS

-- Before inserting set versioning status code from "Locked" to "Draft" on all older versions
UPDATE Versions SET Status = 4 WHERE NodeId = @NodeId AND Status = 2

INSERT INTO Versions (
	NodeId,
	MajorNumber,
	MinorNumber,
	CreationDate,
	CreatedById,
	ModificationDate,
	ModifiedById,
	Status,
	ChangedData
	) VALUES (
	@NodeId,
	@MajorNumber,
	@MinorNumber,
	@CreationDate,
	@CreatedById,
	@ModificationDate,
	@ModifiedById,
	@Status,
	@ChangedData
	)


-- > instead of EXEC proc_Node_SetLastVersion @NodeId
DECLARE @VersionId int
SELECT @VersionId = @@IDENTITY
IF @Status = 1
	UPDATE Nodes SET LastMinorVersionId = @VersionId, LastMajorVersionId = @VersionId WHERE NodeId = @NodeId
ELSE
	UPDATE Nodes SET LastMinorVersionId = @VersionId WHERE NodeId = @NodeId
-- <


SELECT VersionId, [Timestamp] FROM Versions WHERE VersionId = @VersionId
SELECT LastMajorVersionId, LastMinorVersionId FROM Nodes WHERE NodeId = @NodeId 
GO
/****** Object:  StoredProcedure [dbo].[proc_Version_Update]    Script Date: 26/08/2019 16:30:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_Version_Update]
(
	@VersionId int,
	@NodeId int,
	@MajorNumber smallint = null,
	@MinorNumber smallint = null,
	@CreationDate datetime,
	@CreatedById int,
	@ModificationDate datetime,
	@ModifiedById int,
	@Status smallint = null,
	@ChangedData ntext = null
)
AS
if(@MajorNumber is null) begin
	if(@MinorNumber is not null or @Status is not null)
		RAISERROR('If @MajorNumber is null, @MinorNumber and @Status must be null.', 17, 1)
	UPDATE Versions SET
		NodeId = @NodeId,
		CreationDate = @CreationDate,
		CreatedById = @CreatedById,
		ModificationDate = @ModificationDate,
		ModifiedById = @ModifiedById,
		ChangedData = @ChangedData
	WHERE VersionId = @VersionId
end
else begin
	if(@MinorNumber is null or @Status is null)
		RAISERROR('If @MajorNumber is not null, @MinorNumber and @Status must not be null.', 17, 1)
	UPDATE Versions SET
		NodeId = @NodeId,
		MajorNumber = @MajorNumber,
		MinorNumber = @MinorNumber,
		CreationDate = @CreationDate,
		CreatedById = @CreatedById,
		ModificationDate = @ModificationDate,
		ModifiedById = @ModifiedById,
		Status = @Status,
		ChangedData = @ChangedData
	WHERE VersionId = @VersionId
	EXEC proc_Node_SetLastVersion @NodeId
end

-- Return
DECLARE @NodeTimestamp timestamp
DECLARE @LastMajorVersionId int
DECLARE @LastMinorVersionId int
SELECT @NodeTimestamp = [Timestamp], @LastMajorVersionId = LastMajorVersionId, @LastMinorVersionId = LastMinorVersionId FROM Nodes WHERE NodeId = @NodeId
SELECT @NodeTimestamp as NodeTimestamp, [Timestamp] as VersionTimestamp, @LastMajorVersionId as LastMajorVersionId, @LastMinorVersionId as LastMinorVersionId FROM Versions WHERE VersionId = @VersionId
GO
/****** Object:  StoredProcedure [dbo].[proc_VersionNumbers_GetByNodeId]    Script Date: 26/08/2019 16:30:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_VersionNumbers_GetByNodeId]
(
	@NodeId int
)
AS
	SELECT MajorNumber, MinorNumber, Status FROM Versions
	WHERE NodeId = @NodeId
	ORDER BY MajorNumber, MinorNumber
GO
/****** Object:  StoredProcedure [dbo].[proc_VersionNumbers_GetByPath]    Script Date: 26/08/2019 16:30:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[proc_VersionNumbers_GetByPath]
(
	@Path nvarchar(450)
)
AS
	SELECT MajorNumber, MinorNumber, Status
	FROM Nodes node
	INNER JOIN Versions version ON node.NodeId = version.NodeId
	WHERE Path = @Path
	ORDER BY MajorNumber, MinorNumber
GO
USE [master]
GO
ALTER DATABASE [SensenetPercobaan] SET  READ_WRITE 
GO
