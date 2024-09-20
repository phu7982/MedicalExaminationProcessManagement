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

INSERT INTO BENHNHAN VALUES
('BN01', N'Nguyễn Văn An', N'Nam', '12/4/1980', N'Hà Nội', '0001', N'Đau bụng dưới, có triệu chứng nôn mửa'),
('BN02', N'Đinh Thị Bình', N'Nữ', '05/19/1989', N'Hải Phòng', '0002', N'Đau họng, bị mất tiếng'),
('BN03', N'Trần Quốc Ca' , N'Nam', '08/07/2000', N'Hà Nội', '0003', N'Gãy chân trái'),
('BN04', N'Nguyễn Thị Duyên', N'Nữ', '11/23/2002', N'Thanh Hóa', '0004', N'Đi ngoài kèm theo nôn mửa'),
('BN05', N'Vũ Văn Đan', N'Nam', '04/13/1996', N'Nghệ An', '0005', N'Nguy kịch, đầu chảy nhiều máu, gãy chân phải'),
('BN06', N'Nguyễn Duy Phương' , N'Nam', '10/22/2003', N'Lạng Sơn', '0006', N'Đi tiểu nhiều kèm theo triệu chứng đau buốt'),
('BN07', N'Nguyễn Trần Anh Duy',N'Nam', '04/12/1998', N'Hà Nội', '0007', N'Nhịp tim không đều, chậm'),
('BN08', N'Trần Thị Huyền', N'Nữ', '04/05/1999', N'Hưng Yên', '0008', N'Sinh đẻ'),
('BN09', N'Hoàng Thanh Tùng', N'Nam', '07/30/2004', N'Hải Phòng', '0009', N'Trật khớp chân phải'),
('BN10', N'Nguyễn Thành Nam', N'Nam', '08/02/1998', N'Thái Bình' , '0010', N'Dị ứng'),
('BN11', N'Đinh Công An', N'Nam','10/10/2010', N'Hà Nội', '0011', N'Nuốt phải kẹo cao su'),
('BN12', N'Nguyễn Đình Trọng Lượng', N'Nam', '06/19/2012', N'Vĩnh Phúc', '0012', N'Nôn mửa kèm theo đi ngoài'),
('BN13', N'Vũ Đình Trọng Thắng', N'Nam', '02/20/1997', N'Hà Nam', '0013', N'Gãy tay phải'),
('BN14', N'Trịnh Trần Phương Tuấn', N'Nam', '11/22/1997', N'Bến Tre', '0014', N'Bị mất tiếng'),
('BN15', N'Nguyễn Trần Trung Quốc', N'Nam','01/01/1992', N'Hà Nội', '0015', N'Không xoay trái được cổ'),
('BN16', N'Hoàng Phương Linh', N'Nữ', '10/11/2003', N'Vĩnh Phúc', '0016', N'Sinh đẻ'),
('BN17', N'Vũ Duy Nến', N'Nam', '05/12/1993', N'Hà Nam', '0017', N'Đau răng số 8'),
('BN18', N'Nguyễn Thị Trà', N'Nữ', '02/13/1999', N'Thái Bình', '0018', N'Bỏng nặng'),
('BN19', N'Hoàng Thái Hà', N'Nữ', '12/29/2001', N'Hưng Yên', '0019', N'Khó thở, tức ngực'),
('BN20', N'Đỗ Sỹ Phong', N'Nam', '02/17/1998', N'Hà Nội', '0020', N'Đau bụng kèm theo triệu chứng nôn mửa'),
('BN21', N'Hoàng Quốc Minh', N'Nam', '11/01/1994', N'Hải Phòng', '0021', N'Bất tỉnh, tim đập yếu, mất máu do vết thương ở tay'),
('BN22', N'Đỗ Hà Nội', N'Nam', '09/10/2002', N'Quảng Ninh', '0022', N'Nhổ răng khôn'),
('BN23', N'Trần Quốc Lộ', N'Nam', '05/04/1967', N'Quảng Ninh', '0023', N'Đau thận trái'),
('BN24', N'Nguyễn Thị Như', N'Nữ', '02/15/1970', N'Lạng Sơn', '0024', N'Nhịp tim không đều, có triệu chứng chóng mặt'),
('BN25', N'Đỗ Thị Quỳnh', N'Nữ', '07/19/1969', N'Hà Nam', '0025', N'Đau nhức khớp chân')





