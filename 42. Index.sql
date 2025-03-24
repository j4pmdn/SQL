/*
========================Index trong database=============================

Index là 1 cấu trúc dữ liệu được dùng để định vị và truy cập nhanh nhất vào dữ liệu trong các bảng db

Index là 1 cách tối ưu hóa hiệu suất truy vấn -> tăng tốc độ truy vấn

SELECT * FROM Customers
WHERE City LIKE 'London';

Khi ko có Index cho cột City, truy vấn sẽ phải chạy qua tất cả các Row của bảng Customer để so sánh
và lấy ra những Row thỏa mãn
Khi số lượng bản ghi lớn, truy vấn sẽ rất chậm

Index trỏ tới địa chỉ dữ liệu trong 1 bảng giống như mục lục 1 cuốn sách(gồm tên đề mục và số trang)
nó giúp truy vấn trở nên nhanh chóng việc ban xem mục lục và tìm đúng trang cần đọc

Khi làm việc với số thì CPU, RAM xử lý nhanh hơn TEXT -> dịch thành số

Index -> [key, value]

Các kiểu Index
 - Hash index -> hàm băm
   -> hỗ trợ = <> (IN, NOT IN) -> ko có thứ tự -> ko hỗ trợ > < LIKE
   -> ko tối ưu ORDER BY
 
 - B-Tree
   -> root node, ....
   -> sử dụng các biểu thức so sánh dạng: =, >, >=, <, <=, BETWEEN VÀ LIKE


Lưu ý về việc dùng Index trong DB
- Cẩn trọng
 + Index sẽ làm tốn thêm bộ nhớ để lưu trữ
 + Làm chậm các hoạt động khác, khi insert hay update column sử dụng index, index cần được điều chỉnh
   (reindex) sẽ tiêu tốn 1 khoảng thời gian
 + việc đánh index bừa bãi, lộn xộn, ko những ko tăng tốc độ truy vấn mà còn làm giảm hiệu năng hoạt động

- Các trường hợp nên sử dụng index
 + Những bảng có dữ liệu vừa và lớn (>100 nghìn dòng)
 + Các column thường xuyên sử dụng mệnh đề WHERE, JOIN và ORDER BY

- Các trường hợp ko nên sử dụng index:
 + CSDL nhỏ hoặc cần sử dụng tài nguyên ít
 + Dữ liệu thay đổi thường xuyên
 + Cột chứa dữ liệu ko đa dạng
 + Cột chứa dữ liệu text quá dài(ví dụ như description)

- Cần phải lưu ý về thứ tự columns trong một index nhiều trường

- Các trường hợp index sẽ được tạo tự động
 + Khóa chính
 + Khóa ngoại
 + Các cột UNIQUE
*/

SELECT *
FROM [Sales].[SalesOrderDetail];

-- Bật hiển thị thống kế về tài nguyên I/O
SET STATISTICS IO ON;

-- Truy vấn
SELECT *
FROM [Sales].[SalesOrderDetail]
WHERE [CarrierTrackingNumber] = '1B2B-492F-A9';

-- Bật hiển thị thống kế về tài nguyên I/O
SET STATISTICS IO OFF;

-- logical reads 1238

-- Tạo index cho [CarrierTrackingNumber]
CREATE INDEX idx_CarrierTrackingNumber
ON [Sales].[SalesOrderDetail] ([CarrierTrackingNumber]);

-- logical reads 69


-- tốc độ nó đã tăng bao nhiêu lần -> 17 lần
