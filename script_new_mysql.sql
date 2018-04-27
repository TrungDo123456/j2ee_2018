CREATE SCHEMA `qlbanhang` ;

CREATE TABLE `tbChiTietChuyenHang` (

`id` int NOT NULL AUTO_INCREMENT,

`idMaVachSanPham` int NOT NULL,

`SoLuong` int NOT NULL,

`GhiChu` varchar(250) NULL,

`idChuyenHang` int NOT NULL,

`DonGia` decimal(18,0) NOT NULL,

PRIMARY KEY (`id`) 

);



CREATE TABLE `tbChiTietDonDatHang` (

`id` int NOT NULL AUTO_INCREMENT,

`idDonDatHang` int NOT NULL,

`idMaVachSanPham` int NOT NULL,

`SoLuong` int NOT NULL,

`DonGia` int NOT NULL,

`GhiChu` varchar(250) NULL,

PRIMARY KEY (`id`) 

);



CREATE TABLE `tbChiTietHoaDon` (

`id` int NOT NULL AUTO_INCREMENT,

`idHoaDon` decimal(18,0) NOT NULL,

`SoLuong` int NOT NULL,

`ChietKhau` int NOT NULL,

`DonGia` decimal(18,0) NOT NULL,

`GhiChu` varchar(250) NULL,

`idMaVachSanPham` int NOT NULL,

`ThoiGianBaoHanh` int NOT NULL,

`VAT` int NOT NULL,

PRIMARY KEY (`id`) 

);



CREATE TABLE `tbChiTietPhieuNhap` (

`id` int NOT NULL AUTO_INCREMENT,

`idPhieuNhap` int NOT NULL,

`SoLuong` int NOT NULL,

`DonGia` decimal(18,0) NOT NULL,

`idMaVachSanPham` int NOT NULL,

`GhiChu` varchar(250) NULL,

`GiaBan` decimal(18,0) NULL,

`idChiTietHoaDon` int NULL,

PRIMARY KEY (`id`) 

);



CREATE TABLE `tbChiTietPhieuXuat` (

`id` decimal(18,0) NOT NULL,

`idPhieuXuat` decimal(18,0) NOT NULL,

`SoLuong` int NOT NULL,

`DonGia` decimal(18,0) NOT NULL,

`idMaVachSanPham` int NOT NULL,

`GhiChu` varchar(50) NULL,

`GiaVon` decimal(18,0) NOT NULL,

PRIMARY KEY (`id`) 

);



CREATE TABLE `tbChuyenHang` (

`id` int NOT NULL AUTO_INCREMENT,

`SoChuyenHang` int NOT NULL,

`NgayChuyen` datetime NOT NULL,

`idCuaHangTu` int NOT NULL,

`idCuaHangDen` int NOT NULL,

`GhiChu` varchar(250) NULL,

`idNhanVien` int NOT NULL,

PRIMARY KEY (`id`) 

);



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



