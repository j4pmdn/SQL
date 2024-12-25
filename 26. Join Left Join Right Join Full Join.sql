/*
INNER JOIN(Hoặc JOIN)
Trả về tất cả các hàng khi có ít nhất 1 giá trị ở cả hai bảng
Ex: table 1     table 2         join
	a,b,c,d,e   c,d,e,f,g	   c,d,e

LEFT OUTER JOIN(Hoặc LEFT JOIN)
Trả lại tất cả các dòng từ bảng bên trái, và các dòng đúng với điều kiện
từ bảng bên phải
Ex: table 1     table 2        left join
	a,b,c,d,e   c,d,e,f,g	   a,b,c,d,e

RIGHT OUTER JOIN(Hoặc RIGHT JOIN)
Trả lại tất cả các dòng từ bảng bên phải, và các dòng đúng với điều kiện
từ bảng bên trái
Ex: table 1     table 2        left join
	a,b,c,d,e   c,d,e,f,g	   c,d,e,f,g

FULL OUTER JOIN (Hoặc FULL JOIN)
Trả về tất cả các dòng đúng với 1 trong các bảng
Ex: table 1     table 2        left join
	a,b,c,d,e   c,d,e,f,g	   a,b,c,d,e,f,g
*/
--Sử dụng INNER JOIN
--Từ bảng Products và Categories, hãy in ra các thông tin sau đây:
--Mã thể loại
--Tên thể loại
--Mã sản phẩm
--Tên sản phẩm
SELECT  c.CategoryID,
		c.CategoryName,
		p.ProductID,
		p.ProductName
FROM [dbo].[Categories] c 
INNER JOIN [dbo].[Product] p
ON c.CategoryID = p.CategoryID;

--Sử dụng INNER JOIN
--Từ bảng Products và Categories, hãy đưa ra các thông tin sau đây:
--Mã thể loại
--Tên thể loại
--Số lượng sản phẩm
SELECT  c.CategoryID,
		c.CategoryName,
		COUNT(p.ProductID)
FROM [dbo].[Categories] c 
INNER JOIN [dbo].[Product] p
ON c.CategoryID = p.CategoryID;
GROUP BY c.CategoryID, c.CategoryName;

--Sử dụng INNET JOIN, hãy in ra các thông tin sau đây:
--Mã đơn hàng
--Tên công ty khách hàng
SELECT  o.OrderID,
		c.CompanyName
FROM [dbo].[Orders] o
INNER JOIN [dbo].[Customers] c
ON o.OrderID = c.OrderID;

--Sử dụng INNER JOIN, LEFT JOIN
--Từ bảng Products và Categories, hãy đưa ra các thông tin sau đây:
--Mã thể loại
--Tên thể loại
--Tên sản phẩm
SELECT c.CategoryID, c.CategoryName, p.ProductID, p.ProductName
FROM [dbo].[Categories] c
INNER JOIN [dbo].[Products] p
ON c.CategoryID = p.CategoryID;

SELECT c.CategoryID, c.CategoryName, p.ProductID, p.ProductName
FROM [dbo].[Categories] c
LEFT JOIN [dbo].[Products] p
ON c.CategoryID = p.CategoryID;

SELECT c.CategoryID, c.CategoryName, COUNT(p.ProductID)
FROM [dbo].[Categories] c
INNER JOIN [dbo].[Products] p
ON c.CategoryID = p.CategoryID
GROUP BY c.CategoryID, c.CategoryName;

SELECT c.CategoryID, c.CategoryName, COUNT(p.ProductID)
FROM [dbo].[Categories] c
LEFT JOIN [dbo].[Products] p
ON c.CategoryID = p.CategoryID
GROUP BY c.CategoryID, c.CategoryName;

--Sử dụng RIGHT JOIN, hãy in ra các thông tin sau đây:
--Mã đơn hàng
--Tên công ty khách hàng
SELECT o.OrderID, c.CompanyName
FROM [dbo].[Orders] o
INNER JOIN [dbo].[Customers] c
ON o.CustomerID = c.CustomerID;

SELECT o.OrderID, c.CompanyName
FROM [dbo].[Orders] o
RIGHT JOIN [dbo].[Customers] c
ON o.CustomerID = c.CustomerID;

SELECT  c.CompanyName, COUNT(o.OrderID)
FROM [dbo].[Orders] o
RIGHT JOIN [dbo].[Customers] c
ON o.CustomerID = c.CustomerID
GROUP BY c.CompanyName;

SELECT  c.CompanyName, COUNT(o.OrderID)
FROM [dbo].[Orders] o
INNER JOIN [dbo].[Customers] c
ON o.CustomerID = c.CustomerID
GROUP BY c.CompanyName;

--Sử dụng FULL OUTER JOIN
--Từ bảng Products và Categories, hãy in ra các thông tin sau đây:
--Mã thể loại
--Tên thể loại
--Mã sản phẩm
--Tên sản phẩm
SELECT c.CategoryID, c.CategoryName, p.ProductID, p.ProductName
FROM [dbo].[Categories] c
FULL JOIN [dbo].[Products] p
ON c.CategoryID = p.CategoryID;
