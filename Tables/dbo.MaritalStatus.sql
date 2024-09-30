CREATE TABLE [dbo].[MaritalStatus] (
    [MaritalStatusId] INT NOT NULL,
    [Name] NVARCHAR(128) NOT NULL,
    [IsDeleted] [BIT] NOT NULL
) ON [PRIMARY]

--primary key definition
ALTER TABLE [dbo].[MaritalStatus] ADD CONSTRAINT [PK__MaritalStatus] PRIMARY KEY CLUSTERED  ([MaritalStatusId]) ON [PRIMARY]