CREATE TABLE `tbDanhSachKhuyenMaiGiaTot` (

`id` int NOT NULL AUTO_INCREMENT,

`idMaVachSanPham` int NOT NULL,

`GiaTot` int NOT NULL,

`idKhuyenMaiGiaTot` int NOT NULL,

`GiaSiTot` int NOT NULL,

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



CREATE TABLE `tbDonDatHang` (

`id` int NOT NULL AUTO_INCREMENT,

`SoDonDatHang` int NOT NULL,

`idCuaHang` int NOT NULL,

`idNhanVien` int NOT NULL,

`GhiChu` varchar(250) NULL,

`NgayLap` datetime NOT NULL,

`idNhaCungCap` int NOT NULL,

PRIMARY KEY (`id`) 

);



CREATE TABLE `tbHoaDon` (

`id` decimal(18,0) NOT NULL,

`NgayLap` datetime NOT NULL,

`idCuaHang` int NOT NULL,

`idKhachHang` int NOT NULL,

`idNhanVien` int NOT NULL,

`GhiChu` longtext NULL,

`ChietKhau` int NOT NULL,

`SoHoaDon` decimal(18,0) NOT NULL,

`SoTienKhachDua` decimal(18,0) NULL,

`SiLe` tinyint NOT NULL,

PRIMARY KEY (`id`) 

);



CREATE TABLE `tbKhachHang` (

`id` int NOT NULL AUTO_INCREMENT,

`MaKhachHang` varchar(150) NOT NULL,

`TenKhachHang` varchar(150) NOT NULL,

`DiaChi` varchar(250) NULL,

`SoDienThoai` varchar(50) NULL,

`Email` varchar(150) NULL,

`CongNoDauKy` decimal(18,0) NOT NULL,

`NgayNhap` date NOT NULL,

`idCuaHang` int NOT NULL,

`GioiTinh` tinyint NOT NULL,

`idLoaiKhachHang` int NOT NULL,

`DiemTichLuy` int NOT NULL,

`DiemTichLuyAll` decimal(18,0) NOT NULL,

PRIMARY KEY (`id`) 

);



CREATE TABLE `tbKhuyenMaiGiaTot` (

`id` int NOT NULL AUTO_INCREMENT,

`TenChuongTrinh` varchar(250) NOT NULL,

`NgayBatDau` date NOT NULL,

`NgayKetThuc` date NOT NULL,

`GhiChu` varchar(250) NULL,

`idNhanVien` int NOT NULL,

`TongTienHoaDonTu` decimal(18,0) NOT NULL,

`idCuaHang` int NOT NULL,

`ApDung` tinyint NOT NULL,

`TongTienHoaDonDen` decimal(18,0) NOT NULL,

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



CREATE TABLE `tbLoaiPhieuNhap` (

`id` int NOT NULL AUTO_INCREMENT,

`LoaiPhieuNhap` varchar(150) NOT NULL,

`MoTa` longtext NULL,

`Loai` int NOT NULL,

PRIMARY KEY (`id`) 

);



CREATE TABLE `tbLoaiPhieuXuat` (

`id` int NOT NULL AUTO_INCREMENT,

`LoaiPhieuXuat` varchar(150) NOT NULL,

`MoTa` longtext NULL,

`Loai` int NOT NULL,

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



CREATE TABLE `tbLogBackup` (

`id` int NOT NULL AUTO_INCREMENT,

`NgayThucHien` datetime NOT NULL,

`NoiDung` longtext NOT NULL,

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



CREATE TABLE `tbPhieuChi` (

`id` int NOT NULL AUTO_INCREMENT,

`idNhanVien` int NOT NULL,

`TenNguoiNhan` longtext NOT NULL,

`DiaChi` longtext NULL,

`LyDo` longtext NOT NULL,

`SoTien` decimal(18,1) NOT NULL,

`ChungTyKemTheo` varchar(50) NULL,

`idCuaHang` int NOT NULL,

`SoPhieu` int NOT NULL,

`NgayLap` datetime NOT NULL,

PRIMARY KEY (`id`) 

);



CREATE TABLE `tbPhieuNhap` (

`id` int NOT NULL AUTO_INCREMENT,

`NgayLap` datetime NOT NULL,

`idCuaHang` int NOT NULL,

`idNhanVien` int NOT NULL,

`GhiChu` varchar(250) NULL,

`SoPhieuNhap` decimal(18,0) NOT NULL,

`idLoaiPhieuNhap` int NOT NULL,

`idDonDatHang` int NULL,

`idChuyenHang` int NULL,

`idNhaCungCap` int NULL,

`idHoaDon` decimal(18,0) NULL,

PRIMARY KEY (`id`) 

);



CREATE TABLE `tbPhieuQuaTang` (

`id` int NOT NULL AUTO_INCREMENT,

`MaVach` int NOT NULL,

`TriGia` int NOT NULL,

`NgayTao` date NOT NULL,

`NgaySuDung` date NULL,

`GhiChu` varchar(150) NULL,

`idKhachHang` int NULL,

`HanSuDung` date NOT NULL,

PRIMARY KEY (`id`) 

);



CREATE TABLE `tbPhieuQuaTangTrongHoaDon` (

`id` int NOT NULL AUTO_INCREMENT,

`idHoaDon` decimal(18,0) NULL,

`idPhieuQuaTang` int NULL,

PRIMARY KEY (`id`) 

);



CREATE TABLE `tbPhieuThu` (

`id` int NOT NULL AUTO_INCREMENT,

`idNhanVien` int NOT NULL,

`TenNguoiNop` longtext NOT NULL,

`DiaChi` longtext NULL,

`LyDo` longtext NOT NULL,

`SoTien` decimal(18,1) NOT NULL,

`ChungTyKemTheo` varchar(50) NULL,

`idCuaHang` int NOT NULL,

`SoPhieu` int NOT NULL,

`NgayLap` datetime NOT NULL,

PRIMARY KEY (`id`) 

);



CREATE TABLE `tbPhieuXuat` (

`id` decimal(18,0) NOT NULL,

`NgayLap` datetime NOT NULL,

`idCuaHang` int NOT NULL,

`idNhanVien` int NOT NULL,

`GhiChu` varchar(250) NULL,

`SoPhieuXuat` decimal(18,0) NOT NULL,

`idLoaiPhieuXuat` int NOT NULL,

`idKhachHang` int NULL,

`idChuyenHang` int NULL,

`idNhaCungCap` int NULL,

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



CREATE TABLE `tbReport` (

`id` int NOT NULL AUTO_INCREMENT,

`TenReport` varchar(150) NOT NULL,

`FileRDLC` varchar(150) NOT NULL,

`Size` varchar(150) NOT NULL,

`MoTa` varchar(25) NULL,

`SizeWidth` double(53,0) NOT NULL,

`SizeHeight` double(53,0) NOT NULL,

`MarginTop` double(53,0) NOT NULL,

`MarginBot` double(53,0) NOT NULL,

`MarginLeft` double(53,0) NOT NULL,

`MarginRight` double(53,0) NOT NULL,

`PixelWidth` smallint NOT NULL,

`PixelHeight` smallint NOT NULL,

`TenMayIn` varchar(250) NULL,

`idCuaHang` int NOT NULL,

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



CREATE TABLE `tbSanPhamCuaHangCombo` (

`id` int NOT NULL AUTO_INCREMENT,

`idMaVachSanPhamCombo` int NOT NULL,

`idMaVachSanPhamChiTiet` int NOT NULL,

`SoLuong` int NOT NULL,

`DonGia` int NOT NULL,

`DonGiaSi` int NOT NULL,

PRIMARY KEY (`id`) 

);



CREATE TABLE `tbThuNoKhachHang` (

`id` decimal(18,0) NOT NULL,

`idKhachHang` int NOT NULL,

`NgayThu` datetime NOT NULL,

`SoTien` decimal(18,0) NOT NULL,

`idHoaDon` decimal(18,0) NULL,

`GhiChu` longtext NULL,

`idNhanVien` int NOT NULL,

`idCuaHang` int NOT NULL,

`SoPhieu` int NOT NULL,

`idPhieuNhap` int NULL,

PRIMARY KEY (`id`) 

);



CREATE TABLE `tbTraNoNhaCungCap` (

`id` int NOT NULL AUTO_INCREMENT,

`idNhaCungCap` int NOT NULL,

`NgayTra` datetime NOT NULL,

`SoTien` decimal(18,0) NOT NULL,

`idNhanVien` int NOT NULL,

`GhiChu` longtext NULL,

`idCuaHang` int NULL,

`idPhieuNhap` int NULL,

`SoPhieu` int NOT NULL,

`idPhieuXuat` decimal(18,0) NULL,

PRIMARY KEY (`id`) 

);





ALTER TABLE `tbChiTietChuyenHang` ADD CONSTRAINT `FK_tbChiTietChuyenHang_tbChuyenHang` FOREIGN KEY (`idChuyenHang`) REFERENCES `tbChuyenHang` (`id`);

ALTER TABLE `tbChiTietChuyenHang` ADD CONSTRAINT `FK_tbChiTietChuyenHang_tbMaVachSanPham` FOREIGN KEY (`idMaVachSanPham`) REFERENCES `tbMaVachSanPham` (`id`);

ALTER TABLE `tbChiTietDonDatHang` ADD CONSTRAINT `FK_tbChiTietDonDatHang_tbDonDatHang` FOREIGN KEY (`idDonDatHang`) REFERENCES `tbDonDatHang` (`id`);

ALTER TABLE `tbChiTietDonDatHang` ADD CONSTRAINT `FK_tbChiTietDonDatHang_tbMaVachSanPham` FOREIGN KEY (`idMaVachSanPham`) REFERENCES `tbMaVachSanPham` (`id`);

ALTER TABLE `tbChiTietHoaDon` ADD CONSTRAINT `FK_tbChiTietHoaDon_tbHoaDon` FOREIGN KEY (`idHoaDon`) REFERENCES `tbHoaDon` (`id`);

ALTER TABLE `tbChiTietHoaDon` ADD CONSTRAINT `FK_tbChiTietHoaDon_tbMaVachSanPham1` FOREIGN KEY (`idMaVachSanPham`) REFERENCES `tbMaVachSanPham` (`id`);

ALTER TABLE `tbChiTietPhieuNhap` ADD CONSTRAINT `FK_tbChiTietPhieuNhap_tbMaVachSanPham` FOREIGN KEY (`idMaVachSanPham`) REFERENCES `tbMaVachSanPham` (`id`);

ALTER TABLE `tbChiTietPhieuNhap` ADD CONSTRAINT `FK_tbChiTietPhieuNhap_tbPhieuNhap` FOREIGN KEY (`idPhieuNhap`) REFERENCES `tbPhieuNhap` (`id`);

ALTER TABLE `tbChiTietPhieuXuat` ADD CONSTRAINT `FK_tbChiTietPhieuXuat_tbMaVachSanPham` FOREIGN KEY (`idMaVachSanPham`) REFERENCES `tbMaVachSanPham` (`id`);

ALTER TABLE `tbChiTietPhieuXuat` ADD CONSTRAINT `FK_tbChiTietPhieuXuat_tbPhieuXuat` FOREIGN KEY (`idPhieuXuat`) REFERENCES `tbPhieuXuat` (`id`);

ALTER TABLE `tbChuyenHang` ADD CONSTRAINT `FK_ChuyenHang_CuaHang` FOREIGN KEY (`idCuaHangTu`) REFERENCES `tbCuaHang` (`id`);

ALTER TABLE `tbChuyenHang` ADD CONSTRAINT `FK_ChuyenHang_CuaHangDen` FOREIGN KEY (`idCuaHangDen`) REFERENCES `tbCuaHang` (`id`);

ALTER TABLE `tbChuyenHang` ADD CONSTRAINT `FK_ChuyenHang_NhanVien` FOREIGN KEY (`idNhanVien`) REFERENCES `tbNhanVien` (`id`);

ALTER TABLE `tbDanhSachKhuyenMaiGiaTot` ADD CONSTRAINT `FK_tbDanhSachKhuyenMaiGiaTot_tbKhuyenMaiGiaTot` FOREIGN KEY (`idKhuyenMaiGiaTot`) REFERENCES `tbKhuyenMaiGiaTot` (`id`);

ALTER TABLE `tbDanhSachKhuyenMaiGiaTot` ADD CONSTRAINT `FK_tbDanhSachKhuyenMaiGiaTot_tbMaVachSanPham` FOREIGN KEY (`idMaVachSanPham`) REFERENCES `tbMaVachSanPham` (`id`);

ALTER TABLE `tbDanhSachKhuyenMaiSanPham` ADD CONSTRAINT `FK_tbDanhSachKhuyenMaiSanPham_tbKhuyenMaiSanPham` FOREIGN KEY (`idKhuyenMaiSanPham`) REFERENCES `tbKhuyenMaiSanPham` (`id`);

ALTER TABLE `tbDanhSachKhuyenMaiSanPham` ADD CONSTRAINT `FK_tbDanhSachKhuyenMaiSanPham_tbMaVachSanPham` FOREIGN KEY (`idMaVachSanPham`) REFERENCES `tbMaVachSanPham` (`id`);

ALTER TABLE `tbDonDatHang` ADD CONSTRAINT `FK_DATHang_NHACUNGCAP` FOREIGN KEY (`idNhaCungCap`) REFERENCES `tbNhaCungCap` (`id`);

ALTER TABLE `tbDonDatHang` ADD CONSTRAINT `FK_tbDonDatHang_tbCuaHang` FOREIGN KEY (`idCuaHang`) REFERENCES `tbCuaHang` (`id`);

ALTER TABLE `tbDonDatHang` ADD CONSTRAINT `FK_tbDonDatHang_tbNhanVien` FOREIGN KEY (`idNhanVien`) REFERENCES `tbNhanVien` (`id`);

ALTER TABLE `tbHoaDon` ADD CONSTRAINT `FK_tbHoaDon_tbCuaHang` FOREIGN KEY (`idCuaHang`) REFERENCES `tbCuaHang` (`id`);

ALTER TABLE `tbHoaDon` ADD CONSTRAINT `FK_tbHoaDon_tbKhachHang` FOREIGN KEY (`idKhachHang`) REFERENCES `tbKhachHang` (`id`);

ALTER TABLE `tbHoaDon` ADD CONSTRAINT `FK_tbHoaDon_tbNhanVien` FOREIGN KEY (`idNhanVien`) REFERENCES `tbNhanVien` (`id`);

ALTER TABLE `tbKhachHang` ADD CONSTRAINT `FK_tbKhachHang_tbCuaHang` FOREIGN KEY (`idCuaHang`) REFERENCES `tbCuaHang` (`id`);

ALTER TABLE `tbKhachHang` ADD CONSTRAINT `FK_tbKhachHang_tbLoaiKhachHang` FOREIGN KEY (`idLoaiKhachHang`) REFERENCES `tbLoaiKhachHang` (`id`);

ALTER TABLE `tbKhuyenMaiGiaTot` ADD CONSTRAINT `FK_tbKhuyenMaiGiaTot_tbCuaHang` FOREIGN KEY (`idCuaHang`) REFERENCES `tbCuaHang` (`id`);

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

ALTER TABLE `tbPhieuChi` ADD CONSTRAINT `FK_PhieuChi_CuaHang` FOREIGN KEY (`idCuaHang`) REFERENCES `tbCuaHang` (`id`);

ALTER TABLE `tbPhieuChi` ADD CONSTRAINT `FK_PhieuChi_NhanVien` FOREIGN KEY (`idNhanVien`) REFERENCES `tbNhanVien` (`id`);

ALTER TABLE `tbPhieuNhap` ADD CONSTRAINT `FK_PhieuNhap_NhaCungCap` FOREIGN KEY (`idNhaCungCap`) REFERENCES `tbNhaCungCap` (`id`);

ALTER TABLE `tbPhieuNhap` ADD CONSTRAINT `FK_tbPhieuNhap_tbChuyenHang` FOREIGN KEY (`idChuyenHang`) REFERENCES `tbChuyenHang` (`id`);

ALTER TABLE `tbPhieuNhap` ADD CONSTRAINT `FK_tbPhieuNhap_tbCuaHang` FOREIGN KEY (`idCuaHang`) REFERENCES `tbCuaHang` (`id`);

ALTER TABLE `tbPhieuNhap` ADD CONSTRAINT `FK_tbPhieuNhap_tbDonDatHang` FOREIGN KEY (`idDonDatHang`) REFERENCES `tbDonDatHang` (`id`);

ALTER TABLE `tbPhieuNhap` ADD CONSTRAINT `FK_tbPhieuNhap_tbHoaDon1` FOREIGN KEY (`idHoaDon`) REFERENCES `tbHoaDon` (`id`);

ALTER TABLE `tbPhieuNhap` ADD CONSTRAINT `FK_tbPhieuNhap_tbLoaiPhieuNhap` FOREIGN KEY (`idLoaiPhieuNhap`) REFERENCES `tbLoaiPhieuNhap` (`id`);

ALTER TABLE `tbPhieuNhap` ADD CONSTRAINT `FK_tbPhieuNhap_tbNhanVien` FOREIGN KEY (`idNhanVien`) REFERENCES `tbNhanVien` (`id`);

ALTER TABLE `tbPhieuQuaTang` ADD CONSTRAINT `FK_tbPhieuQuaTang_tbKhachHang` FOREIGN KEY (`idKhachHang`) REFERENCES `tbKhachHang` (`id`);

ALTER TABLE `tbPhieuQuaTangTrongHoaDon` ADD CONSTRAINT `FK_tbPhieuQuaTangTrongHoaDon_tbHoaDon` FOREIGN KEY (`idHoaDon`) REFERENCES `tbHoaDon` (`id`);

ALTER TABLE `tbPhieuQuaTangTrongHoaDon` ADD CONSTRAINT `FK_tbPhieuQuaTangTrongHoaDon_tbPhieuQuaTang` FOREIGN KEY (`idPhieuQuaTang`) REFERENCES `tbPhieuQuaTang` (`id`);

ALTER TABLE `tbPhieuThu` ADD CONSTRAINT `FK_PhieuThu_CuaHang` FOREIGN KEY (`idCuaHang`) REFERENCES `tbCuaHang` (`id`);

ALTER TABLE `tbPhieuThu` ADD CONSTRAINT `FK_PhieuThu_NhanVien` FOREIGN KEY (`idNhanVien`) REFERENCES `tbNhanVien` (`id`);

ALTER TABLE `tbPhieuXuat` ADD CONSTRAINT `FK_PhieuXuat_NhaCungCap` FOREIGN KEY (`idNhaCungCap`) REFERENCES `tbNhaCungCap` (`id`);

ALTER TABLE `tbPhieuXuat` ADD CONSTRAINT `FK_tbPhieuXuat_tbChuyenHang` FOREIGN KEY (`idChuyenHang`) REFERENCES `tbChuyenHang` (`id`);

ALTER TABLE `tbPhieuXuat` ADD CONSTRAINT `FK_tbPhieuXuat_tbCuaHang` FOREIGN KEY (`idCuaHang`) REFERENCES `tbCuaHang` (`id`);

ALTER TABLE `tbPhieuXuat` ADD CONSTRAINT `FK_tbPhieuXuat_tbKhachHang` FOREIGN KEY (`idKhachHang`) REFERENCES `tbKhachHang` (`id`);

ALTER TABLE `tbPhieuXuat` ADD CONSTRAINT `FK_tbPhieuXuat_tbLoaiPhieuXuat` FOREIGN KEY (`idLoaiPhieuXuat`) REFERENCES `tbLoaiPhieuXuat` (`id`);

ALTER TABLE `tbPhieuXuat` ADD CONSTRAINT `FK_tbPhieuXuat_tbNhanVien` FOREIGN KEY (`idNhanVien`) REFERENCES `tbNhanVien` (`id`);

ALTER TABLE `tbQuyen` ADD CONSTRAINT `FK_tbQuyen_tbQuyen` FOREIGN KEY (`idQuyenCha`) REFERENCES `tbQuyen` (`id`);

ALTER TABLE `tbReport` ADD CONSTRAINT `FK_tbReport_tbCuaHang` FOREIGN KEY (`idCuaHang`) REFERENCES `tbCuaHang` (`id`);

ALTER TABLE `tbSanPham` ADD CONSTRAINT `FK_tbSanPham_tbLoaiSanPham` FOREIGN KEY (`idLoaiSanPham`) REFERENCES `tbLoaiSanPham` (`id`);

ALTER TABLE `tbSanPham` ADD CONSTRAINT `FK_tbSanPham_tbNhaSanXuat1` FOREIGN KEY (`idNhaSanXuat`) REFERENCES `tbNhaSanXuat` (`id`);

ALTER TABLE `tbSanPhamCuaHang` ADD CONSTRAINT `FK_tbSanPhamCuaHang_tbCuaHang` FOREIGN KEY (`idCuaHang`) REFERENCES `tbCuaHang` (`id`);

ALTER TABLE `tbSanPhamCuaHang` ADD CONSTRAINT `FK_tbSanPhamCuaHang_tbSanPham` FOREIGN KEY (`idSanPham`) REFERENCES `tbSanPham` (`id`);

ALTER TABLE `tbSanPhamCuaHangCombo` ADD CONSTRAINT `FK_tbSanPhamCuaHangCombo_tbMaVachSanPham` FOREIGN KEY (`idMaVachSanPhamCombo`) REFERENCES `tbMaVachSanPham` (`id`);

ALTER TABLE `tbSanPhamCuaHangCombo` ADD CONSTRAINT `FK_tbSanPhamCuaHangCombo_tbMaVachSanPham1` FOREIGN KEY (`idMaVachSanPhamChiTiet`) REFERENCES `tbMaVachSanPham` (`id`);

ALTER TABLE `tbThuNoKhachHang` ADD CONSTRAINT `FK_tbThuNoKhachHang_tbCuaHang` FOREIGN KEY (`idPhieuNhap`) REFERENCES `tbPhieuNhap` (`id`);

ALTER TABLE `tbThuNoKhachHang` ADD CONSTRAINT `FK_tbThuNoKhachHang_tbHoaDon` FOREIGN KEY (`idHoaDon`) REFERENCES `tbHoaDon` (`id`);

ALTER TABLE `tbThuNoKhachHang` ADD CONSTRAINT `FK_tbThuNoKhachHang_tbKhachHang` FOREIGN KEY (`idKhachHang`) REFERENCES `tbKhachHang` (`id`);

ALTER TABLE `tbThuNoKhachHang` ADD CONSTRAINT `FK_tbThuNoKhachHang_tbNhanVien` FOREIGN KEY (`idNhanVien`) REFERENCES `tbNhanVien` (`id`);

ALTER TABLE `tbTraNoNhaCungCap` ADD CONSTRAINT `FK_tbTraNoNhaCungCap_tbCuaHang` FOREIGN KEY (`idPhieuXuat`) REFERENCES `tbPhieuXuat` (`id`);

ALTER TABLE `tbTraNoNhaCungCap` ADD CONSTRAINT `FK_tbTraNoNhaCungCap_tbNhaCungCap` FOREIGN KEY (`idNhaCungCap`) REFERENCES `tbNhaCungCap` (`id`);

ALTER TABLE `tbTraNoNhaCungCap` ADD CONSTRAINT `FK_tbTraNoNhaCungCap_tbNhanVien` FOREIGN KEY (`idNhanVien`) REFERENCES `tbNhanVien` (`id`);

ALTER TABLE `tbTraNoNhaCungCap` ADD CONSTRAINT `FK_TraNo_PhieuNhap` FOREIGN KEY (`idPhieuNhap`) REFERENCES `tbPhieuNhap` (`id`);



