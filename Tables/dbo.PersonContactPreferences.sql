CREATE TABLE [dbo].[PersonContactPreferences] (
    [PersonId] INT NOT NULL,
	[FrequencyId] INT NULL,
    [MethodId] INT NULL,
    [TimeId] INT NULL,

    /*AUDIT FIELDS*/
    [Created] DATETIME NOT NULL CONSTRAINT [DF__PersonContactPreferences__Created] DEFAULT (GETDATE()),
    [CreatedBy] UNIQUEIDENTIFIER NOT NULL,
    [LastModified] DATETIME NULL,
    [LastModifiedBy] UNIQUEIDENTIFIER NULL,
    [ChangeSource] NVARCHAR(128) NULL
) ON [PRIMARY]

--primary key definition
ALTER TABLE [dbo].[PersonContactPreferences] ADD CONSTRAINT [PK__PersonContactPreferences] PRIMARY KEY CLUSTERED  ([PersonId]) ON [PRIMARY]

ALTER TABLE [dbo].[PersonContactPreferences] ADD CONSTRAINT [FK__PersonContactPreferences__Person] FOREIGN KEY ([PersonId]) REFERENCES [dbo].[Person] ([PersonId])
ALTER TABLE [dbo].[PersonContactPreferences] ADD CONSTRAINT [FK__PersonContactPreferences__ContactFrequencyPreference] FOREIGN KEY ([FrequencyId]) REFERENCES [dbo].[ContactFrequencyPreference] ([Id])
ALTER TABLE [dbo].[PersonContactPreferences] ADD CONSTRAINT [FK__PersonContactPreferences__ContactMethodPreference] FOREIGN KEY ([MethodId]) REFERENCES [dbo].[ContactMethodPreference] ([Id])
ALTER TABLE [dbo].[PersonContactPreferences] ADD CONSTRAINT [FK__PersonContactPreferences__ContactTimePreference] FOREIGN KEY ([TimeId]) REFERENCES [dbo].[ContactTimePreference] ([Id])