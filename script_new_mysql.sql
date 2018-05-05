CREATE SCHEMA `qlbanhang` ;
CREATE TABLE `tbCuaHang` (

`id` int NOT NULL AUTO_INCREMENT,

`TenCuaHang` varchar(250) NOT NULL,

`DiaChiCuaHang` longtext NULL,

`NguoiQuanLy` varchar(150) NULL,

`SoDienThoai` varchar(50) NULL,

`TenCuaHangTrenBill` varchar(150) NULL,

`ThongTinLienHeTrenBill` longtext NULL,

`LogoTrenBill` longblob NULL,

`MaCuaHang` varchar(150) NOT NULL,

PRIMARY KEY (`id`) 

);
CREATE TABLE `tbDanhSachKhuyenMaiSanPham` (

`id` int NOT NULL AUTO_INCREMENT,

`idKhuyenMaiSanPham` int NOT NULL,

`idMaVachSanPham` int NOT NULL,

`GiaBanMoi` int NOT NULL,

`GiaBanSiMoi` int NOT NULL,

PRIMARY KEY (`id`) 

);

CREATE TABLE `tbDonHang` (

`id` decimal(18,0) NOT NULL,

`NgayLap` datetime NOT NULL,

`idCuaHang` int NOT NULL,

`idKhachHang` int NOT NULL,

`idNhanVien` int NOT NULL,

`GhiChu` longtext NULL,

`ChietKhau` int NOT NULL,

`SoDonHang` decimal(18,0) NOT NULL,
`TrangThai` int not null,
PRIMARY KEY (`id`) 

);

CREATE TABLE `tbChiTietDonHang` (

`id` int NOT NULL AUTO_INCREMENT,

`idDonHang` decimal(18,0) NOT NULL,

`SoLuong` int NOT NULL,

`ChietKhau` int NOT NULL,

`DonGia` decimal(18,0) NOT NULL,

`GhiChu` varchar(250) NULL,

`idMaVachSanPham` int NOT NULL,

`ThoiGianBaoHanh` int NOT NULL,

`VAT` int NOT NULL,

PRIMARY KEY (`id`) 

);

CREATE TABLE `tbKhachHang` (

`id` int NOT NULL AUTO_INCREMENT,

`MaKhachHang` varchar(150) NOT NULL,

`TenKhachHang` varchar(150) NOT NULL,

`DiaChi` varchar(250) NULL,

`SoDienThoai` varchar(50) NULL,

`Email` varchar(150) NULL,

`MatKhau` varchar(150) NOT NULL,

`CongNoDauKy` decimal(18,0) NOT NULL,

`NgayNhap` date NOT NULL,

`idCuaHang` int NOT NULL,

`GioiTinh` tinyint NOT NULL,

`idLoaiKhachHang` int NOT NULL,

`DiemTichLuy` int NOT NULL,

`DiemTichLuyAll` decimal(18,0) NOT NULL,

PRIMARY KEY (`id`) 

);


CREATE TABLE `tbKhuyenMaiSanPham` (

`id` int NOT NULL AUTO_INCREMENT,

`TenChuongTrinh` varchar(250) NOT NULL,

`NgayBatDau` date NOT NULL,

`NgayKetThuc` date NOT NULL,

`GhiChu` varchar(250) NULL,

`idNhanVien` int NOT NULL,

`ApDung` tinyint NOT NULL,

`idCuaHang` int NULL,

PRIMARY KEY (`id`) 

);



CREATE TABLE `tbLoaiKhachHang` (

`id` int NOT NULL AUTO_INCREMENT,

`LoaiThe` varchar(150) NOT NULL,

`MoTa` varchar(250) NULL,

`TiTeQuyDoiDiem` float NOT NULL,

`NguongQuyDoi` int NOT NULL,

PRIMARY KEY (`id`) 

);




CREATE TABLE `tbLoaiSanPham` (

`id` int NOT NULL AUTO_INCREMENT,

`MaLoaiSanPham` varchar(150) NOT NULL,

`TenLoaiSanPham` varchar(150) NOT NULL,

`MoTa` longtext NULL,

`idNganhSanPham` int NOT NULL,

PRIMARY KEY (`id`) 

);




CREATE TABLE `tbLogSanPham` (

`id` int NOT NULL AUTO_INCREMENT,

`idMaVachSanPham` int NOT NULL,

`idNhanVien` int NOT NULL,

`NgayThayDoi` datetime NOT NULL,

`DienGiai` varchar(250) NULL,

`GiaBanCu` decimal(18,0) NOT NULL,

`GiaBanThayDoi` decimal(18,0) NOT NULL,

`GiaNhapCu` decimal(18,0) NOT NULL,

`GiaNhapThayDoi` decimal(18,0) NOT NULL,

`GiaSiCu` decimal(18,0) NOT NULL,

`GiaSiThayDoi` decimal(18,0) NOT NULL,

PRIMARY KEY (`id`) 

);



