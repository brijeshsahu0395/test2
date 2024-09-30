CREATE TABLE [dbo].[Contact] (
    [Id] INT NOT NULL IDENTITY(1,1),
    [TypeId] INT NOT NULL,
    [SubTypeId] INT NOT NULL,
    [Title] NVARCHAR(100) NULL,
    [Value] NVARCHAR(100) NOT NULL,
    [IsFavorite] BIT NOT NULL,

    [IsDeleted] BIT NOT NULL,
    /*AUDIT FIELDS*/
    [Created] DATETIME NOT NULL CONSTRAINT [DF__Contact__Created] DEFAULT (GETDATE()),
    [CreatedBy] UNIQUEIDENTIFIER NOT NULL,
    [LastModified] DATETIME NULL,
    [LastModifiedBy] UNIQUEIDENTIFIER NULL,
    [ChangeSource] NVARCHAR(128) NULL
) ON [PRIMARY]

--primary key definition
ALTER TABLE [dbo].[Contact] ADD CONSTRAINT [PK__Contact] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]

ALTER TABLE [dbo].[Contact] ADD CONSTRAINT [FK__Contact__ContactType] FOREIGN KEY ([TypeId]) REFERENCES [dbo].[ContactType] ([Id])
ALTER TABLE [dbo].[Contact] ADD CONSTRAINT [FK__Contact__ContactSubType] FOREIGN KEY ([SubTypeId]) REFERENCES [dbo].[ContactSubType] ([Id])