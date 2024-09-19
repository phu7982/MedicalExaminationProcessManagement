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
   ChuyenNganh nvarchar(50) not null,
   MaKhoa varchar(10) not null,
   constraint RBKN_BS_KH foreign key (MaKhoa) references KHOA(MaKhoa)
)
SELECT * FROM bacsi



CREATE TABLE KHOA
(
   MaKhoa varchar(10) primary key,
   TenKhoa nvarchar(50) not null,
   MaDV varchar(10) not null,
   constraint RBKN_KH_DV foreign key (MaDV) references DICHVU(MaDV),
)
SELECT * FROM khoa



CREATE TABLE THUOC
(
   MaThuoc varchar(10) primary key,
   TenThuoc nvarchar(50) not null,
   GiaThuoc float check(GiaThuoc > 0)
)
SELECT * FROM thuoc



CREATE TABLE DONTHUOC
(
   MaDT varchar(10) primary key,
   MaBS varchar(10) not null,
   MaBN varchar(10) not null,
   constraint RBKN_DT_BS foreign key (MaBS) references Bacsi(MaBS),     --Ràng buộc giá trị MaBS trong DONTHUOC phải nằm trong MaBS của BACSI
   constraint RBKN_DT_BN foreign key (MaBN) references Benhnhan(MaBN)   --Ràng buộc giá trị MaBN trong DONTHUOC phải nằm trong MaBN của BENHNHAN
)
SELECT * FROM donthuoc



CREATE TABLE CT_DONTHUOC 
(
   MaDT varchar(10) not null,
   MaThuoc varchar(10) not null,
   Soluong int check(Soluong > 0)
   constraint RBKC_DT primary key (MaDT, MaThuoc),							--Ràng buộc khóa chính của bảng là kết hợp 2 cột MaDT và MaThuoc
   constraint RBKN_DT_DT foreign key (MaDT) references DonThuoc(MaDT),		--Ràng buộc khóa ngoại của bảng CT_DONTHUOC với bảng DonThuoc thông qua MaDT
   constraint RBKN_DT_Th foreign key (MaThuoc) references Thuoc(MaThuoc)	--Ràng buộc khóa ngoại của bảng CT_DONTHUOC với bảng Thuoc thông qua MaThuoc
)
SELECT * FROM ct_donthuoc



CREATE TABLE DICHVU
(
   MaDV varchar(10) primary key,
   TenDV nvarchar(50) not null,
   DonGia int check(DonGia > 0)
)
SELECT * FROM dichvu



CREATE TABLE HOADON 
(
   MaHD varchar(10) primary key,
   MaDT varchar(10) not null, 
   MaBN varchar(10) not null,   
   constraint RBKN_HD_DT foreign key (MaDT) references DonThuoc(MaDT),		--Ràng buộc giá trị MaDT trong HOADON phải nằm trong MaDT của Donthuoc		
   constraint RBKN_HD_BN foreign key (MaBN) references BenhNhan(MaBN),		--Ràng buộc giá trị MaBN trong HOADON phải nằm trong MaBN của Benhnhan
   NgayLap date not null,
   Tongtien float check(Tongtien > 0)
)
SELECT * FROM hoadon



CREATE TABLE HOADONDV
(
   MaHD varchar(10) not null,
   MaDV varchar(10) not null,
   Soluong int check(Soluong > 0),
   constraint RBKC_HD primary key (MaHD, MaDV),								--Ràng buộc khóa chính của bảng là kết hợp 2 cột MaHD và MaDV
   constraint RBKN_HD_HD foreign key (MaHD) references Hoadon(MaHD),		--Ràng buộc khóa ngoại của bảng HOADONDV với bảng Hoadon thông qua MaHD
   constraint RBKN_HD_DV foreign key (MaDV) references DichVu(MaDV)			--Ràng buộc khóa ngoại của bảng HOADONDV với bảng Dichvu thông qua MaDV
)
SELECT * FROM hoadondv