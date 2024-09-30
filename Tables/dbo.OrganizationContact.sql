CREATE TABLE [dbo].[OrganizationContact] (
    [OrganizationId] INT NOT NULL,
	[ContactId] INT NOT NULL
) ON [PRIMARY]

--primary key definition
ALTER TABLE [dbo].[OrganizationContact] ADD CONSTRAINT [PK__OrganizationContact] PRIMARY KEY CLUSTERED  ([OrganizationId], [ContactId]) ON [PRIMARY]

CREATE UNIQUE NONCLUSTERED INDEX [IX__OrganizationContact__ContactId] ON [dbo].[OrganizationContact] ([ContactId])

ALTER TABLE [dbo].[OrganizationContact] ADD CONSTRAINT [FK__OrganizationContact__Organization] FOREIGN KEY ([OrganizationId]) REFERENCES [dbo].[Organization] ([OrganizationId])
ALTER TABLE [dbo].[OrganizationContact] ADD CONSTRAINT [FK__OrganizationContact__Contact] FOREIGN KEY ([ContactId]) REFERENCES [dbo].[Contact] ([Id]) ON DELETE CASCADE