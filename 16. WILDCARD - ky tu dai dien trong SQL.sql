﻿-- Hãy lọc ra tất cả các khách hàng có tên liên hệ bắt đầu bằng chữ ‘A’
SELECT *
FROM [dbo].[Customers]
WHERE [ContactName] LIKE 'A%';

-- Hãy lọc ra tất cả các khách hàng có tên liên hệ bắt đầu bằng chữ ‘H’
-- , và có chữ thứ 2 là bất kỳ ký tự nào.
SELECT *
FROM [dbo].[Customers]
WHERE [ContactName] LIKE 'H_%'; 

-- Hãy lọc ra tất cả các đơn hàng được gửi đến thành phố 
-- có chữ cái bắt đầu là L, chữ cái thứ hai là u hoặc o.
SELECT [OrderID], [ShipCity]
FROM [dbo].[Orders]
WHERE [ShipCity] LIKE 'L[u,o]%';

-- Hãy lọc ra tất cả các đơn hàng được gửi đến thành phố 
-- có chữ cái bắt đầu là L, chữ cái thứ hai không là u hoặc o.
SELECT [OrderID], [ShipCity]
FROM [dbo].[Orders]
WHERE [ShipCity] LIKE 'L[^u,o]%';

-- Hãy lọc ra tất cả các đơn hang được gửi đến thành phố có 
-- chữ cái bắt đầu là L, chữ cái thứ hai là các ký tự từ a đến e.
SELECT *
FROM [dbo].[Orders]
WHERE [ShipCity] LIKE 'L[ae]%';

-- Lấy ra tất cả các nhà cung cấp hàng có tên công ty bắt đầu bằng chữ A, không chứa kí tự B
SELECT *
FROM [dbo].[Suppliers]
WHERE [CompanyName] LIKE 'A[^B]%';





