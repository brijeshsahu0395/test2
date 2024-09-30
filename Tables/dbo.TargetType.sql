CREATE TABLE [dbo].[TargetType] (
    [TargetTypeId] INT NOT NULL,
    [Name] NVARCHAR(128) NOT NULL,
    [IsDeleted] [BIT] NOT NULL
) ON [PRIMARY]

--primary key definition
ALTER TABLE [dbo].[TargetType] ADD CONSTRAINT [PK__TargetType] PRIMARY KEY CLUSTERED  ([TargetTypeId]) ON [PRIMARY]