CREATE TABLE [dbo].[IntegrationEventStatus] (
    [Id] INT NOT NULL,
    [Name] NVARCHAR(128) NOT NULL
) ON [PRIMARY]

--primary key definition
ALTER TABLE [dbo].[IntegrationEventStatus] ADD CONSTRAINT [PK__IntegrationEventStatus] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]