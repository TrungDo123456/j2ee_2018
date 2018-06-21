CREATE SCHEMA `qlbanhang` ;
CREATE TABLE `tbchitietdonhang` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`idDonHang` int(11) NOT NULL,
`SoLuong` int(11) NOT NULL,
`DonGia` decimal(18,0) NOT NULL,
`GhiChu` varchar(250) NULL,
`idMaVachSanPham` int(11) NOT NULL,
`ThoiGianBaoHanh` int(11) NOT NULL,
PRIMARY KEY (`id`)
);
CREATE TABLE `tbcuahang` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`TenCuaHang` varchar(250)  NOT NULL,
`DiaChiCuaHang` longtext  NULL,
`NguoiQuanLy` varchar(150) NULL,
`SoDienThoai` varchar(50)  NULL,
`MaCuaHang` varchar(150) NOT NULL,
PRIMARY KEY (`id`) 
);
CREATE TABLE `tbdanhsachkhuyenmaisanpham` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`idKhuyenMaiSanPham` int(11) NOT NULL,
`idMaVachSanPham` int(11) NOT NULL,
`GiaBanMoi` int(11) NOT NULL,
PRIMARY KEY (`id`) 
);
CREATE TABLE `tbdonhang` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`NgayLap` datetime NOT NULL,
`idCuaHang` int(11) NOT NULL,
`idKhachHang` int(11) NOT NULL,
`idNhanVien` int(11) NOT NULL,
`GhiChu` longtext  NULL,
`TongTien` decimal(18,0) NOT NULL,
`TrangThai` int(11) NOT NULL,
PRIMARY KEY (`id`) 
);
CREATE TABLE `tbkhachhang` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`TenKhachHang` varchar(150)NOT NULL,
`DiaChi` varchar(250) NULL,
`SoDienThoai` varchar(50) NULL,
`Email` varchar(150) NULL,
`MatKhau` varchar(150) NULL,
`NgayNhap` date NOT NULL,
`idCuaHang` int(11) NOT NULL,
`GioiTinh` tinyint(4) NOT NULL,
`idLoaiKhachHang` int(11) NOT NULL,
`DiemTichLuy` decimal(18,0) NOT NULL,
PRIMARY KEY (`id`)
);

CREATE TABLE `tbkhuyenmaisanpham` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`TenChuongTrinh` varchar(250) NOT NULL,
`NgayBatDau` date NOT NULL,
`NgayKetThuc` date NOT NULL,
`GhiChu` varchar(250) NULL,
`idNhanVien` int(11) NOT NULL,
`ApDung` tinyint(4) NOT NULL,
`idCuaHang` int(11) NULL,
PRIMARY KEY (`id`) 
);
CREATE TABLE `tbloaikhachhang` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`LoaiThe` varchar(150)  NOT NULL,
`MoTa` varchar(250) NULL,
`TiLeQuyDoiDiem` float NOT NULL,
`NguongQuyDoi` int(11) NOT NULL,
PRIMARY KEY (`id`) 
);
CREATE TABLE `tbloaisanpham` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`MaLoaiSanPham` varchar(150)  NOT NULL,
`TenLoaiSanPham` varchar(150)  NOT NULL,
`MoTa` longtext NULL,
`idNganhSanPham` int(11) NOT NULL,
PRIMARY KEY (`id`) 
);
CREATE TABLE `tblogsanpham` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`idMaVachSanPham` int(11) NOT NULL,
`idNhanVien` int(11) NOT NULL,
`NgayThayDoi` datetime NOT NULL,
`DienGiai` varchar(250)  NULL,
`GiaBanCu` decimal(18,0) NOT NULL,
`GiaBanThayDoi` decimal(18,0) NOT NULL,
`GiaNhapCu` decimal(18,0) NOT NULL,
`GiaNhapThayDoi` decimal(18,0) NOT NULL,
`GiaSiCu` decimal(18,0) NOT NULL,
`GiaSiThayDoi` decimal(18,0) NOT NULL,
PRIMARY KEY (`id`) 
);
CREATE TABLE `tbmavachsanpham` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`MaVach` varchar(50)NOT NULL,
`idNhaCungCap` int(11) NOT NULL,
`SoLuong` int(11) NOT NULL,
`SuDung` tinyint(4) NOT NULL,
`GiaBan` int(11) NOT NULL,
`LanSuaCuoi` datetime  NULL,
`idNhanVien` int(11)  NULL,
`GhiChuThayDoi` longtext NULL,
`GiaNhap` int(11) NOT NULL,
`HetBan` tinyint(4) NOT NULL,
`KhongTichLuyDiem` tinyint(4) NOT NULL,
`idSanPhamCuaHang` int(11) NOT NULL,
`NgayTao` datetime NOT NULL,
PRIMARY KEY (`id`) 
);
CREATE TABLE `tbnganhsanpham` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`MaNganhSanPham` varchar(150)  NOT NULL,
`TenNganhSanPham` varchar(150) NOT NULL,
`MoTa` longtext NULL,
PRIMARY KEY (`id`) 
);

