-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: localhost    Database: events
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(80) NOT NULL,
  `fullName` varchar(50) NOT NULL,
  `DoB` varchar(20) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `image` text NOT NULL,
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_edited_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'hai123','hai123','Nguyễn Vũ Hồ Hải','1999-01-01','0835566236','hai@gmail.com','26 nguyễn tri phương','https://scontent.fsgn2-2.fna.fbcdn.net/v/t1.0-9/54798176_2155011671261847_3959002623255773184_n.jpg?_nc_cat=100&_nc_oc=AQnDqt4-xBMrJoIv8m-bqJGWR1FgmDwrO3iDP93RvW1w68AUeQGDbjwOcUKRH7KYCa0&_nc_ht=scontent.fsgn2-2.fna&oh=e5d0d935ca3f1b40359c3b5c0c8bfe3b&oe=5DBF6F2D','2019-07-03 11:46:55','2019-07-03 11:46:55'),(2,'nhat111','nhat111','Ngô Phan Anh Nhật','1999-01-01','0835566236','nhat@gmail.com','26 nguyễn tri phương','https://scontent.fhan2-4.fna.fbcdn.net/v/t1.0-1/46337865_2083486041698122_6445709479852900352_n.jpg?_nc_cat=104&_nc_oc=AQmqrvaYJlzqN5jNr5dMTYhZGoHLqZ5kL3Cut9PN2H19MhVQm_WeHfTP0DpFm7TZ2BI&_nc_ht=scontent.fhan2-4.fna&oh=a3e1ff3744e61b74d56ffc20f94e6e33&oe=5DC2C1F4','2019-07-03 11:46:55','2019-07-03 11:46:55'),(3,'thanhtin','thanhtin123','Trần Thanh Tín','1999-01-01','0835566236','thanhtin123@gmail.com','26 nguyễn tri phương','http://www.pxleyes.com/images/contests/avatar%20wars/fullsize/avatar%20wars_4a5f5b501b376_hires.jpg','2019-07-03 11:46:55','2019-07-03 11:46:55'),(4,'achihoang','hoang123','Nguyễn Đức Thanh Hoàng','1999-01-01','0835566236','achihoang@gmail.com','26 nguyễn tri phương','https://scontent.fsgn2-3.fna.fbcdn.net/v/t1.0-9/36585486_2158466447756128_7622169492595933184_n.jpg?_nc_cat=108&_nc_oc=AQnowvNTSaD-ONJUTAhxQXZtEwacyTN5LGZC2qZs3c_JwakOEum0aDqWRo57eurJA94&_nc_ht=scontent.fsgn2-3.fna&oh=0d3cbcc480bb339dbf2ba083fb3941c8&oe=5DBAAB55','2019-07-03 11:46:55','2019-07-03 11:46:55'),(5,'ducanh','anhken123','Nguyễn Đức Anh','1999-01-01','0835566236','anhken238@gmail.com','26 nguyễn tri phương','https://scontent.fsgn2-2.fna.fbcdn.net/v/t1.0-1/c0.0.580.580a/55244448_2233288523601348_2745591705490161664_n.jpg?_nc_cat=100&_nc_oc=AQlHT-emJY_hiuXtmF313niSeLISgKfY9R45v1u5paj7A3OvpymEYLwU9m0pZhPbeQU&_nc_ht=scontent.fsgn2-2.fna&oh=9eaa1ea6b41756f71e37585dcaf2057f&oe=5DC557DD','2019-07-03 11:46:55','2019-07-03 11:46:55');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_event` varchar(250) NOT NULL,
  `image` text NOT NULL,
  `image_note` varchar(100) NOT NULL,
  `place` varchar(100) NOT NULL,
  `day_organize` datetime NOT NULL,
  `organizer` varchar(50) NOT NULL,
  `introduce` text NOT NULL,
  `detailed_program` text NOT NULL,
  `is_delete` tinyint(1) NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_edited_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `category` varchar(200) NOT NULL,
  `id_Admin` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_Admin` (`id_Admin`),
  CONSTRAINT `event_ibfk_2` FOREIGN KEY (`id_Admin`) REFERENCES `admin` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (1,'Khai trương cửa hàng Mialala 267 Kim Mã','https://rivfconference.files.wordpress.com/2019/05/saigon-south_l_1220px_72dpi.jpg','RMIT Vietnam – SaiGon South Campus','267 Kim Mã','2019-02-22 00:00:00','IEEE, UDN','\"Bờ biển vàng giữa lòng phố Kim Mã ” Muốn có biển xanh có biển xanh. Muốn có cát vàng có cát vàng. Muốn có bóng dừa có bóng dừa. Muốn có phao bơi có phao bơi. Âm thanh sôi động có âm thanh sôi động. Một không gian như ngoài biển, đã có mặt tại phố Kim Mã.','Đi shopping với giá sale, check in sang chảnh với không gian xanh, biển xanh, cát trắng, nắng vàng. Bãi biển thu nhỏ nằm phía ngoài tiền sảnh cho bạn tha hồ check in. Chỉ có ở cửa hàng Mialala.\r\n\r\nSáng ngày 20 tháng 6 năm 2019, cửa hàng Mialala chuyên đồ đi biển dành cho các nàng ở địa chỉ 267 Kim Mã. Được cắt băng khai trương chính thức đi vào hoạt động, khách hàng sẽ vô cùng ấn tượng.\r\n\r\nKhi đến nơi đây, khách hàng vô cùng ấn tượng bởi một lễ khai trương mang đậm không gian biển xanh. Check in sang chảnh với backdrop siêu xinh. Thưởng thức âm nhạc sôi động, cùng nhóm nhảy Flanmenco. Mang lại cho bạn cảm giác, như đang ở giữa biển xanh. Khi đến với không gian khai trương vô cùng ấn tượng tại Mialala. Tất cả đều được Sự kiện Á Châu thực hiện.\r\n\r\nVẫn là địa chỉ 267 Kim Mã nhưng giờ đây là một không gian to, rộng lớn hơn. Với mặt tiền rộng lên tới gần 10m, không gian bên trong được trang trí theo phong cách Princess.  Cùng với tông màu chủ đạo màu hồng, cưc kỳ siêu xinh.\r\n\r\nMialala luôn mong muốn đem lại cho khách hàng trải nghiệm mua sắm tuyệt vời nhất, tươi trẻ nhất, vui vẻ nhất, thoải mái nhất. Và đặc biệt là hài lòng nhất đối với quý khách hàng thân yêu. Dưới đây là những khoảnh khắc khai trương vô cùng ấn tượng của Mialala, được sự kiện Á Châu ghi lại.',0,'2019-07-03 11:46:55','2019-07-08 11:24:00','Cửa hàng',1),(2,'Tổ chức lễ kỷ niệm 15 năm ngày thành lập công ty SABACO HINO','https://rivfconference.files.wordpress.com/2019/05/saigon-south_l_1220px_72dpi.jpg','RMIT Vietnam – SaiGon South Campus','Việt Nam','2019-04-17 00:00:00','IEEE','Lễ kỷ niệm thành lập công ty là một hoạt động sự kiện để đánh dấu chặng đường phát triển của doanh nghiệp. Đồng thời còn là dịp để doanh nghiệp tổng kết lại quá trình hoạt động từ lúc hình thành đến khi phát triển.','Ngoài ra, sự kiện này có là dịp để doanh nghiệp gửi những lời cảm ơn chân thành nhất đến với những nhân viên, những người đã xây dựng, cống hiến hết mình cho doanh nghiệp. Bên cạnh đó, còn gửi lời tri ân sâu sắc đến với những khách hàng.\r\n\r\nĐối tác đã đồng hành cùng doanh nghiệp suốt chặng đường từ lúc hình thành đến khi phát triển vững chắc như hiện nay.\r\n\r\nVừa qua ngày 23 tháng 11  năm 2018 tại khách sạn Intercom Hà Nội Công ty TNHH Ô tô và Thiết bị chuyên dùng Sao Bắc ( SABACO HINO ) doanh nghiệp buôn bán xe ô tô và thiết bị chuyên dùng cho xe ô tô tải Nhật Bản. Đã long trọng tổ chức lễ kỷ niệm 15 năm ngày thành lập công ty.\r\n\r\nVới quan khách tham dự, đối tác khách hàng của doanh nghiệp và toàn thể nhân viên công ty. Sự kiện đã diễn ra thành công tốt đẹp với sự  góp sức không hề nhỏ. Của công ty tổ chức sự kiện Á Châu, đơn vị tổ chức sự kiện quan trọng này cho doanh nghiệp.',0,'2019-07-03 11:46:55','2019-07-08 11:31:41','Công ty',1),(3,'Tổ chức lễ ký kết hợp đồng thuê mặt bằng Vietracimex & CJ CGV Việt Nam','https://rivfconference.files.wordpress.com/2019/05/saigon-south_l_1220px_72dpi.jpg','RMIT Vietnam – SaiGon South Campus','Việt Nam','2019-07-22 00:00:00','IEEE, UDN','Ngày 7 tháng 11 năm 2018 Đã diễn ra lễ ký kết hợp đồng thuê mặt bằng giữa Tổng công ty cổ phần xây dựng thương mại (Vietracimex) với Công ty TNHH CJ CGV Việt Nam, xây dựng hệ thống giải trí tiện ích, giải trí hiện đại tại Hinode City Minh Khai. Đơn vị thực hiện tổ chức lễ ký kết hợp đồng: Công ty tổ chức sự kiện Á Châu ” Á Châu Event ”.','Hinode City là dự án căn hộ cao cấp thu hút khách hàng ở khu vực phía nam Hà Nội, với 60 tiện ích dịch vụ trong nội khu, được thiết kế xây dựng theo chuẩn phong cách Nhật Bản.Tại dự án này, các tiện ích giải trí, giáo dục, thể thao, giao thông, cảnh quan… đều được đầu tư đồng bộ, đa dạng gắn liền với định hướng về một môi trường phát triển tối ưu cho thế hệ tương lai.\r\n\r\nBuổi lễ ký kết hợp đồng giữa hai bên đã diễn thành công tốt đẹp, bản hợp đồng này mang lại những giá trị cao về nhu cầu giải trí của dân cư nơi đây. Đơn vị tổ chức lễ ký kết hợp đồng: Công ty tổ chức sự kiện Á Châu.',0,'2019-07-03 11:46:55','2019-07-08 11:33:03','Hội thảo',1),(4,'Tổ chức lễ ký kết hợp đồng hợp tác dự án Samsora Riverside','https://rivfconference.files.wordpress.com/2019/05/saigon-south_l_1220px_72dpi.jpg','Đại diện phía công ty Samland cho biết sẽ tiếp tục và đẩy mạnh phát triển dòng sản phẩm Samsora','Bình Dương','2019-09-17 00:00:00','IEEE, UDN','Sáng ngày 30/5/2018 vừa qua, tại nhà mẫu Samsora Riverside ở Dĩ An Tỉnh Bình Dương đơn vị phát triển dự án Samland và Phục Hưng Holdings đã ký kết thành công hợp đồng thi công Block A cho dự án Samsora Riverside. Đóng góp nên thành công của buổi lễ ký kết hợp đồng dự án này, có một phần công sức không hề nhỏ của công ty tổ chức sự kiện Á Châu đơn vị tổ chức lễ ký kết hợp đồng cho dự án này.','Dự án này với vị trí đắc địa thuận tiện đi lại cho dân cư sống ở đây, hạ tầng giao thông phát triển. Nằm ngay trên trạm dựng tuyến Metro số 1 Bến Thành – Suối Tiên, nơi có hệ thống giao thông, thông thoáng. Thêm vào đó, dự án Samsora Riverside  với phong cách thiết kế kiến trúc hiện đại, tối giản theo phong cách Nhật Bản, tầm nhìn bao quát, đáp ứng mọi nhu cầu sinh hoạt cho gia đình cư dân. Samsora Riverside hứa hẹn sẽ là dự án đáng mong chờ trong thời gian tới đây.\r\n\r\nBên cạnh đó, đơn vị SAMLAND cho biết sẽ tiếp tục phát triển dòng sản phẩm chiến lược SAMSORA là dòng sản phẩm theo phong cách Nhật Bản với sự tập trung phát triển phân khúc căn hộ có giá trung bình và trung bình khá, đồng bộ hạ tầng kỹ thuật, xã hội, tiện ích nhắm tới các gia đình trẻ, qui mô nhỏ, đòi hỏi tiện nghi và ngân sách hợp lý.\r\n\r\nBuổi lễ tổ chức lễ ký kết hợp đồng đã diễn ra thành công tốt đẹp, góp một phần không hề nhỏ đem lại thành công đó. Đó là công ty tổ chức sự kiện Á Châu, đơn vị tổ chức lễ ký kết hợp đồng cho dự án này.',0,'2019-07-03 11:46:55','2019-07-08 11:34:33','Hội thảo',1),(5,'Sự kiện Vinataba Symphony','https://rivfconference.files.wordpress.com/2019/05/saigon-south_l_1220px_72dpi.jpg','Sự kết hợp hoàn hảo giữa ca sĩ và dàn giao hưởng mở màn khai mạc cho sự kiện','Việt Nam','2019-09-25 00:00:00','IEEE, UDN','Sự kiện Vinataba Symphony đánh dấu màn chào sân của chúng tôi.','Xin trân trọng cảm ơn: – Âm nhạc: GDAN Sơn Thạch\r\nNhạc trưởng Nguyễn khắc Thanh, ngôi sao đêm nhạc Dương Hoàng Yến và 33 nghệ sỹ của dàn giao hưởng Quốc gia Việt Nam.\r\n– Hai MC vô cùng dễ thương Mai-Trang Bùi và MC Vũ Mạnh Tùng.\r\n– Visual Artist: Quang Nguyễn – Photo: Tuấn Đào. \r\n– Camera team: Star Media. Qp Nguyễn – Âm thanh ánh sáng Hoàng Long.\r\nMột lần nữa, Kịch bản và điều phối chương trình: Sự kiện Á Châu – những con người không dám tag tên.',0,'2019-07-03 11:46:55','2019-07-08 11:36:21','Âm nhạc',1),(6,'Event khai trương chi nhánh Incanto Hunter Douglas tại Tp Hồ Chí Minh','https://rivfconference.files.wordpress.com/2019/05/saigon-south_l_1220px_72dpi.jpg','PG lễ tân cúi chào quan khách tham dự sự kiện của Incanto tại Tp HCM','TP HCM','2019-02-22 00:00:00','IEEE, UDN','Sự kiện khai trương chi nhánh tại Tp HCM do Incanto tổ chức được diễn vào tối ngày 10 tháng 12 năm 2018 với những nhân sự, thiết bị tổ chức sự kiện, vũ đoàn, nhóm nhảy, đến từ công ty tổ chức sự kiện Á Châu.','Tại buổi lễ ra mắt chi nhánh tại Tp Hồ chí Minh, thương hiệu rèm cửa Incanto đã chính thức tuyên bố trở thành nhà độc quyền sản phẩm rèm cửa thương hiệu rèm số một thế giới Hunter Douglas. Dưới đây là tổng hợp những hình ảnh tại đêm tiệc event grand oppening ngoài trời, do nhiếp ảnh gia của sự kiện Á Châu ghi lại.\r\n\r\nTại buổi lễ ra mắt chi nhánh tại Tp Hồ chí Minh, thương hiệu rèm cửa Incanto đã chính thức tuyên bố trở thành nhà độc quyền sản phẩm rèm cửa thương hiệu rèm số một thế giới Hunter Douglas. Dưới đây là tổng hợp những hình ảnh tại đêm tiệc event grand oppening ngoài trời, do nhiếp ảnh gia của sự kiện Á Châu ghi lại.',0,'2019-07-03 11:46:55','2019-07-08 11:37:37','Hội thảo',1),(7,'Lễ động thổ AEONMALL Hà Đông','https://rivfconference.files.wordpress.com/2019/05/saigon-south_l_1220px_72dpi.jpg','Chuẩn bị các thiết bị cần thiết cho Lễ động thổ AEONMALL Hà Đông','Hà Đông','2019-02-22 00:00:00','IEEE, UDN','Lễ động thổ trung tâm thương mại AeonMall Hà Động đã chính thức diễn ra sáng ngày 11 tháng 3 tại Quận Hà Đông. Đến tham dự gồm những quan khách cấp cao và quan khách chính quyền địa phương nơi diễn ra dự án.','Cùng song hành với diễn ra lễ động thổ, chuẩn bị dụng cụ, nhân sự là những PG tham gia buổi lễ cùng với quan khách đến từ công ty sự kiện Á Châu. Một số hình ảnh từ buổi lễ:\r\n\r\nCùng song hành với diễn ra lễ động thổ, chuẩn bị dụng cụ, nhân sự là những PG tham gia buổi lễ cùng với quan khách đến từ công ty sự kiện Á Châu. Một số hình ảnh từ buổi lễ:\r\n\r\nCùng song hành với diễn ra lễ động thổ, chuẩn bị dụng cụ, nhân sự là những PG tham gia buổi lễ cùng với quan khách đến từ công ty sự kiện Á Châu. Một số hình ảnh từ buổi lễ:',0,'2019-07-03 11:46:55','2019-07-08 11:39:03','Hội thảo',1),(8,'Roadshow nhà hàng Nhất Cháo','https://rivfconference.files.wordpress.com/2019/05/saigon-south_l_1220px_72dpi.jpg','PG của Á Châu tại Roadshow nhà hàng Nhất Cháo','Việt Nam','2019-08-22 00:00:00','IEEE, UDN','Nhà hàng Nhất Cháo tổ chức RoadShow, vòng quanh những khu vực đông khu dân cư cũng như các con đường nơi dân cư qua lại đông đúc. Nhằm quảng bá tên thương hiệu của mình đến với các thực khách. Với sự quảng bá rầm rộ bằng hình thức RoadShow, do công ty tổ chức sự kiện Á Châu tư vấn cho nhà hàng, khoảng sau một tuần thực khách đã kéo đến nhà hàng rất đông để thưởng thức.','Nhà hàng Nhất Cháo tổ chức RoadShow, vòng quanh những khu vực đông khu dân cư cũng như các con đường nơi dân cư qua lại đông đúc. Nhằm quảng bá tên thương hiệu của mình đến với các thực khách. Với sự quảng bá rầm rộ bằng hình thức RoadShow, do công ty tổ chức sự kiện Á Châu tư vấn cho nhà hàng, khoảng sau một tuần thực khách đã kéo đến nhà hàng rất đông để thưởng thức.\r\n\r\nNhà hàng Nhất Cháo tổ chức RoadShow, vòng quanh những khu vực đông khu dân cư cũng như các con đường nơi dân cư qua lại đông đúc. Nhằm quảng bá tên thương hiệu của mình đến với các thực khách. Với sự quảng bá rầm rộ bằng hình thức RoadShow, do công ty tổ chức sự kiện Á Châu tư vấn cho nhà hàng, khoảng sau một tuần thực khách đã kéo đến nhà hàng rất đông để thưởng thức.\r\n\r\nNhà hàng Nhất Cháo tổ chức RoadShow, vòng quanh những khu vực đông khu dân cư cũng như các con đường nơi dân cư qua lại đông đúc. Nhằm quảng bá tên thương hiệu của mình đến với các thực khách. Với sự quảng bá rầm rộ bằng hình thức RoadShow, do công ty tổ chức sự kiện Á Châu tư vấn cho nhà hàng, khoảng sau một tuần thực khách đã kéo đến nhà hàng rất đông để thưởng thức.',0,'2019-07-03 11:46:55','2019-07-08 11:40:22','Nhà hàng',1),(9,'Hội nghị khách hàng Điện Lạnh Hòa Phát','https://rivfconference.files.wordpress.com/2019/05/saigon-south_l_1220px_72dpi.jpg','Nhóm nhạc trình diễn tại Hội nghị khách hàng Điện Lạnh Hòa Phát','Việt Nam','2019-08-22 00:00:00','IEEE, UDN','Trong không khí đầu xuân năm mới, Điện lạnh Hòa Phát đã tổ chức hội nghị khách hàng nhằm tạo một không khí ấm áp ngày xuân đầy tình cảm bằng những ca khúc nhạc mang đậm tràn không khí đầu xuân mới. Những bài biên đạo múa đẹp mắt và sức công phu đến từ nhóm múa, ban nhạc, ca sĩ của công ty tổ chức sự kiện Á Châu. Một số hình ảnh:','Trong không khí đầu xuân năm mới, Điện lạnh Hòa Phát đã tổ chức hội nghị khách hàng nhằm tạo một không khí ấm áp ngày xuân đầy tình cảm bằng những ca khúc nhạc mang đậm tràn không khí đầu xuân mới. Những bài biên đạo múa đẹp mắt và sức công phu đến từ nhóm múa, ban nhạc, ca sĩ của công ty tổ chức sự kiện Á Châu. Một số hình ảnh:\r\n\r\nTrong không khí đầu xuân năm mới, Điện lạnh Hòa Phát đã tổ chức hội nghị khách hàng nhằm tạo một không khí ấm áp ngày xuân đầy tình cảm bằng những ca khúc nhạc mang đậm tràn không khí đầu xuân mới. Những bài biên đạo múa đẹp mắt và sức công phu đến từ nhóm múa, ban nhạc, ca sĩ của công ty tổ chức sự kiện Á Châu. Một số hình ảnh:\r\n\r\nTrong không khí đầu xuân năm mới, Điện lạnh Hòa Phát đã tổ chức hội nghị khách hàng nhằm tạo một không khí ấm áp ngày xuân đầy tình cảm bằng những ca khúc nhạc mang đậm tràn không khí đầu xuân mới. Những bài biên đạo múa đẹp mắt và sức công phu đến từ nhóm múa, ban nhạc, ca sĩ của công ty tổ chức sự kiện Á Châu. Một số hình ảnh:',0,'2019-07-03 11:46:55','2019-07-08 11:41:50','Âm nhạc',1),(10,'Các sự kiện ra mắt phim','https://rivfconference.files.wordpress.com/2019/05/saigon-south_l_1220px_72dpi.jpg','PG, PB tại sự kiện ra mắt phim Kẻ cắp mặt trăng 3','Việt Nam','2019-08-22 00:00:00','IEEE, UDN','Tại các sự kiện ra mắt những bộ phim bom tấn hàng đầu thế giới không thể thiếu dàn PG, PB hóa thân thành các nhân vật nổi tiếng trong phim. Tổng hợp những hình ảnh PG, PB trong các sự kiện ra mắt phim mà công ty tổ chức sự kiện Á Châu đã ghi lại tại các sự kiện của quý khách hàng trên toàn quốc trong năm.','Tại các sự kiện ra mắt những bộ phim bom tấn hàng đầu thế giới không thể thiếu dàn PG, PB hóa thân thành các nhân vật nổi tiếng trong phim. Tổng hợp những hình ảnh PG, PB trong các sự kiện ra mắt phim mà công ty tổ chức sự kiện Á Châu đã ghi lại tại các sự kiện của quý khách hàng trên toàn quốc trong năm.\r\n\r\nTại các sự kiện ra mắt những bộ phim bom tấn hàng đầu thế giới không thể thiếu dàn PG, PB hóa thân thành các nhân vật nổi tiếng trong phim. Tổng hợp những hình ảnh PG, PB trong các sự kiện ra mắt phim mà công ty tổ chức sự kiện Á Châu đã ghi lại tại các sự kiện của quý khách hàng trên toàn quốc trong năm.',0,'2019-07-03 11:46:55','2019-07-08 11:43:07','Phim ảnh',1),(11,'Gala Dinner vững bước dẫn đầu','https://rivfconference.files.wordpress.com/2019/05/saigon-south_l_1220px_72dpi.jpg','MC chuyên nghiệp tại Gala Dinner vững bước dẫn đầu','Việt Nam','2019-08-22 00:00:00','IEEE, UDN','Gala dinner vững bước dẫn đầu của công ty Vĩnh Tường, sự kiện diễn ra như một lễ tri ân cảm ơn những thành viên trong công ty trong một năm đã đồng hành và đưa những thành tích về với công ty.',' Đồng thời, bước sang năm mới với mong muốn các thành viên trong công ty cùng nhau đưa thật nhiều thành tích hơn nhiều thành quả mới hơn. Đến với sự kiện này, có những ca sĩ, MC sự kiện của công ty tổ chức sự kiện Á Châu thực hiện chương trình.\r\n\r\n Đồng thời, bước sang năm mới với mong muốn các thành viên trong công ty cùng nhau đưa thật nhiều thành tích hơn nhiều thành quả mới hơn. Đến với sự kiện này, có những ca sĩ, MC sự kiện của công ty tổ chức sự kiện Á Châu thực hiện chương trình.\r\n\r\n Đồng thời, bước sang năm mới với mong muốn các thành viên trong công ty cùng nhau đưa thật nhiều thành tích hơn nhiều thành quả mới hơn. Đến với sự kiện này, có những ca sĩ, MC sự kiện của công ty tổ chức sự kiện Á Châu thực hiện chương trình.',0,'2019-07-03 11:46:55','2019-07-08 11:44:15','Âm nhạc',1),(12,'Lễ giới thiệu dự án FLC ECO Charm','https://rivfconference.files.wordpress.com/2019/05/saigon-south_l_1220px_72dpi.jpg','Lễ giới thiệu dự án FLC ECO Charm','Da Nang, Vietnam.','2019-08-22 00:00:00','IEEE, UDN','Vừa qua tại TP Đà Nẵng, đã diễn ra lễ giới thiệu dự án FLC ECO CHARM của tập đoàn FLC. Buổi lễ giới thiệu dự án quy mô thành phố dưới lòng đất. Tham gia buổi lễ ra mắt giới thiệu dự án nhiều quan khách cấp cao trong và ngoài TP Đà Nẵng. ','Buổi lễ diễn ra thành công tốt đẹp, với những tiết mục biểu diễn nghệ thuật đặc sắc. Đến từ những ca sĩ, vũ đoàn, nhóm trống đến từ công ty tổ chức sự kiện Á Châu.\r\n\r\nBuổi lễ diễn ra thành công tốt đẹp, với những tiết mục biểu diễn nghệ thuật đặc sắc. Đến từ những ca sĩ, vũ đoàn, nhóm trống đến từ công ty tổ chức sự kiện Á Châu.\r\n\r\nBuổi lễ diễn ra thành công tốt đẹp, với những tiết mục biểu diễn nghệ thuật đặc sắc. Đến từ những ca sĩ, vũ đoàn, nhóm trống đến từ công ty tổ chức sự kiện Á Châu.',0,'2019-07-03 11:46:55','2019-07-08 11:46:04','Hội thảo',1),(13,'Sự kiện Motor Show đã tổ chức','https://rivfconference.files.wordpress.com/2019/05/saigon-south_l_1220px_72dpi.jpg','Sự kiện Motor Show đã tổ chức','Việt Nam','2019-08-22 00:00:00','IEEE, UDN','Tổng hợp những hình ảnh người mẫu ở các sự kiện Motor Show, của công ty tổ chức sự kiện Á Châu.','Tổng hợp những hình ảnh người mẫu ở các sự kiện Motor Show, của công ty tổ chức sự kiện Á Châu. Tổng hợp những hình ảnh người mẫu ở các sự kiện Motor Show, của công ty tổ chức sự kiện Á Châu. Tổng hợp những hình ảnh người mẫu ở các sự kiện Motor Show, của công ty tổ chức sự kiện Á Châu.\r\n\r\nTổng hợp những hình ảnh người mẫu ở các sự kiện Motor Show, của công ty tổ chức sự kiện Á Châu. Tổng hợp những hình ảnh người mẫu ở các sự kiện Motor Show, của công ty tổ chức sự kiện Á Châu. Tổng hợp những hình ảnh người mẫu ở các sự kiện Motor Show, của công ty tổ chức sự kiện Á Châu.',0,'2019-07-03 11:46:55','2019-07-08 11:47:14','Motor',1),(14,'Nhân tượng trong các chương trình của sự kiện Á Châu','https://rivfconference.files.wordpress.com/2019/05/saigon-south_l_1220px_72dpi.jpg','Nhân tượng trong các chương trình của sự kiện Á Châu','Việt Nam','2019-08-22 00:00:00','IEEE, UDN','Vẽ nhân tượng là loại hình nghệ thuật kết hợp giữa màu bột pha, keo và nước để vẽ trực tiếp trên cơ thể người ( một nhánh của nghệ thuật body art).','Thời gian gần đây Body painting không còn xa lạ trong giới trẻ và chúng ta có thể dễ dàng bắt gặp trong môn nghệ thuật này trong các chương trình sự kiện trong và ngoài nước. Dưới đây là những hình ảnh nhân tượng, boydypanting sự kiện mà công ty tổ chức sự kiện Á Châu đã thực hiện.\r\n\r\nThời gian gần đây Body painting không còn xa lạ trong giới trẻ và chúng ta có thể dễ dàng bắt gặp trong môn nghệ thuật này trong các chương trình sự kiện trong và ngoài nước. Dưới đây là những hình ảnh nhân tượng, boydypanting sự kiện mà công ty tổ chức sự kiện Á Châu đã thực hiện.\r\n\r\nThời gian gần đây Body painting không còn xa lạ trong giới trẻ và chúng ta có thể dễ dàng bắt gặp trong môn nghệ thuật này trong các chương trình sự kiện trong và ngoài nước. Dưới đây là những hình ảnh nhân tượng, boydypanting sự kiện mà công ty tổ chức sự kiện Á Châu đã thực hiện.',0,'2019-07-03 11:46:55','2019-07-08 11:49:17','Phim ảnh',1),(15,'Ca sĩ nhạc đỏ trong các sự kiện của Á Châu','https://rivfconference.files.wordpress.com/2019/05/saigon-south_l_1220px_72dpi.jpg','Ca sĩ nhạc đỏ trong các sự kiện của Á Châu','Việt Nam','2019-08-22 00:00:00','IEEE, UDN','Với những chương trình sự kiện được tổ chức như tổ chức hội nghị khách hàng, hội thảo những đêm nhạc cho tiệc tri ân khách hàng thì hầu hết quan khách tham dự thuộc nhiều lứa tuổi khác nhau.','Thế nên việc lựa chọn ca sĩ dòng nhạc nào cho sự kiện chương trình của mình một cách phù hợp là rất khó. Nhưng khi quý khách hàng gặp công ty tổ chức sự kiện Á Châu thì không có gì là khó cả, mọi khách hàng khó tính đều phải gật đầu trước những dịch vụ sự kiện của Á Châu. Còn sau đây là những hình ảnh ca sĩ nhạc đỏ hát sự kiện:\r\n\r\nThế nên việc lựa chọn ca sĩ dòng nhạc nào cho sự kiện chương trình của mình một cách phù hợp là rất khó. Nhưng khi quý khách hàng gặp công ty tổ chức sự kiện Á Châu thì không có gì là khó cả, mọi khách hàng khó tính đều phải gật đầu trước những dịch vụ sự kiện của Á Châu. Còn sau đây là những hình ảnh ca sĩ nhạc đỏ hát sự kiện:\r\n\r\nThế nên việc lựa chọn ca sĩ dòng nhạc nào cho sự kiện chương trình của mình một cách phù hợp là rất khó. Nhưng khi quý khách hàng gặp công ty tổ chức sự kiện Á Châu thì không có gì là khó cả, mọi khách hàng khó tính đều phải gật đầu trước những dịch vụ sự kiện của Á Châu. Còn sau đây là những hình ảnh ca sĩ nhạc đỏ hát sự kiện:',0,'2019-07-03 11:46:55','2019-07-08 11:50:32','Âm nhạc',1),(16,'Nhóm múa dân gian múa trong các sự kiện của Á Châu','https://rivfconference.files.wordpress.com/2019/05/saigon-south_l_1220px_72dpi.jpg','Múa trong các sự kiện của Á Châu','Việt Nam','2019-08-22 00:00:00','IEEE, UDN','Múa dân gian là một nghệ thuật từ xa xưa để lại cho đến tận ngày nay, múa dân gian có nhiều làn điệu múa khác nhau.','Từ xa xưa múa dân gian, đã trở thành một món ăn văn hóa tinh thần của người phương đông chúng ta. Xuất hiện ở các lễ hội từ những đình làng miếu đền, đến những bài múa dân gian tiến vua. Và đến tận bây giờ múa dân gian còn được thịnh hành và lưu truyền khi các công ty tổ chức sự kiện đào tạo phát triển nhóm múa dân gian nhằm phục ở các sự kiện.\r\n\r\nTừ xa xưa múa dân gian, đã trở thành một món ăn văn hóa tinh thần của người phương đông chúng ta. Xuất hiện ở các lễ hội từ những đình làng miếu đền, đến những bài múa dân gian tiến vua. Và đến tận bây giờ múa dân gian còn được thịnh hành và lưu truyền khi các công ty tổ chức sự kiện đào tạo phát triển nhóm múa dân gian nhằm phục ở các sự kiện.',0,'2019-07-03 11:46:55','2019-07-08 11:51:54','Âm nhạc',1);
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `registrationdetail`
--

