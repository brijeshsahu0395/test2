CREATE TABLE [dbo].[User] (
    [SiteId] UNIQUEIDENTIFIER NOT NULL,
    [UserId] UNIQUEIDENTIFIER NOT NULL,
    [Email] NVARCHAR(100) NOT NULL,
    [FirstName] NVARCHAR(50) NOT NULL,
    [LastName] NVARCHAR(50) NOT NULL,

    [IsDeleted] [BIT] NOT NULL,

    /*AUDIT FIELDS*/
    [Created] DATETIME NOT NULL CONSTRAINT [DF__User__Created] DEFAULT (GETDATE()),
    [CreatedBy] UNIQUEIDENTIFIER NOT NULL,
    [LastModified] DATETIME NULL,
    [LastModifiedBy] UNIQUEIDENTIFIER NULL,
    [ChangeSource] NVARCHAR(128) NULL
) ON [PRIMARY]

--primary key definition
ALTER TABLE [dbo].[User] ADD CONSTRAINT [PK__User] PRIMARY KEY CLUSTERED  ([SiteId],[UserId]) ON [PRIMARY]