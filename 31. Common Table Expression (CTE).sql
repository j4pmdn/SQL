/*
	CTE
	Được sử dụng để tạo bảng tạm và sử dụng nó trong các truy vấn sau đó
	Giúp làm cho câu truy vấn trở nên dễ đọc và dễ quản lý hơn

	Lợi ích của việc sử dụng CTE
	 - Giảm độ phức tạp của truy vấn SQL
	 - Tái sử dụng và khả năng mở rộng
	 - Tăng hiệu suất và tối ưu hóa truy vấn

	WITH tên_CTE(cột1 ,cột2) AS (
		-- Truy vấn để định nghĩa CTE
	)
*/

WITH short_e AS (
	SELECT [EmployeeID], [LastName], [FirstName]
	FROM [dbo].[Employees]
)

SELECT * FROM short_e;

-- Lấy thông tin về các sản phẩm (Products) có cùng thể loại với một sản phẩm cụ thể
WITH ProductCategory AS(
	SELECT [ProductName],[CategoryID]
	FROM [dbo].[Products]
	WHERE [ProductName]='Chai'
)
SELECT P.[ProductName],P.[CategoryID]
FROM [dbo].[Products] as P
JOIN ProductCategory as PC 
ON P.CategoryID=PC.CategoryID;

-- Lấy thông tin về đơn hàng (Orders) cùng
-- với tổng giá trị đơn hàng và tỷ lệ giữa
-- tổng giá trị và phí giao hàng
-- CTE
WITH OrderTotals AS ( 
	SELECT [OrderID], SUM([UnitPrice]*[Quantity]) AS TotalPrice
	FROM [dbo].[Order Details]
	GROUP BY [OrderID]
) 
SELECT  od.[OrderID], 
		od.[OrderDate], 
		od.[Freight], 
		ot.TotalPrice, 
		ot.TotalPrice/od.Freight AS ratio
FROM [dbo].[Orders] od
JOIN OrderTotals ot ON od.OrderID=ot.OrderID;