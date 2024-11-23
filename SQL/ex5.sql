SELECT u.firstName, u.lastName, COUNT(co.orderId) AS orderCount 
FROM Customer_Order co 
JOIN User u ON co.customerId = u.userId 
GROUP BY u.userId, u.firstName, u.lastName
HAVING orderCount > 2;

SELECT co.orderId, u.firstName, u.lastName, c.address, co.totalPrice, co.status 
FROM Customer_Order  co
NATURAL JOIN Customer c
JOIN User u ON u.userId = c.customerId;


SELECT gemId, name, carat, price 
FROM Gem  
WHERE carat > 1.4 AND price BETWEEN 500 AND 1500;

SELECT
	u.userId, 
    u.firstName, 
    u.lastName, 
	COUNT(DISTINCT orderId) AS numOrders, 
    MIN(po.quantity) AS minQuantity,
 	MAX(po.quantity) AS maxQuantity
FROM 
    User u
JOIN 
    Customer_Order co 
    ON u.userId = co.customerId
NATURAL JOIN 
    (SELECT
		orderId,
		SUM(quantity) AS quantity
        FROM Product_Order
        GROUP BY 
			orderId
    )AS po
GROUP BY 
 	u.userId, u.firstName, u.lastName
ORDER BY 
	co.customerID;


SELECT
	r.name AS ringName,
	AVG(p.price) AS averagePrice 
FROM Product p
JOIN RING r ON p.ringId = r.ringId 
WHERE type = "Ring"
GROUP BY r.name;



SELECT u.userId, u.firstName, u.lastName, SUM(co.totalPrice) AS totalSpent 
FROM User u JOIN Customer_Order co ON u.userId = co.customerId 
GROUP BY u.userId, u.firstName, u.lastName 
HAVING totalSpent > 1000
ORDER BY totalSpent DESC;

SELECT p.productId, p.name AS productName, SUM(po.quantity) AS orderNum, 
COUNT(co.orderId) AS orderCount
FROM Product p 
JOIN Product_Order po ON p.productId = po.productId
JOIN Customer_Order co ON po.orderId = co.orderId
GROUP BY p.productId, p.name 
HAVING orderCount > 1
ORDER BY orderCount DESC;

SELECT u.userId, u.firstName, u.lastName 
FROM User u JOIN Customer_Order co ON u.userId = co.customerId 
WHERE co.orderId IN 
( SELECT po.orderId 
  FROM Product_Order po 
  WHERE po.productId = (SELECT productId FROM product WHERE name = "pnvt"));
