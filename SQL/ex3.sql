-- INSERT INTO Product VALUES (
-- 	DEFAULT,
-- 	24,
-- 	4,
-- 	NULL,
-- 	5,
-- 	8,
-- 	'Ring',
-- 	'The Father',
-- 	(
-- 		(SELECT volume FROM Ring WHERE ringId = 4)
-- 		*
-- 		(SELECT density FROM Metal WHERE metalId = 8)
-- 	),
-- 	(
-- 		mass * (SELECT costPerKg FROM Metal WHERE metalId = 8)
-- 		+ 
-- 		(SELECT price FROM Gem WHERE gemId = 5)
-- 	)
-- );

-- INSERT INTO Necklace VALUES (
-- 	DEFAULT,
-- 	2,
-- 	'Cuban Chain Necklace',
-- 	50,
-- 	linkAmount * (SELECT size FROM Link WHERE linkId = 2),
-- 	linkAmount * (SELECT volume FROM Link WHERE linkId = 2)
-- );

INSERT INTO Admin (adminId)
SELECT userId FROM User
WHERE userType = "Admin"