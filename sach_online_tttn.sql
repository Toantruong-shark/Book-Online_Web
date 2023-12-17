-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 20, 2023 lúc 11:04 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `sach_online_tttn`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `link_banner` text NOT NULL,
  `key` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `banner`
--

INSERT INTO `banner` (`id`, `link_banner`, `key`) VALUES
(3, 'https://res.cloudinary.com/dyd7dxaeh/image/upload/v1699879123/sach_online/sqqk4uxjhw9nid7yc2q2.jpg', 'sach_online/sqqk4uxjhw9nid7yc2q2'),
(5, 'https://res.cloudinary.com/dyd7dxaeh/image/upload/v1699879293/sach_online/fqcavsj05qf2t2qj7j57.png', 'sach_online/fqcavsj05qf2t2qj7j57'),
(6, 'https://res.cloudinary.com/dyd7dxaeh/image/upload/v1699879306/sach_online/wo9sgojyw5xtyuj8to7q.jpg', 'sach_online/wo9sgojyw5xtyuj8to7q');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(200) NOT NULL,
  `author` varchar(100) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `description` text DEFAULT NULL,
  `date` date DEFAULT current_timestamp(),
  `category_id` int(11) NOT NULL,
  `quantity_remaining` int(11) NOT NULL,
  `quantity_sold` int(11) NOT NULL DEFAULT 0,
  `img_main_id` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT 0,
  `isDelete` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `books`
--

