CREATE DATABASE Course

USE Course

CREATE TABLE [Teachers](
    Id int primary key identity,
    [Name] nvarchar(40),
    Surname nvarchar(40),
    Email nvarchar(40) unique,
    Age int,
    Salary decimal
)

INSERT INTO [Teachers] VALUES
('Cavid', 'Bashirov', 'cavid@code.edu.az', 29, 2000),
('Ibrahim', 'Aliyev', 'ibrahim@code.edu.az', 30, 1500),
('Ali', 'Talibov', 'aliit@code.edu.az', 21, 1200),
('Jay', 'White', 'jay@code.edu.az', 18, 800),
('Cameron', 'Barr', 'cameron@code.edu.az', 34, 3400),
('Roman', 'Kuzmin', 'roman@mail.ru', 34, 1000),
('Charlotte', 'Burns', 'charlotte@code.edu.az', 25, 1200)


-- Yashi butun muellimlerin orta yashindan boyuk olan muellimlerin siyahisi.
SELECT * FROM [Teachers] WHERE Age > (SELECT AVG(Age) FROM [Teachers])

-- Maashi 1000 ve 3000 araliqinda olan muellimlerin siyahisi.
SELECT * FROM [Teachers] WHERE Salary BETWEEN 1000 AND 3000

-- Emailin sonu mail.ru olan muellimlerin adi ve soyadi.
SELECT [Name], Surname FROM [Teachers] WHERE Email LIKE '%@mail.ru'

-- Adi C herfi ile bashlayan muellimlerin siyahisi.
SELECT * FROM [Teachers] WHERE [Name] LIKE 'c%'