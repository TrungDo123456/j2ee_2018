SELECT * FROM qlbanhang.tbnganhsanpham;
SELECT * FROM qlbanhang.tbloaisanpham;
SELECT * FROM qlbanhang.tbnhasanxuat;
SELECT * FROM qlbanhang.tbsanpham;

insert into qlbanhang.tbsanpham values ('1',111,'bbb','ccc','ddd',111,'ggg',111);
INSERT  into tbnganhsanpham VALUES (1, 'D06', 'Milk Products', 'Di tu');
INSERT into tbnganhsanpham VALUES (3, 'G01', 'Groceries', 'Di tu');

INSERT into tbsanpham VALUES (1, 1, '333 BIA LON 330ML', 'Lon', 'Di tu', 1, NULL, 1);
INSERT  into tbsanpham VALUES (2, 2, '333 BIA LON 330ML x 6', 'Loc 6', 'Di tu', 1, NULL, 2);

INSERT into tbloaisanpham VALUES (1, 'D0608', 'Baby Milk powder', 'Di tu', 1);
INSERT into tbloaisanpham VALUES (2, 'D0609', 'Baby Cereal', 'Di tu', 3);

INSERT into tbnhasanxuat VALUES (1, '1', 'ABBOTT VN', NULL, NULL);
INSERT into tbnhasanxuat VALUES (2, '2', 'ACECOOK VN', NULL, NULL);