CREATE TABLE `tbMaVachSanPham` (

`id` int NOT NULL AUTO_INCREMENT,

`MaVach` varchar(50) NOT NULL,

`idNhaCungCap` int NOT NULL,

`SoLuong` int NOT NULL,

`SuDung` tinyint NOT NULL,

`GiaBan` int NOT NULL,

`LanSuaCuoi` datetime NULL,

`idNhanVien` int NULL,

`GhiChuThayDoi` longtext NULL,

`GiaNhap` int NOT NULL,

`GiaBQGQ` int NOT NULL,

`VAT` int NOT NULL,

`HetBan` tinyint NOT NULL,

`KhongTichLuyDiem` tinyint NOT NULL,

`GiaSi` int NOT NULL,

`idSanPhamCuaHang` int NOT NULL,

`NgayTao` datetime NOT NULL,

PRIMARY KEY (`id`) 

);

CREATE TABLE `tbNganhSanPham` (

`id` int NOT NULL AUTO_INCREMENT,

`MaNganhSanPham` varchar(150) NOT NULL,

`TenNganhSanPham` varchar(150) NOT NULL,

`MoTa` longtext NULL,

PRIMARY KEY (`id`) 

);



CREATE TABLE `tbNhaCungCap` (

`id` int NOT NULL AUTO_INCREMENT,

`CodeNhaCungCap` varchar(4) NOT NULL,

`TenNhaCungCap` varchar(150) NOT NULL,

`DiaChi` varchar(250) NULL,

`SoDienThoai` varchar(50) NULL,

`idCuaHang` int NOT NULL,

PRIMARY KEY (`id`) 

);



CREATE TABLE `tbNhanVien` (

`id` int NOT NULL AUTO_INCREMENT,

`TenNhanVien` varchar(150) NOT NULL,

`TenDangNhap` varchar(150) NOT NULL,

`MatKhau` varchar(150) NOT NULL,

`ChucVu` varchar(150) NOT NULL,

`idCuaHang` int NOT NULL,

`isThayMatKhau` tinyint NOT NULL,

PRIMARY KEY (`id`) 

);



CREATE TABLE `tbNhaSanXuat` (

`id` int NOT NULL AUTO_INCREMENT,

`MaNhaSanXuat` varchar(13) NOT NULL,

`TenNhaSanXuat` varchar(150) NOT NULL,

`DiaChi` longtext NULL,

`GhiChu` longtext NULL,

PRIMARY KEY (`id`) 

);



CREATE TABLE `tbPhanQuyen` (

`id` int NOT NULL AUTO_INCREMENT,

`idNhanVien` int NOT NULL,

`idQuyen` int NOT NULL,

`TrangThai` tinyint NOT NULL,

PRIMARY KEY (`id`) 

);



CREATE TABLE `tbSanPham` (

`id` int NOT NULL AUTO_INCREMENT,

`CodeSanPham` int NOT NULL,

`TenSanPham` varchar(150) NOT NULL,

`DonVi` varchar(50) NOT NULL,

`MoTa` longtext NULL,

`idLoaiSanPham` int NOT NULL,

`HinhAnh` longblob NULL,

`idNhaSanXuat` int NOT NULL,

PRIMARY KEY (`id`) 

);


CREATE TABLE `tbSanPhamCuaHang` (

`id` int NOT NULL AUTO_INCREMENT,

`idSanPham` int NOT NULL,

`idCuaHang` int NOT NULL,

PRIMARY KEY (`id`) 

);
CREATE TABLE `tbQuyen` (

`id` int NOT NULL AUTO_INCREMENT,

`TenQuyen` varchar(200) NOT NULL,

`TenControl` varchar(150) NULL,

`HinhThuc` int NOT NULL,

`idQuyenCha` int NULL,

PRIMARY KEY (`id`) 

);
ALTER TABLE `tbChiTietDonHang` ADD CONSTRAINT `FK_tbChiTietDonHang_tbDonHang` FOREIGN KEY (`idDonHang`) REFERENCES `tbDonHang` (`id`);

ALTER TABLE `tbChiTietDonHang` ADD CONSTRAINT `FK_tbChiTietDonHang_tbMaVachSanPham1` FOREIGN KEY (`idMaVachSanPham`) REFERENCES `tbMaVachSanPham` (`id`);


ALTER TABLE `tbDanhSachKhuyenMaiSanPham` ADD CONSTRAINT `FK_tbDanhSachKhuyenMaiSanPham_tbKhuyenMaiSanPham` FOREIGN KEY (`idKhuyenMaiSanPham`) REFERENCES `tbKhuyenMaiSanPham` (`id`);

