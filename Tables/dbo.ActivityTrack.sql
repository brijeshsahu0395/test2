CREATE TABLE [dbo].[ActivityTrack] (
    [ActivityId] INT NOT NULL IDENTITY(1,1),
    [SiteId] UNIQUEIDENTIFIER NOT NULL,
    [UserId] UNIQUEIDENTIFIER NOT NULL,
    [TargetId] NVARCHAR(50) NOT NULL,
    [TargetTypeId] INT NOT NULL,
    [EventTypeId] INT NOT NULL,

    /*AUDIT FIELDS*/
    [Created] DATETIME NOT NULL CONSTRAINT [DF__ActivityTrack__Created] DEFAULT (GETDATE())
) ON [PRIMARY]

--primary key definition
ALTER TABLE [dbo].[ActivityTrack] ADD CONSTRAINT [PK__ActivityTrack] PRIMARY KEY CLUSTERED  ([ActivityId]) ON [PRIMARY]

CREATE NONCLUSTERED INDEX [IX__ActivityTrack__SiteId__EventTypeId] ON [dbo].[ActivityTrack] ([SiteId], [EventTypeId])

ALTER TABLE [dbo].[ActivityTrack] ADD CONSTRAINT [FK__ActivityTrack__TargetType] FOREIGN KEY ([TargetTypeId]) REFERENCES [dbo].[TargetType] ([TargetTypeId])

ALTER TABLE [dbo].[ActivityTrack] ADD CONSTRAINT [FK__ActivityTrack__EventType] FOREIGN KEY ([EventTypeId]) REFERENCES [dbo].[EventType] ([EventTypeId])