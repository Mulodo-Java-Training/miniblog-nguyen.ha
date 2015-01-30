-- phpMyAdmin SQL Dump
-- version 3.5.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 23, 2015 at 03:08 AM
-- Server version: 5.5.29
-- PHP Version: 5.4.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mini_blog_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `Blogs`
--

CREATE TABLE `Blogs` (
  `idBlog` int(11) NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci,
  `author` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`idBlog`),
  KEY `author` (`author`),
  KEY `author_2` (`author`),
  KEY `author_3` (`author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- Dumping data for table `Blogs`
--

INSERT INTO `Blogs` (`idBlog`, `title`, `description`, `author`, `image`, `created_at`, `updated_at`, `status`) VALUES
(1, 'Cho tôi một lý do để ngừng ăn thịt chó', 'Thịt chó từ lâu đã trở thành một đặc sản ở Việt Nam. Gần đây nó trở thành đề tài tranh luận khá gay gắt trên các diễn đàn, và thậm chí một số bạn thuộc hội yêu động vật còn lập hội tẩy chay những người ăn thịt chó. Các bạn tẩy chay là quyền của các bạn thôi, không ai cấm được. Như mình biết, sau khi viết ra bài luận này, một số bạn sẽ hủy kết bạn với mình thôi. Tuy nhiên, lý do mà các bãn đưa ra để tẩy chay thịt chó thì không mấy thuyết phục cho lắm.\r\n\r\nThịt chó hôi. Đó là một trong những lý do nhiều người đưa ra để không ăn thịt chó. Tuy nhiên khi mình hỏi, thế các bạn đã ăn thịt chó chưa mà biết hôi. Tất cả họ đều lắc đầu bảo chưa. Trên thực tế, thịt nào cũng hôi và cá nào cũng tanh. Chế biến thế nào để trở thành đặc sản phụ thuộc vào cách làm của người đầu bếp. Đó là chưa kể xét theo khía cạnh lý thuyết, thịt chó ngon hơn các động vật khác là vì chó là loài động vật ưa chạy nhảy nên thịt săn chắc không nhiều mỡ như heo, bò, trâu.\r\n\r\nMột người bạn khác của mình, rất ghét ăn thịt chó cũng vì bảo thịt chó hôi. Nhưng một lần đám bạn mình mua thịt chó về và bảo đó là thịt nai thì cô bạn ăn ngon lành lại còn tấm tắc khen ngon. Sau khi mình nói đó là thịt chó thì cô mới vội vàng chạy vào bồn cầu móc họng ra ói. Vậy có thật vấn đề là tại thịt chó hôi hay không?', 1, 'http://c1.f21.img.vnecdn.net/2015/01/14/1-4307-1421202738.jpg', 0, 0, 1),
(2, 'Sự thật trần trụi của nghề lương trăm triệu', 'Nếu bạn đã một lần đi trên chuyến bay khi qua vùng thời tiết xấu, chắc còn nhớ cảm giác chòng chành, nghiêng ngả, cái lo lắng đến thót tim, trong khi đầu óc mông lung tưởng tượng ra những điều xấu nhất.\r\n\r\nNếu chỉ bị một vài đêm mất ngủ, bạn sẽ nhớ mãi cái choáng váng, ngất ngây, khi đầu óc quay cuồng đảo lộn - muốn ngủ bù mà không ngủ được. Tôi mà mất ngủ một đêm thì ngày hôm sau không thể làm gì nổi.\r\n\r\nNếu bạn có người thân (vợ, chồng, con cái...) là phi công hoặc tiếp viên, mỗi khi nghe đâu đó có tai nạn máy bay - bạn cuồng lên vì lo âu, sợ hãi, cứ tưởng tai nạn đã đến với người thân của mình.\r\n\r\nCác cụ thường nói: “Ở trong chăn mới biết chăn có rận”. Xin bạn đừng chỉ nhìn các chàng trai cao to, mặc đồng phục có cầu vai đi thành hàng hùng dũng tại các sân bay hoặc các cô tiếp viên áo dài tha thướt với nụ cười tươi rói - rồi nghĩ rằng cuộc đời họ là những chuyến chu du đầy thơ mộng không mang chút ưu phiền. Bạn sẽ nghĩ: “Chứ còn gì nữa, lương cao, được đi khắp nơi trên thế giới, ở khách sạn 4-5 sao, sướng thế còn gì”.', 1, 'http://c1.f21.img.vnecdn.net/2015/01/14/201403271646511-2648-1421248736.jpg', 0, 0, 1),
(3, 'Hai tài năng vẽ tranh Việt gây sốt thế giới', 'Nữ sinh vẽ bức tranh tháp Eiffel bằng bút bi trong 50 giờ\r\n\r\nĐể có được bức tranh vẽ tháp Eiffel bằng bút bi hoàn thiện, chủ nhân của nó là Vũ Thùy Trang (sinh năm 1997) đã phải mất hơn 50 giờ đồng hồ. Thùy Trang đang là học sinh lớp 12, trường Trần Hưng Đạo (Nam Định). Năm 2015, cô gái này có nguyện vọng thi vào ngành Mỹ thuật Công nghiệp hoặc Thiết kế Thời trang của ĐH Mở (Hà Nội) để tiếp tục nuôi dưỡng niềm đam mê sáng tạo hội họa.\r\n\r\nBức tranh kỳ công của Trang sau khi được phát hiện và chia sẻ trên diễn đàn về hội họa đã nhanh chóng nhận được hơn 30.000 lượt like. Bạn bè quốc tế đều trầm trồ thán phục tài năng cũng như sự kiên trì nhẫn nại của cô gái xinh xắn này.', 1, 'http://c1.f21.img.vnecdn.net/2015/01/14/nhung-9x-viet-tai-nang-gay-sot-9056-9358-1421224780.jpg', 0, 0, 1),
(4, 'Tranh thủ nổi loạn khi còn có thể', 'Tôi đặc biệt ấn tượng với cụm từ "thích là nhích" của giới trẻ bây giờ nhưng đồng thời tôi cũng bắt gặp kha khá những ánh mắt lưỡng lự, những suy nghĩ e dè, những quyết tâm nhưng đầy… ngần ngại. Rằng chuyện nhuộm tóc, nên hay không? Xỏ khuyên, liệu có bị người ta đánh giá? Ăn mặc bụi bặm một chút, có bị dị nghị không đây?\r\n\r\nTóm gọn lại, là vấn đề "tôi muốn nổi loạn, nhưng người ta liệu có nói gì không?".\r\n\r\nĐược làm những gì mình thích là đặc quyền của mỗi người nhưng bạn biết rồi đấy, khi sống đến một ngưỡng nào đó trong đời, con người ta không thể thỏa mái, tự do vẫy vùng với những điều mình thích nữa. Nên lúc chưa bị ràng buộc với quy tắc, với những luật lệ này kia, thì tranh thủ nổi loạn đi, khi còn có thể.\r\n\r\nVì rồi sẽ có những ngày bạn nhận ra môi trường công sở không phải là nơi để thử một đường highlight thật màu mè lên tóc. Hoặc dù bạn hành nghề tự do, có chạy loăng quăng ngoài đường suốt ngày đi nữa thì cũng có thể lúc đó, bạn chẳng còn đủ thời gian mà quan tâm xem tóc mình (nên để) màu gì.', 1, 'http://c1.f21.img.vnecdn.net/2015/01/08/399841-555482127836634-1026844-6282-6038-1420730858.jpg', 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Comments`
--

CREATE TABLE `Comments` (
  `idcomment` int(11) NOT NULL AUTO_INCREMENT,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `user` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `code_blog` int(11) NOT NULL,
  `create_time` int(11) NOT NULL,
  `update_time` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idcomment`),
  UNIQUE KEY `idcomment` (`idcomment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`id`, `address`, `created_at`, `email`, `firstname`, `lastname`, `password`, `image`, `status`, `updated_at`, `username`) VALUES
(1, '170 bui dinh tuy F12 Binh Thanh HCM', 0, 'nguyen.ha@mulodo.com', 'Ha', 'Nguyen', '123', 'ha123IMG_6029.JPG', 1, 0, 'ha123');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Blogs`
--
ALTER TABLE `Blogs`
  ADD CONSTRAINT `Blogs_ibfk_1` FOREIGN KEY (`author`) REFERENCES `Users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
