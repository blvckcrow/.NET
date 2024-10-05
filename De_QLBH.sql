use master
go
if DB_ID('QLBH') is not null
	drop database QLBH
go
create database QLBH
go
use QLBH
go
create table NhanVien(
MaNV int primary key,
TenNV nvarchar(20),SoDT nvarchar(20))
 
go
insert into NhanVien values(1,N'Lê Trung Tuấn','0988663322') 
insert into NhanVien values(2,N'Nguyễn Minh Hiếu','0986552525') 
 
go
create table HoaDon(
SoHD int primary key,
TenSP nvarchar(20),
SoLuong int,
DonGia float,
MaNV int foreign key references NhanVien(MaNV))
go 

insert into HoaDon values(1,N'Bánh Chocopie',100,1000,1)
insert into HoaDon values(2,N'Thuốc lá Tobaco',90,1500,2)
insert into HoaDon values(3,N'Bánh Custas',200,2000,1)
insert into HoaDon values(4,N'Kẹo dẻo Nabata',150,2000,2)

go
--select * from NhanVien
--select * from HoaDon
