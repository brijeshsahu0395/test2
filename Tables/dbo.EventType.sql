CREATE TABLE [dbo].[EventType] (
    [EventTypeId] INT NOT NULL,
    [Name] NVARCHAR(128) NOT NULL,
    [IsDeleted] [BIT] NOT NULL
) ON [PRIMARY]

--primary key definition
ALTER TABLE [dbo].[EventType] ADD CONSTRAINT [PK__EventType] PRIMARY KEY CLUSTERED  ([EventTypeId]) ON [PRIMARY]