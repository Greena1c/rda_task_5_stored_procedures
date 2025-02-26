USE ShopDB; 

DELIMITER //

CREATE PROCEDURE get_warehouse_product_inventory(IN WarehouseID INT)
BEGIN
    SELECT 
        Products.Name AS ProductName, 
        ProductInventory.Amount AS ProductAmount
    FROM ProductInventory
    JOIN Products ON ProductInventory.ProductID = Products.ID
    WHERE ProductInventory.WarehouseID = WarehouseID;
END //

DELIMITER ;