CREATE TABLE `tbnhacungcap` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`CodeNhaCungCap` varchar(4) NOT NULL,
`TenNhaCungCap` varchar(150) NOT NULL,
`DiaChi` varchar(250)   NULL,
`SoDienThoai` varchar(50)   NULL,
`idCuaHang` int(11) NOT NULL,
PRIMARY KEY (`id`) 
);
CREATE TABLE `tbnhanvien` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`TenNhanVien` varchar(150)  NOT NULL,
`TenDangNhap` varchar(150)  NOT NULL,
`MatKhau` varchar(150)  NOT NULL,
`idQuyen` int(11) NOT NULL,
`idCuaHang` int(11) NOT NULL,
`isThayMatKhau` tinyint(4) NOT NULL,
PRIMARY KEY (`id`) 
)
;
CREATE TABLE `tbnhasanxuat` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`MaNhaSanXuat` varchar(13)  NOT NULL,
`TenNhaSanXuat` varchar(150)  NOT NULL,
`DiaChi` longtext  NULL,
`GhiChu` longtext  NULL,
PRIMARY KEY (`id`) 
);

CREATE TABLE `tbquyen` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`TenQuyen` varchar(200)  NOT NULL,
`TenControl` varchar(150)   NULL,
`HinhThuc` int(11) NOT NULL,
`idQuyenCha` int(11)  NULL,
PRIMARY KEY (`id`) 
);
CREATE TABLE `tbsanpham` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`CodeSanPham` int(11) NOT NULL,
`TenSanPham` varchar(150)  NOT NULL,
`DonVi` varchar(50)  NOT NULL,
`MoTa` longtext  NULL,
`idLoaiSanPham` int(11) NOT NULL,
`HinhAnh` varchar(100)   NULL,
`idNhaSanXuat` int(11) NOT NULL,
PRIMARY KEY (`id`) 
);
CREATE TABLE `tbsanphamcuahang` (
`id` int(11) NOT NULL AUTO_INCREMENT,
`idSanPham` int(11) NOT NULL,
`idCuaHang` int(11) NOT NULL,
PRIMARY KEY (`id`) 
);


