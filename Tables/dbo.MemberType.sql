CREATE TABLE [dbo].[MemberType] (
    [MemberTypeId] INT NOT NULL,
    [Name] NVARCHAR(128) NOT NULL,
    [IsDeleted] [BIT] NOT NULL
) ON [PRIMARY]

--primary key definition
ALTER TABLE [dbo].[MemberType] ADD CONSTRAINT [PK__MemberType] PRIMARY KEY CLUSTERED  ([MemberTypeId]) ON [PRIMARY]