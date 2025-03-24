/*
Db view là sự trình bày data theo ý muốn được trích xuất từ 1 hoặc nhiều table/view khác.
View ko lưu data nen nó còn được đến với cái tên 'bảng ảo' (virtual tables).

Các thao tác select, insert, update, và delete với view tương tự như table bình thường
Vì ko lưu data nên tất cả những tao tác được thực hiên trên view thì đều được phản ánh đến base
table mà được trích xuất dữ liệu

--> Giống như lưu trữ bảng ảo -> bảng tạm thời được cấu hình từ một câu lệnh
--> ko chứa dữ liệu thật sự

*/
-- Tạo VIEW
CREATE VIEW ThongKeTheoThang AS
SELECT 
	YEAR([OrderDate]) AS "Năm",
	MONTH([OrderDate]) AS "Tháng",
	COUNT([OrderID]) AS "Số lượng đơn hàng"
FROM [dbo].[Orders]
GROUP BY YEAR([OrderDate]), MONTH([OrderDate]);

-- Truy vấn đến VIEW
SELECT *
FROM [dbo].[ThongKeTheoThang];

--Tương đương
SELECT * FROM (
	SELECT 
	YEAR([OrderDate]) AS "Năm",
	MONTH([OrderDate]) AS "Tháng",
	COUNT([OrderID]) AS "Số lượng đơn hàng"
	FROM [dbo].[Orders]
	GROUP BY YEAR([OrderDate]), MONTH([OrderDate])
) AS temp;


CREATE VIEW CustomerOrders AS
SELECT 
	C.CustomerID,
	C.CompanyName,
	C.ContactName,
	O.OrderID,
	O.OrderDate,
	O.ShipCountry
FROM Customers C
JOIN Orders O ON C.CustomerID = O.CustomerID;


