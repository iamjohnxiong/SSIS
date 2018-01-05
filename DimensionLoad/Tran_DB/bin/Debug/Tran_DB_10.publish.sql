﻿/*
Deployment script for Local_Tran

This code was generated by a tool.
Changes to this file may cause incorrect behavior and will be lost if
the code is regenerated.
*/

GO
SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, CONCAT_NULL_YIELDS_NULL, QUOTED_IDENTIFIER ON;

SET NUMERIC_ROUNDABORT OFF;


GO
:setvar DatabaseName "Local_Tran"
:setvar DefaultFilePrefix "Local_Tran"
:setvar DefaultDataPath "C:\Users\jxiong\AppData\Local\Microsoft\Microsoft SQL Server Local DB\Instances\MSSQLLocalDB"
:setvar DefaultLogPath "C:\Users\jxiong\AppData\Local\Microsoft\Microsoft SQL Server Local DB\Instances\MSSQLLocalDB"

GO
:on error exit
GO
/*
Detect SQLCMD mode and disable script execution if SQLCMD mode is not supported.
To re-enable the script after enabling SQLCMD mode, execute the following:
SET NOEXEC OFF; 
*/
:setvar __IsSqlCmdEnabled "True"
GO
IF N'$(__IsSqlCmdEnabled)' NOT LIKE N'True'
    BEGIN
        PRINT N'SQLCMD mode must be enabled to successfully execute this script.';
        SET NOEXEC ON;
    END


GO
USE [$(DatabaseName)];


GO
PRINT N'Rename refactoring operation with key 9829705c-27be-44fb-9076-1f6db25e52ef is skipped, element [dbo].[tblAddress].[Id] (SqlSimpleColumn) will not be renamed to addId';


GO
PRINT N'Creating [dbo].[tblAddress]...';


GO
CREATE TABLE [dbo].[tblAddress] (
    [adrId]        INT               IDENTITY (1, 1) NOT NULL,
    [adrCstId]     INT               NULL,
    [adrAddress1]  VARCHAR (50)      NOT NULL,
    [adrAddress2]  VARCHAR (50)      NULL,
    [adrCity]      VARCHAR (30)      NOT NULL,
    [adrState]     CHAR (2)          NOT NULL,
    [adrZip]       CHAR (5)          NOT NULL,
    [adrZip4]      CHAR (4)          NULL,
    [adrCountry]   VARCHAR (50)      NULL,
    [adrLatitude]  [sys].[geography] NULL,
    [adrLongitude] [sys].[geography] NULL,
    PRIMARY KEY CLUSTERED ([adrId] ASC)
);


GO
PRINT N'Creating [dbo].[FK_tblAddress_tblCustomer]...';


GO
ALTER TABLE [dbo].[tblAddress] WITH NOCHECK
    ADD CONSTRAINT [FK_tblAddress_tblCustomer] FOREIGN KEY ([adrCstId]) REFERENCES [dbo].[tblCustomer] ([cstId]);


GO
-- Refactoring step to update target server with deployed transaction logs
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '9829705c-27be-44fb-9076-1f6db25e52ef')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('9829705c-27be-44fb-9076-1f6db25e52ef')

GO

GO
PRINT N'Checking existing data against newly created constraints';


GO
USE [$(DatabaseName)];


GO
ALTER TABLE [dbo].[tblAddress] WITH CHECK CHECK CONSTRAINT [FK_tblAddress_tblCustomer];


GO
PRINT N'Update complete.';


GO