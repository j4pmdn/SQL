/*
OrderBy -> sắp xếp kết quả trả về của try vấn
*/
-- Bạn hãy liệt kê tất cả các nhà cung cấp theo thứ tự tên đơn vị CompanyName
-- Từ A-Z
SELECT *
FROM [dbo].[Suppliers]
ORDER BY [CompanyName] ASC; -- ascending

SELECT *
FROM [dbo].[Suppliers]
ORDER BY [CompanyName];

-- Bạn hãy liệt kê tất cả các sản phẩm theo thứ tự giá giảm dần.
SELECT *
FROM [dbo].[Products]
ORDER BY [UnitPrice] DESC; -- descending

-- Bạn hãy liệt kê tất cả các nhân viên theo thứ tự họ và tên đệm A-Z.
-- Không dùng ASC | DESC
SELECT * 
FROM [dbo].[Employees]
ORDER BY [LastName] ASC, [FirstName] ASC;

SELECT * 
FROM [dbo].[Employees]
ORDER BY [LastName], [FirstName];

-- Hãy lấy ra một sản phẩm có số lượng bán cao nhất từ bảng [Order Details].
-- Không được dùng MAX.
SELECT *
FROM [dbo].[Order Details]
ORDER BY [Quantity] DESC;

SELECT TOP 1 *
FROM [dbo].[Order Details]
ORDER BY [Quantity] DESC;

-- Hãy liệt kê danh sách các đơn đặt hàng (OrderID) trong bảng Orders theo thứ tự giảm dần của ngày đặt hàng(OrderDate)
SELECT [OrderID]
FROM [dbo].[Orders]
ORDER BY [OrderDate] DESC;

-- Hãy liệt kê tê, đơn giá, số lượng trong kho của tất cả các sản phẩm trong bảng Products, theo thứ tự giảm dần của UnitsInStock
SELECT [ProductName], [UnitPrice], [UnitsInStock]
FROM [dbo].[Products]
ORDER BY [UnitsInStock] DESC;

