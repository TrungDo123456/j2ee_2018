select *from tbdonhang;
select *from tbchitietdonhang;
select *from tbcuahang;
select *from tbkhachhang;
select *from tbloaikhachhang;
select *from tbnhanvien;
select *from tbmavachsanpham;
select *from tbsanpham;
select *from tbnhacungcap;
select *from tbsanphamcuahang;
select *from tbloaisanpham;
select *from tbnganhsanpham;
select *from tbnhasanxuat;

insert into tbcuahang('TenCuaHang', 'DiaChiCuaHang', 'NguoiQuanLy', 'SoDienThoai', 'TenCuaHangTrenBill', 'ThongTinLienHeTrenBill', 'LogoTrenBill') 
values('tencuahang','diachicuahang','nguoiquanly',01686558233,'tencuahangtrenbill','thongtinlienhetenbill',null,1);

insert into tbcuahang values(1,'tencuahang','diachicuahang','nguoiquanly',01686558233,'tencuahangtrenbill','thongtinlienhetenbill',null,1);
insert into tbcuahang values(2,'tencuahang','diachicuahang','nguoiquanly',01686558233,'tencuahangtrenbill','thongtinlienhetenbill',null,1);
insert into tbcuahang values(3,'tencuahang','diachicuahang','nguoiquanly',01686558233,'tencuahangtrenbill','thongtinlienhetenbill',null,1);
insert into tbcuahang values(4,'tencuahang','diachicuahang','nguoiquanly',01686558233,'tencuahangtrenbill','thongtinlienhetenbill',null,1);
insert into tbcuahang values(5,'tencuahang','diachicuahang','nguoiquanly',01686558233,'tencuahangtrenbill','thongtinlienhetenbill',null,1);
insert into tbcuahang values(6,'tencuahang','diachicuahang','nguoiquanly',01686558233,'tencuahangtrenbill','thongtinlienhetenbill',null,1);
insert into tbcuahang values(7,'tH true','18 Đặng Dung','Trung lọ nghẹ',01686558233,'Th TRUE','Chị Trung',null,1);
insert into tbcuahang values(8,'Nguyễn Hồng','18 Nguyễn Hồng, Hà Nội','Vũ Oral',01686558233,'Oral Nguyễn Hồng','01234445609',null,1);
insert into tbcuahang values(9,'tencuahang','diachicuahang','nguoiquanly',01686558233,'tencuahangtrenbill','thongtinlienhetenbill',null,1);
insert into tbcuahang values(10,'tencuahang','diachicuahang','nguoiquanly',01686558233,'tencuahangtrenbill','thongtinlienhetenbill',null,1);
insert into tbcuahang values(11,'tencuahang','diachicuahang','nguoiquanly',01686558233,'tencuahangtrenbill','thongtinlienhetenbill',null,1);

insert into tbcuahang values(7,'tencuahang3443','diachicuahang','nguoiquanly',01686558233,'tencuahangtrenbill','thongtinlienhetenbill',null,1);

insert into tbloaikhachhang values(1,1,'mota',1,1);
insert into tbkhachhang values(1,1,'tenkhachhang','diachi',01686558233,'email',1,'2015-08-02',1,0,1,1,1);
insert into tbnhanvien values(1,'tennhanvien','tendangnhap','makhau','chucvu',1,0);
insert into tbdonhang values(1,'2015-08-02',1,1,1,'ghichu',20,2,1);
insert into tbnhacungcap values(1,1,'tennhacungcap','diachi',01686558233,1);
insert into tbnganhsanpham values(1,1,'tennghanhsanpham','mota');
insert into tbloaisanpham values(1,1,'tenloaisanpham','mota',1);
insert into tbnhasanxuat values(1,1,'tennhasanxuat','diachi','ghichu');
insert into tbsanpham values(1,1,'cocacola','donvi','mota',1,null,1);
insert into tbsanphamcuahang values(1,1,1);
insert into tbmavachsanpham values(1,1,1,10,21,50,'2015-03-06',1,'ghichuthaydoi',50,50,50,1,1,50,1,'2015-03-06');

insert into tbchitietdonhang values(1,1,20,1,50,'ghichu',1,1,1);
insert into tbchitietdonhang values(2,1,20,1,50,'sp2',1,1,1);
insert into tbchitietdonhang values(3,1,20,1,50,'sp3',1,1,1);
insert into tbchitietdonhang values(4,1,20,1,50,'sp4',1,1,1);
insert into tbchitietdonhang values(5,1,20,1,50,'sp5',1,1,1);