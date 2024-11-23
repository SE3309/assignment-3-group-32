-- SELECT u.firstName, u.lastName, COUNT(co.orderId) AS orderCount 
-- FROM Customer_Order co 
-- JOIN User u ON co.customerId = u.userId 
-- GROUP BY u.userId, u.firstName, u.lastName
-- HAVING orderCount > 2;

-- SELECT co.orderId, u.firstName, u.lastName, c.address, co.totalPrice, co.status 
-- FROM Customer_Order  co
-- NATURAL JOIN User u
-- NATURAL JOIN Customer c;

-- SELECT gemId, name, carat, price 
-- FROM Gem  
-- WHERE carat > 1.4 AND price BETWEEN 500 AND 1500

-- SELECT u.userId, u.firstName, u.lastName, COUNT(DISTINCT co.orderId) AS numOrders, MIN(po.quantity) AS minQuantity, MAX(po.quantity) AS maxQuantity 
-- FROM User u JOIN Customer_Order co ON u.userId = co.customerId
-- JOIN Product_Order po ON co.orderId = po.orderId 
-- WHERE po.quantity > 1

-- SELECT 
-- 	u.userId, 
--     u.firstName, 
--     u.lastName, 
--     po.orderId,
--     COUNT(co.orderId) AS numProducts, 
--     MIN(po.quantity) AS minQuantity, 
--     MAX(po.quantity) AS maxQuantity
-- FROM 
--     User u
-- JOIN 
--     Customer_Order co 
--     ON u.userId = co.customerId
-- JOIN 
--     Product_Order po 
--     ON co.orderId = po.orderId
-- GROUP BY 
-- 	u.userId, u.firstName, u.lastName, po.orderId;

-- SELECT AVG(price) AS averagePrice 
-- FROM Product 
-- WHERE type = "Ring"

-- SELECT u.userId, u.firstName, u.lastName, SUM(co.totalPrice) AS totalSpent 
-- FROM User u JOIN Customer_Order co ON u.userId = co.customerId 
-- GROUP BY u.userId, u.firstName, u.lastName 
-- HAVING totalSpent > 1000
-- ORDER BY totalSpent DESC;

-- SELECT p.productId, p.name AS productName, SUM(po.quantity) AS orderNum, 
-- COUNT(co.orderId) AS orderCount
-- FROM Product p 
-- JOIN Product_Order po ON p.productId = po.productId
-- JOIN Customer_Order co ON po.orderId = co.orderId
-- GROUP BY p.productId, p.name 
-- HAVING orderCount > 1
-- ORDER BY orderCount DESC

SELECT u.userId, u.firstName, u.lastName 
FROM User u JOIN Customer_Order co ON u.userId = co.customerId 
WHERE co.orderId IN 
( SELECT po.orderId 
  FROM Product_Order po 
  WHERE po.productId = (SELECT productId FROM product WHERE name = "pnvt"))
