CREATE TABLE [dbo].[AccountHold] (
    [Id] INT NOT NULL IDENTITY(1,1),
    [AccountId] INT NOT NULL,
    [Type] NVARCHAR(25),
    [Status] NVARCHAR(15),
    [Amount] DECIMAL(19,2),
    [Currency] NVARCHAR(5),
    [EffectiveDate] DATETIME2,
    [ReleaseDate] DATETIME2
) ON [PRIMARY]

--primary key definition
ALTER TABLE [dbo].[AccountHold] ADD CONSTRAINT [PK__AccountHold] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]

CREATE NONCLUSTERED INDEX [IX__AccountHold__AccountId] ON [dbo].[AccountHold] ([AccountId])

ALTER TABLE [dbo].[AccountHold] ADD CONSTRAINT [FK__AccountHold__Account] FOREIGN KEY ([AccountId]) REFERENCES [dbo].[Account] ([AccountId]) ON DELETE CASCADE