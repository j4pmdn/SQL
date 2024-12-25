/*
SQL(Structured Query Language) là một ngôn ngữ lập trình được sử dụng để
thao tác với dữ liệu trong CSDL quan hệ. SQL được sử dụng để tạo, truy vấn,
thay đổi và xóa dữ liệu trong CSDL

SQL được chia thành 4 nhóm chính
DML(Data Manipulation Language): chèn, cập nhật, xóa, truy vấn
DDL(Data Definition Language): tạo csdl, table...
DCL(Data Control Language): cấp quyền và thu hồi quyền
TCL(Transaction Control Language): quản lý các giao dịch trong CSDL, 
bao gồm bắt đầu, xác nhận các giao dịch

DML thường sử dụng để thao tác với dữ liệu trong CSDL. Các câu lệnh
DML thường được sử dụng để thêm, cập nhật, xóa hoặc truy vấn dữ liệu
INSERT INTO: chèn dữ liệu vào 1 bảng
UPDATE: Cập nhật dữ liệu trong 1 bảng
DELETE: Xóa dữ liệu từ 1 bảng
SELECT: Truy vấn dữ liệu từ 1 hoặc nhiều bảng

DDL được sử dụng để định nghĩa cấu trấu của CSDL. Các lệnh DDL thường 
được sử dụng khi tạo CSDL mới hoặc khi thay đổi cấu trúc của CSDL hiện có:
CREATE TABLE: Tạo 1 bảng mới
ALTER TABLE: Thêm, xóa hoặc sửa đổi các cột trong bảng
DROP TABLE: Xóa 1 bảng
CREATE INDEX: Tạo 1 chỉ mục cho 1 cột hoặc tập hợp các cột
DROP INDEX: Xóa 1 chỉ mục
CREATE CONSTRAINT: Tạo 1 ràng buộc cho 1 cột hoặc tập hợp các cột
DROP CONSTRAINT: Xóa 1 ràng buộc

DCL được sử dụng để kiểm soát quyền truy cập vào CSDL. Các lệnh DCL thường
được sử dụng để cấp quền truy cập cho người dùng hoặc thu hồi quyền truy cập
GRANT: Cấp quyền truy cập cho người dùng
REVOKE: Thu hồi quyền truy cập cho người dùng

TCL được sử dụng để quản lý giao dịch trong CSDL. Các lện TCL thường 
sử dụng để đảm bảo tính toàn vẹn dữ liệu trong trường hợp xảy ra lỗi
BEGIN TRANSACTION: Bắt đầu một giao dịch
COMMIT TRANSACTION: Xác nhận một giao dịch
ROLLBACK TRANSACTION: Hoàn tác một giao dịch

*/