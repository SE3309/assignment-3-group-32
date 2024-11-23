-- View containing customer’s full name, address, email address, and phone number --

CREATE VIEW customer_info (customerFName, customerLName, address, emailAddress, phoneNumber)
AS SELECT u.firstName, u.lastName, c.address, c.emailAddress, c.phoneNumber
FROM User u, Customer c
WHERE u.userId = c.customerId;

-- View Query for customer named 'Matt' --

SELECT customerFName, customerLName, emailAddress
FROM customer_info
WHERE customerFName = 'Matt';

-- Modifying View --
INSERT INTO customer_info (customerFName, customerLName, address, emailAddress, phoneNumber)
VALUES ('Matt', 'Hew', '123 Birch Street','mh123@gmail.com', 1234567890);

-- This does not work because of the way the tables are joined -- 

-- View containing productId, quantity, price, and mass --
CREATE VIEW product_details (productId, quantity, price, mass)
AS SELECT o.productId, o.quantity, p.price, p.mass
FROM Product_Order o, Product p
WHERE p.productId = o.productId;

-- View Query --
SELECT productId, price
FROM product_details
WHERE mass > 2000
AND quantity > 1;

-- Modifying View -- 
INSERT INTO product_details (quantity, price, mass)
VALUES ('3', '5000.95', '5000.95');
-- Does not work due to the way the tables are joined -- 

-- View containing username and userType --
CREATE VIEW user_info (userId, userType, username)
AS SELECT u.userId, u.userType, u.username
FROM User u;

-- View Query -- 
SELECT username
FROM user_info
WHERE userType = 'Admin';

-- Modify View -- 
INSERT INTO User (userType, username, firstName, lastName, password)
VALUES ('Admin', 'testViewModify', 'Test', 'Testing', 'Testing123@');

-- Viewing the modification in the view --
SELECT username
FROM user_info
WHERE userType = 'Admin';






