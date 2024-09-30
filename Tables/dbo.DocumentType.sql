CREATE TABLE [dbo].[DocumentType] (
    [Id] INT NOT NULL IDENTITY(1,1),
    [Name] NVARCHAR(128) NOT NULL
) ON [PRIMARY]

--primary key definition
ALTER TABLE [dbo].[DocumentType] ADD CONSTRAINT [PK__DocumentType] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]