CREATE TABLE [dbo].[ContactMethodPreference] (
    [Id] INT NOT NULL,
    [Name] NVARCHAR(128) NOT NULL,
    [IsDeleted] [BIT] NOT NULL
) ON [PRIMARY]

--primary key definition
ALTER TABLE [dbo].[ContactMethodPreference] ADD CONSTRAINT [PK__ContactMethodPreference] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]