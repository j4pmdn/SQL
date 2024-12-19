/*
SELECT column1, column2...
FROM table_name
WHERE columnN LIKE pattern;

Có hai kí tự đại diện thường sử dụng cùng với LIKE
 Dấu phần trăm(%) đại diện cho không, một hoặc nhiều kí tự
 Dấu gạch dưới(_) đại diện cho một kí tự đơn
*/

-- Hãy lọc ra tất cả các khách hàng đến từ các quốc gia (Country)
-- bắt đầu bằng chữ ‘A’
SELECT *
FROM [dbo].[Customers]
WHERE [Country] LIKE 'A%'; -- Bắt đầu bằng chữ A và sau đó ko có kí tự, có kí tự, hoặc có nhiều kí tự đều được

-- Lấy danh sách các đơn đặt được gửi đến các thành phố có chứa chữ ‘a’.
SELECT *
FROM [dbo].[Orders]
WHERE [ShipCity] LIKE '%a%'

-- Hãy lọc ra tất cả các đơn hàng với điều kiện:
-- ShipCountry  LIKE ‘U_’
-- ShipCountry LIKE ‘U%’

SELECT *
FROM [dbo].[Orders]
WHERE [ShipCountry] LIKE 'U_'; -- Bắt đầu bằng chữ U và phía sau bắt buộc phải có 1 kí tự đơn

SELECT *
FROM [dbo].[Orders]
WHERE [ShipCountry] LIKE 'U%'; -- Bắt đầu bằng chữ U và sau đó ko có kí tự, có kí tự, hoặc có nhiều kí tự đều được

-- Hãy lấy ra tất cả các nhà cung cấp hàng có chữ 'b' trong tên của công ty
SELECT *
FROM [dbo].[Suppliers]
WHERE [CompanyName] LIKE '%b%';


-- --Challenge1: Write an SQL statement to list employees fullname with the letter "e" in the last name 
--and born from 1952-01-01 to 1962-12-31, 
--arrange in A-Z order by first Name
--taking only the first 5 lines

SELECT TOP 5*, [FirstName] + '' + [LastName]
FROM [dbo].[Employees]
WHERE [LastName] LIKE '%e%' AND [BirthDate] BETWEEN '1952-01-01' AND '1962-12-31'
ORDER BY [FirstName] ASC;

--Challenge 2: Write an SQL statement to list employees fullname with 'U__' (two underscores) in the [Country]
-- and start working from 1992-03-23 to 1994-12-31
-- agrange in Z-A order by the last name
--taking only the first 4 lines
Select Top 4*, e.[FirstName] + ' ' +e.[LastName] as [fullName]
From [dbo].[Employees] as e
Where e.[Country] Like 'U__' and e.[HireDate] Between '1992-03-23' and '1994-12-31'
Order by e.[LastName] DESC;