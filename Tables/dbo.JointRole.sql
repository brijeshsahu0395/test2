CREATE TABLE [dbo].[JointRole] (
    [Id] INT NOT NULL,
	[Name] NVARCHAR(128) NOT NULL
) ON [PRIMARY]

--primary key definition
ALTER TABLE [dbo].[JointRole] ADD CONSTRAINT [PK__JointRole] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]