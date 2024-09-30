CREATE TABLE [dbo].[ContactTimePreference] (
    [Id] INT NOT NULL,
    [Name] NVARCHAR(128) NOT NULL,
    [IsDeleted] [BIT] NOT NULL
) ON [PRIMARY]

--primary key definition
ALTER TABLE [dbo].[ContactTimePreference] ADD CONSTRAINT [PK__ContactTimePreference] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]