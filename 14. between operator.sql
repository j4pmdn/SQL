/*
Toán tử between
 -> Chọn dữ liệu trong một khoảng nhất định
 -> chọn các giá trị trong một phạm vi nhất định. các giá trị có thể là số, văn bản hoặc ngày tháng
 -> Bao gồm: giá trị bắt đầu và kết thúc
*/

-- Lấy danh sách các sản phẩm có giá bán trong khoảng từ 10 đến 20 đô la.
SELECT *
FROM [dbo].[Products]
WHERE [UnitPrice] BETWEEN 10 AND 20;

SELECT *
FROM [dbo].[Products]
WHERE [UnitPrice] >= 10 AND [UnitPrice] <= 20;

-- Lấy danh sách các đơn đặt hàng được đặt trong khoảng thời gian 
-- từ ngày 1996-07-01 đến ngày 1996-07-31:
SELECT *
FROM [dbo].[Orders]
WHERE [OrderDate] BETWEEN '1996-07-01' AND '1996-07-31';

-- Tính tổng số tiền vận chuyển (Freight) của các
-- đơn đặt hàng được đặt trong khoảng thời gian từ ngày 1996-07-01 
-- đến ngày 1996-07-31:
SELECT SUM([Freight]) AS [TotalJulyFreight]
FROM [dbo].[Orders]
WHERE [OrderDate] BETWEEN '1996-07-01' AND '1996-07-31';

-- Lấy danh sách các đơn đặt hàng có ngày đặt hàng trong khoảng từ ngay 1/1/1997 đến ngày 31/12/1997
-- và được vận chuyển bằng đường tày thủy  (Shipvia =3)
SELECT *
FROM [dbo].[Orders]
WHERE [OrderDate] BETWEEN '1997-01-01' AND '1997-12-31'
	  AND [ShipVia] = 3