/*
 AND -> Hiển thị 1 bản ghi nếu tất cả các điều kiện được phân tách bằng AND đề có giá trị true
 OR -> Hiển thị 1 bản ghi nếu có ít nhất 1 điều kiện được phân tách bằng OR đề có giá trị true
 NOT(phủ định) -> Hiển thị 1 bản ghi nếu điều kiện có giá trị không đúng - FALSE
*/

-- Bạn hãy liệt kê tất cả các sản phẩm có số lượng trong kho (UnitsInStock)
-- nhỏ hơn 50 hoặc lớn hơn 100.
SELECT *
FROM [dbo].[Products]
WHERE [UnitsInStock] < 50 OR [UnitsInStock] > 100;

-- Bạn hãy liệt kê tất các đơn hàng được giao đến Brazil, đã bị giao muộn, 
-- biết rằng ngày cần phải giao hàng là RequiredDate, ngày giao hàng thực tế là ShippedDate.
SELECT *
FROM [dbo].[Orders]
WHERE [ShipCountry] = 'Brazil' AND [ShippedDate] > [RequiredDate];

-- Lấy ra tất cả các sản phẩm có giá dưới 100$ và mã thể loại khác 1.
-- Lưu ý: dùng NOT
SELECT *
FROM [dbo].[Products]
WHERE [UnitPrice] >= 100 OR [CategoryID] = 1

SELECT *
FROM [dbo].[Products]
WHERE NOT([UnitPrice] >= 100 OR [CategoryID] = 1)

SELECT *
FROM [dbo].[Orders]
WHERE [Freight] > 50 AND [Freight] < 100

SELECT *
FROM [dbo].[Products]
WHERE [UnitsInStock] > 20 OR [UnitsOnOrder] < 20