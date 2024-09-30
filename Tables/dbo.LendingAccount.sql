CREATE TABLE [dbo].[LendingAccount] (
    [AccountId] INT NOT NULL,
    [Purpose] NVARCHAR(128),
    [OwnershipType] NVARCHAR (50),
    [RiskRating] NVARCHAR(15),
    [Revolving] BIT,
    [MaturityDate] DATETIME2,
    [TermLength] INT,
    [TermLengthType] NVARCHAR(15),
    [AmortizationDuration] INT,
    [AmortizationType] NVARCHAR(15),
    [TermStartDate] DATETIME2,
    [AccountBalance] DECIMAL(19,2),
    [AvailableBalance] DECIMAL(19,2),
    [MortgageAmount] DECIMAL(19,2),
    [AmountRepaired] DECIMAL(19,2),
    [PaymentFrequency] NVARCHAR(15),
    [PaymentAmount] DECIMAL(19,2),
    [CurrentArrears] DECIMAL(19,2),
    [Currency] NVARCHAR(5),
    [DueDate] DATETIME2,
    [InterestRate] DECIMAL(5,2)
) ON [PRIMARY]

--primary key definition
ALTER TABLE [dbo].[LendingAccount] ADD CONSTRAINT [PK__LendingAccount] PRIMARY KEY CLUSTERED  ([AccountId]) ON [PRIMARY]

ALTER TABLE [dbo].[LendingAccount] ADD CONSTRAINT [FK__LendingAccount__Account] FOREIGN KEY ([AccountId]) REFERENCES [dbo].[Account] ([AccountId]) ON DELETE CASCADE