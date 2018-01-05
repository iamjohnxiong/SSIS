CREATE PROCEDURE [dbo].[spGetDimCustomer]
/* =============================================
-- Author:		John Xiong
-- Create date: 20171220
-- Description:	Get customer records for DimCustomer in EDW.
--

Modified     By             Comment
----------   -------------  ------------------------------------------

-- =============================================
*/
AS
BEGIN

    SELECT  C.cstFirstName, C.cstLastName, C.cstEmail, C.cstGender, C.cstSSN, C.cstGuid
    FROM    [dbo].[tblCustomer] C

END