DROP TABLE IF EXISTS `registrationdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `registrationdetail` (
  `id_subscriber` int(11) NOT NULL,
  `id_event` int(11) NOT NULL,
  `time_registration` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `content_registration` varchar(250) NOT NULL,
  PRIMARY KEY (`id_event`,`id_subscriber`),
  KEY `id_subscriber` (`id_subscriber`),
  CONSTRAINT `registrationdetail_ibfk_1` FOREIGN KEY (`id_event`) REFERENCES `event` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `registrationdetail_ibfk_2` FOREIGN KEY (`id_subscriber`) REFERENCES `subscriber` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `registrationdetail`
--

LOCK TABLES `registrationdetail` WRITE;
/*!40000 ALTER TABLE `registrationdetail` DISABLE KEYS */;
INSERT INTO `registrationdetail` VALUES (1,1,'2019-07-03 00:00:00','note'),(2,1,'2019-07-03 00:00:00','note'),(3,1,'2019-07-03 00:00:00','note'),(4,1,'2019-07-03 00:00:00','note'),(5,1,'2019-07-03 00:00:00','note'),(1,2,'2019-07-03 00:00:00','note'),(2,2,'2019-07-03 00:00:00','note'),(3,2,'2019-07-03 00:00:00','note'),(4,2,'2019-07-03 00:00:00','note'),(5,2,'2019-07-03 00:00:00','note'),(1,3,'2019-07-03 00:00:00','note'),(2,3,'2019-07-03 00:00:00','note'),(3,3,'2019-07-03 00:00:00','note'),(4,3,'2019-07-03 00:00:00','note'),(5,3,'2019-07-03 00:00:00','note'),(6,3,'2019-07-03 00:00:00','note'),(8,3,'2019-07-07 07:32:10','123'),(9,3,'2019-07-07 11:41:29','123'),(8,8,'2019-07-07 07:35:07','123'),(10,8,'2019-07-08 13:31:35','Tui sẽ tham gia');
/*!40000 ALTER TABLE `registrationdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscriber`
--

DROP TABLE IF EXISTS `subscriber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `subscriber` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fullName` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `address` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscriber`
--

LOCK TABLES `subscriber` WRITE;
/*!40000 ALTER TABLE `subscriber` DISABLE KEYS */;
INSERT INTO `subscriber` VALUES (1,'Nguyễn Văn Hải Đức','haiduc1120@gmail.com','0834821540','Huế'),(2,'Lê Tường Phúc','phuc.le@codegym.vn','0834821540','Huế'),(3,'Lê Quốc Khánh','khanh.le@codegym.vn','0834821540','Huế'),(4,'Phạm Văn Hoài Phụng','hoaiphungcntt@gmail.com','0834821540','Huế'),(5,'Nguyễn Duy Tài','nguyenduytai945@gmail.com','0834821540','Huế'),(6,'Ngô Phan ANh Nhật','nhatnpa2508@gmail.com','0834821540','Huế'),(7,'nhat','nhat@gmail.com','0123456789','Hue'),(8,'nhat','nhat2508@gmail.com','0123456789','hue'),(9,'123','Topds110@gmail.com','123456789','123'),(10,'Hai Nguyen','nguyenvuhohai@gmail.com','0788563350','Huế');
/*!40000 ALTER TABLE `subscriber` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-07-08 14:01:22
