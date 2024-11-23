-- Update ring price where gem quality is good with winter discount
UPDATE Product
SET price = price * 0.9
WHERE ringId IS NOT NULL 
  AND gemId IN (
      SELECT gemId 
      FROM Gem 
      WHERE quality = 'Good'
  );

-- Select a statement to view the result
SELECT p.productId, p.name, p.type, p.price, g.name AS gemName, g.quality AS gemQuality
FROM Product p
JOIN Gem g ON p.gemId = g.gemId
WHERE p.ringId IS NOT NULL 
AND g.quality = 'Good';

-- Deleting gems with low stock and no product association

SET SQL_SAFE_UPDATES = 0;
-- Need to turn off safemode for command to function 

DELETE g 
FROM Gem g 
LEFT JOIN Product p ON g.gemId = p.gemId 
WHERE g.stock < 10 AND p.productId IS NULL;

SET SQL_SAFE_UPDATES = 1;
-- Turning safe mode back on


-- Select a statement to view the result:
SELECT g.gemId, g.name, g.quality, g.stock, p.productId, g.carat, g.price
FROM Gem g
LEFT JOIN Product p ON g.gemId = p.gemId
WHERE g.stock < 10
AND p.productId IS NULL; 

-- Create new ring combinations that do not exist within products
INSERT INTO Product (creatorId, ringId, metalId, gemId, type, name, mass, price)
SELECT 
    1 AS creatorId, -- Assuming creatorId = 1 (Admin)
    r.ringId, 
    m.metalId, 
    g.gemId, 
    'Ring' AS type,
    CONCAT(m.name, ' ', r.name, ' with ', g.name) AS name,
    (r.volume * m.density + g.carat * 0.2) AS mass, 
    (m.costPerGram * r.volume * m.density + g.price) AS price 
FROM Ring r
CROSS JOIN Metal m
CROSS JOIN Gem g
WHERE g.quality IN ('Good', 'Excellent')  -- Corrected this line
  AND NOT EXISTS (
      SELECT 1 
      FROM Product p
      WHERE p.ringId = r.ringId
        AND p.metalId = m.metalId
        AND p.gemId = g.gemId
        AND p.type = 'Ring'
  )
LIMIT 10;
