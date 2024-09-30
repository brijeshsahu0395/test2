CREATE TABLE [dbo].[TitleType] (
    [TitleTypeId] INT NOT NULL,
    [Name] NVARCHAR(128) NOT NULL,
    [IsDeleted] [BIT] NOT NULL
) ON [PRIMARY]

--primary key definition
ALTER TABLE [dbo].[TitleType] ADD CONSTRAINT [PK__TitleType] PRIMARY KEY CLUSTERED  ([TitleTypeId]) ON [PRIMARY]