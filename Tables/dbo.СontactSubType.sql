CREATE TABLE [dbo].[ContactSubType] (
    [Id] INT NOT NULL,
    [Name] NVARCHAR(128) NOT NULL,
    [IsDeleted] [BIT] NOT NULL
) ON [PRIMARY]

--primary key definition
ALTER TABLE [dbo].[ContactSubType] ADD CONSTRAINT [PK__ContactSubType] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
