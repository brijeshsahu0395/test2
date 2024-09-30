CREATE TABLE [dbo].[Account] (
    [AccountId] INT NOT NULL IDENTITY(1,1),
    [MemberId] INT NOT NULL,
    [AccountNumber] NVARCHAR(25) NOT NULL,
    [Name] NVARCHAR(100),
    [Type] NVARCHAR(30),
    [SubType] NVARCHAR(30),
    [Status] NVARCHAR(25),
    [OpenedDate] DATETIME2,

    [LastModified] DATETIME NULL,
    [ChangeSource] NVARCHAR(128) NULL
) ON [PRIMARY]

--primary key definition
ALTER TABLE [dbo].[Account] ADD CONSTRAINT [PK__Account] PRIMARY KEY CLUSTERED  ([AccountId]) ON [PRIMARY]

CREATE NONCLUSTERED INDEX [IX__Account__MemberId] ON [dbo].[Account] ([MemberId])

ALTER TABLE [dbo].[Account] ADD CONSTRAINT [FK__Account__Member] FOREIGN KEY ([MemberId]) REFERENCES [dbo].[Member] ([MemberId])