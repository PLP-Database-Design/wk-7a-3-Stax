-- Question 1

-- Create a new table in 1NF
CREATE TABLE ProductDetail_1NF (
    OrderID INT,
    CustomerName VARCHAR(255),
    Product VARCHAR(255)
);

-- Insert transformed data into the new table
INSERT INTO ProductDetail_1NF (OrderID, CustomerName, Product)
VALUES
    (101, 'John Doe', 'Laptop'),
    (101, 'John Doe', 'Mouse'),
    (102, 'Jane Smith', 'Tablet'),
    (102, 'Jane Smith', 'Keyboard'),
    (102, 'Jane Smith', 'Mouse'),
    (103, 'Emily Clark', 'Phone');

-- Question 2

-- Create Orders table (removes the partial dependency)
CREATE TABLE Orders AS
SELECT DISTINCT 
    OrderID, 
    CustomerName
FROM 
    OrderDetails;

-- Create OrderItems table (contains only full dependencies)
CREATE TABLE OrderItems AS
SELECT 
    OrderID, 
    Product, 
    Quantity
FROM 
    OrderDetails;


