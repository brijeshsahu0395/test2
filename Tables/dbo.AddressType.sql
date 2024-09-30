CREATE TABLE [dbo].[AddressType] (
    [Id] INT NOT NULL,
    [Name] NVARCHAR(128) NOT NULL,
    [IsDeleted] [BIT] NOT NULL
) ON [PRIMARY]

--primary key definition
ALTER TABLE [dbo].[AddressType] ADD CONSTRAINT [PK__AddressType] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