INSERT INTO `books` (`id`, `title`, `author`, `price`, `description`, `date`, `category_id`, `quantity_remaining`, `quantity_sold`, `img_main_id`, `rating`, `isDelete`) VALUES
(1, ' Thay Đổi Cuộc Sống Với Nhân Số Học', 'Lê Đỗ Quỳnh Hương', 150000, 'Cuốn sách Thay đổi cuộc sống với Nhân số học là tác phẩm được chị Lê Đỗ Quỳnh Hương phát triển từ tác phẩm gốc “The Complete Book of Numerology” của tiến sỹ David A. Phillips, khiến bộ môn Nhân số học khởi nguồn từ nhà toán học Pythagoras trở nên gần gũi, dễ hiểu hơn với độc giả Việt Nam.\r\nĐầu năm 2020, chuỗi chương trình “Thay đổi cuộc sống với Nhân số học” của  biên tập viên, người dẫn chương trình quen thuộc tại Việt Nam Lê Đỗ Quỳnh Hương ra đời trên Youtube, với mục đích chia sẻ kiến thức, giúp mọi người tìm hiểu và phát triển, hoàn thiện bản thân, các mối quan hệ xã hội thông qua bộ môn Nhân số học. Chương trình đã nhận được sự yêu mến và phản hồi tích cực của rất nhiều khán giả và độc giả sau mỗi tập phát sóng.', '2023-11-13', 6, 18, 2, 1, 5, 0),
(2, 'Thao Túng Tâm Lý', 'Shannon Thomas, LCSW', 135000, 'Trong cuốn “Thao túng tâm lý”, tác giả Shannon Thomas giới thiệu đến độc giả những hiểu biết liên quan đến thao túng tâm lý và lạm dụng tiềm ẩn. \r\n“Thao Túng tâm lý” là một dạng của lạm dụng tâm lý. Cũng giống như lạm dụng tâm lý, thao túng tâm lý có thể xuất hiện ở bất kỳ môi trường nào, từ bất cứ đối tượng độc hại nào. Đó có thể là bố mẹ ruột, anh chị em ruột, người yêu, vợ hoặc chồng, sếp hay đồng nghiệp… của bạn. Với tính chất bí hiểm, âm thầm gây hại, thao túng, lạm dụng tâm lý làm tổn thương cảm xúc, lòng tự trọng, cuộc sống của mỗi nạn nhân. Những người từng bị lạm dụng tâm lý thường không thể miêu tả rõ ràng điều gì đã xảy ra với mình. Trong nhiều trường hợp, nạn nhân bị thao túng đến mức tự hỏi có phải họ là người có lỗi, thậm chí họ có phải là người độc hại trong mối quan hệ đó.', '2023-11-19', 6, 18, 2, 3, 5, 0),
(3, 'Nóng Giận Là Bản Năng, Tĩnh Lặng Là Bản Lĩnh (Tái Bản 2020)', 'Tống Mặc', 71000, ' Sai lầm lớn nhất của chúng ta là đem những tật xấu, những cảm xúc tiêu cực trút bỏ lên những người xung quanh, càng là người thân càng dễ gây thương tổn.\r\nCái gì cũng nói toạc ra, cái gì cũng bộc lộ hết không phải là thẳng tính, mà là thiếu bản lĩnh. Suy cho cùng, tất cả những cảm xúc tiêu cực của con người đều là sự phẫn nộ dành cho bất lực của bản thân. Nếu bạn đúng, bạn không cần phải nổi giận. Nếu bạn sai, bạn không có tư cách nổi giận.', '2023-11-20', 6, 13, 7, 5, 5, 0),
(4, 'Người Giàu Có Nhất Thành Babylon', 'George S Clason', 78000, 'Trước mắt bạn, tương lai đang trải rộng con đường dẫn tới những miền đất xa xôi đầy hứa hẹn. Trên con đường đó, bạn háo hức, mong muốn thực hiện nhiều ước mơ, dự định, khát khao… của riêng mình.\r\nĐể những nguyện vọng của mình được thực hiện, ít nhất bạn phải thành công về mặt tiền bạc. Quyển sách này sẽ giúp bạn biết cách vận dụng những nguyên lý quan trọng để phát triển tài chính. Hãy để cuốn sách dẫn dắt bạn đi từ một hoàn cảnh khó khăn, tiêu biểu là một cái túi lép xẹp, đến một cuộc sống đầy đủ và hạnh phúc, tiêu biểu là một túi tiền căng phồng, sung túc.', '2023-11-13', 6, 20, 0, 7, 0, 0),
(6, 'Hiểu Về Trái Tim (Tái Bản 2023)', 'Minh Niệm', 142000, '“Hiểu về trái tim” là một cuốn sách đặc biệt được viết bởi thiền sư Minh Niệm. Với phong thái và lối hành văn gần gũi với những sinh hoạt của người Việt, thầy Minh Niệm đã thật sự thổi hồn Việt vào cuốn sách nhỏ này.\r\nXuất bản lần đầu tiên vào năm 2011, Hiểu Về Trái Tim trình làng cũng lúc với kỷ lục: cuốn sách có số lượng in lần đầu lớn nhất: 100.000 bản. Trung tâm sách kỷ lục Việt Nam công nhận kỳ tích ấy nhưng đến nay, con số phát hành của Hiểu về trái tim vẫn chưa có dấu hiệu chậm lại.', '2023-11-13', 6, 19, 1, 11, 0, 0),
(7, 'Thiên Tài Bên Trái, Kẻ Điên Bên Phải (Tái Bản 2021)', 'Diệp Hồng Vũ', 116000, 'Tội phạm, nhất là những vụ án mạng, luôn là một chủ đề thu hút sự quan tâm của công chúng, khơi gợi sự hiếu kỳ của bất cứ ai. Một khi đã bắt đầu theo dõi vụ án, hẳn bạn không thể không quan tâm tới kết cục, đặc biệt là cách thức và động cơ của kẻ sát nhân, từ những vụ án phạm vi hẹp cho đến những vụ án làm rúng động cả thế giới.', '2023-11-20', 7, 18, 2, 13, 4, 0),
(8, 'Đứa Trẻ Hiểu Chuyện Thường Không Có Kẹo Ăn', 'Nguyên Anh', 118000, '“Đứa trẻ hiểu chuyện thường không có kẹo ăn” – Cuốn sách dành cho những thời thơ ấu đầy vết thương.\r\nTrên đời này có một điều rất kỳ diệu, đó là bậc phụ huynh nào cũng mong muốn con mình trở nên hoàn hảo theo một hình mẫu giống hệt nhau.\r\nLanh lẹ, khôn khéo, dễ thương, luôn nhìn cha mẹ với gương mặt tươi cười trong sáng.\r\nKhi người lớn yêu cầu chúng làm gì đó, chúng sẽ vui vẻ làm theo. Không phàn nàn, không oán trách, không cáu gắt, lại càng không phản kháng cãi cự.\r\nNhững khi cha mẹ mệt mỏi hay chán chường, chúng sẽ rúc vào lòng cha mẹ như một chú chim nhỏ, giúp họ giải tỏa ưu tư phiền muộn.', '2023-11-20', 7, 19, 1, 16, 5, 0),
(9, 'How Psychology Works - Hiểu Hết Về Tâm Lý Học', 'Jo Hemmings', 116000, 'Ám sợ là gì, ám sợ có thực sự đáng sợ không? Rối loạn tâm lý là gì, làm thế nào để thoát khỏi tình trạng suy nhược và xáo trộn đó? Trầm cảm là gì, vì sao con người hiện đại thường xuyên gặp và chống chọi với tình trạng u uất, mệt mỏi và tuyệt vọng này?\r\nTìm hiểu về các vấn đề tâm trí của con người luôn đầy sức hấp dẫn và lôi cuốn, vì vậy mà tâm lý học ra đời, hình thành và phát triển rất nhiều các học thuyết và trường phái. Cuốn sách này dẫn dắt bạn đọc qua hành trình tìm hiểu các học thuyết và trường phái đó, về cách các nhà tâm lý diễn giải hành xử và tâm trí con người. Tại sao chúng ta có những hành vi, suy nghĩ và cảm xúc như vậy, chúng diễn ra và kết thúc như thế nào, chúng ảnh hưởng lâu dài, gián đoạn hay ngắn ngủỉ đến đời sống của chúng ta ra sao, làm thế nào để chúng ta thoát khỏi những tác động tiêu cực của chúng?', '2023-11-20', 7, 18, 2, 18, 5, 0),
(10, 'Tâm Lý Học Về Tiền', 'Morgan Housel', 113000, 'Tiền bạc có ở khắp mọi nơi, nó ảnh hưởng đến tất cả chúng ta, và khiến phần lớn chúng ta bối rối. Mọi người nghĩ về nó theo những cách hơi khác nhau một chút. Nó mang lại những bài học có thể được áp dụng tới rất nhiều lĩnh vực trong cuộc sống, như rủi ro, sự tự tin, và hạnh phúc. Rất ít chủ đề cung cấp một lăng kính phóng to đầy quyền lực giúp giải thích vì sao mọi người lại hành xử theo cách họ làm hơn là về tiền bạc. Đó mới là một trong những chương trình hoành tráng nhất trên thế giới.\r\nChúng ta hiếm khi lâm vào hoàn cảnh nợ ngập đầu ư? Biết tiết kiệm để dành cho lúc khốn khó hơn ư? Chuẩn bị sẵn sàng cho việc nghỉ hưu? Có những cái nhìn thiết thực về mối quan hệ giữa tiền và hạnh phúc của chúng ta hơn phải không?', '2023-11-20', 7, 19, 1, 21, 5, 0),
(11, 'Tâm Lý Học Thành Công', 'Carol S Dweck', 159000, 'Tâm Lý Học Thành Công\r\nNhà tâm lý học nổi tiếng Carol Dweck sau nhiều thập niên nghiên cứu về thành công đã khám phá ra một ý tưởng thực sự mang tính đột phá – sức mạnh tư duy của chúng ta.\r\nMindset - Tâm Lý Học Thành Công sẽ cho bạn thấy không chỉ khả năng và tài trí mới mang lại thành công cho chúng ta, mà phần lớn do cách tiếp cận mục tiêu bằng lối tư duy nào. Việc tán dương trí thông minh và khả năng của con bạn không hề nuôi dưỡng lòng tự trọng và dẫn đến thành tựu, mà thậm chí còn phương hại đến thành công sau này. Với tư duy đúng đắn, chúng ta có thể tạo động lực cho con cái và giúp chúng phát triển trong trường học, cũng như đạt được mục tiêu của bản thân trong cuộc sống và sự nghiệp. Dweck cho tất cả các bậc cha mẹ, giáo viên, CEO và vận động viên thấy một ý tưởng đơn giản về não bộ có thể tạo ra tình yêu học tập và sự kiên trì – cơ sở cho những thành tựu vĩ đại ở mọi lĩnh vực.', '2023-11-20', 7, 20, 0, 23, 5, 0),
(12, 'Đắc Nhân Tâm (Tái Bản 2021)', 'Dale Carnegie', 65000, 'Đắc nhân tâm của Dale Carnegie là quyển sách của mọi thời đại và một hiện tượng đáng kinh ngạc trong ngành xuất bản Hoa Kỳ. Trong suốt nhiều thập kỷ tiếp theo và cho đến tận bây giờ, tác phẩm này vẫn chiếm vị trí số một trong danh mục sách bán chạy nhất và trở thành một sự kiện có một không hai trong lịch sử ngành xuất bản thế giới và được đánh giá là một quyển sách có tầm ảnh hưởng nhất mọi thời đại.', '2023-11-20', 8, 16, 4, 26, 5, 0),
(13, 'Tự Tin - Nghệ Thuật Giúp Bạn Đạt Được Mọi Mong Muốn', 'Bob Yeung', 145000, 'Sự tự tin sẽ giúp bạn thay đổi cuộc sống cùa mình. Bạn có thể đạt được mọi thứ nếu có lòng tự tin: công việc ưa thích, những cuộc hẹn hò, mức lương hấp dẫn...\r\nTất cả chúng ta đề có khả năng trở thành người tự tin. Lòng tự tin có thể được nuôi dưỡng và phát triển ở bất kỳ độ tuổi nào, vấn đề là bạn phải có phương pháp đúng.', '2023-11-20', 8, 20, 0, 28, 0, 0),
(14, 'Gương Kiên Nhẫn', 'Nguyễn Hiến Lê', 79000, 'Kiên nhẫn là cảnh giới kỹ năng cao nhất của con người, bạn sẽ làm được tất cả mọi việc nếu luyện được đức kiên nhẫn. Không phải ai sinh ra cũng có đức tính này mà nó là cả một quá trình học tập, rèn luyện và tu dưỡng suốt cả đời. Tại sao nhiều người luôn bình tĩnh và kiên trì với mọi việc còn bạn thì không? Cuộc sống luôn có những khó khăn, thử thách bắt buộc bạn phải đối đầu, không có tính kiên nhẫn bạn khó có thể vượt qua. Muốn thành công, bạn không thể không rèn luyện tính kiên nhẫn.', '2023-11-20', 8, 20, 0, 30, 5, 0),
(15, 'PQ Chỉ Số Đam Mê (2017)', 'Virender Kapoor', 60000, '“Chỉ số đam mê” là một thuật ngữ mới mà tác giả Virender Kapoor đã sáng tạo ra như là một cách nói mới về những gì chúng ta hay dùng để chỉ nhiệt huyết hay ngọn lửa trong lòng. Niềm đam mê của bạn là gì, bạn nhận biết như thế nào về những thứ mình thích và không thích, bạn đã biết cách sử dụng niềm đam mê của mình như những người thành công chưa? Đây là những điều cuốn sách sẽ dạy bạn.', '2023-11-20', 8, 20, 0, 32, 0, 0),
(16, 'Cẩm Nang Tư Duy Đạo Đức', 'Richard Paul , Linda Elder', 25000, 'Bộ sách CẨM NANG TƯ DUY này dành cho mọi bạn đọc, từ học sinh, sinh viên đến các giảng viên, các nhà nghiên cứu, doanh nhân, người đã đi làm cũng như quý phụ huynh... muốn nâng cao năng lực tư duy của mình. Học sinh, sinh viên có thể đọc cẩm nang như tài liệu tham khảo để học tốt các bộ môn; quý phụ huynh có thể sử dụng cẩm nang để vừa nâng cao năng lực tư duy của mình vừa giúp con em mình phát triển các kỹ năng tư duy cần thiết để học tốt; các giảng viên, nhà nghiên cứu có thể sử dụng cẩm nang để học tốt; các chủ đề của mình; người đã đi làm, doanh nhân... có thể áp dụng các kỹ năng, ý tưởng của cẩm nang vào công việc và cuộc sống.', '2023-11-20', 8, 20, 0, 34, 0, 0),
(17, 'Sách Giáo Khoa Bộ Lớp 1 - Chân Trời Sáng Tạo - Sách Bài Học (Bộ 9 Cuốn) (2023)', 'Nhiều Tác Giả', 194000, 'Bao Gồm:\r\n- Sách Giáo Khoa Bộ Lớp 1 - Chân Trời Sáng Tạo - Sách Bài Học (Bộ 9 Cuốn) (2023)\r\n- Bao Sách TP - Khổ Lớn (10 Tờ/Cuộn)', '2023-11-20', 9, 18, 2, 36, 5, 0),
(18, 'Sách Giáo Khoa Bộ Lớp 2 - Kết Nối - Sách Bài Học (Bộ 10 Cuốn) (2023) + Bao Sách TP', 'Nhiều Tác Giả', 195000, 'Bao Gồm:\r\n- Sách Giáo Khoa Bộ Lớp 2 – Kết Nối - Sách Bài Học (Bộ 10 Cuốn) (2023)\r\n- Bao Sách TP - Khổ Lớn (10 Tờ/Cuộn)', '2023-11-20', 9, 19, 1, 38, 4, 0),
(19, 'Sách Giáo Khoa Bộ Lớp 3 - Kết Nối - Sách Bài Học (Bộ 12 Cuốn) (2023)', 'Nhiều Tác Giả', 183000, 'Bao Gồm:\r\n- Sách Giáo Khoa Bộ Lớp 3 – Kết Nối - Sách Bài Học (Bộ 12 Cuốn) (2023)', '2023-11-20', 9, 20, 0, 40, 0, 0),
(20, 'Sách Sách Giáo Khoa Bộ Lớp 4 - Chân Trời - Sách Bài Học (Bộ 13 Cuốn)(2023)', 'Nhiều Tác Giả', 183000, 'Bao Gồm:\r\n- Sách Giáo Khoa Bộ Lớp 4 – Chân Trời - Sách Bài Học (Bộ 13 Cuốn) (2023)', '2023-11-20', 9, 20, 0, 42, 0, 0),
(21, 'Sách Giáo Khoa Bộ Lớp 5 - Sách Bài Học (Bộ 9 Cuốn) (2023) + Bao Sách TP', 'Nhiều Tác Giả', 95000, 'Bao Gồm: - Sách Giáo Khoa Bộ Lớp - Sách Bài Học (Bộ 9 Cuốn) (2023) - Bao Sách TP - Khổ Lớn (10 Tờ/Cuộn)', '2023-11-20', 9, 18, 2, 44, 4, 0),
(22, 'Sách Giáo Khoa Bộ Lớp 6 - Kết Nối - Sách Bài Tập (Bộ 13 Cuốn) (2023) + 2 Bao Sách TP', 'Nhiều Tác Giả', 190000, 'Bao Gồm:\r\n- Sách Giáo Khoa Bộ Lớp 6 - Kết Nối - Sách Bài Tập (Bộ 13 Cuốn) (2023)\r\n- Cuộn Bao Sách Nylon TP (10 Tờ/Cuộn)', '2023-11-20', 10, 20, 0, 46, 0, 0),
(23, 'Sách Giáo Khoa Bộ Lớp 7 - Chân Trời Sáng Tạo - Sách Bài Tập (Bộ 12 Cuốn) (2023) + 2 Bao Sách TP', 'Nhiều Tác Giả', 184000, 'Bao Gồm: - Sách Giáo Khoa Bộ Lớp 7 - Chân Trời Sáng Tạo - Sách Bài Tập (Bộ 12 Cuốn) (2023) - 2 Cuộn Bao Sách Nylon TP (10 Tờ/Cuộn)', '2023-11-20', 10, 20, 0, 48, 0, 0),
(24, 'Sách Giáo Khoa Bộ Lớp 8 - Phối Bộ - Sách Bài Học (Bộ 12 Cuốn) (2023)', 'Nhiều Tác Giả', 198000, 'Bao Gồm:\r\n- Sách Giáo Khoa Bộ Lớp 8– Phối Bộ - Sách Bài Học (Bộ 12 Cuốn) (2023)', '2023-11-20', 10, 20, 0, 50, 0, 0),
(25, 'Sách Giáo Khoa Bộ Lớp 9 - Sách Bài Tập (Bộ 7 Cuốn) (2023) + Bao Sách TP', 'Nhiều Tác Giả', 98000, 'Bao Gồm: - Sách Giáo Khoa Bộ Lớp 9 - Sách Bài Tập (Bộ 7 Cuốn) (2023) - Cuộn Bao Sách Nylon TP (10 Tờ/Cuộn)', '2023-11-20', 10, 10, 10, 52, 5, 0),
(26, 'Sách Giáo Khoa Bộ Lớp 12 - Sách Bài Học (Bộ 14 Cuốn) (2023)', 'Nhiều Tác Giả', 180000, 'Bao Gồm:\r\n- Sách Giáo Khoa Bộ Lớp 12- Sách Bài Học (Bộ 14 Cuốn) (2023)', '2023-11-20', 11, 12, 8, 54, 5, 0),
(27, 'Lớp 10 (bộ Kết nối tri thức)- sách Siêu trọng tâm Toán Văn Anh - Nhà sách Ôn luyệnLớp 10 (bộ Kết nối tri thức)- sách Siêu trọng tâm Toán Văn Anh - Nhà sách Ôn luyện', 'Nguyễn Thị Huyền Nga, Nguyễn Linh Trang, Đặng Thị Nguyệt Hà, Nguyễn Khánh Ly', 118000, 'Sách Siêu trọng tâm môn Toán Văn Anh được viết riêng cho bộ Kết nối tri thức gồm 2 cuốn, phù hợp cho cả bạn theo khối hoặc ko theo khối\r\n- Cuốn 1: Toán - Văn - Anh\r\n- Cuốn 2: Lí - Hóa – Sinh', '2023-11-20', 11, 20, 0, 56, 0, 0),
(28, 'Chuyên Đề Học Tập Vật Lí 11 (Cánh Diều) (2023)', 'Nguyễn Văn Khánh, Phạm Thùy Giang, Nguyễn Anh Vinh', 14000, 'Bộ sách Cánh Diều là bộ sách thứ nhất (đầu tiên) góp phần thực hiện chủ trương xã hội hoá sách giáo khoa, xoá bỏ cơ chế độc quyền trong lĩnh vực xuất bản - in - phát hành sách giáo khoa.\r\nTác giả bộ sách Cánh Diều là những nhà giáo, nhà khoa học tâm huyết và giàu kinh nghiệm. Trong đó, có tác giả là Tổng Chủ biên Chương trình Giáo dục phổ thông 2018 và nhiều tác giả là thành viên Ban Phát triển Chương trình tổng thể, Ban Phát triển các chương trình môn học thành lập theo Quyết định của Bộ trưởng Bộ GDĐT.', '2023-11-20', 11, 2, 8, 58, 5, 0),
(29, 'Chuyên Đề Học Tập Toán 11 (Chân Trời Sáng Tạo) (2023)', 'Nhiều Tác Giả', 14000, 'Để chuẩn bị cho năm học mới 2023 - 2024, thì Nhà xuất bản Giáo dục Việt Nam đã chính thức công bố Bộ SGK Lớp 11 - Chân trời sáng tạo tới các giáo viên, học sinh, bậc phụ huynh và các trường học hiện nay. Toàn bộ nội dung trong bộ sách này, sẽ được cập nhật nội dung hoàn toàn mới nhất dành cho học sinh cũng như thầy cô giáo. Bộ sách Chân trời sáng tạo hàm ẩn ý nghĩa về sự rộng mở của một thế giới tri thức, sự vô hạn của kiến thức khoa học và công nghệ, sự bao la của thế giới nghệ thuật và hướng đến những giá trị tinh thần tốt đẹp của nhân loại.', '2023-11-20', 11, 10, 0, 60, 0, 0),
(30, 'Hoá Học 11 (Chân Trời Sáng Tạo) (2023)', 'Nhiều Tác Giả', 20000, ': Để chuẩn bị cho năm học mới 2023 - 2024, thì Nhà xuất bản Giáo dục Việt Nam đã chính thức công bố Bộ SGK Lớp 11 - Chân trời sáng tạo tới các giáo viên, học sinh, bậc phụ huynh và các trường học hiện nay. Toàn bộ nội dung trong bộ sách này, sẽ được cập nhật nội dung hoàn toàn mới nhất dành cho học sinh cũng như thầy cô giáo. Bộ sách Chân trời sáng tạo hàm ẩn ý nghĩa về sự rộng mở của một thế giới tri thức, sự vô hạn của kiến thức khoa học và công nghệ, sự bao la của thế giới nghệ thuật và hướng đến những giá trị tinh thần tốt đẹp của nhân loại.', '2023-11-20', 11, 10, 0, 62, 0, 0),
(31, 'Truyện Cổ Tích Thế Giới Hay Nhất - Cô Bé Bán Diêm', 'Nhiều Tác Giả', 14000, 'Nằm trong bộ truyện cổ tích thế giới hay nhất, Cuốn sách mang đến cho các em nhỏ những bài học quý giá về cuộc sống. Giúp các em rèn luyện được những đức tính tốt đẹp.\r\nNội dung truyện ngắn gọn, dễ hiểu, hình vẽ đẹp mắt và in màu nổi bật sẽ làm tăng thêm hứng thú đọc sách cho các bạn thiếu nhi.', '2023-11-20', 12, 20, 0, 64, 5, 0),
(32, 'Những Lời Yêu Thương Của Con Trẻ Dành Tặng Các Mẹ - Vì Sao Tớ Yêu Mẹ (Tái Bản 2019)', 'Daniel Howarth', 22000, 'Seri sách tranh “Vì sao tớ yêu...” được đông đảo bạn đọc nhỏ tuổi yêu thích và say mê đọc mỗi tối. Bằng tranh vẽ biểu cảm, thơ mộng về thế giới tự nhiên cùng lời văn êm ái, ngọt ngào như thơ, bộ sách “Vì sao tớ yêu...” là những lời yêu thương của con trẻ trên khắp thế giới dành tặng cho ông bà, cha mẹ mình...', '2023-11-20', 12, 20, 0, 66, 0, 0),
(33, 'Truyện Cho Bé Trước Giờ Đi Ngủ', 'Đồng Dao', 59000, 'Kể chuyện cho bé trước giờ đi ngủ là một thói quen tốt giúp bé có giấc ngủ ngon hơn. Những câu chuyện giống như một cánh cửa mở ra cho bé một thế giới kì diệu đầy màu sắc.\r\nViệc kể chuyện cho bé trước giờ đi ngủ không chỉ giúp bé phát triển khả năng ngôn ngữ, trí tưởng tượng, vun đắp tâm hồn bé mà còn hình thành văn hóa đọc sách ngay từ khi còn nhỏ.', '2023-11-20', 12, 20, 0, 68, 0, 0),
(34, 'Dế Mèn Phiêu Lưu Ký - Diary Of A Cricket (Song Ngữ Việt - Anh) - Tái Bản 2019', 'Tô Hoài, Đặng Thế Bình', 55000, '“Dế mèn phiêu lưu ký” là truyện dài của nhà văn Tô Hoài kể về cuộc phiêu lưu của chú Dế Mèn cùng các bạn bè. Trên đường đi, họ đã gặp phải nhiều khó khăn nguy hiểm, nhưng những gian nan đã cho họ nhiều bài học quý giá, và thắt chặt tình bạn của họ.\r\nNgoài việc khuyến khích những người trẻ tuổi dám mơ ước, dám hành động, truyện còn là khát vọng hoà bình giữa các loài, là mong ước anh em bốn bể có thể cùng chung sống hoà thuận, để thế giới không còn cảnh xung đột, thù ghét.', '2023-11-20', 12, 14, 6, 70, 5, 0),
(35, 'Vở Ô Ly Tập Tô Chữ - Chữ Cái Viết Thường (Dành Cho Bé Chuẩn Bị Vào Lớp 1)', 'Chính An', 10000, ': Luyện chữ đẹp, rèn tính nết.\r\nCác em chú ý:\r\n1. Tư thế ngồi viết\r\nĐầu hơi cúi, không tì ngực xuống bàn\r\nMắt cách vở khoảng 20-25cm\r\nTay phải cầm bút, tay trái tì nhẹ lên mép vở để giữ.\r\nLưng thẳng\r\nHai chân song song thoải mái\r\n2. Cách cầm bút\r\nCầm bút bằng ba ngón tay: ngón cái, ngón trỏ, ngón giữa.\r\nKhi viết dùng ba ngón tay di chuyển bút từ trái sang phải, cầm bút nghiêng về bên phải, cổ tay, khủy tay và cánh tay cử động thêm mềm mại, thoải mái\r\nKhông nên cầm bút tay trái.', '2023-11-20', 13, 5, 5, 72, 0, 0),
(36, 'Tập Viết Chữ Đẹp & Tô Màu - Kiểu Chữ Thường (Khổ Nhỏ)', 'First News Biên Soạn', 18000, 'Tập sách \"Tập Viết Chữ Đẹp & Tô Màu\" được biên soạn theo một phong cách mới, giúp các em thiếu nhi tìm được hứng thú và say mê khi làm quen với những con chữ đầu tiên. Ngoài phần tập viết chữ đẹp được trình bày chi tiết với những hình mẫu và thứ tự các nét chữ để các bé luyện nét, quyển sách còn có nhiều hình minh họa ngộ nghĩnh để các bé tô màu và những từ tiếng Anh đơn giản giúp các bé làm quen với sinh ngữ.', '2023-11-20', 13, 10, 0, 74, 0, 0),
(37, 'Tô Màu Phát Triển Trí Não Bộ Cho Bé 1-3 Tuổi - Tập 1', 'Phạm Ngọc Diệp', 13000, 'Dành cho bé 1-3 tuổi:\r\nBố mẹ biết chứ, trẻ dưới 18 tháng đã có khả năng chuyển tải suy nghĩ và cảm xúc bằng hình ảnh có màu sắc. Tô màu giúp trẻ rèn kỹ năng điều khiển vận động của đôi tay, tăng khả năng quan sát, được sáng tạo và tưởng tượng một cách tự nhiên, được luyện khả năng tập trung và kiên trì, tăng khả năng thưởng thức cái đẹp trong cuộc sống. Với trẻ nhỏ tuổi, học là chơi và chơi là học. Tranh tô màu chính là những \"bài học\" có sức mạnh to lớn với trẻ, bố mẹ ạ!', '2023-11-20', 13, 10, 0, 76, 0, 0),
(38, 'Tô Màu Phát Triển Trí Não Bộ Cho Bé 1-3 Tuổi - Tập 2', 'Phạm Ngọc Điệp', 14000, 'Dành cho bé 1-3 tuổi:\r\nBố mẹ biết chứ, trẻ dưới 18 tháng đã có khả năng chuyển tải suy nghĩ và cảm xúc bằng hình ảnh có màu sắc. Tô màu giúp trẻ rèn kỹ năng điều khiển vận động của đôi tay, tăng khả năng quan sát, được sáng tạo và tưởng tượng một cách tự nhiên, được luyện khả năng tập trung và kiên trì, tăng khả năng thưởng thức cái đẹp trong cuộc sống. Với trẻ nhỏ tuổi, học là chơi và chơi là học. Tranh tô màu chính là những \"bài học\" có sức mạnh to lớn với trẻ, bố mẹ ạ!', '2023-11-20', 13, 0, 10, 78, 5, 0),
(39, 'Tập Tô Nét Cơ Bản (Tái Bản)', 'Thiện Lộc, Minh Nguyệt', 9000, 'Trước khi vào lớp 1, các bé mẫu giáo cần được trang bị kiến thức cơ bản về chữ viết giúp các em có được sự tự tin khi tiếp xúc với môi trường học tập ở trường tiểu học.\r\nSách giới thiệu tới các bé những nét chữ cơ bản. Cuốn sách là tài liệu bổ ích giúp các bé tự tin trong môn Chính tả lớp 1.', '2023-11-20', 13, 10, 0, 80, 0, 0),
(40, 'Cây Cam Ngọt Của Tôi', 'José Mauro de Vasconcelos', 76000, '“Vị chua chát của cái nghèo hòa trộn với vị ngọt ngào khi khám phá ra những điều khiến cuộc đời này đáng sống... một tác phẩm kinh điển của Brazil.” “Một cách nhìn cuộc sống gần như hoàn chỉnh từ con mắt trẻ thơ… có sức mạnh sưởi ấm và làm tan nát cõi lòng, dù người đọc ở lứa tuổi nào.”', '2023-11-20', 14, 20, 0, 82, 0, 0),
(41, 'Cảm Ơn Người Lớn', 'Nguyễn Nhật Ánh', 94000, 'Cảm ơn người lớn - một áng văn lãng mạn trong giọng hài hước đặc biệt “dành cho trẻ em, và những ai từng là trẻ em”..\r\nBạn sẽ gặp lại Mùi, Tủn, Tí sún, Hải cò… của Cho tôi xin một vé đi tuổi thơ, cùng chơi những trò chơi quen thuộc, và được đắm mình vào những ước mơ điên rồ, ngốc nghếch nhưng trong veo của tuổi mới lớn hồn nhiên và đầy ắp dự định.', '2023-11-20', 14, 20, 0, 84, 0, 0),
(42, 'Mùa Hè Không Tên', 'Nguyễn Nhật Ánh', 184000, '“Mùa hè không tên” là truyện dài mới nhất của nhà văn Nguyễn Nhật Ánh, với những câu chuyện tuổi thơ với vô số trò tinh nghịch, những thoáng thinh thích hồi hộp cùng vô vàn kỷ niệm. Để rồi khi những tháng ngày trong sáng của tình bạn dần qua, bọn nhỏ trong mỗi gia đình bình dị lớn lên cùng chứng kiến những giây phút cảm động của câu chuyện tình thân, nỗi khát khao hạnh phúc êm đềm, cùng bỡ ngỡ bước vào tuổi lớn nhiều yêu thương mang cả màu va vấp.', '2023-11-20', 14, 20, 0, 87, 0, 0),
(43, 'Totto-Chan Bên Cửa Sổ (Tái Bản 2019)', 'Kuroyanagi Tetsuko', 79000, 'Vừa vào lớp một được vài ngày, Totto-chan đã bị đuổi học!!!\r\nKhông còn cách nào khác, mẹ đành đưa Totto-chan đến một ngôi trường mới, trường Tomoe. Đấy là một ngôi trường kỳ lạ, lớp học thì ở trong toa xe điện cũ, học sinh thì được thoả thích thay đổi chỗ ngồi mỗi ngày, muốn học môn nào trước cũng được, chẳng những thế, khi đã học hết bài, các bạn còn được cô giáo cho đi dạo. Đặc biệt hơn ở đó còn có một thầy hiệu trưởng có thể chăm chú lắng nghe Totto-chan kể chuyện suốt bốn tiếng đồng hồ! Chính nhờ ngôi trường đó, một Totto-chan hiếu động, cá biệt đã thu nhận được những điều vô cùng quý giá để lớn lên thành một con người hoàn thiện, mạnh mẽ.', '2023-11-20', 14, 20, 0, 89, 0, 0),
(44, 'Nhà Giả Kim (Tái Bản 2020)', 'Paulo Coelho', 64000, 'Tất cả những trải nghiệm trong chuyến phiêu du theo đuổi vận mệnh của mình đã giúp Santiago thấu hiểu được ý nghĩa sâu xa nhất của hạnh phúc, hòa hợp với vũ trụ và con người.', '2023-11-20', 14, 14, 6, 91, 5, 0),
(45, 'Bến Xe (Tái Bản 2020)', 'Thương Thái Vi', 50000, 'Bến Xe (Tái Bản 2020)\r\nBến Xe\r\nThứ tôi có thể cho em trong cuộc đời này\r\nchỉ là danh dự trong sạch\r\nvà một tương lai tươi đẹp mà thôi.\r\nThế nhưng, nếu chúng ta có kiếp sau,\r\nnếu kiếp sau tôi có đôi mắt sáng,\r\ntôi sẽ ở bến xe này… đợi em.', '2023-11-20', 17, 20, 0, 93, 0, 0),
(46, 'Em Vốn Thích Cô Độc, Cho Đến Khi Có Anh', 'Diệp Lạc Vô Tâm', 72000, 'Một hôm, tôi đi làm lại quên mang điện thoại. Tôi muốn về nhà lấy, nhưng lại bận không dứt ra được, đang lúc băn khoăn thì nhìn thấy Kẻ phiền phức bước thẳng vào phòng, điềm đạm đặt chiếc di động mà tôi đang cần lên bàn.\r\n“Yêu anh quá đi!” Tôi vội vàng thì thầm vào tai hắn, rồi lập tức lấy điện thoại xem.\r\n“Rốt cuộc thì có chuyện gì em mới không quên đây hả?” Kẻ phiền phức chán nản nói.', '2023-11-20', 17, 20, 0, 95, 0, 0),
(47, 'All In Love - Ngập Tràn Yêu Thương (Tái Bản 2020)', 'Cố Tây Tước', 101000, 'Từ Vi Vũ hơi mắc bệnh sạch sẽ, có chút bỉ ổi, có chút mặt dày, tuy nhiên trước mặt người ngoài anh luôn hào hoa phong nhã, sống tách biệt, độc lập, lạnh lùng mà kiêu ngạo, lạnh lùng mà xa cách, trong sự xa cách ấy lại toát lên sự cao quý. Nhưng cứ về đến nhà, anh liền biến thành quý ông “thích cởi”, luôn miệng kêu: “Tắm, tắm, tắm! Cố Thanh Khê, em có muốn đến chà đạp anh không?”', '2023-11-20', 17, 20, 0, 97, 0, 0),
(48, 'Bên Trời Ngân Mãi Khúc Đào Hoa', 'Châu Văn Hân', 112000, 'Bên Trời Ngân Mãi Khúc Đào Hoa\r\nThịnh Nhan sinh ra trùng ngày với thái tử, vì vậy mà được vua ban tên. Chẳng ngờ, triều đình sóng gió, cha bị hàm oan, gia đình lưu lạc chốn dân gian. Những tưởng cô sẽ ở nơi thôn dã mãi mãi, chẳng ngờ, một cơn mưa bất chợt khiến cô lánh vào ngôi miếu nhỏ, và gặp lại nam nhân năm xưa từng quen trong hoàng cung, người trong suốt bao năm vẫn nhớ cô bé xinh đẹp quan tâm hái cho y cành hoa đào e ấp, cô là hồi ức tươi đẹp nhất của y.', '2023-11-20', 17, 20, 0, 99, 0, 0),
(49, 'Mãi Mãi Là Bao Xa (Tái Bản)', 'Diệp Lạc Vô Tâm', 114000, '\"Em là cây hoa loa kèn hoang dã mãi mãi chỉ vì chính mình mà nở hoa, rời khỏi đất mẹ là cái giá phải trả khi yêu anh.\"\r\nBạch Lăng Lăng, nữ sinh khoa Điện khí, trẻ trung, xinh đẹp và rất tự hào khi quen được một người bạn lý tưởng qua mạng, chàng du học sinh của một trường nổi tiếng của Mỹ, người mang biệt danh “nhà khoa học”: Mãi Mãi Là Bao Xa. Qua những cuộc chuyện trò trên QQ, Lăng Lăng đã gắn bó với chàng trai đó lúc nào cô cũng không hay, cảm xúc lớn dần, sự chia sẻ lớn dần và đến một ngày cô phát hiện ra mình đã yêu người con trai “tài giỏi” và không một chút khuyết điểm ấy.', '2023-11-20', 17, 20, 0, 101, 0, 0),
(50, 'Thơ Xuân Diệu', 'Xuân Diệu', 23000, 'Trong sự nghiệp sáng tác thơ văn của mình, Xuân Diệu được biết đến như là một nhà thơ lãng mạn trữ tình, “Nhà thơ mới nhất trong các nhà thơ mới” (Hoài Thanh), “Ông hoàng của thơ tình”.\r\nXuân Diệu là thành viên của Tự Lực Văn Đoàn và cũng đã là một trong những chủ soái của phong trào “Thơ Mới”. Tác phẩm tiêu biểu của ông ở giai đoạn này: Thơ Thơ (1938), Gửi hương cho gió (1945), truyện ngắn Phấn thông vàng (1939), Trường ca (1945).\r\nXuân Diệu tham gia ban chấp hành, nhiều năm là ủy viên thường vụ Hội Nhà văn Việt Nam. Từ đó, Xuân Diệu trở thành một trong những nhà thơ hàng đầu ca ngợi Cách mạng, một “dòng thơ công dân”. Bút pháp của ông chuyển biến phong phú về giọng vẻ: có giọng trầm hùng, tráng ca, có giọng chính luận, giọng thơ tự sự trữ tình. Tiêu biểu là: Ngọn quốc kỳ (1945), Một khối hồng (1964), Thanh ca (1982), Tuyển tập Xuân Diệu (1983).', '2023-11-20', 18, 20, 0, 103, 0, 0),
(51, 'Truyện Kiều', 'Nguyễn Du, Đào Duy Anh', 30000, 'Nhân dịp kỷ niệm 250 ngày sinh đại thi hào Nguyễn Du, Huy Hoàng book giới thiệu đến độc giả tác phẩm nổi tiếng nhất của ” người đặt nền móng” cho văn học nước nhà: Truyện Kiều Tác phẩm Truyện Kiều, nguyên tên là Đoạn trường tân thanh, từ khi ra đời đến nay (khoảng 200 năm), trong lịch sử Văn học Việt Nam chưa có công trình nào nghiên cứu sâu sắc về nó. Một trong nguyên nhân chính là vì bản gốc của Nguyễn Du sáng tác không còn nữa. Tuy nhiên, không phải vì vậy mà Truyện Kiều bị mai một.', '2023-11-20', 18, 20, 0, 105, 0, 0),
(52, 'Thơ Hàn Mặc Tử - Văn Học Trong Nhà Trường', 'Hàn Mặc Tử', 40000, '“Trong khoảng trên dưới một chục năm hoạt động trong thi đàn, Hàn Mặc Tử đã từ cổ điển,\r\nLãng mạn, tiến nhanh sang tượng trưng, siêu thực, góp một phần quan trọng vào quá trình hiện đại hóa thi ca Việt Nam. Điều đáng kể nhất là ở loại hình nào, phạm trù nào, Hàn Mặc Tử cũng là trụ cột.” - Giáo sư PHAN CỰ ĐỆ\r\n“Hàn Mặc Tử được sinh ra cho thơ. Sinh thời, Hàn đã sống bằng thơ. Bây giờ và mai sau Hàn vẫn sống bằng thơ. Bởi vì Hàn đã chết cho mỗi lời thơ. Đó là bài học về thơ đắt giá và sáng giá nhất của muôn đời.” - Nhà phê bình văn học CHU VĂN SƠN.', '2023-11-20', 18, 20, 0, 107, 0, 0),
(53, 'Tục Ngữ, Ca Dao, Dân Ca Việt Nam - Bìa Cứng (Tái Bản 2023)', 'Vũ Ngọc Phan', 126000, 'Tục Ngữ, Ca Dao, Dân Ca Việt Nam - Bìa Cứng (Tái Bản 2023)\r\nTác phẩm của nhà nghiên cứu văn học Vũ Ngọc Phan được trao tặng Giải thưởng Hồ Chí Minh đợt đầu tiên (năm1996, lĩnh vực văn nghệ dân gian).\r\nCuốn sách được tác giả dày công sưu tầm, khảo cứu trong suốt những năm tham gia kháng chiến chống Pháp, đặc biệt từ khi chuyển sang làm công tác nghiên cứu văn - sử - địa và hoàn thành vào năm 1956. Vũ Ngọc Phan đã có phần nghiên cứu tâm huyết về đặc điểm, giá trị đặc sắc của tục ngữ, ca dao, dân ca vô cùng đa dạng và phong phú của dân tộc Việt Nam ta (trong đó có cả của một số dân tộc thiểu số) bên cạnh phần tuyển chọn công phu.\r\nĐặc biệt, cuốn sách còn có phần biên khảo rất sớm (với tầm nhìn xa trông rộng) và rất giá trị về dân ca, bao gồm các loại hình như: hát trống quân, hát xẩm, hát quan họ Bắc Ninh, hát ghẹo Phú Thọ, hát ví, hát giặm Nghệ Tĩnh, hò Huế, dân ca miền Nam Trung Bộ, dân ca Nam Bộ…', '2023-11-20', 18, 20, 0, 109, 0, 0),
(54, 'Ca Dao Tục Ngữ Dành Cho Học Sinh (Tái Bản 2023)', 'An Nam', 89000, 'Ca Dao Tục Ngữ Dành Cho Học Sinh\r\nTheo Lịch sử văn học Việt Nam của Bùi Văn Nguyên: Ca dao là những bài có hoặc không có chương khúc, sáng tác bằng thể văn vần dân tộc (thường là lục bát), để miêu tả, tự sự, ngụ ý và diễn đạt tình cảm. Dân ca là những bài hát có hoặc không có chương khúc do nhân dân sáng tác lưu truyền trong dân gian ở từng vùng hoặc phổ biến ở nhiều vùng có nội dung trữ tình và có giá trị đặc biệt về nhạc.\r\nTục ngữ là những câu nói hoàn chỉnh, đúc kết kinh nghiệm của nhân dân về thiên nhiên và lao động sản xuất, về con người và xã hội. Tục ngữ thiên về trí tuệ nên thường được ví von là “trí khôn dân gian”. Trí khôn đó rất phong phú mà cũng rất đa dạng nhưng lại được diễn đạt bằng ngôn từ ngắn gọn, súc tích, dễ nhớ, giàu hình ảnh và nhịp điệu. Có thể coi tục ngữ là văn học nói dân gian nên thường được nhân dân vận dụng trong đời sống sinh hoạt, giao tiếp cộng đồng và xã hội hay hẹp hơn như lời ăn tiếng nói và khuyên răn.\r\n“Lời thơ dân gian không những sẽ bước đầu cho ta làm quen với tâm tư tình cảm của đồng bào ta xưa kia mà đồng thời sẽ còn giúp ta học được những cách nói năng tài tình chính xác. Theo tôi, đối với một người Việt Nam mà thiếu những kiến thức này thì có thể xem như là thiếu một trong những điều cơ bản.” (Hoài Thanh, Một vài suy nghĩ về ca dao, Báo Văn nghệ, số 1, 2/1/1982).\r\nHọc ca dao, tục ngữ chính là học cách sống, cách làm người. Hy vọng cuốn sách Ca dao - Tục ngữ dành cho học sinh sẽ giúp ích các em học sinh trong quá trình học tập văn hóa cũng như trong đời sống hàng ngày.', '2023-11-20', 18, 20, 0, 111, 0, 0),
(55, 'Cổ Tích Việt Nam Cho Bé - Cây Tre Trăm Đốt (Tái Bản 2022)', 'Kim Ngọc, Trần Gia Khang', 17000, 'Bộ “Cổ tích Việt Nam cho bé” tuyển chọn những câu chuyện nổi tiếng trong kho tàng truyện cổ tích Việt Nam, được kể lại ngắn gọn, súc tích cùng với hình minh họa đẹp phù hợp với lứa tuổi mẫu giáo, tiểu học', '2023-11-20', 12, 20, 0, 113, 4, 0),
(56, 'Tự Học 2000 Từ Vựng Tiếng Anh Theo Chủ Đề (Tái Bản)', 'The Windy', 39000, 'Nhà ngôn ngữ học nổi tiếng D.A.Wilkins đã nói rằng “Without grammar, very little can be conveyed; without vocabulary, nothing can be conveyed.” (Không có ngữ pháp, rất ít thông tin có thể được truyền đạt; Không có từ vựng, không một thông tin nào có thể được truyền đạt cả). Vì thế, trong việc học một ngoại ngữ, thì từ vựng có thể xem như các tế bào nhỏ hình thành nên khả năng sử dụng ngoại ngữ của người học.', '2023-11-20', 19, 20, 0, 115, 0, 0),
(57, 'Mindmap English Grammar - Ngữ Pháp Tiếng Anh Bằng Sơ Đồ Tư Duy', 'Đỗ Nhung', 114000, 'Trước đây, khi tiếng Anh chưa là ngôn ngữ quốc tế trong môi trường toàn cầu hóa, xu hướng việc giảng dạy và học tập tiếng Anh tại Việt Nam thiên về hai kỹ năng ĐỌC HIỂU và VIẾT. Hệ quả là trong các thế hệ trước, nhiều người đọc hiểu và viết tiếng Anh thông thạo không kém người bản xứ được học hành tử tế; ngược lại, gặp khó khăn khi giao tiếp nghe-nói bằng tiếng Anh.', '2023-11-20', 19, 20, 0, 117, 0, 0),
(58, 'Cambridge IELTS 17 Academic With Answers (Savina)', 'Cambridge', 207000, 'Cambridge IELTS 17 – Cuốn sách thứ 17 trong bộ sách huyền thoại\r\nCambridge IELTS từ nhà xuất bản Cambridge, với 2 phiên bản Academic và General Training đã chính thức lên kệ tại Công ty Cổ phần Sách Việt Nam.\r\nVới đầy đủ 4 kỹ năng listening, reading, writing, speaking cùng với answer keys, Cambridge IELTS 17 sẽ cung cấp những kiến thức đầy đủ từ cấu trúc bài thi, các modul cần thiết, bài mẫu hay các kĩ năng cần thiết giúp bạn có thể sẵn sàng bước vào kì thi IELTS với những trải nghiệm tốt nhất, sát với thực tế nhất.', '2023-11-20', 19, 20, 0, 119, 0, 0),
(59, 'Tiếng Anh Cho Người Bắt Đầu (Tái Bản 2023)', 'Trang Anh, Minh Anh', 180000, 'Trong xu thế hội nhập và toàn cầu hoá như hiện nay, việc thông thạo tiếng Anh sẽ là một lợi thế, giúp chúng ta mở mang tầm mắt, nâng cao tri thức và có nhiều cơ hội việc làm cũng như sự thăng tiến. Có lẽ vì thế mà ngày càng có nhiều người quyết tâm theo học ngôn ngữ này. Tuy nhiên, với đại đa số người bắt đầu học tiếng Anh đều gặp khó khăn trong việc xác định nội dung và phương pháp học tập hiệu quả. Có rất nhiều người không biết nên bắt đầu học từ đâu, nên học những nội dung gì, nên học phần gì trước phần gì sau. Đó là còn chưa kể đến chương trình học trong nhà trường phổ thông vẫn nặng về lí thuyết và thi cử nên có rất nhiều bạn học sinh không thể tự tin sử dụng tiếng Anh trong giao tiếp hàng ngày.', '2023-11-20', 19, 20, 0, 121, 0, 0),
(60, 'Combo Sách Tự Trau Dồi Tiếng Anh Thành Thạo Như Người Bản Xứ: 30 Chủ Đề Từ Vựng Tiếng Anh + 25 Chuyên Đề Ngữ Pháp Tiếng Anh Trọng Tâm (Bộ 4 Cuốn)', 'Trang Anh', 443000, 'Combo Sách Tự Trau Dồi Tiếng Anh Thành Thạo Như Người Bản Xứ: 30 Chủ Đề Từ Vựng Tiếng Anh + 25 Chuyên Đề Ngữ Pháp Tiếng Anh Trọng Tâm (Bộ 4 Cuốn)\r\n30 Chủ Đề Từ Vựng Tiếng Anh\r\nNgữ pháp và từ vựng là hai mảng không thể thiếu trong quá trình học ngoại ngữ nói chung và học tiếng Anh nói riêng. Hai phạm trù này sẽ góp phần giúp chúng ta đạt được sự thành thạo về ngôn ngữ. Nếu như ngữ pháp có các quy tắc, có cấu trúc để tuân theo thì từ vựng lại không có bất cứ quy tắc nào. Do đó, đa số người học đều thấy rất khó để học và nhớ được từ vựng. Đó là còn chưa kể tới có rất nhiều từ có nghĩa giống nhau nhưng lại được sử dụng trong các ngữ cảnh khác nhau và một từ thì lại có rất nhiều nghĩa\r\nVới mong muốn giúp người học có phương pháp học từ vựng hiệu quả, bộ sách 30 CHỦ ĐỀ TỪ VỰNG TIẾNG ANH được biên soạn thành 2 tập, mỗi tập gồm 15 chủ đề từ vựng bao quát tất cả những chủ đề từ vựng trọng tâm thuộc mọi lĩnh vực của đời sống. Ở mỗi bài, bên cạnh phần hệ thống từ vựng – cấu trúc theo chủ đề bài học, còn có một số lượng bài tập thực hành lớn với các dạng bài như phát âm, trọng âm, chọn đáp án đúng, đồng nghĩa-trái nghĩa, đọc hiểu, đọc điền.\r\nBộ sách với mục tiêu cung cấp cho người học phương pháp học từ vựng theo chủ điểm để nhớ từ theo hệ thống, áp dụng vào bài tập thực hành, làm bài tập giúp nhớ từ và có vốn từ để đọc hiểu được đoạn văn tiếng Anh. Ngoài ra học từ vựng để không những giúp phát âm đúng mà còn chuẩn ngữ điệu.\r\nVới khoảng hơn 4000 từ vựng – cấu trúc và trên 2000 câu trắc nghiệm kèm đáp án có giải thích chi tiết, chắc chắn bộ sách sẽ là công cụ tự học hữu hiệu, giúp người học trau dồi vốn từ vựng một cách hiệu quả nhất.\r\n25 Chuyên Đề Ngữ Pháp Tiếng Anh Trọng Tâm\r\nCác chuyên đề ngữ pháp trọng tâm được trình bày đơn giản, dễ hiểu cùng với hệ thống bài tập và từ vựng phong phú. Có tất cả 25 chuyên đề trong 2 tập sách, là tài liệu hữu ích cho học sinh, sinh viên, người đi làm, luyện thi cho các kỳ thi quốc gia, ôn luyện các chứng chỉ quốc tế và là tài liệu tham khảo cho giáo viên.\r\n1. 30 Chủ Đề Từ Vựng Tiếng Anh tập 1\r\n2. 30 Chủ Đề Từ Vựng Tiếng Anh tập 2\r\n3. 25 Chuyên Đề Ngữ Pháp Tiếng Anh Trọng Tâm tập 1\r\n4. 25 Chuyên Đề Ngữ Pháp Tiếng Anh Trọng Tâm tập 2', '2023-11-20', 19, 18, 2, 124, 0, 0),
(61, 'Tiếng Nhật Sơ Cấp 1: 25 Bài Đọc Hiểu Trình Độ Sơ Cấp', 'Makino Akiko, Sawada Sachiko, Shigekawa Akemi, Tanaka Yone, Mizuno Mariko', 46000, 'Sách nằm trong bộ Minna no Nihongo - Tiếng Nhật dành cho mọi người - Bản mới. Là sách bổ trợ giúp người học nâng cao kỹ năng đọc hiểu thông qua nhiều chủ đề khác nhau.', '2023-11-20', 20, 20, 0, 126, 0, 0),
(62, 'Tiếng Nhật Cho Mọi Người - Sơ Cấp 1 - Bản Tiếng Nhật (Bản Mới)', 'Minna no Nihongo', 123000, 'Giáo trình dạy tiếng Nhật Minna no Nihongo bộ mới', '2023-11-20', 20, 20, 0, 128, 0, 0),
(63, 'Luyện Thi Năng Lực Nhật Ngữ N4. Hán Tự, Từ Vựng', 'SASAKI HITOKO, MATSUMOTO NORIKO', 51000, 'Bộ sách gồm 2 quyển: Hán tự (Kanji) - Từ vựng (Goi) và Đọc hiểu (Dokkai) - Nghe hiểu (Choukai) - Ngữ pháp (Bunpou)\r\nĐây là bộ sách học tiếng Nhật hàng đầu trong hệ thống phân phối sách Kinokuniya lớn nhất Nhật Bản. Bộ sách này giúp những bạn chuẩn bị tham gia Kỳ thi năng lực Nhật ngữ JLPT nắm được những nội dung kiến thức cần phải có trong năng lực Nhật ngữ - trình độ N4 một cách nhanh chóng, hiệu quả và tổng quát nhất trong khoảng thời gian từ 4 đến 6 tuần.', '2023-11-20', 20, 20, 0, 130, 0, 0),
(64, '500 Câu Hỏi Luyện Thi Năng Lực Nhật Ngữ - Trình Độ N2 (Tái Bản 2023)', 'Matsumoto, Sasaki Hitoko', 81000, '500 Câu Hỏi Luyện Thi Năng Lực Nhật Ngữ - Trình Độ N2\r\nSổ tay ôn thi Năng lực Nhật ngữ quốc tế - Trình độ N2 (Trung thượng cấp).\r\nTrình độ N2 là trình độ được các doanh nghiệp Nhật ưu tiên tuyển dụng, và là điều kiện cần để vào các trường Đại học Nhật Bản hàng đầu.\r\nĐiểm đặc biệt là sách được thiết kế theo ngày, mỗi ngày người học có thể ôn cả 3 kỹ năng : Từ vựng, Ngữ pháp, Hán tự chỉ với 15 phút.\r\nKhổ sách cầm tay, thuận tiện cho người học có thể học mọi lúc mọi nơi.\r\nTập hợp 500 câu hỏi thường gặp trong đề thi Năng lực Nhật ngữ .\r\nÔn cả Từ vựng, Hán tự, Ngữ pháp chỉ với 01 quyển sách nhỏ gọn.\r\nKỳ thi năng lực Nhật ngữ được tổ chức vào tháng 7 và tháng 12 ở 3 thành phố lớn là Hà Nội, Đà nẵng, Hồ Chí Minh. Mỗi kỳ thi có đến hàng chục ngàn thí sinh. Số lượng tăng thêm hàng năm.', '2023-11-20', 20, 20, 0, 132, 0, 0),
(65, 'N4 - 1500 Từ Vựng Cần Thiết Cho Kỳ Thi Năng Lực Nhật Ngữ', 'Arc Academy', 66000, 'Bộ sách học từ vựng cấp độ N5 ~ N1 dành cho Kỳ thi Năng lực Nhật ngữ. Bộ sách gồm 5 cuốn: N1, N2, N3, N4, N5, tập hợp các từ vựng xuất hiện thường xuyên trong các kỳ thi Năng lực Nhật ngữ. Các từ vựng này được chia theo từng chủ đề, đi kèm các câu ví dụ. Đặc biệt bộ sách có kèm theo bản dịch Anh - Trung - Việt, rất tiện cho các bạn tự học ở nhà.', '2023-11-20', 20, 20, 0, 134, 0, 0),
(66, 'Tự Học Tiếng Đức Cho Người Mới Bắt Đầu', 'Nguyễn Hoàng Vĩnh Lộc, Nguyễn Lưu Bảo Đoan', 98000, 'Tự Học Tiếng Đức Cho Người Mới Bắt Đầu\r\nĐây là giáo trình tự học tiếng Đức hoàn chỉnh nhất và được biên soạn công phu nhàm giúp người học phát triển cả 4 kỹ năng: Nghe, Nói, Đọc, Viết. Ngoài ra phần chú thích giải ngữ pháp và bài tập áp dung giúp cho các học viên tự phát triển, xây dựng các mẫu câu căn bản và từ đó nâng dàn thành các mẫu câu phức tạp hơn đủ để diễn giải các tình huống thường gặp. Paul Coggle & Heiner Schenke, tác giả của giáo trình tự học này đồng thời cũng là giảng viên tiếng Đức tại viện đại học Luân Đôn Anh Quốc, đã đúc kết nhiều năm kinh nghiệm dạy tiếng Đức cho người nước ngoài.', '2023-11-20', 20, 20, 0, 136, 0, 0),
(67, 'Tiếng Đức Dành Cho Người Việt - Các Từ Loại Tiếng Đức (Tái Bản 2023)', 'Dương Đình Bá', 36000, 'Tiếng Đức Dành Cho Người Việt - Các Từ Loại Tiếng Đức Nhằm đáp ứng nhu cầu tìm hiểu ngôn ngữ Đức, cuốn sách \"Các từ loại tiếng Đức\" bỏ túi này với mong muốn giúp các bạn có tài liệu tham khảo về danh từ, tính từ, trạng từ và liên từ tiếng Đức.\r\nCuốn sách có phần bài tập và đáp án của chúng tôi nhằm giúp các bạn tự kiểm tra lại những kiến thức đã học.', '2023-11-20', 21, 20, 0, 138, 0, 0),
(68, 'Pons Tự Học Tiếng Đức Qua Hình', 'PONS', 242000, 'Pons Tự Học Tiếng Đức Qua Hình\r\nSách cung cấp trên 8.000 từ, cụm từ cùng 3.000 hình màu minh họa. Các từ và cụm từ được sắp xếp theo chủ đề gắn liền với các lĩnh vực quan trọng trong cuộc sống.\r\nThông qua những hình ảnh sinh động, bạn sẽ có thêm hứng thú và động lực trong quá trình học, nhờ đó bạn thuộc từ nhanh và nhớ từ lâu hơn.\r\nTất cả các từ vựng đều có phần phiên âm để giúp bạn phát âm chính xác. Bên dưới phiên âm là chỗ trống để bạn tự viết nghĩa bằng ngôn ngữ mình thích.\r\nMục Các cách diễn đạt cần thiết (Die Wichtigsten Sätze) trang bị cho bạn những mẫu câu quan trọng nhất, kèm theo đó là danh mục khoảng 2.000 động từ để hỗ trợ bạn đặt câu.\r\nSách cũng trình bày ngắn gọn kiến thức ngữ pháp trong phần Tóm tắt ngữ pháp tiếng Đức (Deutsche Kurzgrammatik). Bảng chỉ mục ở cuối từ điển giúp bạn tra tìm từ vựng một cách nhanh chóng.\r\nĐây là tài liệu phù hợp với cả người mới bắt đầu học ngoại ngữ (trình độ A1) lẫn người ở trình độ cao hơn (B2).', '2023-11-20', 21, 20, 0, 140, 0, 0),
(69, 'Tiếng Đức Cho Người Mới Bắt Đầu - Các Tình Huống Giao Tiếp Hằng Ngày', 'Lê Minh Cẩn', 77000, 'Cuốn sách là bước đầu để bạn làm quen với Đức ngữ hiện đại dựa vào những tình huống thực tế trong giao tiếp và sinh hoạt của người Đức. Sách được bố cục rõ ràng dễ hiểu và dễ tra cứu các từ ngữ, cụm từ và các câu bạn cần dùng ngay và có thể áp dụng vào nhiều tình huống, như ở các quán bar, các cửa tiệm, trên xe buýt, ở khách sạn và ngân hàng…', '2023-11-20', 21, 20, 0, 142, 0, 0),
(70, 'Deutsch Wodoku (A1-A2) - Vui Học Từ Vựng Với Ô Chữ Sudoku', 'Elke Huppertz', 140000, 'Vui Học Từ Vựng Với Ô Chữ Sudoku', '2023-11-20', 21, 20, 0, 144, 0, 0),
(71, 'Luyện Thi Topik 2 - Trình Độ Trung Cấp Và Nâng Cao (Kèm Cd)', 'Nhóm Nghiên Cức Gd Hàn Ngữ', 190000, 'Được biên soạn theo cấu trúc của đề thi TOPIK mới, giáo trình này được đưa vào chương trình giảng dạy từ tháng 7 năm 2014 nhằm hỗ trợ thí sinh ôn thi. Giáo trình bao gồm ba phần chính: Phân tích câu hỏi và đưa ra chiến lược, Đề thi thử và Đáp án. Giáo trình sẽ phân tích tất cả các xu hướng ra đề của những câu hỏi mẫu trong các kỳ thi TOPIK, sau đó trình bày những chiến lược giúp thí sinh ôn luyện từng dạng câu hỏi và chuẩn bị cho kỳ thi. Ngoài ra, quyển sách còn có ba đề thi thử được biên soạn theo cấu trúc và dạng câu hỏi của đề thi thật để người học làm quen khi luyện thi và đáp án của tất cả các câu hỏi trong đề thi thử.', '2023-11-20', 22, 20, 0, 146, 0, 0),
(72, '15 Phút Tự Học Tiếng Hàn Mỗi Ngày', 'The Changmi', 110000, '15 phút tự học tiếng hàn mỗi ngày - Cuốn sách tự học tiếng Hàn giao tiếp dành cho những người bận rộn\r\nTiếng Hàn là một trong 4 môn ngoại ngữ được ưa chuộng nhất tại Việt Nam hiện nay. Số lượng người học tiếng Hàn để phục vụ cho công việc, học tập hoặc học vì yêu thích ngày càng tăng lên chóng mặt\r\nBạn đang là:\r\nBạn là người đi làm, công việc của bạn quá bận rộn khiến thời gian tự học tiếng Hàn của bạn thường bị thu hẹp.\r\nBạn đang là học sinh, sinh viên lịch học của các bạn kín đặc cả tuần. Bạn muốn học tiếng Hàn nhưng lại không có đủ thời gian.\r\nBạn có tin nếu mỗi ngày bạn dành ra 15 phút, tương ứng với khoảng 1% quỹ thời gian một ngày là bạn đã có thể sử dụng thành thạo tiếng Hàn cơ bản.', '2023-11-20', 22, 20, 0, 148, 0, 0),
(73, 'Luyện Kĩ Năng Nghe Tiếng Hàn - Dành Cho Người Mới Bắt Đầu (Kèm CD)', 'Cho Jaehee, Oh Minam', 120000, 'Luyện Kĩ Năng Nghe Tiếng Hàn - Dành Cho Người Mới Bắt Đầu (Kèm CD)\r\nBộ giáo trình cung cấp những bài học được trình bày dễ hiểu theo cấp độ khó dần. Những người theo học tiếng Hàn quốc tế dễ dàng tìm thấy những từ vựng và mẫu câu thông dụng thiêt thực, và cả những lỗi giao tiếp thường hay mắc phải. Người học cũng cảm thấy rất hào hứng được tham gia ứng xử trong những tình huống phổ biến và quen thuộc trong cuộc sống hàng ngày.', '2023-11-20', 22, 20, 0, 150, 0, 0),
(74, 'Giáo Trình Luyện Dịch Trung Cao Cấp Tiếng Hàn Quốc', 'Lê Minh Cẩn', 75000, 'Cuốn sách tập hợp các bài phát biểu, kịch bản, các loại hợp đồng, mẫu công văn, thư hồi đáp, bản tin tiếng Hàn, điều lệ công ty Hàn quốc, nội qui công ty từ nhiều nguồn khác nhau v.v...\r\nSách được trình bày từ phiên dịch (dịch nói) đến biên dịch (dịch viết), từ những bài đơn giản đến những bài phức tạp đại đa số là tiếng Hàn cùng với các từ chuyên môn, nhưng cũng có cả những bài mẫu tiếng Việt để luyện dịch sang tiếng Hàn để giúp các bạn làm công tác biên phiên dịch có thể dịch một cách nhuần nguyễn và giống người bản xứ hơn.', '2023-11-20', 22, 20, 0, 152, 0, 0),
(75, '3000 Từ Vựng Tiếng Hàn Theo Chủ Đề (Tái Bản 2022)', 'Trường Hàn Ngữ Việt Hàn Kanata', 56000, 'Ngày nay, trong bối cảnh quan hệ hợp tác giữa Việt Nam và Hàn Quốc ngày càng được đẩy mạnh, đồng nghĩa với việc nhu cầu học tiếng Hàn ngày càng tăng cao. Trong tiếng Hàn, việc học từ vựng được xem là một trong những bước đệm đầu tiên và quan trọng nhất.', '2023-11-20', 22, 20, 0, 154, 0, 0),
(76, 'Giáo Trình Chuẩn HSK 1 (Tái Bản 2022)', 'Khương lệ Bình', 119000, 'Giáo Trình Chuẩn HSK 1 (Tái Bản 2022)\r\nĐược chia thành 6 cấp độ với tổng cộng 18 cuốn, Giáo trình chuẩn HSK có những đặc điểm nổi bật sau:\r\n• Kết hợp thi cử và giảng dạy: Được biên soạn phù hợp với nội dung, hình thức cũng như các cấp độ của đề thi HSK thật, bộ sách này có thể được sử dụng đồng thời cho cả hai mục đích là giảng dạy tiếng Trung Quốc và luyện thi HSK. • Bố cục chặt chẽ và khoa học: Các điểm ngữ pháp được giải thích cặn kẽ, phần ngữ âm và chữ Hán được trình bày từ đơn giản đến phức tạp theo từng cấp độ.\r\n• Đề tài quen thuộc, nhiều tình huống thực tế: Bài học được thiết kế không quá dài và đề cập đến nhiều tình huống (có file MP3 kèm theo), giúp bạn rèn luyện các kỹ năng ngôn ngữ và tránh cảm giác căng thẳng trong lúc học. • Cách viết thú vị: Bằng cách viết sinh động kèm nhiều hình ảnh minh họa, tác giả bộ sách chỉ cho bạn thấy học tiếng Trung Quốc không hề khô khan, nhàm chán.\r\nVới nhiều ưu điểm nổi bật như vừa nêu, Giáo trình chuẩn HSK không chỉ là tài liệu giảng dạy hữu ích ở các trung tâm dạy tiếng Trung Quốc mà còn rất thích hợp với những người muốn tự học ngôn ngữ này.\r\nGiáo Trình Chuẩn HSK 1 (Tái Bản 2022)\r\nĐược chia thành 6 cấp độ với tổng cộng 18 cuốn, Giáo trình chuẩn HSK có những đặc điểm nổi bật sau:\r\n• Kết hợp thi cử và giảng dạy: Được biên soạn phù hợp với nội dung, hình thức cũng như các cấp độ của đề thi HSK thật, bộ sách này có thể được sử dụng đồng thời cho cả hai mục đích là giảng dạy tiếng Trung Quốc và luyện thi HSK. • Bố cục chặt chẽ và khoa học: Các điểm ngữ pháp được giải thích cặn kẽ, phần ngữ âm và chữ Hán được trình bày từ đơn giản đến phức tạp theo từng cấp độ.\r\n• Đề tài quen thuộc, nhiều tình huống thực tế: Bài học được thiết kế không quá dài và đề cập đến nhiều tình huống (có file MP3 kèm theo), giúp bạn rèn luyện các kỹ năng ngôn ngữ và tránh cảm giác căng thẳng trong lúc học. • Cách viết thú vị: Bằng cách viết sinh động kèm nhiều hình ảnh minh họa, tác giả bộ sách chỉ cho bạn thấy học tiếng Trung Quốc không hề khô khan, nhàm chán.\r\nVới nhiều ưu điểm nổi bật như vừa nêu, Giáo trình chuẩn HSK không chỉ là tài liệu giảng dạy hữu ích ở các trung tâm dạy tiếng Trung Quốc mà còn rất thích hợp với những người muốn tự học ngôn ngữ này.', '2023-11-20', 23, 20, 0, 156, 0, 0),
(77, 'Giáo Trình Chuẩn HSK 2 (Tái Bản)', 'Khương Lệ Bình, Vương Phong, Lưu Lệ Bình, Vương Phương', 150000, 'Giáo Trình Chuẩn HSK 2 (Tái Bản)\r\nĐược chia thành 6 cấp độ với tổng cộng 18 cuốn, Giáo trình chuẩn HSK có những đặc điểm nổi bật sau:\r\nKết hợp thi cử và giảng dạy: Được biên soạn phù hợp với nội dung, hình thức cũng như các cấp độ của đề thi HSK thật, bộ sách này có thể được sử dụng đồng thời cho cả hai mục đích là giảng dạy tiếng Trung Quốc và luyện thi HSK.\r\nBố cục chặt chẽ và khoa học: Các điểm ngữ pháp được giải thích cặn kẽ, phần ngữ âm và chữ Hán được trình bày từ đơn giản đến phức tạp theo từng cấp độ.\r\nĐề tài quen thuộc, nhiều tình huống thực tế: Bài học được thiết kế không quá dài và đề cập đến nhiều tình huống (có đĩa MP3 kèm theo), giúp bạn rèn luyện các kỹ năng ngôn ngữ và tránh cảm giác căng thẳng trong lúc học.\r\nCách viết thú vị: Bằng cách viết sinh động kèm nhiều hình ảnh minh họa, tác giả bộ sách chỉ cho bạn thấy học tiếng Trung Quốc không hề khô khan, nhàm chán.\r\nVới nhiều ưu điểm nổi bật như vừa nêu, Giáo trình chuẩn HSK không chỉ là tài liệu giảng dạy hữu ích ở các trung tâm dạy tiếng Trung Quốc mà còn rất thích hợp với những người muốn tự học ngôn ngữ này.', '2023-11-20', 23, 20, 0, 158, 0, 0),
(78, 'Giáo Trình Chuẩn HSK 3', 'Khương Lệ Bình', 205000, 'Được chia thành 6 cấp độ với tổng cộng 18 cuốn, Giáo trình chuẩn HSK có những đặc điểm nổi bật sau:\r\nKết hợp thi cử và giảng dạy: Được biên soạn phù hợp với nội dung, hình thức cũng như các cấp độ của đề thi HSK thật, bộ sách này có thể được sử dụng đồng thời cho cả hai mục đích là giảng dạy tiếng Trung Quốc và luyện thi HSK.\r\nBố cục chặt chẽ và khoa học: Các điểm ngữ pháp được giải thích cặn kẽ, phần ngữ âm và chữ Hán được trình bày từ đơn giản đến phức tạp theo từng cấp độ.\r\nĐề tài quen thuộc, nhiều tình huống thực tế: Bài học được thiết kế không quá dài và đề cập đến nhiều tình huống (có đĩa MP3 kèm theo), giúp bạn rèn luyện các kỹ năng ngôn ngữ và tránh cảm giác căng thẳng trong lúc học.\r\nCách viết thú vị: Bằng cách viết sinh động kèm nhiều hình ảnh minh họa, tác giả bộ sách chỉ cho bạn thấy học tiếng Trung Quốc không hề khô khan, nhàm chán.\r\nVới nhiều ưu điểm nổi bật như vừa nêu, Giáo trình chuẩn HSK không chỉ là tài liệu giảng dạy hữu ích ở các trung tâm dạy tiếng Trung Quốc mà còn rất thích hợp với những người muốn tự học ngôn ngữ này.\r\nVài nét về tác giả:\r\nKhương Lệ Bình là giáo sư ở Đại học Ngôn ngữ Bắc Kinh và cũng là người hướng dẫn cho các học viên cao học. Lĩnh vực nghiên cứu chủ yếu của bà là lý luận dạy học, phương pháp dạy học và tài liệu giảng dạy tiếng Trung Quốc. Nhiều sách chuyên ngành và tài liệu giảng dạy của bà đã được xuất bản. Bà cũng từng đến dạy học ở các quốc gia như Mỹ, Nhật Bản, Hongkong, Thái Lan.', '2023-11-20', 23, 20, 0, 160, 0, 0);
INSERT INTO `books` (`id`, `title`, `author`, `price`, `description`, `date`, `category_id`, `quantity_remaining`, `quantity_sold`, `img_main_id`, `rating`, `isDelete`) VALUES
(79, 'Giáo Trình Chuẩn HSK 4 - Tập 1', 'Khương Lệ Bình', 162000, 'Được chia thành 6 cấp độ với tổng cộng 18 cuốn, Giáo trình chuẩn HSK có những đặc điểm nổi bật sau:\r\nKết hợp thi cử và giảng dạy: Được biên soạn phù hợp với nội dung, hình thức cũng như các cấp độ của đề thi HSK thật, bộ sách này có thể được sử dụng đồng thời cho cả hai mục đích là giảng dạy tiếng Trung Quốc và luyện thi HSK.\r\nBố cục chặt chẽ và khoa học: Các điểm ngữ pháp được giải thích cặn kẽ, phần ngữ âm và chữ Hán được trình bày từ đơn giản đến phức tạp theo từng cấp độ.\r\nĐề tài quen thuộc, nhiều tình huống thực tế: Bài học được thiết kế không quá dài và đề cập đến nhiều tình huống (có đĩa MP3 kèm theo), giúp bạn rèn luyện các kỹ năng ngôn ngữ và tránh cảm giác căng thẳng trong lúc học.\r\nCách viết thú vị: Bằng cách viết sinh động kèm nhiều hình ảnh minh họa, tác giả bộ sách chỉ cho bạn thấy học tiếng Trung Quốc không hề khô khan, nhàm chán.\r\nVới nhiều ưu điểm nổi bật như vừa nêu, Giáo trình chuẩn HSK không chỉ là tài liệu giảng dạy hữu ích ở các trung tâm dạy tiếng Trung Quốc mà còn rất thích hợp với những người muốn tự học ngôn ngữ này.\r\nVài nét về tác giả:\r\nKhương Lệ Bình là giáo sư ở Đại học Ngôn ngữ Bắc Kinh và cũng là người hướng dẫn cho các học viên cao học. Lĩnh vực nghiên cứu chủ yếu của bà là lý luận dạy học, phương pháp dạy học và tài liệu giảng dạy tiếng Trung Quốc. Nhiều sách chuyên ngành và tài liệu giảng dạy của bà đã được xuất bản. Bà cũng từng đến dạy học ở các quốc gia như Mỹ, Nhật Bản, Hongkong, Thái Lan.', '2023-11-20', 23, 20, 0, 162, 0, 0),
(80, 'Giáo Trình Chuẩn HSK 4 - Tập 2', 'Khương Lệ Bình', 180000, 'Được chia thành 6 cấp độ với tổng cộng 18 cuốn, Giáo trình chuẩn HSK có những đặc điểm nổi bật sau:\r\nKết hợp thi cử và giảng dạy: Được biên soạn phù hợp với nội dung, hình thức cũng như các cấp độ của đề thi HSK thật, bộ sách này có thể được sử dụng đồng thời cho cả hai mục đích là giảng dạy tiếng Trung Quốc và luyện thi HSK.\r\nBố cục chặt chẽ và khoa học: Các điểm ngữ pháp được giải thích cặn kẽ, phần ngữ âm và chữ Hán được trình bày từ đơn giản đến phức tạp theo từng cấp độ.\r\nĐề tài quen thuộc, nhiều tình huống thực tế: Bài học được thiết kế không quá dài và đề cập đến nhiều tình huống (có đĩa MP3 kèm theo), giúp bạn rèn luyện các kỹ năng ngôn ngữ và tránh cảm giác căng thẳng trong lúc học.\r\nCách viết thú vị: Bằng cách viết sinh động kèm nhiều hình ảnh minh họa, tác giả bộ sách chỉ cho bạn thấy học tiếng Trung Quốc không hề khô khan, nhàm chán.\r\nVới nhiều ưu điểm nổi bật như vừa nêu, Giáo trình chuẩn HSK không chỉ là tài liệu giảng dạy hữu ích ở các trung tâm dạy tiếng Trung Quốc mà còn rất thích hợp với những người muốn tự học ngôn ngữ này.\r\nVài nét về tác giả:\r\nKhương Lệ Bình là giáo sư ở Đại học Ngôn ngữ Bắc Kinh và cũng là người hướng dẫn cho các học viên cao học. Lĩnh vực nghiên cứu chủ yếu của bà là lý luận dạy học, phương pháp dạy học và tài liệu giảng dạy tiếng Trung Quốc. Nhiều sách chuyên ngành và tài liệu giảng dạy của bà đã được xuất bản. Bà cũng từng đến dạy học ở các quốc gia như Mỹ, Nhật Bản, Hongkong, Thái Lan.', '2023-11-20', 23, 20, 0, 164, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `parent_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `parent_id`) VALUES
(1, 'Tâm Lý – Kỹ Năng Sống', NULL),
(2, 'Sách Giáo Khoa – Sách Tham Khảo', NULL),
(3, 'Sách Thiếu Nhi', NULL),
(4, 'Sách Văn Học', NULL),
(5, 'Sách Ngoại Ngữ', NULL),
(6, 'Kỹ năng sống', 1),
(7, 'Tâm lý', 1),
(8, 'Rèn luyện nhân cách', 1),
(9, 'Cấp 1', 2),
(10, 'Cấp 2', 2),
(11, 'Cấp 3', 2),
(12, 'Truyện tranh thiếu nhi', 3),
(13, 'Tô màu – luyện chữ', 3),
(14, 'Tiểu Thuyết', 4),
(17, 'Ngôn Tình', 4),
(18, 'Thơ Ca – Ca Dao', 4),
(19, 'Tiếng Anh', 5),
(20, 'Tiếng Nhật', 5),
(21, 'Tiếng Đức', 5),
(22, 'Tiếng Hàn', 5),
(23, 'Tiếng Hoa', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `favorites`
--

CREATE TABLE `favorites` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `book_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `favorites`
--

INSERT INTO `favorites` (`id`, `user_id`, `book_id`) VALUES
(1, 1, 6),
(2, 1, 1),
(3, 2, 2),
(4, 3, 7),
(5, 5, 10),
(6, 6, 8),
(7, 6, 9),
(8, 6, 11),
(9, 6, 34),
(10, 6, 14),
(11, 6, 3),
(12, 6, 28);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `images`
--

CREATE TABLE `images` (
  `image_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `key` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `images`
--

INSERT INTO `images` (`image_id`, `product_id`, `image_url`, `key`) VALUES
(1, 1, 'https://res.cloudinary.com/dyd7dxaeh/image/upload/v1699868260/sach_online/hktuv5peqa8f8q5fxbdj.jpg', 'sach_online/hktuv5peqa8f8q5fxbdj'),
(2, 1, 'https://res.cloudinary.com/dyd7dxaeh/image/upload/v1699868259/sach_online/kppxcwlvaalxtbyfi8zt.jpg', 'sach_online/kppxcwlvaalxtbyfi8zt'),
(3, 2, 'https://res.cloudinary.com/dyd7dxaeh/image/upload/v1699868757/sach_online/eho60jmbukhnga1fv7aa.jpg', 'sach_online/eho60jmbukhnga1fv7aa'),
(4, 2, 'https://res.cloudinary.com/dyd7dxaeh/image/upload/v1699868758/sach_online/wztgcnul7mkpke19jcu7.jpg', 'sach_online/wztgcnul7mkpke19jcu7'),
(5, 3, 'https://res.cloudinary.com/dyd7dxaeh/image/upload/v1699868814/sach_online/y7yfj8qkebdgpqkukhcv.jpg', 'sach_online/y7yfj8qkebdgpqkukhcv'),
(6, 3, 'https://res.cloudinary.com/dyd7dxaeh/image/upload/v1699868813/sach_online/js4iyin5ox4v7nibcmur.jpg', 'sach_online/js4iyin5ox4v7nibcmur'),
(7, 4, 'https://res.cloudinary.com/dyd7dxaeh/image/upload/v1699868975/sach_online/ciancmsanuwhonjj5lxr.jpg', 'sach_online/ciancmsanuwhonjj5lxr'),
(8, 4, 'https://res.cloudinary.com/dyd7dxaeh/image/upload/v1699868977/sach_online/qdvxraskqewzzegz602c.jpg', 'sach_online/qdvxraskqewzzegz602c'),
(11, 6, 'https://res.cloudinary.com/dyd7dxaeh/image/upload/v1699869086/sach_online/m9zxlb8xg5fochua6tkz.jpg', 'sach_online/m9zxlb8xg5fochua6tkz'),
(12, 6, 'https://res.cloudinary.com/dyd7dxaeh/image/upload/v1699869087/sach_online/utnhuk83fntnfegsooec.jpg', 'sach_online/utnhuk83fntnfegsooec'),
(13, 7, 'https://res.cloudinary.com/dccufaric/image/upload/v1700454346/sach_online/o8szql4na49fjdytx7pt.jpg', 'sach_online/o8szql4na49fjdytx7pt'),
(14, 7, 'https://res.cloudinary.com/dccufaric/image/upload/v1700454345/sach_online/e5tbjke2ndtoegdjdz5i.jpg', 'sach_online/e5tbjke2ndtoegdjdz5i'),
(15, 7, 'https://res.cloudinary.com/dccufaric/image/upload/v1700454460/sach_online/rcwrny25spjybiljupnt.jpg', 'sach_online/rcwrny25spjybiljupnt'),
(16, 8, 'https://res.cloudinary.com/dccufaric/image/upload/v1700455387/sach_online/nazve5jlaw2pk4igxalq.png', 'sach_online/nazve5jlaw2pk4igxalq'),
(17, 8, 'https://res.cloudinary.com/dccufaric/image/upload/v1700455390/sach_online/hbmeeb2cxwhphieog1lq.png', 'sach_online/hbmeeb2cxwhphieog1lq'),
(18, 9, 'https://res.cloudinary.com/dccufaric/image/upload/v1700455737/sach_online/jma2w0zwoa8vw1wx3exe.jpg', 'sach_online/jma2w0zwoa8vw1wx3exe'),
(19, 9, 'https://res.cloudinary.com/dccufaric/image/upload/v1700455737/sach_online/dn7h5loqndzogdprc8sm.jpg', 'sach_online/dn7h5loqndzogdprc8sm'),
(20, 9, 'https://res.cloudinary.com/dccufaric/image/upload/v1700455737/sach_online/htl57zx58v5oad7yiqde.jpg', 'sach_online/htl57zx58v5oad7yiqde'),
(21, 10, 'https://res.cloudinary.com/dccufaric/image/upload/v1700455789/sach_online/hzyabwdhoif6z0lffigs.jpg', 'sach_online/hzyabwdhoif6z0lffigs'),
(22, 10, 'https://res.cloudinary.com/dccufaric/image/upload/v1700455788/sach_online/zwo54zwfumgimg7n9ibq.jpg', 'sach_online/zwo54zwfumgimg7n9ibq'),
(23, 11, 'https://res.cloudinary.com/dccufaric/image/upload/v1700456026/sach_online/oede3aea9xqasehpwf05.jpg', 'sach_online/oede3aea9xqasehpwf05'),
(24, 11, 'https://res.cloudinary.com/dccufaric/image/upload/v1700456025/sach_online/ayz4ih5b24doszggfedu.jpg', 'sach_online/ayz4ih5b24doszggfedu'),
(25, 11, 'https://res.cloudinary.com/dccufaric/image/upload/v1700456026/sach_online/uhnk5iylc0gpkr4ptcud.jpg', 'sach_online/uhnk5iylc0gpkr4ptcud'),
(26, 12, 'https://res.cloudinary.com/dccufaric/image/upload/v1700456175/sach_online/y6hgkbolyrj917vfhe2g.jpg', 'sach_online/y6hgkbolyrj917vfhe2g'),
(27, 12, 'https://res.cloudinary.com/dccufaric/image/upload/v1700456175/sach_online/lqzvcoslsycfdtnu8i63.png', 'sach_online/lqzvcoslsycfdtnu8i63'),
(28, 13, 'https://res.cloudinary.com/dccufaric/image/upload/v1700456229/sach_online/idfil2hvcmx3awqtgzkl.jpg', 'sach_online/idfil2hvcmx3awqtgzkl'),
(29, 13, 'https://res.cloudinary.com/dccufaric/image/upload/v1700456229/sach_online/elirbymbqmy3y5g762tm.jpg', 'sach_online/elirbymbqmy3y5g762tm'),
(30, 14, 'https://res.cloudinary.com/dccufaric/image/upload/v1700456279/sach_online/xualkskgvurqs0zltfk3.jpg', 'sach_online/xualkskgvurqs0zltfk3'),
(31, 14, 'https://res.cloudinary.com/dccufaric/image/upload/v1700456280/sach_online/bccucfapdr6j1lllhcnh.jpg', 'sach_online/bccucfapdr6j1lllhcnh'),
(32, 15, 'https://res.cloudinary.com/dccufaric/image/upload/v1700456326/sach_online/yutn1siy16phe3l92enx.jpg', 'sach_online/yutn1siy16phe3l92enx'),
(33, 15, 'https://res.cloudinary.com/dccufaric/image/upload/v1700456327/sach_online/blq1ppqxod0srbfiyts7.jpg', 'sach_online/blq1ppqxod0srbfiyts7'),
(34, 16, 'https://res.cloudinary.com/dccufaric/image/upload/v1700456370/sach_online/tteweqbzrmbyalxymhts.jpg', 'sach_online/tteweqbzrmbyalxymhts'),
(35, 16, 'https://res.cloudinary.com/dccufaric/image/upload/v1700456372/sach_online/ihcw30fsl3qlbzo7aox4.jpg', 'sach_online/ihcw30fsl3qlbzo7aox4'),
(36, 17, 'https://res.cloudinary.com/dccufaric/image/upload/v1700456471/sach_online/grl47njiyy0hxa88i6lv.jpg', 'sach_online/grl47njiyy0hxa88i6lv'),
(37, 17, 'https://res.cloudinary.com/dccufaric/image/upload/v1700456471/sach_online/g0ndxnxyzenoiuloptkt.jpg', 'sach_online/g0ndxnxyzenoiuloptkt'),
(38, 18, 'https://res.cloudinary.com/dccufaric/image/upload/v1700456539/sach_online/gn5hux5drh4dod9ce8hl.jpg', 'sach_online/gn5hux5drh4dod9ce8hl'),
(39, 18, 'https://res.cloudinary.com/dccufaric/image/upload/v1700456539/sach_online/wt0q05w4qafcinpujt4k.jpg', 'sach_online/wt0q05w4qafcinpujt4k'),
(40, 19, 'https://res.cloudinary.com/dccufaric/image/upload/v1700456603/sach_online/c4s00yijrb4uzpenpyme.jpg', 'sach_online/c4s00yijrb4uzpenpyme'),
(41, 19, 'https://res.cloudinary.com/dccufaric/image/upload/v1700456603/sach_online/r3fb14snrnkpr9htqvqn.jpg', 'sach_online/r3fb14snrnkpr9htqvqn'),
(42, 20, 'https://res.cloudinary.com/dccufaric/image/upload/v1700456676/sach_online/duuohvgjxllnmcxdwyll.jpg', 'sach_online/duuohvgjxllnmcxdwyll'),
(43, 20, 'https://res.cloudinary.com/dccufaric/image/upload/v1700456677/sach_online/j7w46a22rmj9qzltldam.jpg', 'sach_online/j7w46a22rmj9qzltldam'),
(44, 21, 'https://res.cloudinary.com/dccufaric/image/upload/v1700456748/sach_online/h193iqruxtdtixxlrff2.jpg', 'sach_online/h193iqruxtdtixxlrff2'),
(45, 21, 'https://res.cloudinary.com/dccufaric/image/upload/v1700456749/sach_online/epjnfft3ymfwuohir6p7.jpg', 'sach_online/epjnfft3ymfwuohir6p7'),
(46, 22, 'https://res.cloudinary.com/dccufaric/image/upload/v1700457649/sach_online/yjxtqjdgbwp7exuwhgn7.jpg', 'sach_online/yjxtqjdgbwp7exuwhgn7'),
(47, 22, 'https://res.cloudinary.com/dccufaric/image/upload/v1700457650/sach_online/cc7kkzdxpigsk1w3j4xe.jpg', 'sach_online/cc7kkzdxpigsk1w3j4xe'),
(48, 23, 'https://res.cloudinary.com/dccufaric/image/upload/v1700457983/sach_online/ec4fsswvxrbyka5sqfba.jpg', 'sach_online/ec4fsswvxrbyka5sqfba'),
(49, 23, 'https://res.cloudinary.com/dccufaric/image/upload/v1700457985/sach_online/ta3a1ekmz3banqh3lwoo.jpg', 'sach_online/ta3a1ekmz3banqh3lwoo'),
(50, 24, 'https://res.cloudinary.com/dccufaric/image/upload/v1700458066/sach_online/kjbv5sxtujgqs0rzhl4t.jpg', 'sach_online/kjbv5sxtujgqs0rzhl4t'),
(51, 24, 'https://res.cloudinary.com/dccufaric/image/upload/v1700458068/sach_online/rpxbh9k2gwbpdd94un9h.jpg', 'sach_online/rpxbh9k2gwbpdd94un9h'),
(52, 25, 'https://res.cloudinary.com/dccufaric/image/upload/v1700458108/sach_online/q8veyqmw7ejckxcb3iy4.jpg', 'sach_online/q8veyqmw7ejckxcb3iy4'),
(53, 25, 'https://res.cloudinary.com/dccufaric/image/upload/v1700458107/sach_online/vwqfizs9jd5vrergpr67.jpg', 'sach_online/vwqfizs9jd5vrergpr67'),
(54, 26, 'https://res.cloudinary.com/dccufaric/image/upload/v1700458154/sach_online/j4fkkwknyrniruad4xao.jpg', 'sach_online/j4fkkwknyrniruad4xao'),
(55, 26, 'https://res.cloudinary.com/dccufaric/image/upload/v1700458155/sach_online/gwicdtaveqn06tw5phs1.jpg', 'sach_online/gwicdtaveqn06tw5phs1'),
(56, 27, 'https://res.cloudinary.com/dccufaric/image/upload/v1700458213/sach_online/kzpiv67fiucycxgjuswe.png', 'sach_online/kzpiv67fiucycxgjuswe'),
(57, 27, 'https://res.cloudinary.com/dccufaric/image/upload/v1700458215/sach_online/leww1s8jqidcfaepahlt.png', 'sach_online/leww1s8jqidcfaepahlt'),
(58, 28, 'https://res.cloudinary.com/dccufaric/image/upload/v1700458267/sach_online/ujhqd9tg1wiofayhrmdh.jpg', 'sach_online/ujhqd9tg1wiofayhrmdh'),
(59, 28, 'https://res.cloudinary.com/dccufaric/image/upload/v1700458267/sach_online/zx7aym7slceh0tomducs.jpg', 'sach_online/zx7aym7slceh0tomducs'),
(60, 29, 'https://res.cloudinary.com/dccufaric/image/upload/v1700458306/sach_online/iure4rcilieiyt0idabw.jpg', 'sach_online/iure4rcilieiyt0idabw'),
(61, 29, 'https://res.cloudinary.com/dccufaric/image/upload/v1700458306/sach_online/hqwwfpyehh1wneoyd7kn.jpg', 'sach_online/hqwwfpyehh1wneoyd7kn'),
(62, 30, 'https://res.cloudinary.com/dccufaric/image/upload/v1700458348/sach_online/mpfbwgypbcgj3rdb2x5o.jpg', 'sach_online/mpfbwgypbcgj3rdb2x5o'),
(63, 30, 'https://res.cloudinary.com/dccufaric/image/upload/v1700458349/sach_online/x4rs0qr7lc0lnphe3wfq.jpg', 'sach_online/x4rs0qr7lc0lnphe3wfq'),
(64, 31, 'https://res.cloudinary.com/dccufaric/image/upload/v1700458747/sach_online/g9vlai6ddig5mw1dprjz.jpg', 'sach_online/g9vlai6ddig5mw1dprjz'),
(65, 31, 'https://res.cloudinary.com/dccufaric/image/upload/v1700458748/sach_online/vyk4zqzichd9zdoqjkpb.jpg', 'sach_online/vyk4zqzichd9zdoqjkpb'),
(66, 32, 'https://res.cloudinary.com/dccufaric/image/upload/v1700458849/sach_online/d39x01ptmzxiyrs1hioe.jpg', 'sach_online/d39x01ptmzxiyrs1hioe'),
(67, 32, 'https://res.cloudinary.com/dccufaric/image/upload/v1700458850/sach_online/r4lugjv1vhx7unmpwf9e.jpg', 'sach_online/r4lugjv1vhx7unmpwf9e'),
(68, 33, 'https://res.cloudinary.com/dccufaric/image/upload/v1700469924/sach_online/mrfazmcm4jaiwcuswwie.png', 'sach_online/mrfazmcm4jaiwcuswwie'),
(70, 34, 'https://res.cloudinary.com/dccufaric/image/upload/v1700458959/sach_online/bd8jeigkcntwib3xdf9q.jpg', 'sach_online/bd8jeigkcntwib3xdf9q'),
(71, 34, 'https://res.cloudinary.com/dccufaric/image/upload/v1700458960/sach_online/rszdvovwbw6ilwrz90ek.jpg', 'sach_online/rszdvovwbw6ilwrz90ek'),
(72, 35, 'https://res.cloudinary.com/dccufaric/image/upload/v1700459054/sach_online/lsupujthfz6slzcpbvl9.jpg', 'sach_online/lsupujthfz6slzcpbvl9'),
(73, 35, 'https://res.cloudinary.com/dccufaric/image/upload/v1700459055/sach_online/zbtsphzf1syyfpcfowhy.jpg', 'sach_online/zbtsphzf1syyfpcfowhy'),
(74, 36, 'https://res.cloudinary.com/dccufaric/image/upload/v1700459099/sach_online/dgn5qkvmxcut8wqdjupq.jpg', 'sach_online/dgn5qkvmxcut8wqdjupq'),
(75, 36, 'https://res.cloudinary.com/dccufaric/image/upload/v1700459101/sach_online/otht15apfhyqllhzpcf5.jpg', 'sach_online/otht15apfhyqllhzpcf5'),
(76, 37, 'https://res.cloudinary.com/dccufaric/image/upload/v1700459142/sach_online/cr6h6mlg5f106dm012ib.jpg', 'sach_online/cr6h6mlg5f106dm012ib'),
(77, 37, 'https://res.cloudinary.com/dccufaric/image/upload/v1700459144/sach_online/agd77vymysixn93hwecd.jpg', 'sach_online/agd77vymysixn93hwecd'),
(78, 38, 'https://res.cloudinary.com/dccufaric/image/upload/v1700459185/sach_online/il0klzrc3kg9n6mawkkd.jpg', 'sach_online/il0klzrc3kg9n6mawkkd'),
(79, 38, 'https://res.cloudinary.com/dccufaric/image/upload/v1700459186/sach_online/aqnzxlug7dthk9rmxask.jpg', 'sach_online/aqnzxlug7dthk9rmxask'),
(80, 39, 'https://res.cloudinary.com/dccufaric/image/upload/v1700459224/sach_online/ftp20ievya70gippkd6n.jpg', 'sach_online/ftp20ievya70gippkd6n'),
(81, 39, 'https://res.cloudinary.com/dccufaric/image/upload/v1700459225/sach_online/m0hvfeqif6qrg2xm436w.jpg', 'sach_online/m0hvfeqif6qrg2xm436w'),
(82, 40, 'https://res.cloudinary.com/dccufaric/image/upload/v1700459727/sach_online/lposejyhmmbpmkj70yye.jpg', 'sach_online/lposejyhmmbpmkj70yye'),
(83, 40, 'https://res.cloudinary.com/dccufaric/image/upload/v1700459728/sach_online/i6iwi5nuskrmckgpnq08.jpg', 'sach_online/i6iwi5nuskrmckgpnq08'),
(84, 41, 'https://res.cloudinary.com/dccufaric/image/upload/v1700459788/sach_online/ox6sfgulkbaqnomdbnoy.jpg', 'sach_online/ox6sfgulkbaqnomdbnoy'),
(85, 41, 'https://res.cloudinary.com/dccufaric/image/upload/v1700459787/sach_online/rkrxnsnd5dcgptskuc96.png', 'sach_online/rkrxnsnd5dcgptskuc96'),
(86, 41, 'https://res.cloudinary.com/dccufaric/image/upload/v1700459790/sach_online/g4zlnhhfdgglrmsddrcd.png', 'sach_online/g4zlnhhfdgglrmsddrcd'),
(87, 42, 'https://res.cloudinary.com/dccufaric/image/upload/v1700459849/sach_online/leykfnkhquuy3nms8gpb.jpg', 'sach_online/leykfnkhquuy3nms8gpb'),
(88, 42, 'https://res.cloudinary.com/dccufaric/image/upload/v1700459851/sach_online/dj0r2p7dpzfaiu2xweiq.jpg', 'sach_online/dj0r2p7dpzfaiu2xweiq'),
(89, 43, 'https://res.cloudinary.com/dccufaric/image/upload/v1700459898/sach_online/ckccllxsatzjj2vt9c28.jpg', 'sach_online/ckccllxsatzjj2vt9c28'),
(90, 43, 'https://res.cloudinary.com/dccufaric/image/upload/v1700459898/sach_online/ueekqfz7c7yqizygbq8e.jpg', 'sach_online/ueekqfz7c7yqizygbq8e'),
(91, 44, 'https://res.cloudinary.com/dccufaric/image/upload/v1700459936/sach_online/varn6jf2vjpv1ywsivbe.jpg', 'sach_online/varn6jf2vjpv1ywsivbe'),
(92, 44, 'https://res.cloudinary.com/dccufaric/image/upload/v1700459937/sach_online/assnbexg0ldparzhsvrk.jpg', 'sach_online/assnbexg0ldparzhsvrk'),
(93, 45, 'https://res.cloudinary.com/dccufaric/image/upload/v1700459976/sach_online/x6p0wd8ca2glwysk9liq.jpg', 'sach_online/x6p0wd8ca2glwysk9liq'),
(94, 45, 'https://res.cloudinary.com/dccufaric/image/upload/v1700459977/sach_online/mjgswblji5dhgfq44wp8.jpg', 'sach_online/mjgswblji5dhgfq44wp8'),
(95, 46, 'https://res.cloudinary.com/dccufaric/image/upload/v1700460008/sach_online/xo7sw2pvl31jatqw4xp7.jpg', 'sach_online/xo7sw2pvl31jatqw4xp7'),
(96, 46, 'https://res.cloudinary.com/dccufaric/image/upload/v1700460009/sach_online/u0lgx0vnqp7o9bfznjfd.jpg', 'sach_online/u0lgx0vnqp7o9bfznjfd'),
(97, 47, 'https://res.cloudinary.com/dccufaric/image/upload/v1700460051/sach_online/na0mugzjkdgjz6d60yet.jpg', 'sach_online/na0mugzjkdgjz6d60yet'),
(98, 47, 'https://res.cloudinary.com/dccufaric/image/upload/v1700460051/sach_online/qizu8boegtkyc9nw2nba.jpg', 'sach_online/qizu8boegtkyc9nw2nba'),
(99, 48, 'https://res.cloudinary.com/dccufaric/image/upload/v1700460091/sach_online/aanu7joiaezirxlndz5h.jpg', 'sach_online/aanu7joiaezirxlndz5h'),
(100, 48, 'https://res.cloudinary.com/dccufaric/image/upload/v1700460091/sach_online/z9d8hjehvvvkaeoiar85.jpg', 'sach_online/z9d8hjehvvvkaeoiar85'),
(101, 49, 'https://res.cloudinary.com/dccufaric/image/upload/v1700460135/sach_online/djdydcqyclmtega55ij2.jpg', 'sach_online/djdydcqyclmtega55ij2'),
(102, 49, 'https://res.cloudinary.com/dccufaric/image/upload/v1700460134/sach_online/qkebdkbautvijpoawpow.jpg', 'sach_online/qkebdkbautvijpoawpow'),
(103, 50, 'https://res.cloudinary.com/dccufaric/image/upload/v1700460184/sach_online/p09o6jiwlrufln4m52vz.jpg', 'sach_online/p09o6jiwlrufln4m52vz'),
(104, 50, 'https://res.cloudinary.com/dccufaric/image/upload/v1700460183/sach_online/g9g6ru6me4fabzejhkcl.jpg', 'sach_online/g9g6ru6me4fabzejhkcl'),
(105, 51, 'https://res.cloudinary.com/dccufaric/image/upload/v1700460214/sach_online/a1g5zqrbqhvi0469sb1r.jpg', 'sach_online/a1g5zqrbqhvi0469sb1r'),
(106, 51, 'https://res.cloudinary.com/dccufaric/image/upload/v1700460214/sach_online/hxjyjssw7wvhtwiub2ka.jpg', 'sach_online/hxjyjssw7wvhtwiub2ka'),
(107, 52, 'https://res.cloudinary.com/dccufaric/image/upload/v1700460252/sach_online/pmyfczehainj0tksxc79.jpg', 'sach_online/pmyfczehainj0tksxc79'),
(108, 52, 'https://res.cloudinary.com/dccufaric/image/upload/v1700460252/sach_online/wfrmrim8oeito1993ybh.jpg', 'sach_online/wfrmrim8oeito1993ybh'),
(109, 53, 'https://res.cloudinary.com/dccufaric/image/upload/v1700460289/sach_online/flh9aqf2aiw8j8ieyy2d.jpg', 'sach_online/flh9aqf2aiw8j8ieyy2d'),
(110, 53, 'https://res.cloudinary.com/dccufaric/image/upload/v1700460289/sach_online/yenl6fjbwvhnyrlzeuki.jpg', 'sach_online/yenl6fjbwvhnyrlzeuki'),
(111, 54, 'https://res.cloudinary.com/dccufaric/image/upload/v1700460330/sach_online/ujvma1txmj4gl5cdvdj7.jpg', 'sach_online/ujvma1txmj4gl5cdvdj7'),
(112, 54, 'https://res.cloudinary.com/dccufaric/image/upload/v1700460332/sach_online/xnvjbgya0a6xcfc0b7le.jpg', 'sach_online/xnvjbgya0a6xcfc0b7le'),
(113, 55, 'https://res.cloudinary.com/dccufaric/image/upload/v1700460548/sach_online/ergajx4ja0z4ceqxlllm.jpg', 'sach_online/ergajx4ja0z4ceqxlllm'),
(114, 55, 'https://res.cloudinary.com/dccufaric/image/upload/v1700460550/sach_online/jqdpm1ok7lw2tcci3jgw.jpg', 'sach_online/jqdpm1ok7lw2tcci3jgw'),
(115, 56, 'https://res.cloudinary.com/dccufaric/image/upload/v1700461703/sach_online/injnku6dmppxjonxgzhb.jpg', 'sach_online/injnku6dmppxjonxgzhb'),
(116, 56, 'https://res.cloudinary.com/dccufaric/image/upload/v1700461705/sach_online/l4nrtspe7tzsxyzb3cqq.jpg', 'sach_online/l4nrtspe7tzsxyzb3cqq'),
(117, 57, 'https://res.cloudinary.com/dccufaric/image/upload/v1700461745/sach_online/l9pl6dljwwjtcwbyaopu.jpg', 'sach_online/l9pl6dljwwjtcwbyaopu'),
(118, 57, 'https://res.cloudinary.com/dccufaric/image/upload/v1700461745/sach_online/vv3sr516jqiyj5a0j7sc.jpg', 'sach_online/vv3sr516jqiyj5a0j7sc'),
(119, 58, 'https://res.cloudinary.com/dccufaric/image/upload/v1700461786/sach_online/mdtondrqourf6ckv5nzh.jpg', 'sach_online/mdtondrqourf6ckv5nzh'),
(120, 58, 'https://res.cloudinary.com/dccufaric/image/upload/v1700461787/sach_online/nziximxro4jhbt5xvkym.jpg', 'sach_online/nziximxro4jhbt5xvkym'),
(121, 59, 'https://res.cloudinary.com/dccufaric/image/upload/v1700461855/sach_online/tvbfvsfumozopfyien6c.jpg', 'sach_online/tvbfvsfumozopfyien6c'),
(122, 59, 'https://res.cloudinary.com/dccufaric/image/upload/v1700461856/sach_online/z3zxaabuh2m2edyythwn.png', 'sach_online/z3zxaabuh2m2edyythwn'),
(123, 59, 'https://res.cloudinary.com/dccufaric/image/upload/v1700461857/sach_online/fesoofflbbumez1plnpi.png', 'sach_online/fesoofflbbumez1plnpi'),
(124, 60, 'https://res.cloudinary.com/dccufaric/image/upload/v1700461902/sach_online/gvpmbxt6aqnyn65vijn8.jpg', 'sach_online/gvpmbxt6aqnyn65vijn8'),
(125, 60, 'https://res.cloudinary.com/dccufaric/image/upload/v1700461902/sach_online/xbz55g00srz5yuudcjzu.jpg', 'sach_online/xbz55g00srz5yuudcjzu'),
(126, 61, 'https://res.cloudinary.com/dccufaric/image/upload/v1700461950/sach_online/ol7okouppt80sv0nlo8y.jpg', 'sach_online/ol7okouppt80sv0nlo8y'),
(127, 61, 'https://res.cloudinary.com/dccufaric/image/upload/v1700461950/sach_online/ldy8neuiw15a7ab2ajq2.jpg', 'sach_online/ldy8neuiw15a7ab2ajq2'),
(128, 62, 'https://res.cloudinary.com/dccufaric/image/upload/v1700461988/sach_online/qbwzqlcilyiihjaywm81.jpg', 'sach_online/qbwzqlcilyiihjaywm81'),
(129, 62, 'https://res.cloudinary.com/dccufaric/image/upload/v1700461988/sach_online/i5ao1v07exozrwbjwup7.jpg', 'sach_online/i5ao1v07exozrwbjwup7'),
(130, 63, 'https://res.cloudinary.com/dccufaric/image/upload/v1700462028/sach_online/iltibo7gjzdns9t1ns9h.jpg', 'sach_online/iltibo7gjzdns9t1ns9h'),
(131, 63, 'https://res.cloudinary.com/dccufaric/image/upload/v1700462028/sach_online/lpzj4f3wy7vzjk9acckx.jpg', 'sach_online/lpzj4f3wy7vzjk9acckx'),
(132, 64, 'https://res.cloudinary.com/dccufaric/image/upload/v1700462082/sach_online/prglia4lkdmqung7l0s9.jpg', 'sach_online/prglia4lkdmqung7l0s9'),
(133, 64, 'https://res.cloudinary.com/dccufaric/image/upload/v1700462083/sach_online/yagttw5re8fjmtny1spf.jpg', 'sach_online/yagttw5re8fjmtny1spf'),
(134, 65, 'https://res.cloudinary.com/dccufaric/image/upload/v1700462115/sach_online/xbctgkcmbojfhvqidnab.jpg', 'sach_online/xbctgkcmbojfhvqidnab'),
(135, 65, 'https://res.cloudinary.com/dccufaric/image/upload/v1700462116/sach_online/bgcuoropwtag7jwwzfd1.jpg', 'sach_online/bgcuoropwtag7jwwzfd1'),
(136, 66, 'https://res.cloudinary.com/dccufaric/image/upload/v1700462153/sach_online/voswbbagzymulzzh7peq.jpg', 'sach_online/voswbbagzymulzzh7peq'),
(137, 66, 'https://res.cloudinary.com/dccufaric/image/upload/v1700462155/sach_online/sq69b5xv9tifcyqf0he8.jpg', 'sach_online/sq69b5xv9tifcyqf0he8'),
(138, 67, 'https://res.cloudinary.com/dccufaric/image/upload/v1700462190/sach_online/ie9tdc4szfqo4hmp2frz.jpg', 'sach_online/ie9tdc4szfqo4hmp2frz'),
(139, 67, 'https://res.cloudinary.com/dccufaric/image/upload/v1700462190/sach_online/cmvhasg5imtnirko38pe.jpg', 'sach_online/cmvhasg5imtnirko38pe'),
(140, 68, 'https://res.cloudinary.com/dccufaric/image/upload/v1700462233/sach_online/aqv7h4faozqlxehsocuz.jpg', 'sach_online/aqv7h4faozqlxehsocuz'),
(141, 68, 'https://res.cloudinary.com/dccufaric/image/upload/v1700462232/sach_online/j896rxtizzunfnsikstd.jpg', 'sach_online/j896rxtizzunfnsikstd'),
(142, 69, 'https://res.cloudinary.com/dccufaric/image/upload/v1700462265/sach_online/wkoocyt7lxvvyvyvvlf0.jpg', 'sach_online/wkoocyt7lxvvyvyvvlf0'),
(143, 69, 'https://res.cloudinary.com/dccufaric/image/upload/v1700462264/sach_online/joopbypm9s2yk9bozqd8.jpg', 'sach_online/joopbypm9s2yk9bozqd8'),
(144, 70, 'https://res.cloudinary.com/dccufaric/image/upload/v1700468491/sach_online/fmkqhsat0iau8yemqfvk.png', 'sach_online/fmkqhsat0iau8yemqfvk'),
(146, 71, 'https://res.cloudinary.com/dccufaric/image/upload/v1700462345/sach_online/dcphtzfi0kpn7obrw0kk.jpg', 'sach_online/dcphtzfi0kpn7obrw0kk'),
(147, 71, 'https://res.cloudinary.com/dccufaric/image/upload/v1700462345/sach_online/djinpcyyk0wt3szhl6wm.jpg', 'sach_online/djinpcyyk0wt3szhl6wm'),
(148, 72, 'https://res.cloudinary.com/dccufaric/image/upload/v1700462394/sach_online/hhr2fnr9ng1s1vejsfpy.jpg', 'sach_online/hhr2fnr9ng1s1vejsfpy'),
(149, 72, 'https://res.cloudinary.com/dccufaric/image/upload/v1700462395/sach_online/vpfpgxkgzwobemqr5o2w.jpg', 'sach_online/vpfpgxkgzwobemqr5o2w'),
(150, 73, 'https://res.cloudinary.com/dccufaric/image/upload/v1700462431/sach_online/yzxd7jgqxpqq9dvwjanz.jpg', 'sach_online/yzxd7jgqxpqq9dvwjanz'),
(151, 73, 'https://res.cloudinary.com/dccufaric/image/upload/v1700462433/sach_online/ebkwxvbp9ysoqhzndeya.jpg', 'sach_online/ebkwxvbp9ysoqhzndeya'),
(152, 74, 'https://res.cloudinary.com/dccufaric/image/upload/v1700462474/sach_online/gpi8opgifqwn5rfimhft.jpg', 'sach_online/gpi8opgifqwn5rfimhft'),
(153, 74, 'https://res.cloudinary.com/dccufaric/image/upload/v1700462473/sach_online/k8vbreflgaz0dam0lqcy.jpg', 'sach_online/k8vbreflgaz0dam0lqcy'),
(154, 75, 'https://res.cloudinary.com/dccufaric/image/upload/v1700462504/sach_online/ciid2mxpup1tjcfm6epv.jpg', 'sach_online/ciid2mxpup1tjcfm6epv'),
(155, 75, 'https://res.cloudinary.com/dccufaric/image/upload/v1700462506/sach_online/fy1eplj97qnft8dsjy2u.jpg', 'sach_online/fy1eplj97qnft8dsjy2u'),
(156, 76, 'https://res.cloudinary.com/dccufaric/image/upload/v1700462547/sach_online/vcdgbnbqw8clxkcwibuz.jpg', 'sach_online/vcdgbnbqw8clxkcwibuz'),
(157, 76, 'https://res.cloudinary.com/dccufaric/image/upload/v1700462548/sach_online/j9c90mm2ze4nxvwuohgv.jpg', 'sach_online/j9c90mm2ze4nxvwuohgv'),
(158, 77, 'https://res.cloudinary.com/dccufaric/image/upload/v1700462577/sach_online/mfbfeg3c9cf7gtsmlowk.jpg', 'sach_online/mfbfeg3c9cf7gtsmlowk'),
(159, 77, 'https://res.cloudinary.com/dccufaric/image/upload/v1700462577/sach_online/udj25itguol52ejg1ihy.jpg', 'sach_online/udj25itguol52ejg1ihy'),
(160, 78, 'https://res.cloudinary.com/dccufaric/image/upload/v1700462617/sach_online/fdj9blspxxttbj6qhlpj.jpg', 'sach_online/fdj9blspxxttbj6qhlpj'),
(161, 78, 'https://res.cloudinary.com/dccufaric/image/upload/v1700462617/sach_online/eqqvvfxysfwubg0qfund.jpg', 'sach_online/eqqvvfxysfwubg0qfund'),
(162, 79, 'https://res.cloudinary.com/dccufaric/image/upload/v1700462658/sach_online/kbpvtty31n66qvecjzhw.jpg', 'sach_online/kbpvtty31n66qvecjzhw'),
(163, 79, 'https://res.cloudinary.com/dccufaric/image/upload/v1700462658/sach_online/jtqws40ouibcqusscory.jpg', 'sach_online/jtqws40ouibcqusscory'),
(164, 80, 'https://res.cloudinary.com/dccufaric/image/upload/v1700462690/sach_online/dhwd71o1wwtpnaiza1sb.jpg', 'sach_online/dhwd71o1wwtpnaiza1sb'),
(165, 80, 'https://res.cloudinary.com/dccufaric/image/upload/v1700462689/sach_online/omk6jimrwugs6cdhay0q.jpg', 'sach_online/omk6jimrwugs6cdhay0q'),
(166, 70, 'https://res.cloudinary.com/dccufaric/image/upload/v1700468494/sach_online/pwrhsoyf0wbgkzeqpdyc.png', 'sach_online/pwrhsoyf0wbgkzeqpdyc'),
(167, 33, 'https://res.cloudinary.com/dccufaric/image/upload/v1700469927/sach_online/hjrvlimkpmgyuv71qucr.png', 'sach_online/hjrvlimkpmgyuv71qucr');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_date` datetime DEFAULT NULL,
  `total_amount` decimal(10,0) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `name_des` varchar(100) DEFAULT NULL,
  `address_des` varchar(200) DEFAULT NULL,
  `phone_des` varchar(15) DEFAULT NULL,
  `gender_des` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `order_date`, `total_amount`, `status`, `name_des`, `address_des`, `phone_des`, `gender_des`) VALUES
(1, 1, '2023-11-13 16:54:58', 442000, 'Hủy', 'Hoai An', 'ĐN', '0349194837', NULL),
(2, 1, '2023-11-19 13:21:30', 277000, 'Hủy', 'Hoai An', 'ĐN', '0349194837', NULL),
(3, 2, '2023-11-19 14:21:42', 135000, 'Hoàn tất', 'Thành Trung ', 'Lâm Đồng', '0356424326', NULL),
(4, 3, '2023-11-20 14:55:12', 608000, 'Hoàn tất', 'Anh Ý', 'Tuy Hòa', '0822293069', NULL),
(5, 6, '2023-11-20 15:40:15', 234000, 'Hoàn tất', 'Trượng Thái Toàn', 'quận 12, tp HCM', '0393816391', NULL),
(6, 6, '2023-11-20 15:45:06', 443000, 'Hoàn tất', 'Trượng Thái Toàn', 'quận 12, tp HCM', '0393816391', NULL),
(7, 4, NULL, 246000, NULL, NULL, NULL, NULL, NULL),
(8, 6, '2023-11-20 15:50:03', 1128000, 'Hoàn tất', 'Trượng Thái Toàn', 'quận 12, tp HCM', '0393816391', NULL),
(9, 6, '2023-11-20 15:52:17', 1336000, 'Hoàn tất', 'Trượng Thái Toàn', 'quận 12, tp HCM', '0393816391', NULL),
(10, 6, '2023-11-20 16:04:48', 1270000, 'Hoàn tất', 'Trượng Thái Toàn', 'quận 12, tp HCM', '0393816391', NULL),
(11, 5, '2023-11-20 16:04:29', 50000, 'Hoàn tất', 'Nguyễn Minh Ý', 'Tuy Hòa - Phú Yên', '0822293069', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `book_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `book_id`, `quantity`, `price`) VALUES
(1, 1, 1, 2, 150000),
(2, 1, 6, 1, 142000),
(5, 2, 3, 2, 71000),
(6, 2, 2, 1, 135000),
(7, 3, 2, 1, 135000),
(8, 4, 7, 2, 116000),
(9, 4, 9, 1, 116000),
(10, 4, 12, 4, 65000),
(11, 5, 8, 1, 118000),
(12, 5, 9, 1, 116000),
(13, 6, 10, 1, 113000),
(14, 7, 7, 1, 116000),
(15, 7, 12, 2, 65000),
(16, 6, 34, 6, 55000),
(17, 8, 3, 5, 71000),
(18, 8, 17, 2, 194000),
(19, 8, 18, 1, 195000),
(20, 8, 21, 2, 95000),
(21, 9, 38, 5, 14000),
(22, 9, 25, 5, 98000),
(23, 9, 26, 4, 180000),
(24, 9, 28, 4, 14000),
(25, 10, 44, 6, 64000),
(26, 11, 35, 5, 10000),
(27, 10, 60, 2, 443000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rating`
--

CREATE TABLE `rating` (
  `id` int(11) NOT NULL,
  `book_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `stars` int(11) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `rating`
--

INSERT INTO `rating` (`id`, `book_id`, `user_id`, `stars`, `comment`, `date`) VALUES
(1, 1, 1, 5, 'ok', '2023-11-13 17:50:31'),
(2, 2, 2, 5, 'Sách hay ', '2023-11-19 14:21:26'),
(3, 7, 3, 4, 'Sách hay.', '2023-11-20 13:46:49'),
(4, 10, 5, 5, 'Sách j mà hay dữ v trời!!', '2023-11-20 15:27:24'),
(5, 8, 6, 5, 'Tuyệt vời', '2023-11-20 15:30:16'),
(6, 9, 6, 5, 'Sách đẹp!\n', '2023-11-20 15:34:04'),
(7, 10, 6, 5, 'Tâm lý học về tiền nhưng phải tốn tiền để mua :))', '2023-11-20 15:41:13'),
(8, 12, 4, 5, 'Sách hay quá .', '2023-11-20 15:41:37'),
(9, 31, 4, 5, 'Hay', '2023-11-20 15:41:52'),
(10, 11, 6, 5, 'Sách rất hay', '2023-11-20 15:42:21'),
(11, 14, 6, 5, 'Good', '2023-11-20 15:45:46'),
(12, 34, 6, 5, 'Sách hay', '2023-11-20 15:46:06'),
(13, 55, 5, 4, 'hay', '2023-11-20 15:46:29'),
(14, 3, 6, 5, 'Sách rất hay và ý nghĩa', '2023-11-20 15:47:55'),
(15, 17, 6, 5, 'Hay', '2023-11-20 15:48:58'),
(16, 18, 6, 4, 'hay', '2023-11-20 15:49:31'),
(17, 21, 6, 4, 'Tuyệt vời', '2023-11-20 15:49:55'),
(18, 38, 6, 5, 'Tuyệt', '2023-11-20 15:50:33'),
(19, 25, 6, 5, 'Tuyệt', '2023-11-20 15:50:58'),
(20, 26, 6, 5, 'Tuyệt vời', '2023-11-20 15:51:26'),
(21, 28, 6, 5, 'Tuyệt', '2023-11-20 15:51:58'),
(22, 44, 6, 5, 'Tuyệt vời', '2023-11-20 16:04:29');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `role` tinyint(1) NOT NULL DEFAULT 0,
  `date` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `phone_number`, `full_name`, `address`, `gender`, `role`, `date`) VALUES
(1, 'hoaian123', '$2b$10$OkKHVLr13QUog311PpTLdOMcXk3d1b0w0FCXVhofgsAJjk/oStBNy', '0349194837', 'Hoai An', 'ĐN', 1, 1, '2023-11-18'),
(2, 'thanhtrung123', '$2b$10$igJ/XS/wdbBf0.xUBY/8ROJlUuvPDZbbmmqhEWXEPprftjiNC2ae.', '0356424326', 'Thành Trung ', 'Lâm Đồng', 1, 0, '2023-11-19'),
(3, 'thaitoan1', '$2b$10$Di8nu2CNho7dzVetUHU5Y.YcTX1HgeFfpJS8rXqs7eyn37Fbk.MXG', '0346424328', 'Thái Toàn ', 'Thành Phố Hồ Chí Minh', 1, 0, '2023-11-19'),
(4, 'hongnhung1', '$2b$10$V1PU2HbMOhFN.S4MLarFNu8UoG.K.i5NF.GUnwwta/INCnuG1i2x.', '0356423261', 'Hồng Nhung', 'Bến Tre', 0, 0, '2023-11-19'),
(5, 'shyneddy', '$2b$10$DphCGpvigIQsZaO2c2bO/ubeGo7vkoc8ANlqnZwvQkbyi/0vK7XCW', '0822293069', 'Nguyễn Minh Ý', 'Tuy Hòa - Phú Yên', 1, 0, '2023-11-20'),
(6, 'Toan1003', '$2b$10$wYVX/l.s4KNKXC491kCPaO02h5RCb3.nwknPcb2NScMtXfT3w3KLG', '0393816391', 'Trượng Thái Toàn', 'quận 12, tp HCM', 1, 1, '2023-11-20');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`),
  ADD KEY `fk_img_main` (`img_main_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_categories_parent` (`parent_id`);

--
-- Chỉ mục cho bảng `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `book_id` (`book_id`);

--
-- Chỉ mục cho bảng `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`image_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `book_id` (`book_id`);

--
-- Chỉ mục cho bảng `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `book_id` (`book_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `images`
--
ALTER TABLE `images`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Các ràng buộc cho bảng `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `fk_categories_parent` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`);

--
-- Các ràng buộc cho bảng `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `favorites_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `favorites_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`);

--
-- Các ràng buộc cho bảng `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `books` (`id`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`);

--
-- Các ràng buộc cho bảng `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `rating_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`),
  ADD CONSTRAINT `rating_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
