-- Viết câu lệnh SQL lấy ra tên tất cả các sản phẩm
SELECT [ProductName]
FROM [dbo].[Products];

-- Viết câu lệnh SQL lấy ra tên sản phẩm, giá bán trên mỗi đơn vị, số lượng sản phẩm trên đơn vị
SELECT [ProductName], [UnitPrice], [QuantityPerUnit]
FROM [dbo].[Products]

-- Viết câu lệnh SQL lấy ra tên công ty của khách hàng và quốc gia của khách hàng đó
SELECT [CompanyName], [Country]
FROM [dbo].[Customers];

SELECT CompanyName, Country
FROM dbo.Customers;

-- Viết câu lệnh SQL lấy ra tên công ty và số điện thoại của tất cả nhà cung cấp hàng
SELECT CompanyName, Phone
FROM dbo.Suppliers;

-- Lấy tất cả dữ liệu từ bảng Products
SELECT *
FROM [dbo].[Products];

-- Lấy tất cả dữ liệu từ bảng Customers
SELECT *
FROM [dbo].Customers;