ALTER TABLE `tbchitietdonhang` ADD CONSTRAINT `FK_tbChiTietDonHang_tbDonHang` FOREIGN KEY (`idDonHang`) REFERENCES `tbdonhang` (`id`) ;
ALTER TABLE `tbchitietdonhang` ADD CONSTRAINT `FK_tbChiTietDonHang_tbMaVachSanPham1` FOREIGN KEY (`idMaVachSanPham`) REFERENCES `tbmavachsanpham` (`id`) ;
ALTER TABLE `tbdanhsachkhuyenmaisanpham` ADD CONSTRAINT `FK_tbDanhSachKhuyenMaiSanPham_tbKhuyenMaiSanPham` FOREIGN KEY (`idKhuyenMaiSanPham`) REFERENCES `tbkhuyenmaisanpham` (`id`) ;
ALTER TABLE `tbdanhsachkhuyenmaisanpham` ADD CONSTRAINT `FK_tbDanhSachKhuyenMaiSanPham_tbMaVachSanPham` FOREIGN KEY (`idMaVachSanPham`) REFERENCES `tbmavachsanpham` (`id`) ;
ALTER TABLE `tbdonhang` ADD CONSTRAINT `FK_tbDonHang_tbCuaHang` FOREIGN KEY (`idCuaHang`) REFERENCES `tbcuahang` (`id`) ;
ALTER TABLE `tbdonhang` ADD CONSTRAINT `FK_tbDonHang_tbKhachHang` FOREIGN KEY (`idKhachHang`) REFERENCES `tbkhachhang` (`id`) ;
ALTER TABLE `tbdonhang` ADD CONSTRAINT `FK_tbDonHang_tbNhanVien` FOREIGN KEY (`idNhanVien`) REFERENCES `tbnhanvien` (`id`) ;
ALTER TABLE `tbkhachhang` ADD CONSTRAINT `FK_tbKhachHang_tbCuaHang` FOREIGN KEY (`idCuaHang`) REFERENCES `tbcuahang` (`id`) ;
ALTER TABLE `tbkhachhang` ADD CONSTRAINT `FK_tbKhachHang_tbLoaiKhachHang` FOREIGN KEY (`idLoaiKhachHang`) REFERENCES `tbloaikhachhang` (`id`) ;
ALTER TABLE `tbkhuyenmaisanpham` ADD CONSTRAINT `FK_tbKhuyenMaiSanPham_tbCuaHang` FOREIGN KEY (`idCuaHang`) REFERENCES `tbcuahang` (`id`) ;
ALTER TABLE `tbloaisanpham` ADD CONSTRAINT `FK_tbLoaiSanPham_tbNganhSanPham` FOREIGN KEY (`idNganhSanPham`) REFERENCES `tbnganhsanpham` (`id`) ;
ALTER TABLE `tblogsanpham` ADD CONSTRAINT `FK_tbLogSanPham_tbMaVachSanPham` FOREIGN KEY (`idMaVachSanPham`) REFERENCES `tbmavachsanpham` (`id`) ;
ALTER TABLE `tblogsanpham` ADD CONSTRAINT `FK_tbLogSanPham_tbNhanVien` FOREIGN KEY (`idNhanVien`) REFERENCES `tbnhanvien` (`id`) ;
ALTER TABLE `tbmavachsanpham` ADD CONSTRAINT `FK_tbMaVachSanPham_tbNhaCungCap` FOREIGN KEY (`idNhaCungCap`) REFERENCES `tbnhacungcap` (`id`) ;
ALTER TABLE `tbmavachsanpham` ADD CONSTRAINT `FK_tbMaVachSanPham_tbNhanVien` FOREIGN KEY (`idNhanVien`) REFERENCES `tbnhanvien` (`id`) ;
ALTER TABLE `tbmavachsanpham` ADD CONSTRAINT `FK_tbMaVachSanPham_tbSanPhamCuaHang` FOREIGN KEY (`idSanPhamCuaHang`) REFERENCES `tbsanphamcuahang` (`id`) ;
ALTER TABLE `tbnhanvien` ADD CONSTRAINT `FK_tbNhanVien_tbCuaHang` FOREIGN KEY (`idCuaHang`) REFERENCES `tbcuahang` (`id`) ;
ALTER TABLE `tbnhanVien` ADD CONSTRAINT `FK_tbNhanVien_tbQuyen` FOREIGN KEY (`idQuyen`) REFERENCES `tbquyen` (`id`) ;
ALTER TABLE `tbsanpham` ADD CONSTRAINT `FK_tbSanPham_tbLoaiSanPham` FOREIGN KEY (`idLoaiSanPham`) REFERENCES `tbloaisanpham` (`id`) ;
ALTER TABLE `tbsanpham` ADD CONSTRAINT `FK_tbSanPham_tbNhaSanXuat1` FOREIGN KEY (`idNhaSanXuat`) REFERENCES `tbnhasanxuat` (`id`) ;
ALTER TABLE `tbsanphamcuahang` ADD CONSTRAINT `FK_tbSanPhamCuaHang_tbCuaHang` FOREIGN KEY (`idCuaHang`) REFERENCES `tbcuahang` (`id`) ;
ALTER TABLE `tbsanphamcuahang` ADD CONSTRAINT `FK_tbSanPhamCuaHang_tbSanPham` FOREIGN KEY (`idSanPham`) REFERENCES `tbsanpham` (`id`) ;


