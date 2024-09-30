CREATE TABLE [dbo].[PersonEmployment] (
    [Id] INT NOT NULL IDENTITY(1,1),
    [PersonId] INT NOT NULL,
    [Occupation] NVARCHAR(80) NULL,
    [Title] NVARCHAR(80) NULL,
    [CompanyName] NVARCHAR(35) NOT NULL,
    [StartDate] DATETIME2(7) NULL,
    [EndDate] DATETIME2(7) NULL,
    [AnnualIncome] FLOAT NULL,
    [CurrentlyWorking] BIT NOT NULL,

    [IsDeleted] [BIT] NOT NULL,

    /*AUDIT FIELDS*/
    [Created] DATETIME NOT NULL CONSTRAINT [DF__PersonEmployment__Created] DEFAULT (GETDATE()),
    [CreatedBy] UNIQUEIDENTIFIER NOT NULL,
    [LastModified] DATETIME NULL,
    [LastModifiedBy] UNIQUEIDENTIFIER NULL,
    [ChangeSource] NVARCHAR(128) NULL
) ON [PRIMARY]

--primary key definition
ALTER TABLE [dbo].[PersonEmployment] ADD CONSTRAINT [PK__PersonEmployment] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]

ALTER TABLE [dbo].[PersonEmployment] ADD CONSTRAINT [FK__PersonEmployment__Person] FOREIGN KEY ([PersonId]) REFERENCES [dbo].[Person] ([PersonId])