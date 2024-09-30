CREATE TABLE [dbo].[JointStatus] (
    [Id] INT NOT NULL,
    [Name] NVARCHAR(128) NOT NULL,
    [IsDeleted] [BIT] NOT NULL
) ON [PRIMARY]

--primary key definition
ALTER TABLE [dbo].[JointStatus] ADD CONSTRAINT [PK__JointStatus] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]