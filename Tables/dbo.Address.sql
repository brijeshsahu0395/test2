CREATE TABLE [dbo].[Address] (
	[Id] INT NOT NULL IDENTITY(1,1),
	[ProvinceId] INT NOT NULL,
	[TypeId] INT NOT NULL,
	[Street] NVARCHAR(28) NOT NULL,
	[Apartment] NVARCHAR(28) NOT NULL,
	[City] NVARCHAR(28) NOT NULL,
	[POBox] NVARCHAR(6) NULL,
	[PostalCode] NVARCHAR(6) NOT NULL,
	[IsPrimary] BIT NOT NULL,

	[IsDeleted] BIT NOT NULL,
    /*AUDIT FIELDS*/
    [Created] DATETIME NOT NULL CONSTRAINT [DF__Address__Created] DEFAULT (GETDATE()),
    [CreatedBy] UNIQUEIDENTIFIER NOT NULL,
    [LastModified] DATETIME NULL,
    [LastModifiedBy] UNIQUEIDENTIFIER NULL,
    [ChangeSource] NVARCHAR(128) NULL
) ON [PRIMARY]

--primary key definition
ALTER TABLE [dbo].[Address] ADD CONSTRAINT [PK__Address] PRIMARY KEY CLUSTERED  ([Id]) ON [PRIMARY]

ALTER TABLE [dbo].[Address] ADD CONSTRAINT [FK__Address__Province] FOREIGN KEY ([ProvinceId]) REFERENCES [dbo].[Province] ([Id])
ALTER TABLE [dbo].[Address] ADD CONSTRAINT [FK__Address__AddressType] FOREIGN KEY ([TypeId]) REFERENCES [dbo].[AddressType] ([Id])