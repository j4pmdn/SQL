/*
 SELECT MIN(...) -> Nhỏ nhất
 SELECT MAX(...) -> Lớn nhất
*/

-- Viết câu lệnh SQL tìm giá thấp nhất của các sẩn phẩm trong bảng Products.
SELECT MIN([UnitPrice]) [MinPrice]
FROM [dbo].[Products];

-- Viết câu lệnh lấy ra ngày đặt hàng gần đây nhất 
-- từ bảng Orders.
SELECT MAX([OrderDate]) [MaxOrderDate]
FROM [dbo].[Orders];

-- Viết câu lệnh SQL tìm số lượng hàng trong kho (UnitsInStock) lớn nhất.
SELECT MAX([UnitsInStock]) [MaxUnitsInStock]
FROM [dbo].[Products];

-- Hãy cho biết ngày sinh của nhân viên có tuổi đời lớn nhất công ty
SELECT MIN([BirthDate]) [MaxOlder]
FROM [dbo].[Employees]

