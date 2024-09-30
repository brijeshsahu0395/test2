CREATE TABLE [dbo].[Document] (
    [Id] INT NOT NULL IDENTITY(1,1),
    [PersonId] INT NOT NULL,
    [DocumentTypeId] INT NULL,
    [ProvinceId] INT NULL,
    [Number] NVARCHAR(128) NOT NULL,
    [IssueDate] DATETIME2(7) NULL,
    [ExpiryDate] DATETIME2(7) NULL,
    
    [IsDeleted] [BIT] NOT NULL,

    /*AUDIT FIELDS*/
    [Created] DATETIME NOT NULL CONSTRAINT [DF__Document__Created] DEFAULT (GETDATE()),
    [CreatedBy] UNIQUEIDENTIFIER NOT NULL,
    [LastModified] DATETIME NULL,
    [LastModifiedBy] UNIQUEIDENTIFIER NULL,
    [ChangeSource] NVARCHAR(128) NULL
) ON [PRIMARY]

--primary key definition
ALTER TABLE [dbo].[Document] ADD CONSTRAINT [PK__Document] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]

ALTER TABLE [dbo].[Document] ADD CONSTRAINT [FK__Document__Person] FOREIGN KEY ([PersonId]) REFERENCES [dbo].[Person] ([PersonId])
ALTER TABLE [dbo].[Document] ADD CONSTRAINT [FK__Document__DocumentType] FOREIGN KEY ([DocumentTypeId]) REFERENCES [dbo].[DocumentType] ([Id])
ALTER TABLE [dbo].[Document] ADD CONSTRAINT [FK__Document__Province] FOREIGN KEY ([ProvinceId]) REFERENCES [dbo].[Province] ([Id])