/*query get infor của một sản phẩm theo id sản phẩm*/
select tbsanpham.id as id_sanpham, tbmavachsanpham.id_mavachsanpham, tbmavachsanpham.idSanPhamCuaHang, tbmavachsanpham.SoLuong, tbmavachsanpham.SuDung, tbmavachsanpham.GiaBan,
tbmavachsanpham.GiaBanMoi, tbsanpham.TenSanPham, tbsanpham.TenLoaiSanPham, tbsanpham.DonVi, tbsanpham.MoTa
from ((tbsanphamcuahang
inner join (select tbsanpham.id, tbsanpham.CodeSanPham, tbsanpham.TenSanPham, tbsanpham.DonVi,tbsanpham.MoTa,
 tbloaisanpham.MaLoaiSanPham, tbloaisanpham.TenLoaiSanPham 
 from tbsanpham 
 inner join tbloaisanpham on tbsanpham.idLoaiSanPham = tbloaisanpham.id) as tbsanpham 
 on tbsanphamcuahang.idSanPham = tbsanpham.id ) 
 inner join (select tbmavachsanpham.id as id_mavachsanpham, tbmavachsanpham.MaVach, tbmavachsanpham.SoLuong, 
 tbmavachsanpham.SuDung, tbmavachsanpham.GiaBan, tbdanhsachkhuyenmaisanpham.GiaBanMoi, tbmavachsanpham.idSanPhamCuaHang from
 tbmavachsanpham inner join tbdanhsachkhuyenmaisanpham on tbmavachsanpham.id = tbdanhsachkhuyenmaisanpham.idMaVachSanPham) 
 as tbmavachsanpham on tbsanphamcuahang.id = tbmavachsanpham.idSanPhamCuaHang) where (tbmavachsanpham.GiaBanMoi != 0 or tbmavachsanpham.GiaBanMoi = 0) and tbsanpham.id = 1;


INSERT into tbnganhsanpham VALUES (1, 'D06', 'Milk Products', 'Di tu');
INSERT into tbnganhsanpham VALUES (2, 'G01', 'Groceries', 'Di tu');

INSERT into tbloaisanpham VALUES (1, 'D0608', 'Baby Milk powder', 'Di tu', 1);
INSERT into tbloaisanpham VALUES (2, 'D0609', 'Baby Cereal', 'Di tu', 2);
INSERT into tbloaisanpham VALUES (3, 'D0604', 'Milk Drinks', 'Di tu', 1);
INSERT into tbloaisanpham VALUES (4, 'G0101', 'Sugar', 'Di tu', 2);
INSERT into tbloaisanpham VALUES (5, 'G0103', 'Cooking oils', 'Di tu', 1);
INSERT into tbloaisanpham VALUES (6, 'F0205', 'Beer', 'Di tu', 2);
INSERT into tbloaisanpham VALUES (7, 'G0102', 'Instant noodles, noodles', 'Di tu', 1);
INSERT into tbloaisanpham VALUES (8, 'F0104', 'Biscuits, Chocolates', 'Di tu', 2);

