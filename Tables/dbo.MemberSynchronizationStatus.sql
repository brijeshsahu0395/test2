CREATE TABLE [dbo].[MemberSynchronizationStatus] (
    [Id] INT NOT NULL,
    [Name] NVARCHAR(128) NOT NULL,
    [IsDeleted] [BIT] NOT NULL
) ON [PRIMARY]

--primary key definition
ALTER TABLE [dbo].[MemberSynchronizationStatus] ADD CONSTRAINT [PK__MemberSynchronizationStatus] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]