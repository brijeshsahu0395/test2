CREATE TABLE [dbo].[MemberSynchronization] (
	[MemberNumber] NVARCHAR(25) NOT NULL,
	[BranchId] INT NOT NULL,
	[SiteId] UNIQUEIDENTIFIER NOT NULL,
    [SyncDate] DATETIME2(7) NOT NULL,
	[SuccessSyncDate] DATETIME2(7) NULL,
	[StatusId] INT NOT NULL,
	[Message] NVARCHAR(MAX) NULL
) ON [PRIMARY]

--primary key definition
ALTER TABLE [dbo].[MemberSynchronization] ADD CONSTRAINT [PK__MemberSynchronization] PRIMARY KEY CLUSTERED  ([MemberNumber], [BranchId], [SiteId]) ON [PRIMARY]

ALTER TABLE [dbo].[MemberSynchronization] ADD CONSTRAINT [FK__MemberSynchronization__StatusId] FOREIGN KEY ([StatusId]) REFERENCES [dbo].[MemberSynchronizationStatus] ([Id])