CREATE TABLE User (
	userId        	INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    userType		ENUM("Customer", "Admin") NOT NULL,
    username      	VARCHAR(30) NOT NULL,
    firstName     	VARCHAR(30) NOT NULL,
    lastName      	VARCHAR(30) NOT NULL,
    password      	VARCHAR(30) NOT NULL
);

CREATE TABLE Customer (
	customerId		INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    address			VARCHAR(30) NOT NULL,
    emailAddress	VARCHAR(30) NOT NULL,
    phoneNumber		VARCHAR(10),
    FOREIGN KEY (customerId) REFERENCES User(userId)
    ON DELETE CASCADE
);

CREATE TABLE Admin (
	adminId        INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    FOREIGN KEY (adminId) REFERENCES User(userId)
    ON DELETE CASCADE
);

CREATE TABLE Necklace (
	necklaceId		INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    linkId			INT NOT NULL,
    name			VARCHAR(30),
    linkAmount		INT,
    size			FLOAT,
    totalVolume		FLOAT,
    FOREIGN KEY (linkId) REFERENCES Link(linkId)
);

CREATE TABLE Link (
	linkId			INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    name			VARCHAR(30),
    size			FLOAT,
    volume			FLOAT
);

CREATE TABLE Ring (
	ringId			INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    name			VARCHAR(30),
    size			FLOAT
);

CREATE TABLE Product (
	productId		INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    creatorId		INT NOT NULL,
	ringId			INT,
    necklaceId		INT,
    gemId			INT,
    metalId			INT NOT NULL,
    type 			ENUM("Ring", "Necklace") NOT NULL,
    name			VARCHAR(30) NOT NULL,
    mass			float,
    FOREIGN KEY (creatorId) REFERENCES User(userId),
    FOREIGN KEY (ringId) REFERENCES Ring(ringId),
    FOREIGN KEY (necklaceId) REFERENCES Necklace(necklaceId),
    FOREIGN KEY (gemId) REFERENCES Gem(gemId),
    FOREIGN KEY (metalId) REFERENCES Metal(metalId)
);

CREATE TABLE Gem (
	gemId			INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    name			VARCHAR(30) NOT NULL,
    quality			VARCHAR(30) NOT NULL,
    carat			FLOAT NOT NULL,
    shape			VARCHAR(30) NOT NULL,
    stock			INT NOT NULL
);

CREATE TABLE Metal (
	metalId			INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    name			VARCHAR(30) NOT NULL,
    purity			VARCHAR(30) NOT NULL,
    type			VARCHAR(30) NOT NULL,
    costPerKg		FLOAT NOT NULL,
    density			FLOAT NOT NULL
);

CREATE TABLE Customer_Order (
	orderId			INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    customerId		INT NOT NULL,
    status			ENUM("Received", "In Progress", "Shipping", "Complete"),
    startDate		DATE,
    totalPrice		DECIMAL(10, 2) NOT NULL,
    totalMass		FLOAT NOT NULL,
    FOREIGN KEY (customerId) REFERENCES User(userId)
);
 
CREATE TABLE Product_Order (
	productId		INT NOT NULL PRIMARY KEY,
    orderId			INT NOT NULL,
    quantity		INT DEFAULT 1,
    FOREIGN KEY (productId) REFERENCES Product(productId),
    FOREIGN KEY (orderId) REFERENCES Customer_Order(orderId)
);