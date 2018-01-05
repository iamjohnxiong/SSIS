﻿CREATE TABLE [dbo].[DimCustomer]
(
    [Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [firstName] VARCHAR(50) NOT NULL, 
    [lastName] VARCHAR(50) NOT NULL, 
    [email] VARCHAR(50) NOT NULL, 
    [gender] CHAR NOT NULL, 
    [ssn] CHAR(11) NOT NULL, 
    [guid] VARCHAR(50) NOT NULL,
    [startDate] DATETIME NOT NULL, 
    [endDate] DATETIME NULL, 
    [dateAdded] DATETIME NOT NULL DEFAULT GETDATE()
)