ALTER TABLE `tbDanhSachKhuyenMaiSanPham` ADD CONSTRAINT `FK_tbDanhSachKhuyenMaiSanPham_tbMaVachSanPham` FOREIGN KEY (`idMaVachSanPham`) REFERENCES `tbMaVachSanPham` (`id`);


ALTER TABLE `tbDonHang` ADD CONSTRAINT `FK_tbDonHang_tbCuaHang` FOREIGN KEY (`idCuaHang`) REFERENCES `tbCuaHang` (`id`);

ALTER TABLE `tbDonHang` ADD CONSTRAINT `FK_tbDonHang_tbKhachHang` FOREIGN KEY (`idKhachHang`) REFERENCES `tbKhachHang` (`id`);

ALTER TABLE `tbDonHang` ADD CONSTRAINT `FK_tbDonHang_tbNhanVien` FOREIGN KEY (`idNhanVien`) REFERENCES `tbNhanVien` (`id`);

ALTER TABLE `tbKhachHang` ADD CONSTRAINT `FK_tbKhachHang_tbCuaHang` FOREIGN KEY (`idCuaHang`) REFERENCES `tbCuaHang` (`id`);

ALTER TABLE `tbKhachHang` ADD CONSTRAINT `FK_tbKhachHang_tbLoaiKhachHang` FOREIGN KEY (`idLoaiKhachHang`) REFERENCES `tbLoaiKhachHang` (`id`);



ALTER TABLE `tbKhuyenMaiSanPham` ADD CONSTRAINT `FK_tbKhuyenMaiSanPham_tbCuaHang` FOREIGN KEY (`idCuaHang`) REFERENCES `tbCuaHang` (`id`);

ALTER TABLE `tbLoaiSanPham` ADD CONSTRAINT `FK_tbLoaiSanPham_tbNganhSanPham` FOREIGN KEY (`idNganhSanPham`) REFERENCES `tbNganhSanPham` (`id`);

ALTER TABLE `tbLogSanPham` ADD CONSTRAINT `FK_tbLogSanPham_tbMaVachSanPham` FOREIGN KEY (`idMaVachSanPham`) REFERENCES `tbMaVachSanPham` (`id`);

ALTER TABLE `tbLogSanPham` ADD CONSTRAINT `FK_tbLogSanPham_tbNhanVien` FOREIGN KEY (`idNhanVien`) REFERENCES `tbNhanVien` (`id`);

ALTER TABLE `tbMaVachSanPham` ADD CONSTRAINT `FK_tbMaVachSanPham_tbNhaCungCap` FOREIGN KEY (`idNhaCungCap`) REFERENCES `tbNhaCungCap` (`id`);

ALTER TABLE `tbMaVachSanPham` ADD CONSTRAINT `FK_tbMaVachSanPham_tbNhanVien` FOREIGN KEY (`idNhanVien`) REFERENCES `tbNhanVien` (`id`);

ALTER TABLE `tbMaVachSanPham` ADD CONSTRAINT `FK_tbMaVachSanPham_tbSanPhamCuaHang` FOREIGN KEY (`idSanPhamCuaHang`) REFERENCES `tbSanPhamCuaHang` (`id`);

ALTER TABLE `tbNhanVien` ADD CONSTRAINT `FK_tbNhanVien_tbCuaHang` FOREIGN KEY (`idCuaHang`) REFERENCES `tbCuaHang` (`id`);

ALTER TABLE `tbPhanQuyen` ADD CONSTRAINT `FK_tbPhanQuyen_tbNhanVien` FOREIGN KEY (`idNhanVien`) REFERENCES `tbNhanVien` (`id`);

ALTER TABLE `tbPhanQuyen` ADD CONSTRAINT `FK_tbPhanQuyen_tbQuyen` FOREIGN KEY (`idQuyen`) REFERENCES `tbQuyen` (`id`);

ALTER TABLE `tbSanPham` ADD CONSTRAINT `FK_tbSanPham_tbLoaiSanPham` FOREIGN KEY (`idLoaiSanPham`) REFERENCES `tbLoaiSanPham` (`id`);

ALTER TABLE `tbSanPham` ADD CONSTRAINT `FK_tbSanPham_tbNhaSanXuat1` FOREIGN KEY (`idNhaSanXuat`) REFERENCES `tbNhaSanXuat` (`id`);

ALTER TABLE `tbSanPhamCuaHang` ADD CONSTRAINT `FK_tbSanPhamCuaHang_tbCuaHang` FOREIGN KEY (`idCuaHang`) REFERENCES `tbCuaHang` (`id`);

ALTER TABLE `tbSanPhamCuaHang` ADD CONSTRAINT `FK_tbSanPhamCuaHang_tbSanPham` FOREIGN KEY (`idSanPham`) REFERENCES `tbSanPham` (`id`);



