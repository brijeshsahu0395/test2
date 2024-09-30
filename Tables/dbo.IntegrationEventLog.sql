CREATE TABLE [dbo].[IntegrationEventLog] (
    [SiteId] UNIQUEIDENTIFIER NOT NULL,
    [EventId] UNIQUEIDENTIFIER NOT NULL,
    [TransactionId] UNIQUEIDENTIFIER NOT NULL,
    [Timestamp] DATETIME NOT NULL CONSTRAINT [DF__IntegrationEventLog__Timestamp] DEFAULT (GETUTCDATE()),
    [EventType] NVARCHAR(1000) NOT NULL,
    [Content] NVARCHAR(MAX) NOT NULL,
    [StatusId] INT NOT NULL
) ON [PRIMARY]

--primary key definition
ALTER TABLE [dbo].[IntegrationEventLog] ADD CONSTRAINT [PK__IntegrationEventLog] PRIMARY KEY CLUSTERED  ([SiteId],[EventId]) ON [PRIMARY]

ALTER TABLE [dbo].[IntegrationEventLog] ADD CONSTRAINT [FK__IntegrationEventLog__IntegrationEventStatus] FOREIGN KEY ([StatusId]) REFERENCES [dbo].[IntegrationEventStatus] ([Id])