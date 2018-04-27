select * from tbnhanvien;
select * from tbcuahang;

insert into tbcuahang value(1,'tencuahang','diachi','nguoiquanly','sdt','tencuahangtrenbill','thongtinlienhetrenbill','logo','macuahang');

insert into tbnhanvien value ( 1,'tennhanvien', 'tendangnhap', 'matkhau', 'chucvu', 1, 1);
insert into tbnhanvien value ( 2,'tennhanvien', 'tendangnhap', 'matkhau', 'chucvu', 1, 1);
insert into tbnhanvien value ( 3,'tennhanvien', 'tendangnhap', 'matkhau', 'chucvu', 1, 1);
insert into tbnhanvien value ( 4,'tennhanvien', 'tendangnhap', 'matkhau', 'chucvu', 1, 1);
insert into tbnhanvien value ( 5,'tennhanvien', 'tendangnhap', 'matkhau', 'chucvu', 1, 1);
insert into tbnhanvien value ( 6,'trungdo', 'admin@smc.com', 'admin', 'chucvu', 1, 1);

select * from tbnhanvien where TenDangNhap='admin@smc.com' and MatKhau='admin';