CREATE TABLE [dbo].[Person] (
    [PersonId] INT NOT NULL IDENTITY(1,1),
    [MemberId] INT NOT NULL,
    [FirstName] NVARCHAR(50) NOT NULL,
    [MiddleName] NVARCHAR(50) NULL,
    [LastName] NVARCHAR(50) NOT NULL,
    [Nickname] NVARCHAR(50) NULL,
    [TitleTypeId] INT NULL,
    [GenderTypeId] INT NULL,
    [MaritalStatusId] INT NULL,
    [DateOfBirth] DATETIME NOT NULL,
    [DateOfDeath] DATETIME NULL,
    
    [IsDeleted] [BIT] NOT NULL,

    /*AUDIT FIELDS*/
    [Created] DATETIME NOT NULL CONSTRAINT [DF__Person__Created] DEFAULT (GETDATE()),
    [CreatedBy] UNIQUEIDENTIFIER NOT NULL,
    [LastModified] DATETIME NULL,
    [LastModifiedBy] UNIQUEIDENTIFIER NULL,
    [ChangeSource] NVARCHAR(128) NULL
) ON [PRIMARY]

--primary key definition
ALTER TABLE [dbo].[Person] ADD CONSTRAINT [PK__Person] PRIMARY KEY CLUSTERED  ([PersonId]) ON [PRIMARY]

CREATE NONCLUSTERED INDEX [IX__Person__MemberId] ON [dbo].[Person] ([MemberId])

ALTER TABLE [dbo].[Person] ADD CONSTRAINT [FK__Person__Member] FOREIGN KEY ([MemberId]) REFERENCES [dbo].[Member] ([MemberId])
ALTER TABLE [dbo].[Person] ADD CONSTRAINT [FK__Person__GenderType] FOREIGN KEY ([GenderTypeId]) REFERENCES [dbo].[GenderType] ([GenderTypeId])
ALTER TABLE [dbo].[Person] ADD CONSTRAINT [FK__Person__TitleType] FOREIGN KEY ([TitleTypeId]) REFERENCES [dbo].[TitleType] ([TitleTypeId])
ALTER TABLE [dbo].[Person] ADD CONSTRAINT [FK__Person__MaritalStatus] FOREIGN KEY ([MaritalStatusId]) REFERENCES [dbo].[MaritalStatus] ([MaritalStatusId])