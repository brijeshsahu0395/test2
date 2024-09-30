CREATE TABLE [dbo].[Province] (
    [Id] INT NOT NULL,
    [Name] NVARCHAR(128) NOT NULL,
	[Key] NVARCHAR(2) NOT NULL,
    [IsDeleted] [BIT] NOT NULL
) ON [PRIMARY]

--primary key definition
ALTER TABLE [dbo].[Province] ADD CONSTRAINT [PK__Province] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
