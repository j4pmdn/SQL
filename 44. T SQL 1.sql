/*
	T-SQL (Transact-SQL) là cú pháp ngôn ngữ lập trình mở rộng của ngôn ngữ SQL gồm có các tính năng
	được Sybase và Microsoft bổ sung cho SQL. Chẳng hạn như kiểm sát giao dịch, xử lý lỗi và các biến 
	được khai báo


*/

DECLARE @CustomerName NVARCHAR(50)
DECLARE @OrderTotal MONEY

-- Gán giá trị cho biến
SET @CustomerName  = 'John Doe'
SET @OrderTotal = 100.50

-- Sử dụng biến trong truy vấn
SELECT *
FROM Orders
WHERE CustomerName = @CustomerName;
