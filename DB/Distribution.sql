USE [Distribution]
GO
/****** Object:  Table [dbo].[BillStoringDetails]    Script Date: 07/14/2012 10:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BillStoringDetails](
	[BillID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL
) ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [IX_BillStoringDetails] ON [dbo].[BillStoringDetails] 
(
	[BillID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BillStoring]    Script Date: 07/14/2012 10:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BillStoring](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[OrganizationID] [int] NOT NULL,
	[CreatorID] [int] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[Remark] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[IsDeleted] [bit] NOT NULL,
	[StorageID] [int] NOT NULL,
	[BillID] [int] NOT NULL,
	[BillType] [int] NOT NULL,
 CONSTRAINT [PK_BILLSTORING] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_BillStoring] UNIQUE NONCLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [IX_BillStoring_1] ON [dbo].[BillStoring] 
(
	[OrganizationID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BillStoreOutDetails]    Script Date: 07/14/2012 10:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BillStoreOutDetails](
	[BillID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL
) ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [IX_BillStoreOutDetails] ON [dbo].[BillStoreOutDetails] 
(
	[BillID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BillStoreOut]    Script Date: 07/14/2012 10:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BillStoreOut](
	[ID] [int] NOT NULL,
	[Code] [char](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[OrgID] [int] NOT NULL,
	[CreatorID] [int] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[Remark] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[IsDeleted] [bit] NOT NULL,
	[StorageID] [int] NOT NULL,
	[BillID] [int] NOT NULL,
	[BillType] [char](1) COLLATE Chinese_PRC_CI_AS NOT NULL,
 CONSTRAINT [PK_BILLSTOREOUT] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_BillStoreOut] ON [dbo].[BillStoreOut] 
(
	[Code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BillStoreMoveDetails]    Script Date: 07/14/2012 10:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BillStoreMoveDetails](
	[BillID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL
) ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [IX_BillStoreMoveDetails] ON [dbo].[BillStoreMoveDetails] 
(
	[BillID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BillStoreMove]    Script Date: 07/14/2012 10:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BillStoreMove](
	[ID] [int] NOT NULL,
	[Code] [char](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[OrgID] [int] NOT NULL,
	[CreatorID] [int] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[Remark] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[IsDeleted] [bit] NOT NULL,
	[StorageIDOut] [int] NOT NULL,
	[StorageIDIn] [int] NOT NULL,
 CONSTRAINT [PK_BILLSTOREMOVE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_BillStoreMove] ON [dbo].[BillStoreMove] 
(
	[Code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BillStocktakeDetails]    Script Date: 07/14/2012 10:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BillStocktakeDetails](
	[BillID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL
) ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [IX_BillStocktakeDetails] ON [dbo].[BillStocktakeDetails] 
(
	[BillID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BillStocktakeContrastDetails]    Script Date: 07/14/2012 10:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BillStocktakeContrastDetails](
	[QuaStocktake] [int] NOT NULL,
	[QuaStockOrig] [int] NOT NULL,
	[BillID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL
) ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [IX_BillStocktakeContrastDetails] ON [dbo].[BillStocktakeContrastDetails] 
(
	[BillID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BillStocktakeContrast]    Script Date: 07/14/2012 10:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BillStocktakeContrast](
	[ID] [int] NOT NULL,
	[Code] [char](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[OrgID] [int] NOT NULL,
	[CreatorID] [int] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[Remark] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[IsDeleted] [bit] NOT NULL,
	[StorageID] [int] NOT NULL,
 CONSTRAINT [PK_BILLSTOCKTAKECONTRAST] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_BillStocktakeContrast] ON [dbo].[BillStocktakeContrast] 
(
	[Code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BillStocktake]    Script Date: 07/14/2012 10:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BillStocktake](
	[ID] [int] NOT NULL,
	[Code] [char](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[OrgID] [int] NOT NULL,
	[CreatorID] [int] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[Remark] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[IsDeleted] [bit] NOT NULL,
	[StorageID] [int] NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_BILLSTOCKTAKE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_BillStocktake] ON [dbo].[BillStocktake] 
(
	[Code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BillRetailDetails]    Script Date: 07/14/2012 10:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BillRetailDetails](
	[Discount] [numeric](2, 1) NOT NULL,
	[Price] [decimal](8, 2) NOT NULL,
	[BillID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL
) ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [IX_BillRetailDetails] ON [dbo].[BillRetailDetails] 
(
	[BillID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BillRetail]    Script Date: 07/14/2012 10:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BillRetail](
	[ID] [int] NOT NULL,
	[Code] [char](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[OrgID] [int] NOT NULL,
	[CreatorID] [int] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[Remark] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[IsDeleted] [bit] NOT NULL,
	[StorageID] [int] NOT NULL,
	[VIPCode] [varchar](15) COLLATE Chinese_PRC_CI_AS NULL,
	[CostMoney] [decimal](8, 2) NOT NULL,
	[ReceiveMoney] [decimal](8, 2) NOT NULL,
	[ReceiveTicket] [int] NOT NULL,
	[TicketMoney] [decimal](8, 2) NOT NULL,
	[TicketType] [int] NULL,
 CONSTRAINT [PK_BILLRETAIL] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_BillRetail] ON [dbo].[BillRetail] 
(
	[Code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BillOrderDetails]    Script Date: 07/14/2012 10:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BillOrderDetails](
	[QuaCancel] [int] NOT NULL,
	[QuaDelivered] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[BillID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL
) ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [IX_BillOrderDetails] ON [dbo].[BillOrderDetails] 
(
	[BillID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BillOrder]    Script Date: 07/14/2012 10:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BillOrder](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[OrganizationID] [int] NOT NULL,
	[CreatorID] [int] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[Remark] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[IsDeleted] [bit] NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_BILLORDER] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_BillOrder] ON [dbo].[BillOrder] 
(
	[Code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BillGoodReturnDetails]    Script Date: 07/14/2012 10:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BillGoodReturnDetails](
	[BillID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL
) ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [IX_BillGoodReturnDetails] ON [dbo].[BillGoodReturnDetails] 
(
	[BillID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BillGoodReturn]    Script Date: 07/14/2012 10:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BillGoodReturn](
	[ID] [int] NOT NULL,
	[Code] [char](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[OrgID] [int] NOT NULL,
	[CreatorID] [int] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[Remark] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[IsDeleted] [bit] NOT NULL,
	[StorageID] [int] NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_BILLGOODRETURN] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_BillGoodReturn] ON [dbo].[BillGoodReturn] 
(
	[Code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BillDeliveryDetails]    Script Date: 07/14/2012 10:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BillDeliveryDetails](
	[Discount] [numeric](2, 1) NOT NULL,
	[Price] [decimal](8, 2) NOT NULL,
	[BillID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL
) ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [IX_BillDeliveryDetails] ON [dbo].[BillDeliveryDetails] 
(
	[BillID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BillDelivery]    Script Date: 07/14/2012 10:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BillDelivery](
	[ID] [int] NOT NULL,
	[Code] [varchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[OrganizationID] [int] NOT NULL,
	[StorageID] [int] NOT NULL,
	[ToOrganizationID] [int] NOT NULL,
	[CreatorID] [int] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[Remark] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[IsDeleted] [bit] NOT NULL,
	[BillAllocateCode] [varchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_BILLDELIVERY] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_BillDelivery] UNIQUE NONCLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [IX_BillDelivery_1] ON [dbo].[BillDelivery] 
(
	[OrganizationID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BillCannibalizeDetials]    Script Date: 07/14/2012 10:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BillCannibalizeDetials](
	[BillID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL
) ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [IX_BillCannibalizeDetials] ON [dbo].[BillCannibalizeDetials] 
(
	[BillID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BillCannibalize]    Script Date: 07/14/2012 10:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BillCannibalize](
	[ID] [int] NOT NULL,
	[Code] [char](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[OrgID] [int] NOT NULL,
	[CreatorID] [int] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[Remark] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[IsDeleted] [bit] NOT NULL,
	[StorageID] [int] NOT NULL,
	[CannibalizeInID] [int] NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_BILLCANNIBALIZE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_BillCannibalize] ON [dbo].[BillCannibalize] 
(
	[Code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BillAllocateDetails]    Script Date: 07/14/2012 10:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BillAllocateDetails](
	[QuaCancel] [int] NOT NULL,
	[QuaDelivery] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[BillID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL
) ON [PRIMARY]
GO
CREATE CLUSTERED INDEX [IX_BillAllocateDetails] ON [dbo].[BillAllocateDetails] 
(
	[BillID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BillAllocate]    Script Date: 07/14/2012 10:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[BillAllocate](
	[ID] [int] NOT NULL,
	[Code] [char](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[OrgID] [int] NOT NULL,
	[CreatorID] [int] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[Remark] [varchar](200) COLLATE Chinese_PRC_CI_AS NULL,
	[IsDeleted] [bit] NOT NULL,
	[StorageID] [int] NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_BILLALLOCATE] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_BillAllocate] ON [dbo].[BillAllocate] 
(
	[Code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stock]    Script Date: 07/14/2012 10:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stock](
	[StorageID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NOT NULL
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Stock] ON [dbo].[Stock] 
(
	[StorageID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProUnit]    Script Date: 07/14/2012 10:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProUnit](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [char](3) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[Name] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[CreatorID] [int] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[Flag] [bit] NOT NULL,
 CONSTRAINT [PK_ProUnit] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_ProUnit] UNIQUE NONCLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_ProUnit_1] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProStyleMatching]    Script Date: 07/14/2012 10:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProStyleMatching](
	[Code] [char](5) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[StyleID] [int] NOT NULL,
	[CreatorID] [int] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[Description] [varchar](500) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [IX_ProStyleMatching_1] UNIQUE NONCLUSTERED 
(
	[Code] ASC,
	[StyleID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE CLUSTERED INDEX [IX_ProStyleMatching] ON [dbo].[ProStyleMatching] 
(
	[Code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'标示搭配方案' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ProStyleMatching', @level2type=N'COLUMN',@level2name=N'Code'
GO
/****** Object:  Table [dbo].[ProStyle]    Script Date: 07/14/2012 10:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProStyle](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[BrandID] [int] NOT NULL,
	[NameID] [int] NOT NULL,
	[Year] [char](4) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[Quarter] [tinyint] NOT NULL,
	[UnitID] [int] NOT NULL,
	[BoduanID] [int] NOT NULL,
	[Price] [decimal](12, 2) NOT NULL,
	[PictureUrl] [varchar](150) COLLATE Chinese_PRC_CI_AS NULL,
	[Flag] [bit] NOT NULL,
	[CreatorID] [int] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_ProStyle] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_ProStyle] ON [dbo].[ProStyle] 
(
	[Code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProSize]    Script Date: 07/14/2012 10:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProSize](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [char](2) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[Name] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[CreatorID] [int] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[Flag] [bit] NOT NULL,
 CONSTRAINT [PK_ProSize] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProName]    Script Date: 07/14/2012 10:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProName](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [char](4) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[Name] [varchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[CreatorID] [int] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[Flag] [bit] NOT NULL,
 CONSTRAINT [PK_ProName] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Product]    Script Date: 07/14/2012 10:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](30) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[StyleID] [int] NOT NULL,
	[ColorID] [int] NOT NULL,
	[SizeID] [int] NOT NULL,
	[Flag] [bit] NOT NULL,
	[CreatorID] [int] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_Product] ON [dbo].[Product] 
(
	[Code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProColor]    Script Date: 07/14/2012 10:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProColor](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [char](3) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[Name] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[RGBCode] [char](9) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[CreatorID] [int] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_ProColor] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_ProColor] ON [dbo].[ProColor] 
(
	[Code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProBrand]    Script Date: 07/14/2012 10:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProBrand](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[Name] [varchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[CreatorID] [int] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[Flag] [bit] NOT NULL,
	[Description] [varchar](500) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK_ProBrand] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_ProBrand] ON [dbo].[ProBrand] 
(
	[Code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProBoduan]    Script Date: 07/14/2012 10:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProBoduan](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [char](1) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[Name] [varchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[CreatorID] [int] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_ProBoduan] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrganizationPriceFloat]    Script Date: 07/14/2012 10:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OrganizationPriceFloat](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationID] [int] NOT NULL,
	[BrandID] [int] NOT NULL,
	[Year] [char](4) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[Quarter] [tinyint] NOT NULL,
	[FloatRate] [decimal](4, 2) NOT NULL,
	[LastNumber] [int] NOT NULL,
	[CreatorID] [int] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_OrganizationPriceFloat] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [IX_OrganizationPriceFloat] ON [dbo].[OrganizationPriceFloat] 
(
	[OrganizationID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrganizationCredit]    Script Date: 07/14/2012 10:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OrganizationCredit](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationID] [int] NOT NULL,
	[BrandID] [int] NOT NULL,
	[CreditMoney] [int] NOT NULL,
	[EndDate] [date] NULL,
	[CreateTime] [datetime] NOT NULL,
	[CreatorID] [int] NOT NULL,
	[Remark] [varchar](500) COLLATE Chinese_PRC_CI_AS NULL,
 CONSTRAINT [PK_OrganizationCredit] PRIMARY KEY CLUSTERED 
(
	[OrganizationID] ASC,
	[BrandID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrganizationContractDiscount]    Script Date: 07/14/2012 10:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[OrganizationContractDiscount](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationID] [int] NOT NULL,
	[BrandID] [int] NOT NULL,
	[Year] [char](4) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[Quarter] [tinyint] NOT NULL,
	[Discount] [decimal](4, 2) NOT NULL,
	[CreatorID] [int] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_OrganizationContractDiscount] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
CREATE NONCLUSTERED INDEX [IX_OrganizationContractDiscount] ON [dbo].[OrganizationContractDiscount] 
(
	[OrganizationID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrganizationBrand]    Script Date: 07/14/2012 10:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrganizationBrand](
	[OrganizationID] [int] NOT NULL,
	[BrandID] [int] NOT NULL,
	[CreatorID] [int] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_OrganizationBrand] PRIMARY KEY CLUSTERED 
(
	[OrganizationID] ASC,
	[BrandID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserBrand]    Script Date: 07/14/2012 10:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserBrand](
	[UserID] [int] NOT NULL,
	[BrandID] [int] NOT NULL,
	[CreatorID] [int] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_UserBrand] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC,
	[BrandID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Storage]    Script Date: 07/14/2012 10:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Storage](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OrganizationID] [int] NOT NULL,
	[Name] [varchar](80) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[CreatorID] [int] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[Flag] [bit] NOT NULL,
 CONSTRAINT [PK_Storage] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VipUpTactic]    Script Date: 07/14/2012 10:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VipUpTactic](
	[Code] [char](2) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[FormerType] [char](2) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[AfterType] [char](2) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[OnceConsume] [int] NULL,
	[DateSpan] [int] NULL,
	[SpanConsume] [int] NULL,
	[Flag] [bit] NOT NULL,
	[CreatorID] [int] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_VipUpTactic] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VipType]    Script Date: 07/14/2012 10:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VipType](
	[Code] [char](2) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[Name] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[CreatorID] [int] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[Flag] [bit] NOT NULL,
	[Description] [varchar](500) COLLATE Chinese_PRC_CI_AS NULL,
	[Discount] [int] NOT NULL,
 CONSTRAINT [PK_VipType] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [IX_VipType_1] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VipInformation]    Script Date: 07/14/2012 10:04:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VipInformation](
	[Code] [varchar](20) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[TypeCode] [char](2) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[CustomerName] [nvarchar](10) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[Sex] [bit] NOT NULL,
	[Birthday] [date] NULL,
	[Tel] [varchar](15) COLLATE Chinese_PRC_CI_AS NULL,
	[Address] [nvarchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[IDCard] [varchar](30) COLLATE Chinese_PRC_CI_AS NULL,
	[SuitStyle] [varchar](50) COLLATE Chinese_PRC_CI_AS NULL,
	[POSCode] [varchar](50) COLLATE Chinese_PRC_CI_AS NOT NULL,
	[CreatorID] [int] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[CardIsSend] [bit] NOT NULL,
 CONSTRAINT [PK_VipInformation] PRIMARY KEY CLUSTERED 
(
	[Code] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0:女性 1:男性' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VipInformation', @level2type=N'COLUMN',@level2name=N'Sex'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'该顾客适合的穿衣风格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VipInformation', @level2type=N'COLUMN',@level2name=N'SuitStyle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否已发卡' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'VipInformation', @level2type=N'COLUMN',@level2name=N'CardIsSend'
GO
/****** Object:  View [dbo].[ViewProduct]    Script Date: 07/14/2012 10:04:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ViewProduct]
AS
SELECT p.ID ProductID, p.Code ProductCode, ps.Code StyleCode, 
	c.Code ColorCode,s.Code SizeCode,s.Name SizeName,b.ID BrandID,
	b.Code BrandCode, b.Name BrandName, ps.Price
FROM dbo.Product p 
	INNER JOIN dbo.ProStyle ps on p.StyleID = ps.ID
	inner join dbo.ProColor c on p.ColorID = c.ID
	inner join dbo.ProSize s ON p.SizeID = s.ID 
	inner join dbo.ProBrand b ON ps.BrandID=b.ID
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ProBoduan"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 182
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ProBrand"
            Begin Extent = 
               Top = 6
               Left = 220
               Bottom = 125
               Right = 364
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ProColor"
            Begin Extent = 
               Top = 6
               Left = 402
               Bottom = 125
               Right = 546
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Product"
            Begin Extent = 
               Top = 6
               Left = 584
               Bottom = 125
               Right = 728
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ProName"
            Begin Extent = 
               Top = 126
               Left = 38
               Bottom = 245
               Right = 182
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ProSize"
            Begin Extent = 
               Top = 126
               Left = 220
               Bottom = 245
               Right = 364
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ProStyle"
            Begin Extent = 
               Top = 126
               Left = 402
               Bottom = 245
               Right = 546
            End
            DisplayFlags = 28' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ViewProduct'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'0
            TopColumn = 0
         End
         Begin Table = "ProUnit"
            Begin Extent = 
               Top = 126
               Left = 584
               Bottom = 245
               Right = 728
            End
            DisplayFlags = 280
            TopColumn = 2
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ViewProduct'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ViewProduct'
GO
/****** Object:  View [dbo].[ViewOrganization]    Script Date: 07/14/2012 10:04:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ViewOrganization]
AS
SELECT     ID, Code, ParentID, Name, TypeId, AreaID, ProvienceID, CityID, Address, Telephone, Linkman, Flag, CreatorID, CreateTime, Description
FROM         SysProcess.dbo.SysOrganization
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "SysOrganization (SysProcess.dbo)"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 185
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ViewOrganization'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ViewOrganization'
GO
/****** Object:  StoredProcedure [dbo].[StockStatistics]    Script Date: 07/14/2012 10:04:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[StockStatistics]	@OrganizationID int,	@StorageID int,	@StyleCode varchar(20),	@BrandID int,	@NameID int,	@Year char(4),	@Quarter tinyint,	@BoduanID intASBEGIN	SET NOCOUNT ON;    select Product.Code 条形码, ProBrand.Name 品牌, ProStyle.Code 款号, ProColor.Code 色号,    ProSize.Code 尺码, ProName.Name 品名, ProStyle.[Year] 年份, ProStyle.[Quarter] 季度,    ProStyle.Price 单价, Stock.Quantity 数量 from Stock     inner join Storage    on Stock.StorageID = Storage.ID     and Storage.OrganizationID = @OrganizationID    and (@StorageID=0 or Stock.StorageID=@StorageID)    inner join Product    on Stock.ProductID=Product.ID    inner join ProStyle     on Product.StyleID = ProStyle.ID    and (@StyleCode='' or ProStyle.Code like '%'+@StyleCode+'%')    and (@BrandID=0 or ProStyle.BrandID = @BrandID)    and (@NameID=0 or ProStyle.NameID = @NameID)    and (@Year='' or ProStyle.[Year] = @Year)    and (@Quarter=0 or ProStyle.[Quarter] = @Quarter)    and (@BoduanID=0 or ProStyle.BoduanID = @BoduanID)    inner join ProBrand     on ProStyle.BrandID = ProBrand.ID    inner join ProColor     on Product.ColorID = ProColor.ID    inner join ProSize    ON Product.SizeID = ProSize.ID    inner join ProName    on ProStyle.NameID = ProName.IDEND
GO
/****** Object:  StoredProcedure [dbo].[GetOrganizationPriceHierarchy]    Script Date: 07/14/2012 10:04:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		徐时进
-- Create date: 2012-6-2
-- Description:	获取机构价格策略层级关系
-- exec GetOrganizationPriceHierarchy 8,1,'2010',1
-- =============================================
CREATE PROCEDURE [dbo].[GetOrganizationPriceHierarchy]
	@OrganizationID int,
	@BrandID int,
	@Year char(4),
	@Quarter int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	with
	organizations as 
	(
		select ID OrganizationID,ParentID from ViewOrganization where ID=@OrganizationID
		union all
		select a.ID OrganizationID,a.ParentID from ViewOrganization a, organizations b where 
		a.ID=b.ParentID
	)
	select os.ParentID,os.OrganizationID,pf.FloatRate,pf.LastNumber from OrganizationPriceFloat pf 
	inner join organizations os 
	on pf.OrganizationID = os.OrganizationID and pf.BrandID = @BrandID and pf.[Year]=@Year and pf.[Quarter] = @Quarter 
	order by os.ParentID
END
GO
/****** Object:  Default [DF_BillStoringDetails_IsDeleted]    Script Date: 07/14/2012 10:04:07 ******/
ALTER TABLE [dbo].[BillStoringDetails] ADD  CONSTRAINT [DF_BillStoringDetails_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF_BillStoring_CreateTime]    Script Date: 07/14/2012 10:04:07 ******/
ALTER TABLE [dbo].[BillStoring] ADD  CONSTRAINT [DF_BillStoring_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF_BillStoring_IsDeleted]    Script Date: 07/14/2012 10:04:07 ******/
ALTER TABLE [dbo].[BillStoring] ADD  CONSTRAINT [DF_BillStoring_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF_BillOrderDetails_IsDeleted]    Script Date: 07/14/2012 10:04:07 ******/
ALTER TABLE [dbo].[BillOrderDetails] ADD  CONSTRAINT [DF_BillOrderDetails_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF_BillOrder_CreateTime]    Script Date: 07/14/2012 10:04:07 ******/
ALTER TABLE [dbo].[BillOrder] ADD  CONSTRAINT [DF_BillOrder_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF_BillOrder_IsDeleted]    Script Date: 07/14/2012 10:04:07 ******/
ALTER TABLE [dbo].[BillOrder] ADD  CONSTRAINT [DF_BillOrder_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF_BillDelivery_CreateTime]    Script Date: 07/14/2012 10:04:07 ******/
ALTER TABLE [dbo].[BillDelivery] ADD  CONSTRAINT [DF_BillDelivery_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF_BillDelivery_IsDeleted]    Script Date: 07/14/2012 10:04:07 ******/
ALTER TABLE [dbo].[BillDelivery] ADD  CONSTRAINT [DF_BillDelivery_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF_ProUnit_CreateTime]    Script Date: 07/14/2012 10:04:07 ******/
ALTER TABLE [dbo].[ProUnit] ADD  CONSTRAINT [DF_ProUnit_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF_ProUnit_Flag]    Script Date: 07/14/2012 10:04:07 ******/
ALTER TABLE [dbo].[ProUnit] ADD  CONSTRAINT [DF_ProUnit_Flag]  DEFAULT ((1)) FOR [Flag]
GO
/****** Object:  Default [DF_ProStyleMatching_CreateTime]    Script Date: 07/14/2012 10:04:07 ******/
ALTER TABLE [dbo].[ProStyleMatching] ADD  CONSTRAINT [DF_ProStyleMatching_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF_ProStyle_Flag]    Script Date: 07/14/2012 10:04:07 ******/
ALTER TABLE [dbo].[ProStyle] ADD  CONSTRAINT [DF_ProStyle_Flag]  DEFAULT ((1)) FOR [Flag]
GO
/****** Object:  Default [DF_ProStyle_CreateTime]    Script Date: 07/14/2012 10:04:07 ******/
ALTER TABLE [dbo].[ProStyle] ADD  CONSTRAINT [DF_ProStyle_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF_ProSize_CreateTime]    Script Date: 07/14/2012 10:04:07 ******/
ALTER TABLE [dbo].[ProSize] ADD  CONSTRAINT [DF_ProSize_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF_ProSize_Flag]    Script Date: 07/14/2012 10:04:07 ******/
ALTER TABLE [dbo].[ProSize] ADD  CONSTRAINT [DF_ProSize_Flag]  DEFAULT ((1)) FOR [Flag]
GO
/****** Object:  Default [DF_ProName_CreateTime]    Script Date: 07/14/2012 10:04:07 ******/
ALTER TABLE [dbo].[ProName] ADD  CONSTRAINT [DF_ProName_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF_ProName_Flag]    Script Date: 07/14/2012 10:04:07 ******/
ALTER TABLE [dbo].[ProName] ADD  CONSTRAINT [DF_ProName_Flag]  DEFAULT ((1)) FOR [Flag]
GO
/****** Object:  Default [DF_Product_Flag]    Script Date: 07/14/2012 10:04:07 ******/
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_Flag]  DEFAULT ((1)) FOR [Flag]
GO
/****** Object:  Default [DF_Product_CreateTime]    Script Date: 07/14/2012 10:04:07 ******/
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF_ProColor_CreateTime]    Script Date: 07/14/2012 10:04:07 ******/
ALTER TABLE [dbo].[ProColor] ADD  CONSTRAINT [DF_ProColor_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF_ProBrand_CreateTime]    Script Date: 07/14/2012 10:04:07 ******/
ALTER TABLE [dbo].[ProBrand] ADD  CONSTRAINT [DF_ProBrand_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF_ProBrand_Flag]    Script Date: 07/14/2012 10:04:07 ******/
ALTER TABLE [dbo].[ProBrand] ADD  CONSTRAINT [DF_ProBrand_Flag]  DEFAULT ((1)) FOR [Flag]
GO
/****** Object:  Default [DF_ProBoduan_CreateTime]    Script Date: 07/14/2012 10:04:07 ******/
ALTER TABLE [dbo].[ProBoduan] ADD  CONSTRAINT [DF_ProBoduan_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF_OrganizationPriceFloat_CreateTime]    Script Date: 07/14/2012 10:04:07 ******/
ALTER TABLE [dbo].[OrganizationPriceFloat] ADD  CONSTRAINT [DF_OrganizationPriceFloat_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF_OrganizationCredit_CreateTime]    Script Date: 07/14/2012 10:04:07 ******/
ALTER TABLE [dbo].[OrganizationCredit] ADD  CONSTRAINT [DF_OrganizationCredit_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF_OrganizationContractDiscount_CreateTime]    Script Date: 07/14/2012 10:04:07 ******/
ALTER TABLE [dbo].[OrganizationContractDiscount] ADD  CONSTRAINT [DF_OrganizationContractDiscount_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF_OrganizationBrand_CreateTime]    Script Date: 07/14/2012 10:04:07 ******/
ALTER TABLE [dbo].[OrganizationBrand] ADD  CONSTRAINT [DF_OrganizationBrand_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF_UserBrand_CreateTime]    Script Date: 07/14/2012 10:04:07 ******/
ALTER TABLE [dbo].[UserBrand] ADD  CONSTRAINT [DF_UserBrand_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF_Storage_CreateTime]    Script Date: 07/14/2012 10:04:07 ******/
ALTER TABLE [dbo].[Storage] ADD  CONSTRAINT [DF_Storage_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF_Storage_Flag]    Script Date: 07/14/2012 10:04:07 ******/
ALTER TABLE [dbo].[Storage] ADD  CONSTRAINT [DF_Storage_Flag]  DEFAULT ((1)) FOR [Flag]
GO
/****** Object:  Default [DF_VipUpTactic_Flag]    Script Date: 07/14/2012 10:04:07 ******/
ALTER TABLE [dbo].[VipUpTactic] ADD  CONSTRAINT [DF_VipUpTactic_Flag]  DEFAULT ((1)) FOR [Flag]
GO
/****** Object:  Default [DF_VipUpTactic_CreateTime]    Script Date: 07/14/2012 10:04:07 ******/
ALTER TABLE [dbo].[VipUpTactic] ADD  CONSTRAINT [DF_VipUpTactic_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF_VipType_CreateTime]    Script Date: 07/14/2012 10:04:07 ******/
ALTER TABLE [dbo].[VipType] ADD  CONSTRAINT [DF_VipType_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF_VipType_Flag]    Script Date: 07/14/2012 10:04:07 ******/
ALTER TABLE [dbo].[VipType] ADD  CONSTRAINT [DF_VipType_Flag]  DEFAULT ((1)) FOR [Flag]
GO
/****** Object:  Default [DF_VipInformation_Sex]    Script Date: 07/14/2012 10:04:07 ******/
ALTER TABLE [dbo].[VipInformation] ADD  CONSTRAINT [DF_VipInformation_Sex]  DEFAULT ((0)) FOR [Sex]
GO
/****** Object:  Default [DF_VipInformation_CreateTime]    Script Date: 07/14/2012 10:04:07 ******/
ALTER TABLE [dbo].[VipInformation] ADD  CONSTRAINT [DF_VipInformation_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF_VipInformation_CardIsSend]    Script Date: 07/14/2012 10:04:07 ******/
ALTER TABLE [dbo].[VipInformation] ADD  CONSTRAINT [DF_VipInformation_CardIsSend]  DEFAULT ((1)) FOR [CardIsSend]
GO
