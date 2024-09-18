CREATE DATABASE MEPM
USE MEPM

CREATE TABLE BENHNHAN 
(
   MaBN varchar(10) primary key,
   TenBN nvarchar(50) not null,
   GioiTinh nvarchar(5) check (GioiTinh = N'Nam' or GioiTinh = N'Nữ'),
   NgaySinh date not null,
   DiaChi nvarchar(80),
   Sdt varchar(12) unique,
   TinhTrangSK nvarchar(50)
)

SELECT * FROM benhnhan

CREATE TABLE BACSI
(
   MaBS varchar(10) primary key,
   TenBS nvarchar(50) not null,
   ChuyenNganh nvarchar(50) not null
)

SELECT * FROM bacsi

CREATE TABLE THUOC
(
   MaThuoc varchar(20) primary key,
   TenThuoc nvarchar(50) not null,
   GiaThuoc float check(GiaThuoc > 0)
)

SELECT * FROM thuoc

CREATE TABLE DONTHUOC
(
   MaDT varchar(20) primary key,
   MaBS varchar(10) references Bacsi(MaBS),     --Ràng buộc giá trị MaBS trong DONTHUOC phải nằm trong MaBS của BACSI
   MaBN varchar(10) references Benhnhan(MaBN)   --Ràng buộc giá trị MaBN trong DONTHUOC phải nằm trong MaBN của BENHNHAN
)

SELECT * FROM donthuoc

CREATE TABLE CT_DONTHUOC 
(
   MaDT varchar(20) not null,
   MaThuoc varchar(20) not null,
   Soluong int check(Soluong > 0)
   constraint RBKC primary key (MaDT, MaThuoc),
   foreign key (MaDT) references DonThuoc(MaDT),
   foreign key (MaThuoc) references Thuoc(MaThuoc)
)

SELECT * FROM ct_donthuoc

CREATE TABLE DICHVU
(
   MaDV varchar(20) primary key,
   TenDV nvarchar(50) not null,
   DonGia int check(DonGia > 0)
)

SELECT * FROM dichvu

CREATE TABLE HOADON 
(
   MaHD varchar(20) primary key,
   MaDT varchar(20) not null references DonThuoc(MaDT),
   MaBN varchar(10) not null references BenhNhan(MaBN),
   NgayLap date not null,
   Tongtien float check(Tongtien > 0)
)

SELECT * FROM hoadon

CREATE TABLE HOADONDV
(
   MaHD varchar(20) not null,
   MaDV varchar(20) not null,
   Soluong int check(Soluong > 0),
   constraint RBKC_HD primary key (MaHD, MaDV),
   foreign key (MaHD) references Hoadon(MaHD),
   foreign key (MaDV) references DichVu(MaDV)
)

SELECT * FROM hoadondv