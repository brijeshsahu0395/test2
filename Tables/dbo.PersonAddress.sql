CREATE TABLE [dbo].[PersonAddress] (
    [PersonId] INT NOT NULL,
	[AddressId] INT NOT NULL
) ON [PRIMARY]

--primary key definition
ALTER TABLE [dbo].[PersonAddress] ADD CONSTRAINT [PK__PersonAddress] PRIMARY KEY CLUSTERED  ([PersonId],[AddressId]) ON [PRIMARY]

CREATE UNIQUE NONCLUSTERED INDEX [IX__PersonAddress__AddressId] ON [dbo].[PersonAddress] ([AddressId])

ALTER TABLE [dbo].[PersonAddress] ADD CONSTRAINT [FK__PersonAddress__Person] FOREIGN KEY ([PersonId]) REFERENCES [dbo].[Person] ([PersonId])
ALTER TABLE [dbo].[PersonAddress] ADD CONSTRAINT [FK__PersonAddress__Address] FOREIGN KEY ([AddressId]) REFERENCES [dbo].[Address] ([Id]) ON DELETE CASCADE