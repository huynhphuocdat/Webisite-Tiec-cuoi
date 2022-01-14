-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: nhahangtieccuoi
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `chitietdonhang`
--

DROP TABLE IF EXISTS `chitietdonhang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chitietdonhang` (
  `maDH` int NOT NULL,
  `maSanh` int NOT NULL,
  `GiaTien` float NOT NULL,
  `soLuong` int NOT NULL,
  `giamGia` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`maDH`,`maSanh`),
  KEY `fk_ChitietDonhang_Sanhtiec_idx` (`maSanh`),
  CONSTRAINT `fk_ChitietDonhang_Donhang` FOREIGN KEY (`maDH`) REFERENCES `donhang` (`MaDH`),
  CONSTRAINT `fk_ChitietDonhang_Sanhtiec` FOREIGN KEY (`maSanh`) REFERENCES `sanhtiec` (`masanhtiec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chitietdonhang`
--

LOCK TABLES `chitietdonhang` WRITE;
/*!40000 ALTER TABLE `chitietdonhang` DISABLE KEYS */;
INSERT INTO `chitietdonhang` VALUES (1,1,90000000,1,0),(2,3,55000000,1,0),(3,4,150000000,1,0);
/*!40000 ALTER TABLE `chitietdonhang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chitietthucdon`
--

DROP TABLE IF EXISTS `chitietthucdon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chitietthucdon` (
  `maMonAn` int NOT NULL,
  `maThucDon` int NOT NULL,
  `ThuTuMonAn` int NOT NULL,
  PRIMARY KEY (`maMonAn`,`maThucDon`),
  KEY `fk_CTTD_TD` (`maThucDon`),
  CONSTRAINT `fk_CTTD_MonAn` FOREIGN KEY (`maMonAn`) REFERENCES `monan` (`maMonAn`),
  CONSTRAINT `fk_CTTD_TD` FOREIGN KEY (`maThucDon`) REFERENCES `thucdon` (`idThucDon`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chitietthucdon`
--

LOCK TABLES `chitietthucdon` WRITE;
/*!40000 ALTER TABLE `chitietthucdon` DISABLE KEYS */;
INSERT INTO `chitietthucdon` VALUES (1,1,1),(1,5,2),(2,1,2),(3,1,4),(4,2,1),(5,1,5),(5,4,4),(6,1,6),(7,2,2),(8,1,7),(9,1,3),(9,4,1),(10,4,2),(11,2,4),(14,2,5),(15,2,6),(15,3,4),(16,2,7),(17,2,3),(17,5,1),(18,3,2),(18,5,3),(19,3,1),(20,4,3),(21,3,5),(21,4,5),(22,3,6),(23,4,6),(23,5,4),(27,5,5),(32,5,6),(33,3,3),(37,3,8),(37,4,7),(37,5,7),(38,3,7),(39,1,8),(40,2,8),(41,5,8),(42,4,8);
/*!40000 ALTER TABLE `chitietthucdon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `connguoi`
--

DROP TABLE IF EXISTS `connguoi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `connguoi` (
  `people_id` int NOT NULL AUTO_INCREMENT,
  `ho_ten` varchar(100) NOT NULL,
  `ngay_sinh` date NOT NULL,
  `gioi_tinh` varchar(10) NOT NULL,
  `dia_chi` varchar(200) NOT NULL,
  `sdt` varchar(11) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`people_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `connguoi`
--

LOCK TABLES `connguoi` WRITE;
/*!40000 ALTER TABLE `connguoi` DISABLE KEYS */;
INSERT INTO `connguoi` VALUES (1,'Nguyen van cuong','2000-09-11','nam','123 ly tu trong','0365231487',NULL),(2,'Nguyễn Văn Tâm','1995-08-06','nam','123 ho hao hon','0365238988',NULL),(3,'Nguyễn Thị Hoa','1996-09-11','nữ','456 nguyen dinh chieu','0365237854',NULL),(4,'Nguyễn Ngọc Trâm','1992-02-25','nữ','255 thong nhat','0365238956',NULL),(5,'Hồ Thanh Nga','2000-07-12','nữ','116 Ton Quyen','0365239752',NULL),(6,'Đào Tài Lộc','1999-04-28','nam','114 Nguyen Cu Trinh','0365238855',NULL),(7,'Trịnh Tài Tiến','1998-05-30','nam','136 Nguyen Van Thu','0365232266',NULL),(8,'Thái Vũ Khoa','1989-11-06','nam','146 Nguyen Thi Minh Khai','0365231995',NULL),(9,'Lâm Thiên Trúc','1996-04-25','nữ','157 Huynh Tan Phat','0365231487',NULL),(10,'Nguyễn Phước Nghĩa','1988-03-15','nam','156 Pasteur','0365231325',NULL),(11,'Hồ Ngọc Hạnh','1991-03-25','nam','199 Ha Huy Tap','0365236635',NULL),(12,'Ngô Ngọc An','1995-08-08','nam','165 Ngo Quyen','0365233216',NULL),(13,'Hàng Hồng Hân','2000-08-23','nữ','187 Hai Ba Trung','0365233254',NULL),(14,'Huynh My Anh','1999-05-26','nữ','155 Ho Van Hue','0365234263',NULL),(15,'Bùi Tiến Đức','1999-06-12','nam','285 Nguyen Trai','0365234263',NULL),(16,'Lê Ngọc Hân','2000-05-26','nữ','155 CMT8','0365231561',NULL);
/*!40000 ALTER TABLE `connguoi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dichvu`
--

DROP TABLE IF EXISTS `dichvu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dichvu` (
  `maDV` int NOT NULL AUTO_INCREMENT,
  `TenDV` varchar(45) NOT NULL,
  `gia` decimal(10,0) DEFAULT '0',
  PRIMARY KEY (`maDV`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dichvu`
--

LOCK TABLES `dichvu` WRITE;
/*!40000 ALTER TABLE `dichvu` DISABLE KEYS */;
INSERT INTO `dichvu` VALUES (1,'Cổng hoa đón khách',500000),(2,'Trang trí sân khấu',2000000),(3,'Champagne & đá khói',5000000),(4,'Bánh cưới 5 tầng giả',700000),(5,'Pháo hoa kim tuyến',600000),(6,'Màn hình máy chiếu khai tiệc',2500000),(7,'Hoa tươi trang trí bàn bánh cưới',900000),(8,'Hoa tươi trang trí bàn tháp ly',850000),(9,'Hoa tươi trên bàn tiệc',450000),(10,'Hoa tươi trang trí bàn ký tên',450000),(11,'Lối đi CD-CR',1500000),(12,'Liễn ký tên &  bút',690000),(13,'Thùng tiền mừng, giá để Album',530000),(14,'Phần ăn nhẹ cho CD-CR',2300000),(15,'Hạt sen hấp khai vị đầu giờ',240000),(16,'MC dẫn chương trình nghi thức lễ',900000),(17,'Backdrop chụp hình',5000000),(18,'Bánh mặn khai vị đầu giờ',3200000),(19,'Ban nhạc (nhạc công)',8000000),(20,'Clip làm lễ cartoon CD-CR',7000000),(21,'Vũ đoàn múa 6 người',4000000),(22,'Bàn Gallery tiêu chuẩn',900000),(23,'Ban nhạc 4 nhạc công',4000000),(24,'1 bàn ăn thử(10 khách)',5500000),(25,'Tranh vân tay ký tên',680000),(26,'Băng đăng thiên nga',980000),(27,'2 Ca sĩ (hát 4 bài)',2000000),(28,'Bàn Gallery đặc biệt',4500000);
/*!40000 ALTER TABLE `dichvu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dichvutieccuoi`
--

DROP TABLE IF EXISTS `dichvutieccuoi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dichvutieccuoi` (
  `maDV` int NOT NULL,
  `maSanh` int NOT NULL,
  `TenGoiDV` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`maDV`,`maSanh`),
  KEY `fk_DVTC_Sanhtiec_idx` (`maSanh`),
  CONSTRAINT `fk_DVTC_DV` FOREIGN KEY (`maDV`) REFERENCES `dichvu` (`maDV`),
  CONSTRAINT `fk_DVTC_Sanhtiec` FOREIGN KEY (`maSanh`) REFERENCES `sanhtiec` (`masanhtiec`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dichvutieccuoi`
--

LOCK TABLES `dichvutieccuoi` WRITE;
/*!40000 ALTER TABLE `dichvutieccuoi` DISABLE KEYS */;
INSERT INTO `dichvutieccuoi` VALUES (1,1,'Dịch vụ cho sảnh Sightly Ruby'),(1,2,'Dịch vụ cho sảnh Sightly Emerald'),(1,3,'Dịch vụ cho sảnh Happy Wedding'),(1,4,'Dịch vụ cho sảnh Unforgettable Time'),(2,1,'Dịch vụ cho sảnh Sightly Ruby'),(2,2,'Dịch vụ cho sảnh Sightly Emerald'),(2,3,'Dịch vụ cho sảnh Happy Wedding'),(2,4,'Dịch vụ cho sảnh Unforgettable Time'),(3,1,'Dịch vụ cho sảnh Sightly Ruby'),(3,2,'Dịch vụ cho sảnh Sightly Emerald'),(3,3,'Dịch vụ cho sảnh Happy Wedding'),(3,4,'Dịch vụ cho sảnh Unforgettable Time'),(4,1,'Dịch vụ cho sảnh Sightly Ruby'),(4,2,'Dịch vụ cho sảnh Sightly Emerald'),(4,3,'Dịch vụ cho sảnh Happy Wedding'),(4,4,'Dịch vụ cho sảnh Unforgettable Time'),(5,1,'Dịch vụ cho sảnh Sightly Ruby'),(5,2,'Dịch vụ cho sảnh Sightly Emerald'),(5,3,'Dịch vụ cho sảnh Happy Wedding'),(5,4,'Dịch vụ cho sảnh Unforgettable Time'),(6,1,'Dịch vụ cho sảnh Sightly Ruby'),(6,2,'Dịch vụ cho sảnh Sightly Emerald'),(6,3,'Dịch vụ cho sảnh Happy Wedding'),(6,4,'Dịch vụ cho sảnh Unforgettable Time'),(7,1,'Dịch vụ cho sảnh Sightly Ruby'),(7,2,'Dịch vụ cho sảnh Sightly Emerald'),(7,3,'Dịch vụ cho sảnh Happy Wedding'),(7,4,'Dịch vụ cho sảnh Unforgettable Time'),(8,1,'Dịch vụ cho sảnh Sightly Ruby'),(8,2,'Dịch vụ cho sảnh Sightly Emerald'),(8,3,'Dịch vụ cho sảnh Happy Wedding'),(8,4,'Dịch vụ cho sảnh Unforgettable Time'),(9,1,'Dịch vụ cho sảnh Sightly Ruby'),(9,2,'Dịch vụ cho sảnh Sightly Emerald'),(9,3,'Dịch vụ cho sảnh Happy Wedding'),(9,4,'Dịch vụ cho sảnh Unforgettable Time'),(10,1,'Dịch vụ cho sảnh Sightly Ruby'),(10,2,'Dịch vụ cho sảnh Sightly Emerald'),(10,3,'Dịch vụ cho sảnh Happy Wedding'),(10,4,'Dịch vụ cho sảnh Unforgettable Time'),(11,1,'Dịch vụ cho sảnh Sightly Ruby'),(11,2,'Dịch vụ cho sảnh Sightly Emerald'),(11,3,'Dịch vụ cho sảnh Happy Wedding'),(11,4,'Dịch vụ cho sảnh Unforgettable Time'),(12,1,'Dịch vụ cho sảnh Sightly Ruby'),(12,2,'Dịch vụ cho sảnh Sightly Emerald'),(12,3,'Dịch vụ cho sảnh Happy Wedding'),(12,4,'Dịch vụ cho sảnh Unforgettable Time'),(13,1,'Dịch vụ cho sảnh Sightly Ruby'),(13,2,'Dịch vụ cho sảnh Sightly Emerald'),(13,3,'Dịch vụ cho sảnh Happy Wedding'),(13,4,'Dịch vụ cho sảnh Unforgettable Time'),(14,1,'Dịch vụ cho sảnh Sightly Ruby'),(14,2,'Dịch vụ cho sảnh Sightly Emerald'),(14,3,'Dịch vụ cho sảnh Happy Wedding'),(14,4,'Dịch vụ cho sảnh Unforgettable Time'),(15,1,'Dịch vụ cho sảnh Sightly Ruby'),(15,2,'Dịch vụ cho sảnh Sightly Emerald'),(15,3,'Dịch vụ cho sảnh Happy Wedding'),(15,4,'Dịch vụ cho sảnh Unforgettable Time'),(16,1,'Dịch vụ cho sảnh Sightly Ruby'),(16,2,'Dịch vụ cho sảnh Sightly Emerald'),(16,3,'Dịch vụ cho sảnh Happy Wedding'),(16,4,'Dịch vụ cho sảnh Unforgettable Time'),(17,1,'Dịch vụ cho sảnh Sightly Ruby'),(17,2,'Dịch vụ cho sảnh Sightly Emerald'),(17,3,'Dịch vụ cho sảnh Happy Wedding'),(17,4,'Dịch vụ cho sảnh Unforgettable Time'),(18,1,'Dịch vụ cho sảnh Sightly Ruby'),(18,2,'Dịch vụ cho sảnh Sightly Emerald'),(18,3,'Dịch vụ cho sảnh Happy Wedding'),(18,4,'Dịch vụ cho sảnh Unforgettable Time'),(19,1,'Dịch vụ cho sảnh Sightly Ruby'),(19,2,'Dịch vụ cho sảnh Sightly Emerald'),(19,3,'Dịch vụ cho sảnh Happy Wedding'),(19,4,'Dịch vụ cho sảnh Unforgettable Time'),(20,1,'Dịch vụ cho sảnh Sightly Ruby'),(20,2,'Dịch vụ cho sảnh Sightly Emerald'),(20,3,'Dịch vụ cho sảnh Happy Wedding'),(20,4,'Dịch vụ cho sảnh Unforgettable Time'),(21,1,'Dịch vụ cho sảnh Sightly Ruby'),(21,2,'Dịch vụ cho sảnh Sightly Emerald'),(21,4,'Dịch vụ cho sảnh Unforgettable Time'),(22,1,'Dịch vụ cho sảnh Sightly Ruby'),(22,2,'Dịch vụ cho sảnh Sightly Emerald'),(22,4,'Dịch vụ cho sảnh Unforgettable Time'),(23,4,'Dịch vụ cho sảnh Unforgettable Time');
/*!40000 ALTER TABLE `dichvutieccuoi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `donhang`
--

DROP TABLE IF EXISTS `donhang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `donhang` (
  `MaDH` int NOT NULL AUTO_INCREMENT,
  `MaKH` int DEFAULT NULL,
  `MaNV` int DEFAULT NULL,
  `NgayLapDon` datetime NOT NULL,
  PRIMARY KEY (`MaDH`),
  KEY `fk_Donhang_Nhanvien_idx` (`MaNV`),
  KEY `fk_Donhang_Khachhang_idx` (`MaKH`),
  CONSTRAINT `fk_Donhang_Khachhang` FOREIGN KEY (`MaKH`) REFERENCES `khachhang` (`maKH`),
  CONSTRAINT `fk_Donhang_Nhanvien` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`maNV`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `donhang`
--

LOCK TABLES `donhang` WRITE;
/*!40000 ALTER TABLE `donhang` DISABLE KEYS */;
INSERT INTO `donhang` VALUES (1,1,3,'2021-03-24 00:00:00'),(2,10,5,'2021-06-15 00:00:00'),(3,12,15,'2021-05-31 00:00:00');
/*!40000 ALTER TABLE `donhang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `khachhang`
--

DROP TABLE IF EXISTS `khachhang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `khachhang` (
  `maKH` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`maKH`),
  CONSTRAINT `fk_khachhang_connguoi` FOREIGN KEY (`maKH`) REFERENCES `connguoi` (`people_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khachhang`
--

LOCK TABLES `khachhang` WRITE;
/*!40000 ALTER TABLE `khachhang` DISABLE KEYS */;
INSERT INTO `khachhang` VALUES (1),(6),(7),(8),(9),(10),(11),(12);
/*!40000 ALTER TABLE `khachhang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loaimonan`
--

DROP TABLE IF EXISTS `loaimonan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loaimonan` (
  `idLoaiMonAn` int NOT NULL AUTO_INCREMENT,
  `tenLoaiMonAn` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `moTaLoaiMonAn` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`idLoaiMonAn`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loaimonan`
--

LOCK TABLES `loaimonan` WRITE;
/*!40000 ALTER TABLE `loaimonan` DISABLE KEYS */;
INSERT INTO `loaimonan` VALUES (1,'Khai vị','Vai trò của những món ăn này cũng giống như tên gọi của nó /“khai vị/”. Những món ăn này sẽ giúp cho thực khách kích thích vị giác ăn ngon miệng, để chuẩn bị thưởng thức các món ăn kế tiếp.'),(2,'Chính','Những món ăn chính với hương vị mạnh đậm đà làm cho vị giác của thực khách được đưa lên đỉnh điểm, không những thế những món ăn chính còn giúp người ăn no bụng hơn.'),(3,'Tráng miệng','Để kết thức một bữa tiệc đám cưới thịnh soạn cũng như giúp thực khác không quá ngán sẽ đến các món tráng miệng nhẹ nhàng đơn giản.');
/*!40000 ALTER TABLE `loaimonan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monan`
--

DROP TABLE IF EXISTS `monan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monan` (
  `maMonAn` int NOT NULL AUTO_INCREMENT,
  `TenMonAn` varchar(45) NOT NULL,
  `Mota` varchar(300) NOT NULL,
  `maLoaiMonAn` int DEFAULT NULL,
  `image` varchar(300) DEFAULT NULL,
  `gia` decimal(10,0) DEFAULT '0',
  PRIMARY KEY (`maMonAn`),
  KEY `fk_MonAn_LoaiMonAn_idx` (`maLoaiMonAn`),
  CONSTRAINT `fk_MonAn_LoaiMonAn` FOREIGN KEY (`maLoaiMonAn`) REFERENCES `loaimonan` (`idLoaiMonAn`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monan`
--

LOCK TABLES `monan` WRITE;
/*!40000 ALTER TABLE `monan` DISABLE KEYS */;
INSERT INTO `monan` VALUES (1,'Súp tuyết nhĩ thịt gà xé','Với hương vị đặc sắc từ đầu bếp. Nhà hàng đem lại thực khách một món ăn tuyệt vời',1,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292299/Java/sup-tuyet_hiwwed.png',40000),(2,'Nộm thập cẩm','Với hương vị đặc sắc từ đầu bếp. Nhà hàng đem lại thực khách một món ăn tuyệt vời',1,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292297/Java/nom-thap-cam_a2khfn.jpg',50000),(3,'Gà ta rang muối','Với hương vị đặc sắc từ đầu bếp. Nhà hàng đem lại thực khách một món ăn tuyệt vời',2,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292296/Java/ga_ta_rang_muoi_oh2qnp.jpg',45000),(4,'Tôm sú nướng tiêu','Với hương vị đặc sắc từ đầu bếp. Nhà hàng đem lại thực khách một món ăn tuyệt vời',1,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292299/Java/tom-su-rang-muoi-1_vgsxsx.jpg',40000),(5,'Vịt nấu tiêu xanh – bánh mì','Với hương vị đặc sắc từ đầu bếp. Nhà hàng đem lại thực khách một món ăn tuyệt vời',2,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292299/Java/vit-nau-tieu_hjggr2.jpg',70000),(6,'Cơm Thố Bào Ngư Quay','Với hương vị đặc sắc từ đầu bếp. Nhà hàng đem lại thực khách một món ăn tuyệt vời',2,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292249/Java/com-tho-bao-ngu_mwsudl.png',85000),(7,'Canh bóng thập cẩm','Với hương vị đặc sắc từ đầu bếp. Nhà hàng đem lại thực khách một món ăn tuyệt vời',1,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292247/Java/canh-bong-thap-cam_lnjcfj.jpg',55000),(8,'Chè hồ đào','Với hương vị đặc sắc từ đầu bếp. Nhà hàng đem lại thực khách một món ăn tuyệt vời',3,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292247/Java/che-ho-dao_gbzact.jpg',56000),(9,'Nộm thập cẩm bò khô','Với hương vị đặc sắc từ đầu bếp. Nhà hàng đem lại thực khách một món ăn tuyệt vời',1,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292298/Java/nom-thap-cam-bo-kho_m1k1dy.jpg',43000),(10,'Ngô Mỹ chiên bơ','Với hương vị đặc sắc từ đầu bếp. Nhà hàng đem lại thực khách một món ăn tuyệt vời',1,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292297/Java/ngo-my_iennso.jpg',74000),(11,'Gà hấp lá chanh','Với hương vị đặc sắc từ đầu bếp. Nhà hàng đem lại thực khách một món ăn tuyệt vời',2,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292297/Java/lau-ga-tha-vuon_akhwhd.png',45000),(12,'Tôm đốt trái dừa','Với hương vị đặc sắc từ đầu bếp. Nhà hàng đem lại thực khách một món ăn tuyệt vời',1,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292298/Java/tom-dot-trai-dua_rqeulh.jpg',90000),(13,'Chả mực Hạ Long','Với hương vị đặc sắc từ đầu bếp. Nhà hàng đem lại thực khách một món ăn tuyệt vời',1,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292248/Java/cha-muc-ha-long-211_1628134390_k4gqpf.png',96000),(14,'Cá điêu hồng cắt lát chiên giòn','Với hương vị đặc sắc từ đầu bếp. Nhà hàng đem lại thực khách một món ăn tuyệt vời',2,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292247/Java/ca-dieu-hong-chien-hoang-bao_ekwlzf.jpg',65000),(15,'Lẩu gà sa tế','Với hương vị đặc sắc từ đầu bếp. Nhà hàng đem lại thực khách một món ăn tuyệt vời',2,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292297/Java/lau-ga-sa-te_xt6jjb.jpg',49000),(16,'Chè đông sương tuyết nhĩ','Với hương vị đặc sắc từ đầu bếp. Nhà hàng đem lại thực khách một món ăn tuyệt vời',3,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292247/Java/che-dong-suong_iszrie.jpg',67000),(17,'Bánh Mặn Khai Vị Đầu Giờ','Với hương vị đặc sắc từ đầu bếp. Nhà hàng đem lại thực khách một món ăn tuyệt vời',1,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292246/Java/banh-man-khai-vi_ecfgio.jpg',70000),(18,'Gỏi Mực Á Đông','Với hương vị đặc sắc từ đầu bếp. Nhà hàng đem lại thực khách một món ăn tuyệt vời',1,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292296/Java/goi-muc-a-dong_xjbysb.jpg',62000),(19,'Súp Tôm Cua Cốm Xanh','Với hương vị đặc sắc từ đầu bếp. Nhà hàng đem lại thực khách một món ăn tuyệt vời',1,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292298/Java/sup-tom-com_ynbyyf.jpg',45000),(20,'Tôm chiên sốt sa tế','Với hương vị đặc sắc từ đầu bếp. Nhà hàng đem lại thực khách một món ăn tuyệt vời',1,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292299/Java/tom-xao-sa-te_b6foxo.jpg',69000),(21,'Bò sốt tiêu đen bánh bao','Với hương vị đặc sắc từ đầu bếp. Nhà hàng đem lại thực khách một món ăn tuyệt vời',2,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292247/Java/bo-sot-tieu_g6fido.jpg',70000),(22,'Cá điêu hồng chiên hoàng bào','Với hương vị đặc sắc từ đầu bếp. Nhà hàng đem lại thực khách một món ăn tuyệt vời',2,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292247/Java/ca-dieu-hong-chien-xu_dcp1ke.jpg',56000),(23,'Canh vằn thắn tôm tươi','Với hương vị đặc sắc từ đầu bếp. Nhà hàng đem lại thực khách một món ăn tuyệt vời',2,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292247/Java/canh-van-than-tom_hkb4jf.jpg',34000),(24,'Xôi cốm với dừa nạo','Với hương vị đặc sắc từ đầu bếp. Nhà hàng đem lại thực khách một món ăn tuyệt vời',3,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292299/Java/xoi-com-dua-nao_padjls.jpg',85000),(25,'Súp gà ngô nấm','Với hương vị đặc sắc từ đầu bếp. Nhà hàng đem lại thực khách một món ăn tuyệt vời',3,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292298/Java/sup-ga-nam-ngon-7_ckgehc.jpg',35000),(26,'Nộm su hào bắp bò xá xíu','Với hương vị đặc sắc từ đầu bếp. Nhà hàng đem lại thực khách một món ăn tuyệt vời',1,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292297/Java/nom-su-hao-bap_phdlp7.jpg',45000),(27,'Gà Cuộn Đút Lò Phô Mai','Với hương vị đặc sắc từ đầu bếp. Nhà hàng đem lại thực khách một món ăn tuyệt vời',2,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292297/Java/ga-cuon-dut-lo_i0jgt5.jpg',34000),(28,'Sườn Non Hầm Rượu Vang – Bánh Mì','Với hương vị đặc sắc từ đầu bếp. Nhà hàng đem lại thực khách một món ăn tuyệt vời',2,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292298/Java/suon-non-ham-ruou_pp4b7q.jpg',75000),(29,'Nấm Bào Ngư Xào Dầu Hào','Với hương vị đặc sắc từ đầu bếp. Nhà hàng đem lại thực khách một món ăn tuyệt vời',2,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292297/Java/nam-bao-ngu_k3wgmz.jpg',57000),(30,'Rau Mùa Xốt Trứng Muối','Với hương vị đặc sắc từ đầu bếp. Nhà hàng đem lại thực khách một món ăn tuyệt vời',2,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292298/Java/rau-mua-xot_pe0vhy.jpg',46000),(31,'Cơm Chiên Sò Điệp','Với hương vị đặc sắc từ đầu bếp. Nhà hàng đem lại thực khách một món ăn tuyệt vời',2,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292250/Java/com-chien-so-diep_iovauk.png',86000),(32,'Lẩu Thái','Với hương vị đặc sắc từ đầu bếp. Nhà hàng đem lại thực khách một món ăn tuyệt vời',2,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292297/Java/lau-thai_mtmnhu.jpg',54000),(33,'Mực ống nhồi thịt','Với hương vị đặc sắc từ đầu bếp. Nhà hàng đem lại thực khách một món ăn tuyệt vời',1,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292297/Java/muc-nhoi-thit-chien_zqhmo0.jpg',45900),(34,'Ba Chỉ Quay Giòn – Bánh Hỏi','Với hương vị đặc sắc từ đầu bếp. Nhà hàng đem lại thực khách một món ăn tuyệt vời',2,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292247/Java/banh-h%E1%BB%8Fi-heo-quay-recipe-main-photo_lxapdx.jpg',65999),(35,'Bò Tam Vương – Bánh Mì','Với hương vị đặc sắc từ đầu bếp. Nhà hàng đem lại thực khách một món ăn tuyệt vời',2,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292254/Java/bo-tam-vuong_cgwsle.png',59000),(36,'Lẩu Gà thả vườn','Với hương vị đặc sắc từ đầu bếp. Nhà hàng đem lại thực khách một món ăn tuyệt vời',2,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292297/Java/lau-ga-tha-vuon_akhwhd.png',85000),(37,'Chè Thanh Long Nha Đam','Với hương vị đặc sắc từ đầu bếp. Nhà hàng đem lại thực khách một món ăn tuyệt vời',3,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292248/Java/che-thanh-long_qnnwx3.jpg',80000),(38,'Chè Táo Đỏ Hạt Sen','Với hương vị đặc sắc từ đầu bếp. Nhà hàng đem lại thực khách một món ăn tuyệt vời',3,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292248/Java/che-tao-do_sefb5m.jpg',89000),(39,'Bưởi Năm Roi','Với hương vị đặc sắc từ đầu bếp. Nhà hàng đem lại thực khách một món ăn tuyVới hương vị đặc sắc từ đầu bếp. Nhà hàng đem lại thực khách một món ăn tuyệt vờiệt vời',3,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292247/Java/buoi_s2t8mu.jpg',40000),(40,'Dưa Hấu','Với hương vị đặc sắc từ đầu bếp. Nhà hàng đem lại thực khách một món ăn tuyệt vời',3,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292248/Java/dua-hau_oafmoc.jpg',70000),(41,'Chuối','Với hương vị đặc sắc từ đầu bếp. Nhà hàng đem lại thực khách một món ăn tuyệt vời',3,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292248/Java/chuoi_mpnqun.jpg',50000),(42,'Nho Mỹ','Với hương vị đặc sắc từ đầu bếp. Nhà hàng đem lại thực khách một món ăn tuyệt vời`',3,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292297/Java/nho-my-den_q4yj2h.jpg',20000);
/*!40000 ALTER TABLE `monan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhanvien`
--

DROP TABLE IF EXISTS `nhanvien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nhanvien` (
  `maNV` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`maNV`),
  CONSTRAINT `fk_nhanvien_connguoi` FOREIGN KEY (`maNV`) REFERENCES `connguoi` (`people_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhanvien`
--

LOCK TABLES `nhanvien` WRITE;
/*!40000 ALTER TABLE `nhanvien` DISABLE KEYS */;
INSERT INTO `nhanvien` VALUES (2),(3),(4),(5),(13),(14),(15),(16);
/*!40000 ALTER TABLE `nhanvien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sanhtiec`
--

DROP TABLE IF EXISTS `sanhtiec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sanhtiec` (
  `masanhtiec` int NOT NULL AUTO_INCREMENT,
  `maThucDon` int DEFAULT NULL,
  `tenSanh` varchar(45) NOT NULL,
  `sucChua` smallint DEFAULT NULL,
  `DienTich` varchar(45) DEFAULT NULL,
  `SoBan` smallint DEFAULT NULL,
  `moTa` varchar(800) NOT NULL,
  `ngayToChuc` date NOT NULL,
  `giaTienSang` decimal(10,0) DEFAULT '0',
  `giaTienTrua` decimal(10,0) DEFAULT '0',
  `giaTienToi` decimal(10,0) DEFAULT '0',
  `image` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`masanhtiec`),
  KEY `fk_sanhtiec_ThucDon_idx` (`maThucDon`),
  CONSTRAINT `fk_sanhtiec_ThucDon` FOREIGN KEY (`maThucDon`) REFERENCES `thucdon` (`idThucDon`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sanhtiec`
--

LOCK TABLES `sanhtiec` WRITE;
/*!40000 ALTER TABLE `sanhtiec` DISABLE KEYS */;
INSERT INTO `sanhtiec` VALUES (1,NULL,'Sightly Ruby',300,'18m x 32m',30,'Làm cho khoảnh khắc tuyệt vời của bạn cùng những người thân, bạn bè trở thành 1 ký ức khó quên sáng lấp lánh như đá Ruby đẹp và bí hiểm. Sightly Ruby chính là sự lựa chọn thích hợp cho quy mô vừa với 30 bàn và sức chứa đến 300 khách. Phong cách trang trí đẹp theo kiểu sang trọng và bí hiểm như chính tên của nó.','2021-04-30',2900000,2700000,3100000,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640229387/Java/sanh-tiec-cuoi19_rjust3.png'),(2,NULL,'Sightly Emerald',350,'18m x 52m',35,'Sightly Emerald là sảnh tiệc cưới có lối kiến trúc sang trọng, tinh tế, sảnh đường rộng được trang trí độc đáo theo nhiều phong cách khác nhau, sảnh phù hợp với những yêu cầu đa dạng của uyên ương. Tiệc cưới của bạn dù là truyền thống hay hiện đại, từ nhỏ gọn ấm cúng đến hoành tráng sang trọng sảnh này đều có thể đáp ứng một cách tốt nhất những yêu cầu ấy. Sảnh tổ chức tiệc cưới Diamond Place luôn là nơi lưu giữ khoảnh khắc đẹp đẽ nhất của tình yêu đôi lứa.','2021-04-25',3100000,2900000,3300000,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640229389/Java/engin-akyurt-i3rFV6ULk-o-unsplash_nutzvj.jpg'),(3,NULL,'Happy Wedding',200,'18m x 25m',20,'Với hệ thống âm thanh, ánh sáng cùng màn hình led linh động ở mỗi tiệc sẽ là điểm nhấn tuyệt vời cho khúc ca tình yêu trong tiệc cưới của bạn, Sảnh tiệc cưới Happy Wedding là những trải nghiệm về một không gian tiệc cưới sang trọng, tinh tế. Sự sáng tạo trong khâu trang trí đã góp phần làm khách mời cảm thấy dễ chịu và thoải mái hơn. Tổ chức tiệc cưới tại Java Wedding sẽ giúp bạn lưu lại những khoảnh khắc đẹp tạo nên những điều tuyệt vời để khởi đầu cuộc sống lứa đôi hoàn hảo.','2021-07-17',2500000,2300000,2800000,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640229385/Java/sanh-tiec-cuoi-22_ugwgvx.jpg'),(4,NULL,'Unforgettable Time',400,'18m x 36m',40,'Làm cho khoảnh khắc tuyệt vời của bạn cùng những người thân, bạn bè trở thành 1 ký ức không thể nào quên, một khung cảnh đọng lại nhiều ký ức. Unforgettable Time chính là sự lựa chọn thích hợp cho quy mô lớn với 40 bàn và sức chứa đến 400 khách. Phong cách trang trí đẹp theo kiểu sang trọng, sáng sủa và độc lạ khiến ai cũng phải khắc vào tâm trí - không thể quên dễ dàng được.','2021-06-14',3500000,3200000,3700000,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640229385/Java/sanh-tiec-cuoi-25_bxwilf.png'),(5,NULL,'Diamond Moment',500,'20m x 60m',50,'Sảnh tiệc cưới Diamond Moment là sảnh tiệc có sức chứa 150 – 300 khách, vô cùng ấm cúng cho các đôi uyên ương muốn có một không gian riêng biệt và lãng mạn, đem lại nhiều trải nghiệm ngọt ngào uyên ương đôi lứa. Đá Ruby là viên đá của tình yêu, sự đam mê, sự khát khao và mang đầy sinh khí. Nhà hàng tổ chức tiệc cưới Java Wedding mong muốn sức mạnh của Ruby sẽ mang đến cho các đôi uyên ương một tình yêu trọn vẹn, một sức hút mãnh liệt và một hạnh phúc viên mãn nhất.','2021-05-26',3900000,3700000,4100000,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640229384/Java/sanh-tiec-cuoi-24_sxtad9.png'),(6,NULL,'Unique Moment',250,'18m x 30m',25,'Sảnh tiệc cưới Unique Moment tại Diamond Place là một trong những sảnh cưới tượng trưng cho quyền lực và quý tộc, với sức chứa lớn, rộng rãi, thoáng đãng. Sảnh lấy tên của một loại đá quý nhất, Sapphire còn là đá của mùa cưới, mùa hy vọng và tình yêu với mong muốn các cặp đôi khi tổ chức tiệc cưới ở đây đều may mắn, chung thủy, tạo dựng một gia đình hạnh phúc, con cháu đầy đàn, viên mãn trọn đời. Hãy cùng Java Wedding ghi dấu khoảnh khắc đẹp của cuộc đời bạn.','2021-09-17',2700000,2500000,2900000,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640229381/Java/sanh-tiec-cuoi-23_ie6mxu.jpg'),(7,NULL,'Royal Wedding',600,'20m x 80m',60,'Sảnh tổ chức tiệc cưới Royal Wedding là một trong những sảnh cưới sang trọng nhất của nhà hàng tiệc cưới Java Wedding, với sức chứa lên đến 150 bàn tiệc, tương đương với 1.500 khách mời. Không gian rông rãi được trang bị đầy đủ hệ thống âm thanh, ánh sáng hiện đại, đem đến sự thoải mái cho những quan khách khi dự tiệc, đáp ứng nhiều hình thức và nhu cầu đặt tiệc khác nhau, đem đến sự hài lòng cho khách mời xuyên suốt buổi tiệc. Java Wedding luôn bên bạn trong suốt mùa cưới.','2021-11-30',4500000,4300000,4700000,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640229387/Java/sanh-tiec-cuoi-20_l7upuq.png'),(8,NULL,'The Best Moment',150,'18m x 18m',15,'Sảnh tiệc The best Moment được trang trí với tông màu chủ đạo là màu đỏ của đá Ruby với mong ước sẽ mang đến sự may mắn nhất trong tiệc cưới của những đôi bạn trẻ trong ngày trọng đại của mình. Sảnh tổ chức tiệc cưới được trang bị hệ thống âm thanh, ánh sáng hiện đại, màn hình, máy chiếu, được thiết kế hài hòa làm tăng thêm sự hoành tráng của sảnh tiệc. Java Wedding không chỉ mang tới cho các cặp uyên ương một không gian cưới ấn tượng, đẳng cấp mà còn mang tới một chương trình cưới độc đáo, đặc sắc.','2021-12-21',2200000,2000000,2500000,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640229382/Java/thomas-william-OAVqa8hQvWI-unsplash_zy80cw.jpg');
/*!40000 ALTER TABLE `sanhtiec` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taikhoan`
--

DROP TABLE IF EXISTS `taikhoan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taikhoan` (
  `idtaikhoan` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(100) NOT NULL,
  `avatar` varchar(300) DEFAULT NULL,
  `user_role` varchar(10) NOT NULL,
  PRIMARY KEY (`idtaikhoan`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taikhoan`
--

LOCK TABLES `taikhoan` WRITE;
/*!40000 ALTER TABLE `taikhoan` DISABLE KEYS */;
INSERT INTO `taikhoan` VALUES (1,'Phuoc','Dat','hphuocdat','hphuocdat@gmail.com','$2a$10$5X9k5N1sTc1/CjVH5XJoje3QMYijH3ETpgkox00R0MdPaJPPrf7wO','https://res.cloudinary.com/dxxwcby8l/image/upload/v1632708761/w4admrpvvxt11flahakv.png','ROLE_USER'),(2,'Nguyen','An','nguyenan','an@gmail.com','$2a$10$b/tqrbCDT1c0hx5FNt9PLuQpeF8Y6kg12ekRGTWgyzD53Acma5eRG','https://res.cloudinary.com/dxxwcby8l/image/upload/v1640444868/md5hxcvvdhgdhhytnft8.jpg','ROLE_USER'),(3,'phuoc','huynhphuoc','phuocdat1','dat@gmail.com','$2a$10$PSapfJ8Wv62O0YMiXS8Oruqv77G45CMmyu2y8b5N/siLG4OOZ2ruO','https://res.cloudinary.com/dxxwcby8l/image/upload/v1640657155/s0kjocj0ahisuz74zy2h.png','ROLE_USER');
/*!40000 ALTER TABLE `taikhoan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taikhoan_kh`
--

DROP TABLE IF EXISTS `taikhoan_kh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taikhoan_kh` (
  `idtaikhoan` int NOT NULL,
  `maKH` int NOT NULL,
  PRIMARY KEY (`idtaikhoan`,`maKH`),
  KEY `fk_taikhoanKH_Khachhang_idx` (`maKH`),
  CONSTRAINT `fk_taikhoanKH_Khachhang` FOREIGN KEY (`maKH`) REFERENCES `khachhang` (`maKH`),
  CONSTRAINT `fk_taikhoanKH_taikhoan` FOREIGN KEY (`idtaikhoan`) REFERENCES `taikhoan` (`idtaikhoan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taikhoan_kh`
--

LOCK TABLES `taikhoan_kh` WRITE;
/*!40000 ALTER TABLE `taikhoan_kh` DISABLE KEYS */;
/*!40000 ALTER TABLE `taikhoan_kh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taikhoan_nv`
--

DROP TABLE IF EXISTS `taikhoan_nv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taikhoan_nv` (
  `idtaikhoan` int NOT NULL,
  `maNV` int NOT NULL,
  PRIMARY KEY (`idtaikhoan`,`maNV`),
  KEY `fk_taikhoanNV_Nhanvien_idx` (`maNV`),
  CONSTRAINT `fk_taikhoanNV_Nhanvien` FOREIGN KEY (`maNV`) REFERENCES `nhanvien` (`maNV`),
  CONSTRAINT `fk_taikhoanNV_taikhoan` FOREIGN KEY (`idtaikhoan`) REFERENCES `taikhoan` (`idtaikhoan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taikhoan_nv`
--

LOCK TABLES `taikhoan_nv` WRITE;
/*!40000 ALTER TABLE `taikhoan_nv` DISABLE KEYS */;
/*!40000 ALTER TABLE `taikhoan_nv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thucdon`
--

DROP TABLE IF EXISTS `thucdon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `thucdon` (
  `idThucDon` int NOT NULL AUTO_INCREMENT,
  `tenThucDon` varchar(45) NOT NULL,
  PRIMARY KEY (`idThucDon`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thucdon`
--

LOCK TABLES `thucdon` WRITE;
/*!40000 ALTER TABLE `thucdon` DISABLE KEYS */;
INSERT INTO `thucdon` VALUES (1,'Thực đơn số 1'),(2,'Thực đơn số 2'),(3,'Thực đơn số 3'),(4,'Thực đơn số 4'),(5,'Thực đơn số 5');
/*!40000 ALTER TABLE `thucdon` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-14  8:31:21
