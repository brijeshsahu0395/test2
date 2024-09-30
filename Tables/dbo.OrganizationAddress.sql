CREATE TABLE [dbo].[OrganizationAddress] (
    [OrganizationId] INT NOT NULL,
	[AddressId] INT NOT NULL
) ON [PRIMARY]

--primary key definition
ALTER TABLE [dbo].[OrganizationAddress] ADD CONSTRAINT [PK__OrganizationAddress] PRIMARY KEY CLUSTERED  ([OrganizationId],[AddressId]) ON [PRIMARY]

CREATE UNIQUE NONCLUSTERED INDEX [IX__OrganizationAddress__AddressId] ON [dbo].[OrganizationAddress] ([AddressId])

ALTER TABLE [dbo].[OrganizationAddress] ADD CONSTRAINT [FK__OrganizationAddress__Organization] FOREIGN KEY ([OrganizationId]) REFERENCES [dbo].[Organization] ([OrganizationId])
ALTER TABLE [dbo].[OrganizationAddress] ADD CONSTRAINT [FK__OrganizationAddress__Address] FOREIGN KEY ([AddressId]) REFERENCES [dbo].[Address] ([Id]) ON DELETE CASCADE
