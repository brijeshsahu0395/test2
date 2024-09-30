CREATE TABLE [dbo].[SavingsAccount] (
    [AccountId] INT NOT NULL,
    [AccountBalance] DECIMAL(19,2),
    [AvailableBalance] DECIMAL(19,2),
    [AccountCharges] DECIMAL(9,2),
    [AuthorizedOverdraft] DECIMAL(19,2),
    [AnnualFee] DECIMAL(9,2),
    [InterestRate] DECIMAL(5,2),
    [Currency] NVARCHAR(5)
) ON [PRIMARY]

--primary key definition
ALTER TABLE [dbo].[SavingsAccount] ADD CONSTRAINT [PK__SavingsAccount] PRIMARY KEY CLUSTERED  ([AccountId]) ON [PRIMARY]

ALTER TABLE [dbo].[SavingsAccount] ADD CONSTRAINT [FK__SavingsAccount__Account] FOREIGN KEY ([AccountId]) REFERENCES [dbo].[Account] ([AccountId]) ON DELETE CASCADE