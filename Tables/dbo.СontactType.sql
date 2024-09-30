CREATE TABLE [dbo].[ContactType] (
    [Id] INT NOT NULL,
    [Name] NVARCHAR(128) NOT NULL,
    [IsDeleted] [BIT] NOT NULL
) ON [PRIMARY]

--primary key definition
ALTER TABLE [dbo].[ContactType] ADD CONSTRAINT [PK__ContactType] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
