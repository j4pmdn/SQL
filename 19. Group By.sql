/*
SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s)
ORDER BY column_name(s);

Dùng để nhóm các dòng dữ liệu có cùng giá trị
Thường được dùng với các hàm: COUNT(), MAX(), MIN(), SUM(), AVG()
*/

-- Hãy cho biết mỗi khách hàng đã đặt bao nhiêu đơn hàng?
SELECT  [CustomerID],
	COUNT([OrderID]) AS [TotalOrders]
FROM [dbo].[Orders]
GROUP BY [CustomerID];

-- Hãy tính giá trị đơn giá trung bình theo mỗi nhà cung cấp sản phẩm.
SELECT  [SupplierID],
	AVG([UnitPrice]) AS [AvgUnitPrice]
FROM [dbo].[Products]
GROUP BY [SupplierID];

-- Hãy cho biết mỗi thể loại có tổng số bao nhiêu sản phẩm trong kho (UnitsOnStock)?
SELECT  [CategoryID],
	Sum([UnitsOnStock]) AS [TotalUnitsOnStock]
FROM [dbo].[Products]
GROUP BY [CategoryID];

-- Hãy cho biết giá vận chuyển thấp nhất và lớn nhất 
-- của các đơn hàng theo từng thành phố và quốc gia khác nhau.  
SELECT  [ShipCountry],
	[ShipCity],
	MIN([Freight]) AS [MinFreight]
	MAX([Freight]) AS [MaxFreight]
FROM [dbo].[Orders]
GROUP BY [ShipCountry], [ShipCity]
ORDER BY [ShipCountry] ASC, [ShipCity] ASC;

-- Hãy thống kê số lượng nhân viên theo từng quốc gia khác nhau
SELECT  [Country]
	COUNT([EmployeeID]) AS [CountEmployee]
FROM [dbo].[EmployeeID]
GROUP BY [Country];

--Challenges1: Write an SQL statement 
--Thống kê số khách hàng ở từng quốc gia, từng thành phố
--Tìm các khách hàng có CompanyName có chữ a trong tên
--Sắp xếp theo chiều A-Z Country

--Challenges2: Write an SQL Statment
-- Tính tổng số tiền vận chuyển ở từng thành phố, quốc qua
-- Chỉ lấy những ShipName có có chữ 'b' 
--Sắp xếp theo chiều từ A-Z của ShipNAme