CREATE TABLE BACSI
(
   MaBS varchar(10) primary key,
   TenBS nvarchar(50) not null,
   ChuyenNganh nvarchar(50) not null,
   MaKhoa varchar(10) not null,
   constraint RBKN_BS_KH foreign key (MaKhoa) references KHOA(MaKhoa)
)
SELECT * FROM bacsi

INSERT INTO BACSI VALUES
('K01BS01', N'Phạm Long Nhật', N'Chuyên Khoa Tim mạch', 'K01'),
('K01BS02', N'Đinh Văn Thắng', N'Chuyên Khoa Tim Mạch', 'K01'),
('K02BS01', N'Nguyễn Thị Trang', N'Chuyên Khoa Nội Tiêu Hóa', 'K02'),
('K02BS02', N'Nguyễn Thị Trà My', N'Chuyên Khoa Nội Tiêu Hóa', 'K02'),
('K02BS03', N'Phạm Ngọc Khánh' , N'Chuyên Khoa Nội Tiêu Hóa', 'K02'),
('K03BS01', N'Trần Thị Ngọc Lam', N'Chuyên Khoa Xương Khớp', 'K03'),
('K03BS02', N'Hoàng Văn Nam', N'Chuyên Khoa Xương Khớp', 'K03'),
('K04BS01', N'Vũ Trần Thiên Lý', N'Chuyên Khoa Thần Kinh', 'K04'),
('K04BS02', N'Phạm Diệu Linh', N'Chuyên Khoa Thần Kinh', 'K04'),
('K05BS01', N'Lê Việt Khánh', N'Chuyên Khoa Da Liễu', 'K05'),
('K05BS02', N'Phùng Diệu Ly', N'Chuyên Khoa Da Liễu', 'K05'),
('K06BS01', N'Nguyễn Hải Châu', N'Chuyên Khoa Nhi', 'K06'),
('K06BS02', N'Trần Quốc Sang', N'Chuyên Khoa Nhi', 'K06'),
('K07BS01', N'Đỗ Văn Việt', N'Chuyên Khoa Bỏng', 'K07'),
('K08BS01', N'Nguyễn Ngọc Liễu', N'Chuyên Khoa Mắt', 'K08'),
('K09BS01', N'Nguyễn Thị Thanh', N'Chuyên Khoa Hồi Sức Cấp Cứu', 'K09'),
('K09BS02', N'Trần Bảo An', N'Chuyên Khoa Hồi Sức Cấp Cứu', 'K09'),
('K09BS03', N'Mai Hải Nam', N'Chuyên Khoa Hồi Sức Cấp Cứu', 'K09'),
('K09BS04', N'Bùi Xuân Huân', N'Chuyên Khoa Hồi Sức Cấp Cứu', 'K09'),
('K10BS01', N'Nguyễn Thị Thanh Xuân', N'Chuyên Khoa Sản', 'K10'),
('K10BS02', N'Nguyễn Hà An', N'Chuyên Khoa Sản', 'K10'),
('K10BS03', N'Bùi Đức An', N'Chuyên Khoa Sản', 'K10'),
('K11BS01', N'Nguyễn Hữu Văn', N'Chuyên Khoa Ngoại Lồng Ngực', 'K11'),
('K12BS01', N'Phạm Đức Trí', N'Chuyên Khoa Dị Ứng', 'K12'),
('K12BS02', N'Nguyễn Diệu Anh', N'Chuyên Khoa Dị Ứng', 'K12'),
('K13BS01', N'Nguyễn Khánh Huyền', N'Chuyên Khoa Ngoại Thận - Tiết Niệu', 'K13'),
('K13BS02', N'Phạm Thị Tú', N'Chuyên Khoa Ngoại Thận - Tiết Niệu', 'K13'),
('K14BS01', N'Bùi Hà Quốc Ca', N'Chuyên Khoa Tai - Mũi - Họng', 'K14'),
('K14BS02', N'Nguyễn Đức Tâm', N'Chuyên Khoa Tai - Mũi - Họng', 'K14'),
('K14BS03', N'Hồ Quang Hiếu', N'Chuyên Khoa Tai - Mũi - Họng', 'K14'),
('K15BS01', N'Trần Văn Duy', N' Chuyên Khoa Răng - Hàm - Mặt', 'K15'),
('K15BS02', N'Đỗ Thị Phương Thảo', N'Chuyên Khoa Răng - Hàm - Mặt', 'K15')




