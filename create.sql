create database Quanlytrungtamtinhoc
go
use Quanlytrungtamtinhoc
go 

--Tạo bảng admin
create table Adminn
(
	IDAD varchar(8) not null,
	TaiKhoan varchar(20),
	MatKhau varchar(10),
	ChucVu nvarchar(20),
	Constraint PK_Admin primary key(IDAD)
)


--Tạo bảng Giáo Viên
create table GiaoVien
(
	MaGV varchar(8) not null,
	HoTen nvarchar(20),
	NamSinh date,
	GioiTinh bit,
	DiaChi nvarchar(50),
	ChuyenMon nvarchar(15),
	TrinhDo nvarchar(15),
	SDT varchar(10),
	Constraint PK_GiaoVien primary key(MaGV)
)


--Tạo bảng khóa học
create table KhoaHoc
(
	MaKH varchar(8) not null,
	TenKH nvarchar(25),
	Constraint PK_KhoaHoc primary key(MaKH)
)


--Tạo bảng Lớp Học
create table LopHoc
(
	MaLop varchar(8) not null,
	MaKH varchar(8) not null, 
	MaGV varchar(8) not null,
	BuoiHoc nvarchar(15),
	NgayBatDau date,
	NgayKetThuc date,
	Constraint PK_LopHoc primary key(MaLop),

	Constraint FK_MaKH_LopHoc foreign key(MaKH) references KhoaHoc(MaKH)
	on update cascade on delete cascade,

	Constraint FK_MaGV_LopHoc foreign key(MaGV) references GiaoVien(MaGV)
	on update cascade on delete cascade,
)


--Tạo bảng Học Viên
create table HocVien
(
	MaHV varchar(8) not null,
	MaLop varchar(8) not null,
	HoTen nvarchar(20),
	NamSinh date,
	GioiTinh bit,
	DiaChi nvarchar(50),
	SDT varchar(10),
	TinhTrang nvarchar(20),
	Constraint PK_HocVien primary key(MaHV),

	Constraint FK_MaLop_HocVien foreign key(Malop) references LopHoc(MaLop)
	on update cascade on delete cascade
)


--Tạo bảng Môn Học
create table MonHoc
(
	MaMH varchar(8) not null,
	TenMh nvarchar(20),
	Constraint PK_MonHoc primary key(MaMH)
)


--Tạo bảng thời khóa biểu
create table ThoiKhoaBieu
(
	STT int IDENTITY(1,1) not null,
	MaGV varchar(8) not null,
	MaLop varchar(8) not null,
	MaKH varchar(8) not null,
	MaMH varchar(8) not null,
	Constraint PK_ThoiKhoaBieu primary key(STT),
	Constraint FK_MaGV_ThoiKhoaBieu foreign key(MaGV) references GiaoVien(MaGV)
	on update cascade on delete cascade,

	Constraint FK_MaLop_ThoiKhoaBieu foreign key(MaLop) references LopHoc(MaLop) ,

	Constraint FK_MaKH_ThoiKhoaBieu foreign key(MaKH) references KhoaHoc(MaKH) 
	on update cascade on delete cascade,

	Constraint FK_MaMH_ThoiKhoaBieu foreign key(MaMH) references MonHoc(MaMH)
	on update cascade on delete cascade
)


--Tạo bảng Diểm
create table Diem
(
	MaHV varchar(8) not null,
	MaMH varchar(8) not null,
	MaKH varchar(8) not null,
	DiemBT float,
	DiemGK float,
	DiemCK float,
	DiemTB float,
	Constraint FK_MaHV_Diem foreign key(MaHV) references HocVien(MaHV)
	on update cascade on delete cascade,
	Constraint FK_MaKH_Diem foreign key(MaKH) references KhoaHoc(MaKH),
	Constraint PK_Diem primary key(MaHV),
)


--Tạo bảng Biên Lai
create table BienLai
(
	MaKH varchar(8) not null,
	MaHV varchar(8) not null,
	HocPhi float,
	Constraint FK_MaKH_BienLai foreign key(MaKH) references KhoaHoc(MaKH),
	Constraint FK_MaHV_BienLai foreign key(MaHV) references HocVien(MaHV)
	on update cascade on delete cascade,
	Constraint  PK_BienLai primary key(MaKH,MaHV),
)
