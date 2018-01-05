CREATE TABLE [dbo].[tblAddress]
(
    [adrId] INT NOT NULL PRIMARY KEY IDENTITY, 
    [adrCstId] INT NULL,
    [adrAddress1] VARCHAR(50) NOT NULL, 
    [adrAddress2] VARCHAR(50) NULL, 
    [adrCity] VARCHAR(30) NOT NULL, 
    [adrState] CHAR(2) NOT NULL, 
    [adrZip] CHAR(5) NOT NULL, 
    [adrZip4] CHAR(4) NULL, 
    [adrCountry] VARCHAR(50) NULL
    CONSTRAINT [FK_tblAddress_tblCustomer] FOREIGN KEY ([adrCstId]) REFERENCES [dbo].[tblCustomer]([cstId])
)
