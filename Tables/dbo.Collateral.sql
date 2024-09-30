CREATE TABLE [dbo].[Collateral] (
    [Id] INT NOT NULL IDENTITY(1,1),
    [AccountId] INT NOT NULL,
    [AssetType] NVARCHAR(25),
    [Description] NVARCHAR(256),
    [Value] DECIMAL(19,2),
    [Currency] NVARCHAR(5),
    [Priority] NVARCHAR(15),
    [Status] NVARCHAR(15)
) ON [PRIMARY]

--primary key definition
ALTER TABLE [dbo].[Collateral] ADD CONSTRAINT [PK__Collateral] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]

CREATE NONCLUSTERED INDEX [IX__Collateral__AccountId] ON [dbo].[Collateral] ([AccountId])

ALTER TABLE [dbo].[Collateral] ADD CONSTRAINT [FK__Collateral__Account] FOREIGN KEY ([AccountId]) REFERENCES [dbo].[Account] ([AccountId])