CREATE TABLE KHOA
(
   MaKhoa varchar(10) primary key,
   TenKhoa nvarchar(50) not null
)
SELECT * FROM khoa

INSERT INTO KHOA VALUES
('K01', N'Khoa Tim Mạch'),
('K02', N'Khoa Nội Tiêu Hóa'),
('K03', N'Khoa Cơ - Xương - Khớp'),
('K04', N'Khoa Thần Kinh'),
('K05', N'Khoa Da Liễu'),
('K06', N'Khoa Nhi'),
('K07', N'Khoa Bỏng'),
('K08', N'Khoa Mắt'),
('K09', N'Khoa Hồi Sức Cấp Cứu'),
('K10', N'Khoa Sản'),
('K11', N'Khoa Ngoại Lồng Ngực'),
('K12', N'Khoa Dị Ứng'),
('K13', N'Khoa Ngoại Thận - Tiết Niệu'),
('K14', N'Khoa Tai - Mũi - Họng'),
('K15', N'Khoa Răng - Hàm - Mặt')





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
   MaKhoa varchar(10) not null,
   constraint RBKN_DV_KH foreign key (MaKhoa) references KHOA(MaKhoa)		--Ràng buộc khóa ngoại của bảng DICHVU với bảng KHOA thông qua MaKhoa
)
SELECT * FROM dichvu


INSERT INTO DICHVU VALUES
('K01DV01', N'Điện Tim', 2000, 'K01'),
('K01DV02', N'Mổ tim', 120000, 'K01'),
('K02DV01', N'Nội Soi Dạ Dày', 600, 'K02'),
('K02DV02', N'Mổ Nội Soi Dạ Dày', 2500, 'K02'),
('K03DV01', N'Bó Bột Xương', 200, 'K03'),
('K03DV02', N'Chụp XQuang', 80, 'K03'),
('K07DV01', N'Phẫu Thuật Bỏng', 6000, 'K07'),
('K08DV01', N'Kiểm Tra Thị Lực', 60, 'K08'),
('K08DV02', N'Đo Độ Cận/Viễn Thị', 100, 'K08'),
('K09DV01', N'Cấp Cứu', 4000, 'K09'),
('K09DV02', N'Hồi Sức', 3000, 'K09'),
('K10DV01', N'Siêu âm', 500, 'K10'),
('K10DV02', N'Khám Thai', 200, 'K10'),
('K10DV03', N'Chẩn Đoán Thai Nhi', 500, 'K10'),
('K11DV01', N'Dưỡng Khí', 1200, 'K11'),
('K11DV02', N'Lọc Phổi', 5000, 'K11'),
('K13DV01', N'Nội Soi Thận', 500, 'K13'),
('K13DV02', N'Mổ Sỏi Thận', 3000, 'K13'),
('K13DV03', N'Lọc Thận', 5000, 'K13'),
('K15DV01', N'Nhổ răng', 20, 'K15'),
('K15DV02', N'Bọc Răng Sứ', 400, 'K15'),
('K15DV03', N'Niềng Răng', 30000, 'K15')




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