CREATE TABLE [dbo].[Organization] (
    [OrganizationId] INT NOT NULL IDENTITY(1,1),
    [MemberId] INT NOT NULL,
    [Name] NVARCHAR(256) NOT NULL,
	[SIN] NVARCHAR(100) NOT NULL,
	[TypeId] INT NULL,
    
     [IsDeleted] [BIT] NOT NULL,

     /*AUDIT FIELDS*/
     [Created] DATETIME NOT NULL CONSTRAINT [DF__Organization__Created] DEFAULT (GETDATE()),
     [CreatedBy] UNIQUEIDENTIFIER NOT NULL,
     [LastModified] DATETIME NULL,
     [LastModifiedBy] UNIQUEIDENTIFIER NULL,
     [ChangeSource] NVARCHAR(128) NULL
) ON [PRIMARY]

--primary key definition
ALTER TABLE [dbo].[Organization] ADD CONSTRAINT [PK__Organization] PRIMARY KEY CLUSTERED  ([OrganizationId]) ON [PRIMARY]

CREATE NONCLUSTERED INDEX [IX__Organization__MemberId] ON [dbo].[Organization] ([MemberId])

ALTER TABLE [dbo].[Organization] ADD CONSTRAINT [FK__Organization__Member] FOREIGN KEY ([MemberId]) REFERENCES [dbo].[Member] ([MemberId])
ALTER TABLE [dbo].[Organization] ADD CONSTRAINT [FK__Organization__OrganizationType] FOREIGN KEY ([TypeId]) REFERENCES [dbo].[OrganizationType] ([Id])