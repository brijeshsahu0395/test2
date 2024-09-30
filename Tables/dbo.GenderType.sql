CREATE TABLE [dbo].[GenderType] (
    [GenderTypeId] INT NOT NULL,
    [Name] NVARCHAR(128) NOT NULL,
    [IsDeleted] [BIT] NOT NULL
) ON [PRIMARY]

--primary key definition
ALTER TABLE [dbo].[GenderType] ADD CONSTRAINT [PK__GenderType] PRIMARY KEY CLUSTERED  ([GenderTypeId]) ON [PRIMARY]