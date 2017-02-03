USE [SnackOverflowDB]
GO
IF EXISTS(SELECT * FROM sys.objects WHERE type = 'P' AND  name = 'sp_retrieve_package_line_from_search')
BEGIN
Drop PROCEDURE sp_retrieve_package_line_from_search
Print '' print  ' *** dropping procedure sp_retrieve_package_line_from_search'
End
GO

Print '' print  ' *** creating procedure sp_retrieve_package_line_from_search'
GO
Create PROCEDURE sp_retrieve_package_line_from_search
(
@PACKAGE_LINE_ID[INT]=NULL,
@PACKAGE_ID[INT]=NULL,
@PRODUCT_LOT_ID[INT]=NULL,
@QUANTITY[INT]=NULL,
@PRICE_PAID[DECIMAL](5)=NULL
)
AS
BEGIN
Select PACKAGE_LINE_ID, PACKAGE_ID, PRODUCT_LOT_ID, QUANTITY, PRICE_PAID
FROM PACKAGE_LINE
WHERE (PACKAGE_LINE.PACKAGE_LINE_ID=@PACKAGE_LINE_ID OR @PACKAGE_LINE_ID IS NULL)
AND (PACKAGE_LINE.PACKAGE_ID=@PACKAGE_ID OR @PACKAGE_ID IS NULL)
AND (PACKAGE_LINE.PRODUCT_LOT_ID=@PRODUCT_LOT_ID OR @PRODUCT_LOT_ID IS NULL)
AND (PACKAGE_LINE.QUANTITY=@QUANTITY OR @QUANTITY IS NULL)
AND (PACKAGE_LINE.PRICE_PAID=@PRICE_PAID OR @PRICE_PAID IS NULL)
END