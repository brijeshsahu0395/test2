CREATE TABLE [dbo].[PersonContact] (
    [PersonId] INT NOT NULL,
	[ContactId] INT NOT NULL
) ON [PRIMARY]

--primary key definition
ALTER TABLE [dbo].[PersonContact] ADD CONSTRAINT [PK__PersonContact] PRIMARY KEY CLUSTERED  ([PersonId],[ContactId]) ON [PRIMARY]

CREATE UNIQUE NONCLUSTERED INDEX [IX__PersonContact__ContactId] ON [dbo].[PersonContact] ([ContactId])

ALTER TABLE [dbo].[PersonContact] ADD CONSTRAINT [FK__PersonContact__Person] FOREIGN KEY ([PersonId]) REFERENCES [dbo].[Person] ([PersonId])
ALTER TABLE [dbo].[PersonContact] ADD CONSTRAINT [FK__PersonContact__Contact] FOREIGN KEY ([ContactId]) REFERENCES [dbo].[Contact] ([Id]) ON DELETE CASCADE