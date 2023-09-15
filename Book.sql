
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Book](
	[BookID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](200) NOT NULL,
	[PublisherID] [int] NULL,
	[AutherID] [int] NULL,
	[Amount] [decimal](10, 2) NOT NULL,
	[yearofPublication] [int] NULL,
	[Edition] [int] NULL,
	[MLACitiation] [nvarchar](200) NULL,
	[PlaceofPublication] [nvarchar](50) NULL,
	[SiteURL] [nvarchar](300) NULL,
PRIMARY KEY CLUSTERED 
(
	[BookID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [PK_Auther_AutherID] FOREIGN KEY([AutherID])
REFERENCES [dbo].[Auther] ([AutherID])
GO

ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [PK_Auther_AutherID]
GO

ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [PK_Publisher_PublisherID] FOREIGN KEY([PublisherID])
REFERENCES [dbo].[Publisher] ([PublisherID])
GO

ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [PK_Publisher_PublisherID]
GO


