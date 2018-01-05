CREATE PROCEDURE [dbo].[spTruncateTblAddress]
/* =============================================
-- Author:		John Xiong
-- Create date: 20180102
-- Description:	Truncate dbo.tblAddress table
--

Modified     By             Comment
----------   -------------  ------------------------------------------

-- =============================================
*/
AS
BEGIN

    TRUNCATE TABLE [dbo].[tblAddress];

END
