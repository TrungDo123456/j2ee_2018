select *from tbdonhang;
select *from tbchitietdonhang;
select *from tbcuahang;
select *from tbkhachhang;
select *from tbloaikhachhang;
select *from tbnhanvien;

insert into tbcuahang values(1,'tencuahang','diachicuahang','nguoiquanly',01686558233,'tencuahangtrenbill','thongtinlienhetenbill',null,1);
insert into tbloaikhachhang values(1,1,'mota',1,1);
insert into tbkhachhang values(1,1,'tenkhachhang','diachi',01686558233,'email',1,'2015-08-02',1,0,1,1,1);
insert into tbnhanvien values(1,'tennhanvien','tendangnhap','makhau','chucvu',1,0);
insert into tbdonhang values(1,'2015-08-02',1,1,1,'ghichu',20,2,1);