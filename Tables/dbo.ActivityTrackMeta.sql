CREATE TABLE [dbo].[ActivityTrackMeta] (
    [ActivityMetaId] INT NOT NULL IDENTITY(1,1),
    [ActivityId] INT NOT NULL,
    [Key] NVARCHAR(25) NOT NULL,
    [Value] NVARCHAR(50) NOT NULL,

    /*AUDIT FIELDS*/
    [Created] DATETIME NOT NULL CONSTRAINT [DF__ActivityTrackMeta__Created] DEFAULT (GETDATE())
) ON [PRIMARY]

--primary key definition
ALTER TABLE [dbo].[ActivityTrackMeta] ADD CONSTRAINT [PK__ActivityTrackMeta] PRIMARY KEY CLUSTERED  ([ActivityMetaId]) ON [PRIMARY]

CREATE NONCLUSTERED INDEX [IX__ActivityTrackMeta__ActivityId] ON [dbo].[ActivityTrackMeta] ([ActivityId])

ALTER TABLE [dbo].[ActivityTrack] ADD CONSTRAINT [FK__ActivityTrackMeta__ActivityTrack] FOREIGN KEY ([ActivityId]) REFERENCES [dbo].[ActivityTrack] ([ActivityId])

