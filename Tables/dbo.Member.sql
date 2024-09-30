CREATE TABLE [dbo].[Member] (
    [SiteId] UNIQUEIDENTIFIER NOT NULL,
    [MemberId] INT NOT NULL IDENTITY(1,1),
    [MemberNumber] NVARCHAR(25) NOT NULL,
    [MemberTypeId] INT NOT NULL,
    [BranchId] INT NOT NULL,
    [StatusId] INT NOT NULL,
    
    [IsDeleted] [BIT] NOT NULL,

    /*AUDIT FIELDS*/
    [Created] DATETIME NOT NULL CONSTRAINT [DF__Member__Created] DEFAULT (GETDATE()),
    [CreatedBy] UNIQUEIDENTIFIER NOT NULL,
    [LastModified] DATETIME NULL,
    [LastModifiedBy] UNIQUEIDENTIFIER NULL,
    [ChangeSource] NVARCHAR(128) NULL
) ON [PRIMARY]

--primary key definition
ALTER TABLE [dbo].[Member] ADD CONSTRAINT [PK__Member] PRIMARY KEY CLUSTERED  ([MemberId]) ON [PRIMARY]

CREATE NONCLUSTERED INDEX [IX__Member__MemberIdSiteId] ON [dbo].[Member] ([MemberId], [SiteId])
CREATE UNIQUE NONCLUSTERED INDEX [IX__Member__MemberNumberBranch] ON [dbo].[Member] ([SiteId], [MemberNumber], [BranchId])


ALTER TABLE [dbo].[Member] ADD CONSTRAINT [FK__Member__MemberType] FOREIGN KEY ([MemberTypeId]) REFERENCES [dbo].[MemberType] ([MemberTypeId])

ALTER TABLE [dbo].[Member] ADD CONSTRAINT [FK__Member__Branch] FOREIGN KEY ([BranchId]) REFERENCES [dbo].[Branch] ([Id])
ALTER TABLE [dbo].[Member] ADD CONSTRAINT [FK__Member__MemberStatus] FOREIGN KEY ([StatusId]) REFERENCES [dbo].[MemberStatus] ([Id])