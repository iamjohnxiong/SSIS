CREATE PROCEDURE [dbo].[spTruncateStgTblAddress]
/* =============================================
-- Author:		John Xiong
-- Create date: 20180102
-- Description:	Truncate dbo.stgTblAddress table
--

Modified     By             Comment
----------   -------------  ------------------------------------------

-- =============================================
*/
AS
BEGIN

    TRUNCATE TABLE [dbo].[stgTblAddress];

END
