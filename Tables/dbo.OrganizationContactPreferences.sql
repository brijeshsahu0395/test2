CREATE TABLE [dbo].[OrganizationContactPreferences] (
    [OrganizationId] INT NOT NULL,
	[FrequencyId] INT NULL,
    [MethodId] INT NULL,
    [TimeId] INT NULL,

    /*AUDIT FIELDS*/
    [Created] DATETIME NOT NULL CONSTRAINT [DF__OrganizationContactPreferences__Created] DEFAULT (GETDATE()),
    [CreatedBy] UNIQUEIDENTIFIER NOT NULL,
    [LastModified] DATETIME NULL,
    [LastModifiedBy] UNIQUEIDENTIFIER NULL,
    [ChangeSource] NVARCHAR(128) NULL
) ON [PRIMARY]

--primary key definition
ALTER TABLE [dbo].[OrganizationContactPreferences] ADD CONSTRAINT [PK__OrganizationContactPreferences] PRIMARY KEY CLUSTERED  ([OrganizationId]) ON [PRIMARY]

ALTER TABLE [dbo].[OrganizationContactPreferences] ADD CONSTRAINT [FK__OrganizationContactPreferences__Organization] FOREIGN KEY ([OrganizationId]) REFERENCES [dbo].[Organization] ([OrganizationId])
ALTER TABLE [dbo].[OrganizationContactPreferences] ADD CONSTRAINT [FK__OrganizationContactPreferences__ContactFrequencyPreference] FOREIGN KEY ([FrequencyId]) REFERENCES [dbo].[ContactFrequencyPreference] ([Id])
ALTER TABLE [dbo].[OrganizationContactPreferences] ADD CONSTRAINT [FK__OrganizationContactPreferences__ContactMethodPreference] FOREIGN KEY ([MethodId]) REFERENCES [dbo].[ContactMethodPreference] ([Id])
ALTER TABLE [dbo].[OrganizationContactPreferences] ADD CONSTRAINT [FK__OrganizationContactPreferences__ContactTimePreference] FOREIGN KEY ([TimeId]) REFERENCES [dbo].[ContactTimePreference] ([Id])