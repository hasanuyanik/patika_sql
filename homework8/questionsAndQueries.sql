-- 1 - test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100) olan bir tablo oluşturalım.
CREATE TABLE employee
(
	id INTEGER PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	birthday DATE 
);

-- 2 - Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.
insert into employee (id, name, birthday) values (1, 'Cleveland Stook', '2017-02-06');
insert into employee (id, name, birthday) values (2, 'Jaime Devonshire', '1981-10-21');
insert into employee (id, name, birthday) values (3, 'Birch Vanderplas', '2003-08-16');
insert into employee (id, name, birthday) values (4, 'Lenna Kirkbright', '1993-09-01');
insert into employee (id, name, birthday) values (5, 'Riccardo Fugere', '2015-05-31');
insert into employee (id, name, birthday) values (6, 'Alick Challis', '1998-11-17');
insert into employee (id, name, birthday) values (7, 'Royal Chevolleau', '1992-12-27');
insert into employee (id, name, birthday) values (8, 'Wes Birkmyre', '2017-08-04');
insert into employee (id, name, birthday) values (9, 'Neely Ziehm', '1988-08-13');
insert into employee (id, name, birthday) values (10, 'Minnaminnie Melsome', '2019-05-22');
insert into employee (id, name, birthday) values (11, 'Dulcinea Fenner', '1989-01-27');
insert into employee (id, name, birthday) values (12, 'Nate Scare', '1982-05-07');
insert into employee (id, name, birthday) values (13, 'Reginauld Blair', '1983-06-03');
insert into employee (id, name, birthday) values (14, 'Joela Mussared', '1994-02-01');
insert into employee (id, name, birthday) values (15, 'Sharai Wearne', '2001-02-18');
insert into employee (id, name, birthday) values (16, 'Lisbeth Reany', '2006-07-15');
insert into employee (id, name, birthday) values (17, 'Gardiner Normanville', '2006-01-06');
insert into employee (id, name, birthday) values (18, 'James Bordiss', '1997-10-09');
insert into employee (id, name, birthday) values (19, 'Claudia Coston', '2016-05-06');
insert into employee (id, name, birthday) values (20, 'Drucie Heball', '1981-08-04');
insert into employee (id, name, birthday) values (21, 'Ewell Lillistone', '1999-02-27');
insert into employee (id, name, birthday) values (22, 'Clerissa Humphrys', '2015-09-04');
insert into employee (id, name, birthday) values (23, 'Archie Keeting', '2013-11-05');
insert into employee (id, name, birthday) values (24, 'Uriel Moxsom', '1997-06-09');
insert into employee (id, name, birthday) values (25, 'Staford Rimmington', '2019-04-15');
insert into employee (id, name, birthday) values (26, 'Langston Sandever', '2005-02-21');
insert into employee (id, name, birthday) values (27, 'Cynthea Sapsforde', '1994-02-18');
insert into employee (id, name, birthday) values (28, 'Dirk Frye', '1991-02-08');
insert into employee (id, name, birthday) values (29, 'Waylan Philipet', '2015-11-28');
insert into employee (id, name, birthday) values (30, 'Antonetta Seaton', '2017-01-27');
insert into employee (id, name, birthday) values (31, 'Arabelle Meacher', '2021-08-08');
insert into employee (id, name, birthday) values (32, 'Carson Foyston', '2021-08-03');
insert into employee (id, name, birthday) values (33, 'Kippy Richardsson', '1993-11-10');
insert into employee (id, name, birthday) values (34, 'Elvis Ausello', '1993-02-23');
insert into employee (id, name, birthday) values (35, 'Emmit Lancashire', '1990-01-03');
insert into employee (id, name, birthday) values (36, 'Johnny Mahony', '1987-04-04');
insert into employee (id, name, birthday) values (37, 'Jakie Howlin', '1984-04-12');
insert into employee (id, name, birthday) values (38, 'Rois Ilyushkin', '2015-06-05');
insert into employee (id, name, birthday) values (39, 'Fernandina Thurlow', '1984-08-17');
insert into employee (id, name, birthday) values (40, 'Timi Bagnold', '1990-08-17');
insert into employee (id, name, birthday) values (41, 'Milicent Lethem', '2019-11-18');
insert into employee (id, name, birthday) values (42, 'Gilbertina Gittins', '2006-01-06');
insert into employee (id, name, birthday) values (43, 'Cornell Swepson', '2001-08-20');
insert into employee (id, name, birthday) values (44, 'Anthia Pantecost', '1998-09-27');
insert into employee (id, name, birthday) values (45, 'Guglielma Ondracek', '2009-01-19');
insert into employee (id, name, birthday) values (46, 'Jared Leopard', '1993-02-20');
insert into employee (id, name, birthday) values (47, 'Lin Bover', '2018-07-03');
insert into employee (id, name, birthday) values (48, 'Willow Reeme', '1987-11-04');
insert into employee (id, name, birthday) values (49, 'Kaitlynn Ply', '2021-11-18');
insert into employee (id, name, birthday) values (50, 'Clemmy Podbury', '2002-08-28');

-- 3 - Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.
UPDATE employee
SET name = 'First Employee'
WHERE id = 1
RETURNING *;

UPDATE employee
SET birthday = '1988-02-03'
WHERE name = 'Birch Vanderplas'
RETURNING *;

UPDATE employee
SET name = 'Name Surname', birthday = '1999-08-07'
WHERE id = 5
RETURNING *;

UPDATE employee
SET id = 51, birthday = '1987-06-05'
WHERE name = 'Uriel Moxsom'
RETURNING *;

UPDATE employee
SET id = 52
WHERE name = 'Neely Ziehm'
RETURNING *;

-- 4 - Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.
DELETE FROM employee
WHERE id = 5
RETURNING *;

DELETE FROM employee
WHERE name = 'Alick Challis'
RETURNING *;

DELETE FROM employee
WHERE birthday = '1982-05-07'
RETURNING *;

DELETE FROM employee
WHERE id = 16 AND name = 'Lisbeth Reany' AND birthday = '2006-07-15'
RETURNING *;

DELETE FROM employee
WHERE id > 40
RETURNING *;