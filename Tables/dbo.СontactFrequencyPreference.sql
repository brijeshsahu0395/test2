CREATE TABLE [dbo].[ContactFrequencyPreference] (
    [Id] INT NOT NULL,
    [Name] NVARCHAR(128) NOT NULL,
    [IsDeleted] [BIT] NOT NULL
) ON [PRIMARY]

--primary key definition
ALTER TABLE [dbo].[ContactFrequencyPreference] ADD CONSTRAINT [PK__ContactFrequencyPreference] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]
