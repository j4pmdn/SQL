/*
 count() -> Đếm số lượng dữ liệu (khác NULL) trong 1 cột, sử dụng COUNT(*) khi muốn đếm số lượng bản ghi
 sum() -> tính tổng giá trị của 1 cột, nếu bất kỳ giá trị trong cột là NULL, kết quả hàm SUM sẽ là NULL
 avg() -> tính giá trị trung bình cho cột, nếu tất cả các giá trị trong cột là NULL, kết quả hàm AVG là NULL
	   -> nếu chỉ có 1 vài giá trị là NULL, AVG sẽ bỏ qua các giá trị NULL và tính trung bình cho các giá trị khác
*/

-- Hãy đếm số lượng khách hàng có trong bảng (Customers).
SELECT COUNT(*) [CustomerAmount]
FROM [dbo].[Customers];

SELECT COUNT([CustomerID]) [CustomerAmount]
FROM [dbo].[Customers];

-- Tính tổng số tiền vận chuyển (Freight) 
-- của tất cả các đơn đặt hàng.
SELECT SUM([Freight]) [SumFreight]
FROM [dbo].[Orders];

-- Tính trung bình số lượng đặt hàng (Quantity) 
-- của tất cả các sản phẩm trong bảng [Order Details]
SELECT AVG([Quantity]) [AvgQuantity]
FROM [dbo].[Order Details];

-- Đếm số lượng, tính tổng số lượng hàng trong kho 
-- và trung bình giá của các sản phẩm có trong bảng Product.
SELECT	COUNT(*) AS [NumberOfProducts], 
		SUM([UnitsInStock]) AS [TotalUnitsInStock], 
		AVG([UnitPrice]) AS [AvgUnitPrice]
FROM [dbo].[Products];

-- Đếm số lượng, tính tổng số lượng hàng tồn kho 
-- và trung bình giá của các sản phẩm có trong bảng Product.
SELECT COUNT([QuantityPerUnit]) [NumberOfProducts],
	   SUM([UnitsInStock] - [UnitsOnOrder]) [TotalUnitsInStock],
	   AVG([UnitPrice]) [AvgUnitPrice]
FROM [dbo].[Products];

-- Đếm số lượng đơn hàng từ bảng Orders
SELECT COUNT(*) [OrderAmount]
FROM [dbo].[Orders];

SELECT COUNT([OrderID]) [OrderAmount]
FROM [dbo].[Orders];

-- Từ bảng Order Details hãy tính trung bình cho cột UnitPrice, và tính tổng cho cột Quantity
SELECT AVG([UnitPrice]) [AvgUnitPrice],
	   SUM([Quantity]) [SumQuantity]		
FROM [dbo].[Order Details];