INSERT into tbnhasanxuat VALUES (1, '1', 'ABBOTT VN', NULL, NULL);
INSERT into tbnhasanxuat VALUES (2, '2', 'ACECOOK VN', NULL, NULL);
INSERT into tbsanpham VALUES (1, 24, 'SamSung J5 Pro', 'Cai', 'Dien thoai 2017', 1, NULL, 1);
INSERT into tbsanpham VALUES (2, 25, 'SamSung J6 Pro', 'Cai', 'Dien thoai 2017', 2, NULL, 1);
INSERT into tbsanpham VALUES (3, 22, 'SamSung J7 Pro', 'Cai', 'Dien thoai 2017', 1, NULL, 1);
INSERT into tbsanpham VALUES (4, 23, 'SamSung S9', 'Cai', 'Dien thoai 2017', 2, NULL, 1);
INSERT into tbsanpham VALUES (5, 3, 'SamSung S8', 'Cai', 'Dien thoai 2017', 3, NULL, 1);
INSERT into tbsanpham VALUES (6, 4, 'SamSung S7', 'Cai', 'Dien thoai 2017', 4, NULL, 1);
INSERT into tbsanpham VALUES (7, 5, 'SamSung S6', 'Cai', 'Dien thoai 2017', 5, NULL, 1);
INSERT into tbsanpham VALUES (8, 9, 'SamSung Note 5', 'Cai', 'Dien thoai 2017', 6, NULL, 1);
INSERT into tbsanpham VALUES (9, 10, 'SamSung Note 7', 'Cai', 'Dien thoai 2017', 7, NULL, 1);
INSERT into tbsanpham VALUES (10, 11, 'HeadPhone Apple', 'Cai', 'Tai Nghe 2017', 8, NULL, 1);
INSERT into tbsanpham VALUES (11, 12, 'HeadPhone SamSung', 'Cai', 'Tai Nghe 2017', 1, NULL, 2);
INSERT into tbsanpham VALUES (12, 13, 'HeadPhone Oppo', 'Cai', 'Tai Nghe 2017', 2, NULL, 2);
INSERT into tbsanpham VALUES (13, 14, 'Iphone 8', 'Cai', 'Dien thoai 2017', 3, NULL, 2);
INSERT into tbsanpham VALUES (14, 15, 'Iphone 7', 'Cai', 'Dien thoai 2017', 4, NULL, 2);
INSERT into tbsanpham VALUES (15, 16, 'HeadPhone HTC', 'Cai', 'Tai Nghe 2017', 5, NULL, 2);
INSERT into tbsanpham VALUES (16, 17, 'HeadPhone Huawa', 'Cai', 'Tai Nghe 2017', 6, NULL, 2);
INSERT into tbsanpham VALUES (17, 18, 'HeadPhone ViVo', 'Cai', 'Tai Nghe 2017', 7, NULL, 2);
INSERT into tbsanpham VALUES (18, 19, 'HeadPhone Bphone', 'Cai', 'Tai Nghe 2017', 8, NULL, 2);
INSERT into tbsanpham VALUES (19, 20, 'HeadPhone VietNam', 'Cai', 'Tai Nghe 2017', 1, NULL, 2);
INSERT into tbsanpham VALUES (20, 21, 'HeadPhone My', 'Cai', 'Tai Nghe 2017', 1, NULL, 2);

select * from tbkhachhang;
insert into tbloaikhachhang values(1,'aaaa','aaa',1.0,1);
INSERT into tbcuahang values(1,'Nino Store', 'Ho Chi Minh', 'Nguyen Anh Huy Vu', '012346789', 'C0001');

INSERT INTO tbsanphamcuahang values(1,1,1);
INSERT INTO tbsanphamcuahang values(2,2,1);
INSERT INTO tbsanphamcuahang values(3,3,1);
INSERT INTO tbsanphamcuahang values(4,4,1);
INSERT INTO tbsanphamcuahang values(5,5,1);
INSERT INTO tbsanphamcuahang values(6,6,1);
INSERT INTO tbsanphamcuahang values(7,7,1);
INSERT INTO tbsanphamcuahang values(8,8,1);
INSERT INTO tbsanphamcuahang values(9,9,1);
INSERT INTO tbsanphamcuahang values(10,10,1);
INSERT INTO tbsanphamcuahang values(11,11,1);
INSERT INTO tbsanphamcuahang values(12,12,1);
INSERT INTO tbsanphamcuahang values(13,13,1);
INSERT INTO tbsanphamcuahang values(14,14,1);
INSERT INTO tbsanphamcuahang values(15,15,1);
INSERT INTO tbsanphamcuahang values(16,16,1);
INSERT INTO tbsanphamcuahang values(17,17,1);
INSERT INTO tbsanphamcuahang values(18,18,1);
INSERT INTO tbsanphamcuahang values(19,19,1);
INSERT INTO tbsanphamcuahang values(20,20,1);

