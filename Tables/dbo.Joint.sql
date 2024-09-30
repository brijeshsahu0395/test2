CREATE TABLE [dbo].[Joint] (
    [Id] INT NOT NULL IDENTITY(1,1),
    [MemberId] INT NOT NULL,
    [JointId] INT NOT NULL,
	[RoleId] INT NULL,
	[StatusId] INT NULL,

	 [IsDeleted] [BIT] NOT NULL,

    /*AUDIT FIELDS*/
    [Created] DATETIME NOT NULL CONSTRAINT [DF__Joint__Created] DEFAULT (GETDATE()),
    [CreatedBy] UNIQUEIDENTIFIER NOT NULL,
    [LastModified] DATETIME NULL,
    [LastModifiedBy] UNIQUEIDENTIFIER NULL,
    [ChangeSource] NVARCHAR(128) NULL
) ON [PRIMARY]

--primary key definition
ALTER TABLE [dbo].[Joint] ADD CONSTRAINT [PK__Joint] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]

ALTER TABLE [dbo].[Joint] ADD CONSTRAINT [FK__Joint__Member__MemberId] FOREIGN KEY ([MemberId]) REFERENCES [dbo].[Member] ([MemberId])
ALTER TABLE [dbo].[Joint] ADD CONSTRAINT [FK__Joint__Member__JointId] FOREIGN KEY ([JointId]) REFERENCES [dbo].[Member] ([MemberId])
ALTER TABLE [dbo].[Joint] ADD CONSTRAINT [FK__Joint__JointRole] FOREIGN KEY ([RoleId]) REFERENCES [dbo].[JointRole] ([Id])
ALTER TABLE [dbo].[Joint] ADD CONSTRAINT [FK__Joint__JointStatus] FOREIGN KEY ([StatusId]) REFERENCES [dbo].[JointStatus] ([Id])