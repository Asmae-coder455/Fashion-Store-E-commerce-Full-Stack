
CREATE DATABASE IF NOT EXISTS jenny_fashion_store;
USE jenny_fashion_store;
CREATE TABLE `carts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `prod_qty` int(11) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `prod_id` (`prod_id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO carts VALUES ('13','5','5','1','1800.00','2026-06-02 07:44:46');
INSERT INTO carts VALUES ('11','5','7','1','1700.00','2026-06-02 07:44:40');
INSERT INTO carts VALUES ('12','5','6','1','650.00','2026-06-02 07:44:42');
INSERT INTO carts VALUES ('24','7','13','1','3300.00','2026-06-06 13:05:26');


CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `added_by` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_by` varchar(100) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO categories VALUES ('1','Jewelry','jewelry.png','daniyal','2026-04-17 01:30:09','daniyal','2026-04-17 02:24:27');
INSERT INTO categories VALUES ('2','Makeup','1776346905_3943.jpg','daniyal','2026-04-17 01:35:58','','2026-04-17 01:35:58');
INSERT INTO categories VALUES ('3','Handbags','bags.jpg','daniyal','2026-04-17 01:38:35','','2026-04-17 01:38:35');
INSERT INTO categories VALUES ('4','jackets','jacket.png','daniyal','2026-04-17 01:39:40','','2026-04-17 01:39:40');
INSERT INTO categories VALUES ('5','coats','coats.png','daniyal','2026-04-17 01:40:52','','2026-04-17 01:40:52');
INSERT INTO categories VALUES ('6','shrugs','1776347137_1804.jpeg','daniyal','2026-04-17 01:45:24','','2026-04-17 01:45:24');
INSERT INTO categories VALUES ('7','flats','flats.png','daniyal','2026-04-17 01:55:10','','2026-04-17 01:55:10');


CREATE TABLE `contact_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT 0,
  `name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO contact_messages VALUES ('1','0','Daniyal Khan','daniyalkhan0445@gmail.com','Testing','Hey How are you this is for testing','1','2026-04-16 13:14:20');


CREATE TABLE `order_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `prod_id` (`prod_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO order_items VALUES ('1','1','19','1','6000.00','2026-04-16 14:51:31');
INSERT INTO order_items VALUES ('2','1','21','2','3200.00','2026-04-16 14:51:31');
INSERT INTO order_items VALUES ('3','1','3','3','33000.00','2026-04-16 14:51:31');
INSERT INTO order_items VALUES ('4','1','2','4','3400.00','2026-04-16 14:51:31');
INSERT INTO order_items VALUES ('5','1','1','5','16000.00','2026-04-16 14:51:31');
INSERT INTO order_items VALUES ('6','2','27','1','1200.00','2026-04-16 15:22:06');
INSERT INTO order_items VALUES ('7','2','8','1','2100.00','2026-04-16 15:22:06');
INSERT INTO order_items VALUES ('8','2','15','1','4800.00','2026-04-16 15:22:06');
INSERT INTO order_items VALUES ('9','3','4','1','1300.00','2026-04-16 15:22:58');
INSERT INTO order_items VALUES ('10','4','6','1','650.00','2026-06-06 10:41:18');
INSERT INTO order_items VALUES ('11','5','19','1','6000.00','2026-06-06 12:20:46');
INSERT INTO order_items VALUES ('12','5','18','1','6200.00','2026-06-06 12:20:46');
INSERT INTO order_items VALUES ('13','5','17','1','7000.00','2026-06-06 12:20:46');
INSERT INTO order_items VALUES ('14','6','8','1','2100.00','2026-06-06 12:27:43');
INSERT INTO order_items VALUES ('15','6','6','1','650.00','2026-06-06 12:27:43');
INSERT INTO order_items VALUES ('16','7','11','1','3200.00','2026-06-06 12:29:01');
INSERT INTO order_items VALUES ('17','8','11','1','3200.00','2026-06-06 13:03:37');
INSERT INTO order_items VALUES ('18','8','1','3','9600.00','2026-06-06 13:03:37');


CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tracking_no` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `work_phone_no` varchar(20) NOT NULL,
  `cell_no` varchar(20) NOT NULL,
  `date_of_birth` date NOT NULL,
  `address` text NOT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO orders VALUES ('1','TRK-20260416-00001','4','daniyalkhan','daniyalkhan@gmail.com','+921234567899','','2000-01-01','xyz Karachi Pakistan','','61600.00','1','2026-04-16 14:51:31');
INSERT INTO orders VALUES ('2','TRK-20260416-00002','4','daniyalkhan','daniyalkhan@gmail.com','+921234567899','','2000-01-01','XYZ Karachi','','8100.00','2','2026-04-16 15:22:06');
INSERT INTO orders VALUES ('3','TRK-20260416-00003','4','daniyalkhan','daniyalkhan@gmail.com','+921234567899','','2000-01-01','Testing','','1300.00','0','2026-04-16 15:22:58');
INSERT INTO orders VALUES ('4','TRK-20260606-00004','6','elayadi.kaoutaretu.uae.ac.ma','elayadi.kaoutar@etu.uae.ac.ma','+212650784009','','2000-01-01','N07 rue oued laabid sale','','650.00','1','2026-06-06 10:41:18');
INSERT INTO orders VALUES ('5','TRK-20260606-00005','7','otmani06hbgmail.com','otmani06hb@gmail.com','+212767717457','0767717457','2000-01-01','Rabat ,Agdal','','19200.00','1','2026-06-06 12:20:46');
INSERT INTO orders VALUES ('6','TRK-20260606-00006','7','otmani06hbgmail.com','otmani06hb@gmail.com','+212767717457','','2000-01-01','hjhk','','2750.00','1','2026-06-06 12:27:43');
INSERT INTO orders VALUES ('7','TRK-20260606-00007','7','otmani06hbgmail.com','otmani06hb@gmail.com','+212767717457','','2000-01-01','ghj','','3200.00','0','2026-06-06 12:29:01');
INSERT INTO orders VALUES ('8','TRK-20260606-00008','7','otmani06hbgmail.com','otmani06hb@gmail.com','+212767717457','','2000-01-01','RABAT , agdal','','12800.00','0','2026-06-06 13:03:37');


CREATE TABLE `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `s_description` text NOT NULL,
  `description` longtext NOT NULL,
  `d_price` decimal(10,2) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `remaining_quantity` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `trending` tinyint(4) NOT NULL DEFAULT 0,
  `image` varchar(255) NOT NULL,
  `added_by` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_by` varchar(100) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO products VALUES ('1','1','Gold Plated Necklace Set','Elegant gold plated necklace for party wear luxury','Beautiful gold plated necklace set designed for weddings and parties. Lightweight, skin friendly and durable with long lasting shine, perfect for formal and festive occasions.ideal gift for loved ones','3200.00','4500.00','10','5','1','1','1776350676_9804.webp','daniyal','2026-04-17 02:44:36','daniyal','2026-04-16 15:26:22');
INSERT INTO products VALUES ('2','1','Pearl Drop Earrings','Classic pearl drop earrings designed for everyday elegance and timeless fashion','Stylish pearl drop earrings that combine simplicity with elegance, making them perfect for both casual and formal outfits. These earrings are lightweight, comfortable to wear all day, and add a graceful charm to your overall appearance without compromising on comfort or durability.','850.00','1200.00','20','16','1','2','1776352691_8156.jpg','daniyal','2026-04-17 02:50:36','','2026-04-16 15:26:22');
INSERT INTO products VALUES ('3','1','Kundan Bridal Set','Traditional kundan bridal jewelry set ideal for weddings and festive occasions','Heavy and luxurious kundan bridal set that includes matching earrings and tikka, designed especially for brides and festive events. Its intricate craftsmanship and rich traditional design make it a standout piece, perfect for enhancing your bridal look with elegance and cultural charm.','11000.00','15000.00','120','117','1','1','1776352761_4838.jpg','daniyal','2026-04-17 02:51:36','','2026-04-16 15:26:22');
INSERT INTO products VALUES ('4','1','Silver Anklet Pair','Stylish silver anklet pair designed for daily wear and casual outfits','Elegant silver anklets crafted for everyday wear, offering both comfort and durability. These anklets feature an adjustable design that fits perfectly and complements casual as well as semi-formal outfits, adding a subtle yet stylish touch to your overall appearance.','1300.00','1800.00','15','15','1','0','1776352835_7162.webp','daniyal','2026-04-17 02:52:36','','2026-04-16 15:44:37');
INSERT INTO products VALUES ('5','2','Matte Liquid Lipstick Set','Long-lasting matte liquid lipstick set with rich color and smooth finish','A premium set of highly pigmented matte liquid lipsticks designed to provide long-lasting wear and vibrant color. The smooth formula ensures easy application without dryness, making it ideal for daily use, special events, and creating bold, beautiful looks effortlessly.','1800.00','2500.00','30','30','1','1','1776352937_9738.webp','daniyal','2026-04-17 02:53:36','','2026-04-16 15:44:42');
INSERT INTO products VALUES ('6','2','Waterproof Mascara','Smudge-proof waterproof mascara for volume, length, and all-day wear','High-quality waterproof mascara that enhances your lashes by adding both volume and length without clumping. Its smudge-proof formula ensures long-lasting performance throughout the day, making it perfect for daily wear, humid conditions, and special occasions.','650.00','900.00','25','23','1','2','1776352972_2414.webp','daniyal','2026-04-17 02:54:36','','2026-06-06 12:27:57');
INSERT INTO products VALUES ('7','2','Foundation Cream SPF 30','Smooth coverage foundation cream with SPF protection for all skin types','Lightweight foundation cream that provides natural-looking coverage while protecting your skin with SPF 30. Suitable for all skin types, it blends easily to give a smooth finish and helps protect against sun damage, making it ideal for everyday makeup routines.','1700.00','2200.00','20','20','1','1','1776353002_3287.webp','daniyal','2026-04-17 02:55:36','','2026-04-16 15:44:50');
INSERT INTO products VALUES ('8','2','Makeup Brush Set','Professional makeup brush set with soft bristles for flawless application','Complete makeup brush set designed for both beginners and professionals, featuring soft bristles and durable handles. Perfect for applying face and eye makeup with precision, this set ensures smooth blending and a flawless finish every time.','2100.00','3000.00','15','13','1','2','1776353249_7166.webp','daniyal','2026-04-17 02:56:36','','2026-06-06 12:27:57');
INSERT INTO products VALUES ('9','3','Leather Shoulder Bag','Premium leather shoulder bag with spacious compartments for daily use','Elegant leather shoulder bag designed for both office and casual use, offering multiple spacious compartments for easy organization. Its premium material and stylish design make it a reliable and fashionable accessory for everyday carrying needs.','3800.00','5000.00','12','12','1','1','1776353317_3288.webp','daniyal','2026-04-17 02:57:36','','2026-04-16 15:44:56');
INSERT INTO products VALUES ('10','3','Mini Crossbody Bag','Compact mini crossbody bag ideal for carrying daily essentials in style','Lightweight and practical mini crossbody bag designed for convenience and style. It features an adjustable strap and enough space to carry your essentials, making it perfect for daily outings, travel, or quick errands.','1800.00','2500.00','18','18','1','0','1776353369_5469.webp','daniyal','2026-04-17 02:58:36','','2026-04-16 15:44:59');
INSERT INTO products VALUES ('11','3','Designer Tote Bag','Large capacity designer tote bag suitable for shopping and travel needs','Stylish and spacious tote bag designed to carry all your essentials with ease. Ideal for shopping, office use, or travel, it features strong handles and a premium finish that combines functionality with a modern fashionable look.','3200.00','4200.00','10','10','1','1','1776353531_7672.png','daniyal','2026-04-17 02:59:36','','2026-04-16 18:43:53');
INSERT INTO products VALUES ('12','3','Clutch Evening Bag','Elegant evening clutch bag with shiny finish for weddings and parties','Beautifully designed evening clutch bag with a glossy finish, perfect for weddings, parties, and formal events. Its compact yet functional design allows you to carry essentials while adding a touch of glamour to your outfit.','2200.00','3000.00','14','14','1','0','1776353592_6393.jpg','daniyal','2026-04-17 03:00:36','','2026-04-16 15:45:06');
INSERT INTO products VALUES ('13','4','Winter Denim Jacket','Stylish winter denim jacket with warm inner lining for casual wear','Classic denim jacket designed with a warm inner lining to keep you comfortable during winter. Its stylish look makes it perfect for casual outings, while the durable material ensures long-lasting use in cold weather.','3300.00','4500.00','15','14','1','1','1776353630_8073.jpg','daniyal','2026-04-17 03:01:36','','2026-04-16 19:05:49');
INSERT INTO products VALUES ('14','4','Leather Biker Jacket','Trendy black leather biker jacket with modern fit and premium finish','Premium faux leather biker jacket designed for a bold and modern look. Featuring durable stitching and a comfortable fit, this jacket is perfect for casual wear and adds a stylish edge to your overall appearance.','5200.00','7000.00','10','10','1','1','1776353666_5415.webp','daniyal','2026-04-17 03:02:36','','2026-04-16 14:13:21');
INSERT INTO products VALUES ('15','4','Hooded Puffer Jacket','Warm hooded puffer jacket designed for extreme winter protection','Comfortable and insulated puffer jacket with a hood, built to provide maximum warmth in cold weather. Its padded design ensures protection against harsh conditions while maintaining a stylish and practical look.','4800.00','6500.00','12','10','1','2','1776353711_1827.jpg','daniyal','2026-04-17 03:03:36','','2026-04-16 15:26:31');
INSERT INTO products VALUES ('16','4','Casual Crop Jacket','Lightweight casual crop jacket perfect for outings and mild weather','Stylish cropped jacket designed for casual wear and mild weather conditions, offering a perfect blend of comfort and modern fashion. Its lightweight construction ensures ease of movement throughout the day, while the trendy cropped fit adds a fashionable edge to your outfit. Ideal for daily use, outings, or layering, this jacket enhances your overall look without compromising on comfort or versatility.','2500.00','3500.00','20','20','1','2','1776353788_2985.webp','daniyal','2026-04-17 03:04:36','','2026-04-16 15:45:15');
INSERT INTO products VALUES ('17','5','Double Breasted Coat','Stylish double breasted coat with warm lining and premium finish','Modern double breasted coat featuring a warm inner lining and a premium finish for enhanced comfort. Designed for winter wear, this coat combines fashion with functionality, making it suitable for formal outings, office use, and special occasions.','7000.00','9200.00','10','9','1','1','1776354425_6210.jpg','daniyal','2026-04-17 02:53:36','daniyal','2026-06-06 12:26:47');
INSERT INTO products VALUES ('18','5','Black Formal Coat','Elegant black formal coat ideal for business meetings and evening wear','High-quality black formal coat designed for professional and evening settings. Its premium fabric and tailored fit make it a reliable choice for winter business meetings and formal events, offering both comfort and a polished, refined appearance.','6200.00','8500.00','8','7','1','1','1776354462_7084.webp','daniyal','2026-04-17 02:52:36','daniyal','2026-06-06 12:26:47');
INSERT INTO products VALUES ('19','5','Beige Trench Coat','Classic beige trench coat suitable for office wear and formal occasions','Stylish beige trench coat designed to give a timeless and sophisticated look. Made with high-quality fabric, it is perfect for office wear, meetings, and formal outings. The comfortable fit and durable stitching ensure long-lasting use while keeping you stylish in all seasons.','6000.00','8000.00','12','10','1','2','1776354537_6166.webp','daniyal','2026-04-17 02:51:36','daniyal','2026-06-06 12:26:47');
INSERT INTO products VALUES ('20','5','Long Wool Coat','Elegant long wool coat designed for winter warmth and formal style wear','Premium long wool coat crafted to provide maximum warmth during cold weather while maintaining a sleek and elegant appearance. Its slim-fit design enhances your overall look, making it perfect for formal occasions, office wear, and winter outings without compromising on comfort and durability.','6800.00','9000.00','10','10','1','2','1776354588_1123.jpg','daniyal','2026-04-17 02:50:36','daniyal','2026-04-17 03:49:48');
INSERT INTO products VALUES ('21','6','Printed Long Shrug','Stylish printed long shrug designed for modern and trendy outfits','Elegant long shrug featuring attractive prints that enhance your overall outfit. Ideal for casual outings and modern fashion styles, it provides both comfort and a trendy look, making it a must-have layering piece.','1600.00','2200.00','18','16','1','2','1776355282_8679.jpg','daniyal','2026-04-17 03:00:36','daniyal','2026-04-16 15:26:22');
INSERT INTO products VALUES ('22','6','Open Front Shrug','Lightweight open front shrug suitable for all seasons and layering','Comfortable open front shrug designed for versatile wear throughout the year, making it a must-have layering piece for every wardrobe. Its lightweight and breathable fabric allows for easy styling over a variety of outfits, from casual to semi-formal looks, while ensuring all-day comfort. The relaxed fit and modern design provide a stylish appearance without compromising ease of movement, making it perfect for daily wear, travel, or seasonal transitions.','1100.00','1700.00','22','22','1','2','1776355194_1433.jpg','daniyal','2026-04-17 03:01:36','daniyal','2026-04-17 03:59:54');
INSERT INTO products VALUES ('23','6','Cotton Casual Shrug','Comfortable cotton shrug ideal for daily wear and casual outfits','Soft and breathable cotton shrug designed for everyday comfort. Perfect for casual wear, this shrug provides a relaxed fit and enhances your outfit with a simple yet stylish appearance suitable for all-day use.','1000.00','1500.00','20','20','1','1','1776355107_4325.jpg','daniyal','2026-04-17 02:59:36','daniyal','2026-04-17 03:58:27');
INSERT INTO products VALUES ('24','6','Black Net Shrug','Stylish black net shrug perfect for layering over dresses and tops','Lightweight black net shrug designed to complement dresses and tops effortlessly. Its breathable fabric and elegant design make it ideal for layering in all seasons, adding a stylish touch without making the outfit feel heavy.','1200.00','1800.00','25','25','1','1','1776355082_8797.jpg','daniyal','2026-04-17 02:58:36','daniyal','2026-04-17 03:58:02');
INSERT INTO products VALUES ('25','7','Leather Strap Flats','Durable leather strap flats designed for long-lasting casual wear','High-quality leather strap flats crafted for long-lasting durability and all-day comfort. Designed with precision, these flats provide a secure and supportive fit while maintaining a sleek and timeless appearance. Ideal for everyday casual wear, they effortlessly combine style and practicality, making them a versatile choice for any wardrobe. The premium materials ensure extended use without compromising on comfort or elegance.','1400.00','2000.00','20','20','1','1','1776354737_5431.webp','daniyal','2026-04-17 03:04:36','daniyal','2026-04-17 03:52:53');
INSERT INTO products VALUES ('26','7','Embellished Fancy Flats','Stylish embellished flats perfect for parties and festive occasions','Fancy flats featuring beautiful embellishments that add elegance to your outfit. Perfect for parties and festive gatherings, these flats combine comfort with style, making them ideal for special occasions.','1600.00','2200.00','15','15','1','1','1776354769_8010.webp','daniyal','2026-04-17 03:03:36','daniyal','2026-04-17 03:52:49');
INSERT INTO products VALUES ('27','7','Everyday Casual Flats','Comfortable casual flats designed for daily walking and long wear','Soft sole flats designed to provide maximum comfort for everyday use. Ideal for walking and long hours, these flats ensure durability, flexibility, and a stylish look that complements casual outfits perfectly.','1200.00','1800.00','25','24','1','2','1776354806_3346.webp','daniyal','2026-04-17 03:02:36','daniyal','2026-04-16 15:26:31');


CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `work_phone_no` varchar(20) DEFAULT NULL,
  `phone_no` varchar(20) DEFAULT NULL,
  `city_name` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `user_role` tinyint(4) NOT NULL DEFAULT 0,
  `added_by` varchar(100) NOT NULL DEFAULT 'System',
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_by` varchar(100) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO users VALUES ('1','Main','Admin','admin','','admin@gmail.com','$2y$10$rOmFCe4zO6h3mw.dGi36n.Yl7KorBy5Cglgc9XFT2u7AfOFT8zyaq','','','','','1','System','2026-04-16 13:16:20','admin','2026-04-17 04:04:37');
INSERT INTO users VALUES ('2','Jameson','Valentine','budyludano','','cabusyle@mailinator.com','$2y$10$axVdSSO.7kerFIHPBB5K1.3qSmGkSX96KrDhOrpMgQAUIPFlXYmhm','','','','','0','System','2026-04-16 15:42:27','','2026-04-16 15:42:27');
INSERT INTO users VALUES ('3','TaShya','Hatfield','rejilyp','','hasnain@gmail.com','$2y$10$3hszF51OPHLVM/ifwAQrSuqGqIWkiOMUa2DXq1y6ZSqzERf2DclOW','','','','','0','System','2026-04-16 15:43:34','','2026-04-16 15:43:34');
INSERT INTO users VALUES ('4','Daniyal','Khan','daniyalkhan','','daniyalkhan@gmail.com','$2y$10$yLuSM2wulgw21ACT04sEfeU0BfOg/DxrpvZQqGujNiqxG.kd.DJbm','03122106123','','Karachi','House No xyz','0','System','2026-04-16 18:58:05','daniyalkhan','2026-04-16 15:27:31');
INSERT INTO users VALUES ('5','kaoutar','elayadi','kawtar.elayadiicloud.com','','kawtar.elayadi@icloud.com','$2y$10$e1jkslzeF9HBhuhScDDW9eUI93mhKh4OyQGCJRkgygq7H/2BFgdKa','','','','','0','System','2026-06-02 07:42:25','','2026-06-02 07:42:25');
INSERT INTO users VALUES ('6','kaoutar','elayadi','elayadi.kaoutaretu.uae.ac.ma','','elayadi.kaoutar@etu.uae.ac.ma','$2y$10$lenyPpJmONAwQmpMKuV8yeoaruQSKQmUypRCNZbWsonO7mXdvFdyO','','','','','0','System','2026-06-06 10:40:00','','2026-06-06 10:40:00');
INSERT INTO users VALUES ('7','ELOTHEMANY','HIBA','otmani06hbgmail.com','','otmani06hb@gmail.com','$2y$10$Ghkvp1LfN5NkzlxQJ1okU.1pM2H2cB4V0P7M6IYIhq1G6fCA1GDOG','','','','','0','System','2026-06-06 12:19:08','','2026-06-06 12:19:08');
