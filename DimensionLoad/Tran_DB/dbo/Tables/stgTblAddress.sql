CREATE TABLE [dbo].[stgTblAddress]
(
    [stgAdrId] INT NOT NULL PRIMARY KEY IDENTITY, 
    [stgAdrCstGuid] VARCHAR(50) NOT NULL,
    [stgAdrAddress1] VARCHAR(50) NULL, 
    [stgAdrAddress2] VARCHAR(50) NULL, 
    [stgAdrCity] VARCHAR(50) NULL, 
    [stgAdrState] VARCHAR(50) NULL, 
    [stgAdrZip] VARCHAR(50) NULL, 
    [stgAdrZip4] VARCHAR(50) NULL, 
    [stgAdrCountry] VARCHAR(50) NULL
)
