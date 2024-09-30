CREATE TABLE [dbo].[MemberStatus] (
    [Id] INT NOT NULL,
    [Name] NVARCHAR(128) NOT NULL,
    [IsDeleted] [BIT] NOT NULL
) ON [PRIMARY]

--primary key definition
ALTER TABLE [dbo].[MemberStatus] ADD CONSTRAINT [PK__MemberStatus] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]

