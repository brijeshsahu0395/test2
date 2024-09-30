CREATE TABLE [dbo].[OrganizationType] (
    [Id] INT NOT NULL,
    [Name] NVARCHAR(128) NOT NULL,
    [IsDeleted] [BIT] NOT NULL
) ON [PRIMARY]

--primary key definition
ALTER TABLE [dbo].[OrganizationType] ADD CONSTRAINT [PK__OrganizationType] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
