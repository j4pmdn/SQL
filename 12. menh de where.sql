/*
Mệnh đề Where được sử dụng để lọc bản ghi
Nó sử dụng để trích xuất những bản ghi đáp ứng một điều kiện cụ thể
*/

-- Bạn hãy liệt kê tất cả các nhân viên đến từ thành phố London.
SELECT *
FROM [dbo].[Employees]
WHERE [City] = 'London';

-- Bạn hãy liệt kê tất cả các nhân viên đến từ thành phố London.
-- Sap xep ket qua theo LastName A->Z
SELECT *
FROM [dbo].[Employees]
WHERE [City] = 'London'
ORDER BY [LastName] ASC;

-- Bạn hãy liệt kê tất các đơn hàng bị giao muộn, 
-- biết rằng ngày cần phải giao hàng là RequiredDate, ngày giao hàng thực tế là ShippedDate.
SELECT [OrderID],
	   [RequiredDate],
	   [ShippedDate]
FROM [dbo].[Orders]
WHERE [ShippedDate] > [RequiredDate];

SELECT COUNT(*) [So don giao muon]
FROM [dbo].[Orders]
WHERE [ShippedDate] > [RequiredDate];

-- Lấy ra tất cả các đơn hàng chi tiết được giảm giá nhiều hơn 10%.
-- (Discount > 0.1)
SELECT *
FROM [dbo].[Order Details]
WHERE [Discount] > 0.1;

SELECT * 
FROM [dbo].[Orders]
WHERE [ShipCity] = 'France';

SELECT *
FROM [dbo].[Products]
WHERE [UnitsInStock] > 20

