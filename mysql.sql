CREATE DATABASE Bamazon;
USE Bamazon;
CREATE TABLE Items(
	ID INTEGER(10) AUTO_INCREMENT NOT NULL,
    ProductName VARCHAR(30) NOT NULL,
    DepartmentName VARCHAR(30) NOT NULL,
    Price FLOAT(10) NOT NULL,
    StockQuantity INTEGER(10),
    primary key (ID)
);
/*syntax for creating new product*/
INSERT INTO Items(ItemName, DepartmentName, Price, StockQuantity) VALUES('Chocolate Chip Cookies','Food',1.99,200);

/*Create new row to ensure database has data*/
INSERT INTO Products(ProductName,DepartmentName,Price,StockQuantity) VALUES('Apple Pie','Food',3.99,100);

/* More options */

INSERT INTO Products(ProductName,DepartmentName,Price,StockQuantity) VALUES('Delicious Amber Ale','Drink',4.99,300);
INSERT INTO Products(ProductName,DepartmentName,Price,StockQuantity) VALUES('Frozen Mango Margarita','Drink',5.99,150);
INSERT INTO Products(ProductName,DepartmentName,Price,StockQuantity) VALUES('Extra chocolatey Cafe Mocca','Drink',3.49,200);

/* Name everything in plural form */
UPDATE Products SET ProductName = "Apple Pies" WHERE ProductName = "Apple Pie";

/* Add price to chocolate chip cookies. Wiped it out earlier with decimal redeclaration. */
UPDATE Products SET Price = 1.99 WHERE ProductName = "Chocolate Chip Cookies";