INSERT INTO tbnhacungcap values(1,'CC01','BIA SAIGON','Ho Chi Minh', '123456789',1);
insert into tbnhanvien value (1,'trungdo', 'admin@smc.com', 'admin', 1, 1, 1);
insert into tbquyen value(1,'asdsa','asds',1,1);
INSERT INTO tbmavachsanpham values(1,'535353',1,50,0,7000,'2018-09-05',1,'Gia ban thay doi',4000,1,1,1,'2018-08-05');
INSERT INTO tbmavachsanpham values(2,'535352',1,50,0,11000,'2018-09-05',1,'Gia ban thay doi',7000,1,1,2,'2018-08-05');
INSERT INTO tbmavachsanpham values(3,'535354',1,50,2,7000,'2018-09-05',1,'Gia ban thay doi',4000,1,1,3,'2018-08-05');
INSERT INTO tbmavachsanpham values(4,'535355',1,50,5,11000,'2018-09-05',1,'Gia ban thay doi',7000,1,1,4,'2018-08-05');
INSERT INTO tbmavachsanpham values(5,'535356',1,50,3,7000,'2018-09-05',1,'Gia ban thay doi',4000,1,1,5,'2018-08-05');
INSERT INTO tbmavachsanpham values(6,'535357',1,50,4,11000,'2018-09-05',1,'Gia ban thay doi',7000,1,1,6,'2018-08-05');
INSERT INTO tbmavachsanpham values(7,'535358',1,50,5,7000,'2018-09-05',1,'Gia ban thay doi',4000,1,1,7,'2018-08-05');
INSERT INTO tbmavachsanpham values(8,'535359',1,50,6,11000,'2018-09-05',1,'Gia ban thay doi',7000,1,1,8,'2018-08-05');
INSERT INTO tbmavachsanpham values(9,'535368',1,50,2,7000,'2018-09-05',1,'Gia ban thay doi',4000,1,1,9,'2018-08-05');
INSERT INTO tbmavachsanpham values(10,'535360',1,50,2,7000,'2018-09-05',1,'Gia ban thay doi',4000,1,1,10,'2018-08-05');
INSERT INTO tbmavachsanpham values(11,'535361',1,50,3,11000,'2018-09-05',1,'Gia ban thay doi',7000,1,1,11,'2018-08-05');
INSERT INTO tbmavachsanpham values(12,'535362',1,50,4,11000,'2018-09-05',1,'Gia ban thay doi',7000,1,1,12,'2018-08-05');
INSERT INTO tbmavachsanpham values(13,'535363',1,50,6,7000,'2018-09-05',1,'Gia ban thay doi',4000,1,1,13,'2018-08-05');
INSERT INTO tbmavachsanpham values(14,'535364',1,50,7,11000,'2018-09-05',1,'Gia ban thay doi',7000,1,1,14,'2018-08-05');
INSERT INTO tbmavachsanpham values(15,'535365',1,50,4,11000,'2018-09-05',1,'Gia ban thay doi',7000,1,1,15,'2018-08-05');
INSERT INTO tbmavachsanpham values(16,'535366',1,50,1,7000,'2018-09-05',1,'Gia ban thay doi',4000,1,1,16,'2018-08-05');
INSERT INTO tbmavachsanpham values(17,'535367',1,50,1,11000,'2018-09-05',1,'Gia ban thay doi',7000,1,1,17,'2018-08-05');
INSERT INTO tbmavachsanpham values(18,'535368',1,50,1,11000,'2018-09-05',1,'Gia ban thay doi',7000,1,1,18,'2018-08-05');
INSERT INTO tbmavachsanpham values(19,'535369',1,50,1,7000,'2018-09-05',1,'Gia ban thay doi',4000,1,1,19,'2018-08-05');
INSERT INTO tbmavachsanpham values(20,'535370',1,50,0,11000,'2018-09-05',1,'Gia ban thay doi',7000,1,1,20,'2018-08-05');

