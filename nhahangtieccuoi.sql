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
INSERT INTO `connguoi` VALUES (1,'Nguyen van cuong','2000-09-11','nam','123 ly tu trong','0365231487',NULL),(2,'Nguy???n V??n T??m','1995-08-06','nam','123 ho hao hon','0365238988',NULL),(3,'Nguy???n Th??? Hoa','1996-09-11','n???','456 nguyen dinh chieu','0365237854',NULL),(4,'Nguy???n Ng???c Tr??m','1992-02-25','n???','255 thong nhat','0365238956',NULL),(5,'H??? Thanh Nga','2000-07-12','n???','116 Ton Quyen','0365239752',NULL),(6,'????o T??i L???c','1999-04-28','nam','114 Nguyen Cu Trinh','0365238855',NULL),(7,'Tr???nh T??i Ti???n','1998-05-30','nam','136 Nguyen Van Thu','0365232266',NULL),(8,'Th??i V?? Khoa','1989-11-06','nam','146 Nguyen Thi Minh Khai','0365231995',NULL),(9,'L??m Thi??n Tr??c','1996-04-25','n???','157 Huynh Tan Phat','0365231487',NULL),(10,'Nguy???n Ph?????c Ngh??a','1988-03-15','nam','156 Pasteur','0365231325',NULL),(11,'H??? Ng???c H???nh','1991-03-25','nam','199 Ha Huy Tap','0365236635',NULL),(12,'Ng?? Ng???c An','1995-08-08','nam','165 Ngo Quyen','0365233216',NULL),(13,'H??ng H???ng H??n','2000-08-23','n???','187 Hai Ba Trung','0365233254',NULL),(14,'Huynh My Anh','1999-05-26','n???','155 Ho Van Hue','0365234263',NULL),(15,'B??i Ti???n ?????c','1999-06-12','nam','285 Nguyen Trai','0365234263',NULL),(16,'L?? Ng???c H??n','2000-05-26','n???','155 CMT8','0365231561',NULL);
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
INSERT INTO `dichvu` VALUES (1,'C???ng hoa ????n kh??ch',500000),(2,'Trang tr?? s??n kh???u',2000000),(3,'Champagne & ???? kh??i',5000000),(4,'B??nh c?????i 5 t???ng gi???',700000),(5,'Ph??o hoa kim tuy???n',600000),(6,'M??n h??nh m??y chi???u khai ti???c',2500000),(7,'Hoa t????i trang tr?? b??n b??nh c?????i',900000),(8,'Hoa t????i trang tr?? b??n th??p ly',850000),(9,'Hoa t????i tr??n b??n ti???c',450000),(10,'Hoa t????i trang tr?? b??n k?? t??n',450000),(11,'L???i ??i CD-CR',1500000),(12,'Li???n k?? t??n &  b??t',690000),(13,'Th??ng ti???n m???ng, gi?? ????? Album',530000),(14,'Ph???n ??n nh??? cho CD-CR',2300000),(15,'H???t sen h???p khai v??? ?????u gi???',240000),(16,'MC d???n ch????ng tr??nh nghi th???c l???',900000),(17,'Backdrop ch???p h??nh',5000000),(18,'B??nh m???n khai v??? ?????u gi???',3200000),(19,'Ban nh???c (nh???c c??ng)',8000000),(20,'Clip l??m l??? cartoon CD-CR',7000000),(21,'V?? ??o??n m??a 6 ng?????i',4000000),(22,'B??n Gallery ti??u chu???n',900000),(23,'Ban nh???c 4 nh???c c??ng',4000000),(24,'1 b??n ??n th???(10 kh??ch)',5500000),(25,'Tranh v??n tay k?? t??n',680000),(26,'B??ng ????ng thi??n nga',980000),(27,'2 Ca s?? (h??t 4 b??i)',2000000),(28,'B??n Gallery ?????c bi???t',4500000);
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
INSERT INTO `dichvutieccuoi` VALUES (1,1,'D???ch v??? cho s???nh Sightly Ruby'),(1,2,'D???ch v??? cho s???nh Sightly Emerald'),(1,3,'D???ch v??? cho s???nh Happy Wedding'),(1,4,'D???ch v??? cho s???nh Unforgettable Time'),(2,1,'D???ch v??? cho s???nh Sightly Ruby'),(2,2,'D???ch v??? cho s???nh Sightly Emerald'),(2,3,'D???ch v??? cho s???nh Happy Wedding'),(2,4,'D???ch v??? cho s???nh Unforgettable Time'),(3,1,'D???ch v??? cho s???nh Sightly Ruby'),(3,2,'D???ch v??? cho s???nh Sightly Emerald'),(3,3,'D???ch v??? cho s???nh Happy Wedding'),(3,4,'D???ch v??? cho s???nh Unforgettable Time'),(4,1,'D???ch v??? cho s???nh Sightly Ruby'),(4,2,'D???ch v??? cho s???nh Sightly Emerald'),(4,3,'D???ch v??? cho s???nh Happy Wedding'),(4,4,'D???ch v??? cho s???nh Unforgettable Time'),(5,1,'D???ch v??? cho s???nh Sightly Ruby'),(5,2,'D???ch v??? cho s???nh Sightly Emerald'),(5,3,'D???ch v??? cho s???nh Happy Wedding'),(5,4,'D???ch v??? cho s???nh Unforgettable Time'),(6,1,'D???ch v??? cho s???nh Sightly Ruby'),(6,2,'D???ch v??? cho s???nh Sightly Emerald'),(6,3,'D???ch v??? cho s???nh Happy Wedding'),(6,4,'D???ch v??? cho s???nh Unforgettable Time'),(7,1,'D???ch v??? cho s???nh Sightly Ruby'),(7,2,'D???ch v??? cho s???nh Sightly Emerald'),(7,3,'D???ch v??? cho s???nh Happy Wedding'),(7,4,'D???ch v??? cho s???nh Unforgettable Time'),(8,1,'D???ch v??? cho s???nh Sightly Ruby'),(8,2,'D???ch v??? cho s???nh Sightly Emerald'),(8,3,'D???ch v??? cho s???nh Happy Wedding'),(8,4,'D???ch v??? cho s???nh Unforgettable Time'),(9,1,'D???ch v??? cho s???nh Sightly Ruby'),(9,2,'D???ch v??? cho s???nh Sightly Emerald'),(9,3,'D???ch v??? cho s???nh Happy Wedding'),(9,4,'D???ch v??? cho s???nh Unforgettable Time'),(10,1,'D???ch v??? cho s???nh Sightly Ruby'),(10,2,'D???ch v??? cho s???nh Sightly Emerald'),(10,3,'D???ch v??? cho s???nh Happy Wedding'),(10,4,'D???ch v??? cho s???nh Unforgettable Time'),(11,1,'D???ch v??? cho s???nh Sightly Ruby'),(11,2,'D???ch v??? cho s???nh Sightly Emerald'),(11,3,'D???ch v??? cho s???nh Happy Wedding'),(11,4,'D???ch v??? cho s???nh Unforgettable Time'),(12,1,'D???ch v??? cho s???nh Sightly Ruby'),(12,2,'D???ch v??? cho s???nh Sightly Emerald'),(12,3,'D???ch v??? cho s???nh Happy Wedding'),(12,4,'D???ch v??? cho s???nh Unforgettable Time'),(13,1,'D???ch v??? cho s???nh Sightly Ruby'),(13,2,'D???ch v??? cho s???nh Sightly Emerald'),(13,3,'D???ch v??? cho s???nh Happy Wedding'),(13,4,'D???ch v??? cho s???nh Unforgettable Time'),(14,1,'D???ch v??? cho s???nh Sightly Ruby'),(14,2,'D???ch v??? cho s???nh Sightly Emerald'),(14,3,'D???ch v??? cho s???nh Happy Wedding'),(14,4,'D???ch v??? cho s???nh Unforgettable Time'),(15,1,'D???ch v??? cho s???nh Sightly Ruby'),(15,2,'D???ch v??? cho s???nh Sightly Emerald'),(15,3,'D???ch v??? cho s???nh Happy Wedding'),(15,4,'D???ch v??? cho s???nh Unforgettable Time'),(16,1,'D???ch v??? cho s???nh Sightly Ruby'),(16,2,'D???ch v??? cho s???nh Sightly Emerald'),(16,3,'D???ch v??? cho s???nh Happy Wedding'),(16,4,'D???ch v??? cho s???nh Unforgettable Time'),(17,1,'D???ch v??? cho s???nh Sightly Ruby'),(17,2,'D???ch v??? cho s???nh Sightly Emerald'),(17,3,'D???ch v??? cho s???nh Happy Wedding'),(17,4,'D???ch v??? cho s???nh Unforgettable Time'),(18,1,'D???ch v??? cho s???nh Sightly Ruby'),(18,2,'D???ch v??? cho s???nh Sightly Emerald'),(18,3,'D???ch v??? cho s???nh Happy Wedding'),(18,4,'D???ch v??? cho s???nh Unforgettable Time'),(19,1,'D???ch v??? cho s???nh Sightly Ruby'),(19,2,'D???ch v??? cho s???nh Sightly Emerald'),(19,3,'D???ch v??? cho s???nh Happy Wedding'),(19,4,'D???ch v??? cho s???nh Unforgettable Time'),(20,1,'D???ch v??? cho s???nh Sightly Ruby'),(20,2,'D???ch v??? cho s???nh Sightly Emerald'),(20,3,'D???ch v??? cho s???nh Happy Wedding'),(20,4,'D???ch v??? cho s???nh Unforgettable Time'),(21,1,'D???ch v??? cho s???nh Sightly Ruby'),(21,2,'D???ch v??? cho s???nh Sightly Emerald'),(21,4,'D???ch v??? cho s???nh Unforgettable Time'),(22,1,'D???ch v??? cho s???nh Sightly Ruby'),(22,2,'D???ch v??? cho s???nh Sightly Emerald'),(22,4,'D???ch v??? cho s???nh Unforgettable Time'),(23,4,'D???ch v??? cho s???nh Unforgettable Time');
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
INSERT INTO `loaimonan` VALUES (1,'Khai v???','Vai tr?? c???a nh???ng m??n ??n n??y c??ng gi???ng nh?? t??n g???i c???a n?? /???khai v???/???. Nh???ng m??n ??n n??y s??? gi??p cho th???c kh??ch k??ch th??ch v??? gi??c ??n ngon mi???ng, ????? chu???n b??? th?????ng th???c c??c m??n ??n k??? ti???p.'),(2,'Ch??nh','Nh???ng m??n ??n ch??nh v???i h????ng v??? m???nh ?????m ???? l??m cho v??? gi??c c???a th???c kh??ch ???????c ????a l??n ?????nh ??i???m, kh??ng nh???ng th??? nh???ng m??n ??n ch??nh c??n gi??p ng?????i ??n no b???ng h??n.'),(3,'Tr??ng mi???ng','????? k???t th???c m???t b???a ti???c ????m c?????i th???nh so???n c??ng nh?? gi??p th???c kh??c kh??ng qu?? ng??n s??? ?????n c??c m??n tr??ng mi???ng nh??? nh??ng ????n gi???n.');
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
INSERT INTO `monan` VALUES (1,'S??p tuy???t nh?? th???t g?? x??','V???i h????ng v??? ?????c s???c t??? ?????u b???p. Nh?? h??ng ??em l???i th???c kh??ch m???t m??n ??n tuy???t v???i',1,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292299/Java/sup-tuyet_hiwwed.png',40000),(2,'N???m th???p c???m','V???i h????ng v??? ?????c s???c t??? ?????u b???p. Nh?? h??ng ??em l???i th???c kh??ch m???t m??n ??n tuy???t v???i',1,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292297/Java/nom-thap-cam_a2khfn.jpg',50000),(3,'G?? ta rang mu???i','V???i h????ng v??? ?????c s???c t??? ?????u b???p. Nh?? h??ng ??em l???i th???c kh??ch m???t m??n ??n tuy???t v???i',2,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292296/Java/ga_ta_rang_muoi_oh2qnp.jpg',45000),(4,'T??m s?? n?????ng ti??u','V???i h????ng v??? ?????c s???c t??? ?????u b???p. Nh?? h??ng ??em l???i th???c kh??ch m???t m??n ??n tuy???t v???i',1,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292299/Java/tom-su-rang-muoi-1_vgsxsx.jpg',40000),(5,'V???t n???u ti??u xanh ??? b??nh m??','V???i h????ng v??? ?????c s???c t??? ?????u b???p. Nh?? h??ng ??em l???i th???c kh??ch m???t m??n ??n tuy???t v???i',2,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292299/Java/vit-nau-tieu_hjggr2.jpg',70000),(6,'C??m Th??? B??o Ng?? Quay','V???i h????ng v??? ?????c s???c t??? ?????u b???p. Nh?? h??ng ??em l???i th???c kh??ch m???t m??n ??n tuy???t v???i',2,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292249/Java/com-tho-bao-ngu_mwsudl.png',85000),(7,'Canh b??ng th???p c???m','V???i h????ng v??? ?????c s???c t??? ?????u b???p. Nh?? h??ng ??em l???i th???c kh??ch m???t m??n ??n tuy???t v???i',1,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292247/Java/canh-bong-thap-cam_lnjcfj.jpg',55000),(8,'Ch?? h??? ????o','V???i h????ng v??? ?????c s???c t??? ?????u b???p. Nh?? h??ng ??em l???i th???c kh??ch m???t m??n ??n tuy???t v???i',3,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292247/Java/che-ho-dao_gbzact.jpg',56000),(9,'N???m th???p c???m b?? kh??','V???i h????ng v??? ?????c s???c t??? ?????u b???p. Nh?? h??ng ??em l???i th???c kh??ch m???t m??n ??n tuy???t v???i',1,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292298/Java/nom-thap-cam-bo-kho_m1k1dy.jpg',43000),(10,'Ng?? M??? chi??n b??','V???i h????ng v??? ?????c s???c t??? ?????u b???p. Nh?? h??ng ??em l???i th???c kh??ch m???t m??n ??n tuy???t v???i',1,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292297/Java/ngo-my_iennso.jpg',74000),(11,'G?? h???p l?? chanh','V???i h????ng v??? ?????c s???c t??? ?????u b???p. Nh?? h??ng ??em l???i th???c kh??ch m???t m??n ??n tuy???t v???i',2,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292297/Java/lau-ga-tha-vuon_akhwhd.png',45000),(12,'T??m ?????t tr??i d???a','V???i h????ng v??? ?????c s???c t??? ?????u b???p. Nh?? h??ng ??em l???i th???c kh??ch m???t m??n ??n tuy???t v???i',1,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292298/Java/tom-dot-trai-dua_rqeulh.jpg',90000),(13,'Ch??? m???c H??? Long','V???i h????ng v??? ?????c s???c t??? ?????u b???p. Nh?? h??ng ??em l???i th???c kh??ch m???t m??n ??n tuy???t v???i',1,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292248/Java/cha-muc-ha-long-211_1628134390_k4gqpf.png',96000),(14,'C?? ??i??u h???ng c???t l??t chi??n gi??n','V???i h????ng v??? ?????c s???c t??? ?????u b???p. Nh?? h??ng ??em l???i th???c kh??ch m???t m??n ??n tuy???t v???i',2,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292247/Java/ca-dieu-hong-chien-hoang-bao_ekwlzf.jpg',65000),(15,'L???u g?? sa t???','V???i h????ng v??? ?????c s???c t??? ?????u b???p. Nh?? h??ng ??em l???i th???c kh??ch m???t m??n ??n tuy???t v???i',2,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292297/Java/lau-ga-sa-te_xt6jjb.jpg',49000),(16,'Ch?? ????ng s????ng tuy???t nh??','V???i h????ng v??? ?????c s???c t??? ?????u b???p. Nh?? h??ng ??em l???i th???c kh??ch m???t m??n ??n tuy???t v???i',3,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292247/Java/che-dong-suong_iszrie.jpg',67000),(17,'B??nh M???n Khai V??? ?????u Gi???','V???i h????ng v??? ?????c s???c t??? ?????u b???p. Nh?? h??ng ??em l???i th???c kh??ch m???t m??n ??n tuy???t v???i',1,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292246/Java/banh-man-khai-vi_ecfgio.jpg',70000),(18,'G???i M???c ?? ????ng','V???i h????ng v??? ?????c s???c t??? ?????u b???p. Nh?? h??ng ??em l???i th???c kh??ch m???t m??n ??n tuy???t v???i',1,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292296/Java/goi-muc-a-dong_xjbysb.jpg',62000),(19,'S??p T??m Cua C???m Xanh','V???i h????ng v??? ?????c s???c t??? ?????u b???p. Nh?? h??ng ??em l???i th???c kh??ch m???t m??n ??n tuy???t v???i',1,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292298/Java/sup-tom-com_ynbyyf.jpg',45000),(20,'T??m chi??n s???t sa t???','V???i h????ng v??? ?????c s???c t??? ?????u b???p. Nh?? h??ng ??em l???i th???c kh??ch m???t m??n ??n tuy???t v???i',1,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292299/Java/tom-xao-sa-te_b6foxo.jpg',69000),(21,'B?? s???t ti??u ??en b??nh bao','V???i h????ng v??? ?????c s???c t??? ?????u b???p. Nh?? h??ng ??em l???i th???c kh??ch m???t m??n ??n tuy???t v???i',2,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292247/Java/bo-sot-tieu_g6fido.jpg',70000),(22,'C?? ??i??u h???ng chi??n ho??ng b??o','V???i h????ng v??? ?????c s???c t??? ?????u b???p. Nh?? h??ng ??em l???i th???c kh??ch m???t m??n ??n tuy???t v???i',2,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292247/Java/ca-dieu-hong-chien-xu_dcp1ke.jpg',56000),(23,'Canh v???n th???n t??m t????i','V???i h????ng v??? ?????c s???c t??? ?????u b???p. Nh?? h??ng ??em l???i th???c kh??ch m???t m??n ??n tuy???t v???i',2,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292247/Java/canh-van-than-tom_hkb4jf.jpg',34000),(24,'X??i c???m v???i d???a n???o','V???i h????ng v??? ?????c s???c t??? ?????u b???p. Nh?? h??ng ??em l???i th???c kh??ch m???t m??n ??n tuy???t v???i',3,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292299/Java/xoi-com-dua-nao_padjls.jpg',85000),(25,'S??p g?? ng?? n???m','V???i h????ng v??? ?????c s???c t??? ?????u b???p. Nh?? h??ng ??em l???i th???c kh??ch m???t m??n ??n tuy???t v???i',3,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292298/Java/sup-ga-nam-ngon-7_ckgehc.jpg',35000),(26,'N???m su h??o b???p b?? x?? x??u','V???i h????ng v??? ?????c s???c t??? ?????u b???p. Nh?? h??ng ??em l???i th???c kh??ch m???t m??n ??n tuy???t v???i',1,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292297/Java/nom-su-hao-bap_phdlp7.jpg',45000),(27,'G?? Cu???n ????t L?? Ph?? Mai','V???i h????ng v??? ?????c s???c t??? ?????u b???p. Nh?? h??ng ??em l???i th???c kh??ch m???t m??n ??n tuy???t v???i',2,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292297/Java/ga-cuon-dut-lo_i0jgt5.jpg',34000),(28,'S?????n Non H???m R?????u Vang ??? B??nh M??','V???i h????ng v??? ?????c s???c t??? ?????u b???p. Nh?? h??ng ??em l???i th???c kh??ch m???t m??n ??n tuy???t v???i',2,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292298/Java/suon-non-ham-ruou_pp4b7q.jpg',75000),(29,'N???m B??o Ng?? X??o D???u H??o','V???i h????ng v??? ?????c s???c t??? ?????u b???p. Nh?? h??ng ??em l???i th???c kh??ch m???t m??n ??n tuy???t v???i',2,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292297/Java/nam-bao-ngu_k3wgmz.jpg',57000),(30,'Rau M??a X???t Tr???ng Mu???i','V???i h????ng v??? ?????c s???c t??? ?????u b???p. Nh?? h??ng ??em l???i th???c kh??ch m???t m??n ??n tuy???t v???i',2,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292298/Java/rau-mua-xot_pe0vhy.jpg',46000),(31,'C??m Chi??n S?? ??i???p','V???i h????ng v??? ?????c s???c t??? ?????u b???p. Nh?? h??ng ??em l???i th???c kh??ch m???t m??n ??n tuy???t v???i',2,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292250/Java/com-chien-so-diep_iovauk.png',86000),(32,'L???u Th??i','V???i h????ng v??? ?????c s???c t??? ?????u b???p. Nh?? h??ng ??em l???i th???c kh??ch m???t m??n ??n tuy???t v???i',2,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292297/Java/lau-thai_mtmnhu.jpg',54000),(33,'M???c ???ng nh???i th???t','V???i h????ng v??? ?????c s???c t??? ?????u b???p. Nh?? h??ng ??em l???i th???c kh??ch m???t m??n ??n tuy???t v???i',1,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292297/Java/muc-nhoi-thit-chien_zqhmo0.jpg',45900),(34,'Ba Ch??? Quay Gi??n ??? B??nh H???i','V???i h????ng v??? ?????c s???c t??? ?????u b???p. Nh?? h??ng ??em l???i th???c kh??ch m???t m??n ??n tuy???t v???i',2,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292247/Java/banh-h%E1%BB%8Fi-heo-quay-recipe-main-photo_lxapdx.jpg',65999),(35,'B?? Tam V????ng ??? B??nh M??','V???i h????ng v??? ?????c s???c t??? ?????u b???p. Nh?? h??ng ??em l???i th???c kh??ch m???t m??n ??n tuy???t v???i',2,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292254/Java/bo-tam-vuong_cgwsle.png',59000),(36,'L???u G?? th??? v?????n','V???i h????ng v??? ?????c s???c t??? ?????u b???p. Nh?? h??ng ??em l???i th???c kh??ch m???t m??n ??n tuy???t v???i',2,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292297/Java/lau-ga-tha-vuon_akhwhd.png',85000),(37,'Ch?? Thanh Long Nha ??am','V???i h????ng v??? ?????c s???c t??? ?????u b???p. Nh?? h??ng ??em l???i th???c kh??ch m???t m??n ??n tuy???t v???i',3,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292248/Java/che-thanh-long_qnnwx3.jpg',80000),(38,'Ch?? T??o ????? H???t Sen','V???i h????ng v??? ?????c s???c t??? ?????u b???p. Nh?? h??ng ??em l???i th???c kh??ch m???t m??n ??n tuy???t v???i',3,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292248/Java/che-tao-do_sefb5m.jpg',89000),(39,'B?????i N??m Roi','V???i h????ng v??? ?????c s???c t??? ?????u b???p. Nh?? h??ng ??em l???i th???c kh??ch m???t m??n ??n tuyV???i h????ng v??? ?????c s???c t??? ?????u b???p. Nh?? h??ng ??em l???i th???c kh??ch m???t m??n ??n tuy???t v???i???t v???i',3,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292247/Java/buoi_s2t8mu.jpg',40000),(40,'D??a H???u','V???i h????ng v??? ?????c s???c t??? ?????u b???p. Nh?? h??ng ??em l???i th???c kh??ch m???t m??n ??n tuy???t v???i',3,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292248/Java/dua-hau_oafmoc.jpg',70000),(41,'Chu???i','V???i h????ng v??? ?????c s???c t??? ?????u b???p. Nh?? h??ng ??em l???i th???c kh??ch m???t m??n ??n tuy???t v???i',3,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292248/Java/chuoi_mpnqun.jpg',50000),(42,'Nho M???','V???i h????ng v??? ?????c s???c t??? ?????u b???p. Nh?? h??ng ??em l???i th???c kh??ch m???t m??n ??n tuy???t v???i`',3,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640292297/Java/nho-my-den_q4yj2h.jpg',20000);
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
INSERT INTO `sanhtiec` VALUES (1,NULL,'Sightly Ruby',300,'18m x 32m',30,'L??m cho kho???nh kh???c tuy???t v???i c???a b???n c??ng nh???ng ng?????i th??n, b???n b?? tr??? th??nh 1 k?? ???c kh?? qu??n s??ng l???p l??nh nh?? ???? Ruby ?????p v?? b?? hi???m. Sightly Ruby ch??nh l?? s??? l???a ch???n th??ch h???p cho quy m?? v???a v???i 30 b??n v?? s???c ch???a ?????n 300 kh??ch. Phong c??ch trang tr?? ?????p theo ki???u sang tr???ng v?? b?? hi???m nh?? ch??nh t??n c???a n??.','2021-04-30',2900000,2700000,3100000,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640229387/Java/sanh-tiec-cuoi19_rjust3.png'),(2,NULL,'Sightly Emerald',350,'18m x 52m',35,'Sightly Emerald l?? s???nh ti???c c?????i c?? l???i ki???n tr??c sang tr???ng, tinh t???, s???nh ???????ng r???ng ???????c trang tr?? ?????c ????o theo nhi???u phong c??ch kh??c nhau, s???nh ph?? h???p v???i nh???ng y??u c???u ??a d???ng c???a uy??n ????ng. Ti???c c?????i c???a b???n d?? l?? truy???n th???ng hay hi???n ?????i, t??? nh??? g???n ???m c??ng ?????n ho??nh tr??ng sang tr???ng s???nh n??y ?????u c?? th??? ????p ???ng m???t c??ch t???t nh???t nh???ng y??u c???u ???y. S???nh t??? ch???c ti???c c?????i Diamond Place lu??n l?? n??i l??u gi??? kho???nh kh???c ?????p ????? nh???t c???a t??nh y??u ????i l???a.','2021-04-25',3100000,2900000,3300000,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640229389/Java/engin-akyurt-i3rFV6ULk-o-unsplash_nutzvj.jpg'),(3,NULL,'Happy Wedding',200,'18m x 25m',20,'V???i h??? th???ng ??m thanh, ??nh s??ng c??ng m??n h??nh led linh ?????ng ??? m???i ti???c s??? l?? ??i???m nh???n tuy???t v???i cho kh??c ca t??nh y??u trong ti???c c?????i c???a b???n, S???nh ti???c c?????i Happy Wedding l?? nh???ng tr???i nghi???m v??? m???t kh??ng gian ti???c c?????i sang tr???ng, tinh t???. S??? s??ng t???o trong kh??u trang tr?? ???? g??p ph???n l??m kh??ch m???i c???m th???y d??? ch???u v?? tho???i m??i h??n. T??? ch???c ti???c c?????i t???i Java Wedding s??? gi??p b???n l??u l???i nh???ng kho???nh kh???c ?????p t???o n??n nh???ng ??i???u tuy???t v???i ????? kh???i ?????u cu???c s???ng l???a ????i ho??n h???o.','2021-07-17',2500000,2300000,2800000,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640229385/Java/sanh-tiec-cuoi-22_ugwgvx.jpg'),(4,NULL,'Unforgettable Time',400,'18m x 36m',40,'L??m cho kho???nh kh???c tuy???t v???i c???a b???n c??ng nh???ng ng?????i th??n, b???n b?? tr??? th??nh 1 k?? ???c kh??ng th??? n??o qu??n, m???t khung c???nh ?????ng l???i nhi???u k?? ???c. Unforgettable Time ch??nh l?? s??? l???a ch???n th??ch h???p cho quy m?? l???n v???i 40 b??n v?? s???c ch???a ?????n 400 kh??ch. Phong c??ch trang tr?? ?????p theo ki???u sang tr???ng, s??ng s???a v?? ?????c l??? khi???n ai c??ng ph???i kh???c v??o t??m tr?? - kh??ng th??? qu??n d??? d??ng ???????c.','2021-06-14',3500000,3200000,3700000,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640229385/Java/sanh-tiec-cuoi-25_bxwilf.png'),(5,NULL,'Diamond Moment',500,'20m x 60m',50,'S???nh ti???c c?????i Diamond Moment l?? s???nh ti???c c?? s???c ch???a 150 ??? 300 kh??ch, v?? c??ng ???m c??ng cho c??c ????i uy??n ????ng mu???n c?? m???t kh??ng gian ri??ng bi???t v?? l??ng m???n, ??em l???i nhi???u tr???i nghi???m ng???t ng??o uy??n ????ng ????i l???a. ???? Ruby l?? vi??n ???? c???a t??nh y??u, s??? ??am m??, s??? kh??t khao v?? mang ?????y sinh kh??. Nh?? h??ng t??? ch???c ti???c c?????i Java Wedding mong mu???n s???c m???nh c???a Ruby s??? mang ?????n cho c??c ????i uy??n ????ng m???t t??nh y??u tr???n v???n, m???t s???c h??t m??nh li???t v?? m???t h???nh ph??c vi??n m??n nh???t.','2021-05-26',3900000,3700000,4100000,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640229384/Java/sanh-tiec-cuoi-24_sxtad9.png'),(6,NULL,'Unique Moment',250,'18m x 30m',25,'S???nh ti???c c?????i Unique Moment t???i Diamond Place l?? m???t trong nh???ng s???nh c?????i t?????ng tr??ng cho quy???n l???c v?? qu?? t???c, v???i s???c ch???a l???n, r???ng r??i, tho??ng ????ng. S???nh l???y t??n c???a m???t lo???i ???? qu?? nh???t, Sapphire c??n l?? ???? c???a m??a c?????i, m??a hy v???ng v?? t??nh y??u v???i mong mu???n c??c c???p ????i khi t??? ch???c ti???c c?????i ??? ????y ?????u may m???n, chung th???y, t???o d???ng m???t gia ????nh h???nh ph??c, con ch??u ?????y ????n, vi??n m??n tr???n ?????i. H??y c??ng Java Wedding ghi d???u kho???nh kh???c ?????p c???a cu???c ?????i b???n.','2021-09-17',2700000,2500000,2900000,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640229381/Java/sanh-tiec-cuoi-23_ie6mxu.jpg'),(7,NULL,'Royal Wedding',600,'20m x 80m',60,'S???nh t??? ch???c ti???c c?????i Royal Wedding l?? m???t trong nh???ng s???nh c?????i sang tr???ng nh???t c???a nh?? h??ng ti???c c?????i Java Wedding, v???i s???c ch???a l??n ?????n 150 b??n ti???c, t????ng ??????ng v???i 1.500 kh??ch m???i. Kh??ng gian r??ng r??i ???????c trang b??? ?????y ????? h??? th???ng ??m thanh, ??nh s??ng hi???n ?????i, ??em ?????n s??? tho???i m??i cho nh???ng quan kh??ch khi d??? ti???c, ????p ???ng nhi???u h??nh th???c v?? nhu c???u ?????t ti???c kh??c nhau, ??em ?????n s??? h??i l??ng cho kh??ch m???i xuy??n su???t bu???i ti???c. Java Wedding lu??n b??n b???n trong su???t m??a c?????i.','2021-11-30',4500000,4300000,4700000,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640229387/Java/sanh-tiec-cuoi-20_l7upuq.png'),(8,NULL,'The Best Moment',150,'18m x 18m',15,'S???nh ti???c The best Moment ???????c trang tr?? v???i t??ng m??u ch??? ?????o l?? m??u ????? c???a ???? Ruby v???i mong ?????c s??? mang ?????n s??? may m???n nh???t trong ti???c c?????i c???a nh???ng ????i b???n tr??? trong ng??y tr???ng ?????i c???a m??nh. S???nh t??? ch???c ti???c c?????i ???????c trang b??? h??? th???ng ??m thanh, ??nh s??ng hi???n ?????i, m??n h??nh, m??y chi???u, ???????c thi???t k??? h??i h??a l??m t??ng th??m s??? ho??nh tr??ng c???a s???nh ti???c. Java Wedding kh??ng ch??? mang t???i cho c??c c???p uy??n ????ng m???t kh??ng gian c?????i ???n t?????ng, ?????ng c???p m?? c??n mang t???i m???t ch????ng tr??nh c?????i ?????c ????o, ?????c s???c.','2021-12-21',2200000,2000000,2500000,'https://res.cloudinary.com/dfitghqjh/image/upload/v1640229382/Java/thomas-william-OAVqa8hQvWI-unsplash_zy80cw.jpg');
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
INSERT INTO `thucdon` VALUES (1,'Th???c ????n s??? 1'),(2,'Th???c ????n s??? 2'),(3,'Th???c ????n s??? 3'),(4,'Th???c ????n s??? 4'),(5,'Th???c ????n s??? 5');
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