insert into tbkhuyenmaisanpham values(1,'Mừng xuân','2018-01-01','2018-05-01','Tưng bừng đoán xuân',1,1,1);

insert into tbdanhsachkhuyenmaisanpham values (1,1,1,6000);
insert into tbdanhsachkhuyenmaisanpham values (2,1,2,9000);
insert into tbdanhsachkhuyenmaisanpham values (3,1,3,6000);
insert into tbdanhsachkhuyenmaisanpham values (4,1,4,9000);
insert into tbdanhsachkhuyenmaisanpham values (5,1,5,6000);
insert into tbdanhsachkhuyenmaisanpham values (6,1,6,9000);
insert into tbdanhsachkhuyenmaisanpham values (7,1,7,6000);
insert into tbdanhsachkhuyenmaisanpham values (8,1,8,9000);
insert into tbdanhsachkhuyenmaisanpham values (9,1,9,6000);
insert into tbdanhsachkhuyenmaisanpham values (10,1,10,9000);
insert into tbdanhsachkhuyenmaisanpham values (11,1,11,0);
insert into tbdanhsachkhuyenmaisanpham values (12,1,12,0);
insert into tbdanhsachkhuyenmaisanpham values (13,1,13,0);
insert into tbdanhsachkhuyenmaisanpham values (14,1,14,0);
insert into tbdanhsachkhuyenmaisanpham values (15,1,15,0);
insert into tbdanhsachkhuyenmaisanpham values (16,1,16,0);
insert into tbdanhsachkhuyenmaisanpham values (17,1,17,0);
insert into tbdanhsachkhuyenmaisanpham values (18,1,18,0);
insert into tbdanhsachkhuyenmaisanpham values (19,1,19,0);
insert into tbdanhsachkhuyenmaisanpham values (20,1,20,0);

UPDATE `qlbanhang`.`tbsanpham` SET `HinhAnh`='best_5.png' WHERE `id`='1';
UPDATE `qlbanhang`.`tbsanpham` SET `HinhAnh`='best_5.png' WHERE `id`='2';
UPDATE `qlbanhang`.`tbsanpham` SET `HinhAnh`='best_5.png' WHERE `id`='3';
UPDATE `qlbanhang`.`tbsanpham` SET `HinhAnh`='best_5.png' WHERE `id`='4';
UPDATE `qlbanhang`.`tbsanpham` SET `HinhAnh`='best_5.png' WHERE `id`='5';
UPDATE `qlbanhang`.`tbsanpham` SET `HinhAnh`='best_5.png' WHERE `id`='11';
UPDATE `qlbanhang`.`tbsanpham` SET `HinhAnh`='best_5.png' WHERE `id`='14';
UPDATE `qlbanhang`.`tbsanpham` SET `HinhAnh`='best_5.png' WHERE `id`='13';
UPDATE `qlbanhang`.`tbsanpham` SET `HinhAnh`='best_5.png' WHERE `id`='12';
UPDATE `qlbanhang`.`tbsanpham` SET `HinhAnh`='best_5.png' WHERE `id`='16';
UPDATE `qlbanhang`.`tbsanpham` SET `HinhAnh`='best_5.png' WHERE `id`='17';
UPDATE `qlbanhang`.`tbsanpham` SET `HinhAnh`='best_5.png' WHERE `id`='18';
UPDATE `qlbanhang`.`tbsanpham` SET `HinhAnh`='best_5.png' WHERE `id`='19';
UPDATE `qlbanhang`.`tbsanpham` SET `HinhAnh`='best_5.png' WHERE `id`='20';