-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1:3306
-- 產生時間： 2020-11-09 14:57:13
-- 伺服器版本： 8.0.18
-- PHP 版本： 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `mini_shop`
--
CREATE DATABASE IF NOT EXISTS `mini_shop` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `mini_shop`;

-- --------------------------------------------------------

--
-- 資料表結構 `bill`
--

CREATE TABLE `bill` (
  `bill_sn` mediumint(8) UNSIGNED NOT NULL COMMENT '帳單編號',
  `user_sn` mediumint(8) UNSIGNED NOT NULL COMMENT '購買人',
  `bill_total` mediumint(8) UNSIGNED NOT NULL COMMENT '總金額',
  `bill_date` datetime NOT NULL COMMENT '購買日期',
  `bill_status` varchar(255) NOT NULL COMMENT '處理狀態'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `bill_detail`
--

CREATE TABLE `bill_detail` (
  `bill_sn` mediumint(8) UNSIGNED NOT NULL COMMENT '帳單編號',
  `goods_sn` mediumint(8) UNSIGNED NOT NULL COMMENT '商品編號',
  `goods_amount` tinyint(3) UNSIGNED NOT NULL COMMENT '購買數量',
  `goods_total` mediumint(8) UNSIGNED NOT NULL COMMENT '小計'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 資料表結構 `goods`
--

CREATE TABLE `goods` (
  `goods_sn` mediumint(8) UNSIGNED NOT NULL COMMENT '商品編號',
  `goods_title` varchar(255) NOT NULL COMMENT '商品名稱',
  `goods_content` text NOT NULL COMMENT '商品說明',
  `goods_price` mediumint(8) UNSIGNED NOT NULL COMMENT '商品價錢',
  `goods_counter` smallint(5) UNSIGNED NOT NULL COMMENT '人氣',
  `goods_date` datetime NOT NULL COMMENT '上架日期'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `goods`
--

INSERT INTO `goods` (`goods_sn`, `goods_title`, `goods_content`, `goods_price`, `goods_counter`, `goods_date`) VALUES
(1, 'Ninja ZX-10R', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>引擎形式</th>\r\n			<td>水冷4行程直列4缸16汽門DOHC</td>\r\n		</tr>\r\n		<tr>\r\n			<th>總排氣量</th>\r\n			<td>998cc</td>\r\n		</tr>\r\n		<tr>\r\n			<th>最高馬力</th>\r\n			<td>149.3 kW (203 PS) / 13,500 rpm (EUR)</td>\r\n		</tr>\r\n		<tr>\r\n			<th>最大扭力</th>\r\n			<td>114.9 N&bull;m (11.7 kgf&bull;m) / 11,200 rpm (EUR)</td>\r\n		</tr>\r\n		<tr>\r\n			<th>車體</th>\r\n			<td>長 / 寬 / 高 2,085 / 740/ 1,145 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>最低離地高</th>\r\n			<td>145 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>軸距</th>\r\n			<td>1,440 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>前懸吊</th>\r\n			<td>SHOWA 43mm Balance Free倒立式外掛氣瓶前叉 預載、壓縮、回彈阻尼全可調</td>\r\n		</tr>\r\n		<tr>\r\n			<th>後懸吊</th>\r\n			<td>SHOWA 水平BFRC氣瓶式避震器 預載、壓縮、回彈阻尼全可調</td>\r\n		</tr>\r\n		<tr>\r\n			<th>前煞車</th>\r\n			<td>Brembo輻射對向四活塞卡鉗、 330mm雙半浮動式碟盤</td>\r\n		</tr>\r\n		<tr>\r\n			<th>後煞車</th>\r\n			<td>單向單活塞鋁合金卡鉗、 220mm固定式碟盤</td>\r\n		</tr>\r\n		<tr>\r\n			<th>座高</th>\r\n			<td>835mm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>裝備重量</th>\r\n			<td>206kg</td>\r\n		</tr>\r\n		<tr>\r\n			<th>油箱</th>\r\n			<td>17L</td>\r\n		</tr>\r\n		<tr>\r\n			<th>前後輪尺寸</th>\r\n			<td>120/70ZR17 190/55ZR17</td>\r\n		</tr>\r\n		<tr>\r\n			<th>車款顏色</th>\r\n			<td>Kawasaki Racing Team萊姆綠、極致黑</td>\r\n		</tr>\r\n		<tr>\r\n			<th>-----------</th>\r\n			<td>------------------------------------------------------------------------------------</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 888000, 4, '2020-11-09 14:26:11'),
(2, 'Ninja ZX-6R', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>引擎形式</th>\r\n			<td>水冷4行程4汽缸DOHC</td>\r\n		</tr>\r\n		<tr>\r\n			<th>總排氣量</th>\r\n			<td>636c.c.</td>\r\n		</tr>\r\n		<tr>\r\n			<th>最高馬力</th>\r\n			<td>95 KW (129 PS) / 13,500 rpm (EUR)</td>\r\n		</tr>\r\n		<tr>\r\n			<th>最大扭力</th>\r\n			<td>70.8 N.m (7.2 kgf.m)/ 11,000 rpm (EUR)</td>\r\n		</tr>\r\n		<tr>\r\n			<th>車體</th>\r\n			<td>長 / 寬 / 高 2,025 / 710 / 1,100 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>最低離地高</th>\r\n			<td>130mm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>軸距</th>\r\n			<td>1,400mm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>前懸吊</th>\r\n			<td>41mm倒立式前避震器(SFF-BP)</td>\r\n		</tr>\r\n		<tr>\r\n			<th>後懸吊</th>\r\n			<td>Uni-Trak</td>\r\n		</tr>\r\n		<tr>\r\n			<th>前煞車</th>\r\n			<td>310 mm雙碟 / 4活塞輻射式卡鉗</td>\r\n		</tr>\r\n		<tr>\r\n			<th>後煞車</th>\r\n			<td>220 mm單碟 / 單活塞卡鉗</td>\r\n		</tr>\r\n		<tr>\r\n			<th>座高</th>\r\n			<td>830mm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>裝備重量</th>\r\n			<td>196kg</td>\r\n		</tr>\r\n		<tr>\r\n			<th>油箱</th>\r\n			<td>17L</td>\r\n		</tr>\r\n		<tr>\r\n			<th>前後輪尺寸</th>\r\n			<td>120/70 ZR17 180/55 ZR17</td>\r\n		</tr>\r\n		<tr>\r\n			<th>車款顏色</th>\r\n			<td>Kawasaki Racing Team萊姆綠、極致黑</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 636000, 1, '2020-11-09 14:45:22'),
(3, 'Ninja 1000', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>引擎形式</th>\r\n			<td>水冷4行程直列4缸16汽門DOHC</td>\r\n		</tr>\r\n		<tr>\r\n			<th>總排氣量</th>\r\n			<td>1043 c.c</td>\r\n		</tr>\r\n		<tr>\r\n			<th>最高馬力</th>\r\n			<td>104.5 kW (142 PS) / 10,000 rpm (EUR)</td>\r\n		</tr>\r\n		<tr>\r\n			<th>最大扭力</th>\r\n			<td>111 N&bull;m (11.3 kgf&bull;m) / 8,000 rpm (EUR)</td>\r\n		</tr>\r\n		<tr>\r\n			<th>車體</th>\r\n			<td>長 / 寬 / 高 2,100 / 825/ 1,190 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>最低離地高</th>\r\n			<td>135 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>軸距</th>\r\n			<td>1,440 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>前懸吊</th>\r\n			<td>41 mm 倒立式前叉、預載及回彈阻尼可調</td>\r\n		</tr>\r\n		<tr>\r\n			<th>後懸吊</th>\r\n			<td>Back-Link 水平多連桿、預載及回彈阻尼可調</td>\r\n		</tr>\r\n		<tr>\r\n			<th>前煞車</th>\r\n			<td>輻射固定式對向四活塞卡鉗、 300mm浮動碟盤</td>\r\n		</tr>\r\n		<tr>\r\n			<th>後煞車</th>\r\n			<td>單向單活塞卡鉗、 250mm固定碟盤</td>\r\n		</tr>\r\n		<tr>\r\n			<th>座高</th>\r\n			<td>820 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>裝備重量</th>\r\n			<td>234 kg</td>\r\n		</tr>\r\n		<tr>\r\n			<th>油箱</th>\r\n			<td>19L</td>\r\n		</tr>\r\n		<tr>\r\n			<th>前後輪尺寸</th>\r\n			<td>120/70ZR17 190/50ZR17</td>\r\n		</tr>\r\n		<tr>\r\n			<th>車款顏色</th>\r\n			<td>夜魅黑、萊姆綠、暴雪白</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 628000, 1, '2020-11-09 14:50:28'),
(4, 'Ninja 650', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>引擎形式</th>\r\n			<td>水冷4行程並列雙缸8汽門DOHC</td>\r\n		</tr>\r\n		<tr>\r\n			<th>總排氣量</th>\r\n			<td>649 c.c</td>\r\n		</tr>\r\n		<tr>\r\n			<th>最高馬力</th>\r\n			<td>50.2 KW(68 PS) / 8,000 rpm (EUR)</td>\r\n		</tr>\r\n		<tr>\r\n			<th>最大扭力</th>\r\n			<td>64 N.m (6.5 kg&fnof;.m) / 6,700 rpm (EUR)</td>\r\n		</tr>\r\n		<tr>\r\n			<th>車體</th>\r\n			<td>長 / 寬 / 高 2,055 / 740 / 1,145mm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>最低離地高</th>\r\n			<td>130mm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>軸距</th>\r\n			<td>1410mm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>前懸吊</th>\r\n			<td>41mm 正立式前叉</td>\r\n		</tr>\r\n		<tr>\r\n			<th>後懸吊</th>\r\n			<td>水平式中置單槍避震，預載可調</td>\r\n		</tr>\r\n		<tr>\r\n			<th>前煞車</th>\r\n			<td>雙活塞卡鉗 / 300mm 浮動碟盤</td>\r\n		</tr>\r\n		<tr>\r\n			<th>後煞車</th>\r\n			<td>單活塞卡鉗 / 220mm 固定碟盤</td>\r\n		</tr>\r\n		<tr>\r\n			<th>座高</th>\r\n			<td>790mm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>裝備重量</th>\r\n			<td>193kg</td>\r\n		</tr>\r\n		<tr>\r\n			<th>油箱</th>\r\n			<td>15L</td>\r\n		</tr>\r\n		<tr>\r\n			<th>前後輪尺寸</th>\r\n			<td>120/70ZR17 160/60ZR17</td>\r\n		</tr>\r\n		<tr>\r\n			<th>車款顏色</th>\r\n			<td>KRT萊姆綠、科技灰、珊瑚藍、寶石紅</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 368000, 1, '2020-11-09 14:52:12'),
(5, 'Ninja 400', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>引擎形式</th>\r\n			<td>水冷4行程並列雙缸8汽門DOHC</td>\r\n		</tr>\r\n		<tr>\r\n			<th>總排氣量</th>\r\n			<td>399 c.c</td>\r\n		</tr>\r\n		<tr>\r\n			<th>最高馬力</th>\r\n			<td>33.4kW (45 PS) / 10,000 rpm(EUR)</td>\r\n		</tr>\r\n		<tr>\r\n			<th>最大扭力</th>\r\n			<td>38N&bull;m (3.9kgf&bull;m) / 8,000 rpm(EUR)</td>\r\n		</tr>\r\n		<tr>\r\n			<th>車體</th>\r\n			<td>長 / 寬 / 高 1,990 / 710 / 1,120 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>最低離地高</th>\r\n			<td>140mm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>軸距</th>\r\n			<td>1,370mm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>前懸吊</th>\r\n			<td>41mm 正立式前叉</td>\r\n		</tr>\r\n		<tr>\r\n			<th>後懸吊</th>\r\n			<td>Uni-Trak；5段預載可調</td>\r\n		</tr>\r\n		<tr>\r\n			<th>前煞車</th>\r\n			<td>雙活塞卡鉗 / 310mm 浮動碟盤</td>\r\n		</tr>\r\n		<tr>\r\n			<th>後煞車</th>\r\n			<td>雙活塞卡鉗 / 220mm 固定碟盤</td>\r\n		</tr>\r\n		<tr>\r\n			<th>座高</th>\r\n			<td>785mm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>裝備重量</th>\r\n			<td>168kg</td>\r\n		</tr>\r\n		<tr>\r\n			<th>油箱</th>\r\n			<td>14L</td>\r\n		</tr>\r\n		<tr>\r\n			<th>前後輪尺寸</th>\r\n			<td>110/70-17 150/60-17</td>\r\n		</tr>\r\n		<tr>\r\n			<th>車款顏色</th>\r\n			<td>KRT萊姆綠(GN1)、珊瑚藍(GN2)、寶石紅(RD2)、極致黑(GY1)、曜金黑(BK2)</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 279000, 1, '2020-11-09 14:53:33'),
(6, 'Z H2', '<table>\r\n	<tbody>\r\n		<tr>\r\n			<th>引擎形式</th>\r\n			<td>水冷4行程直列4缸16汽門DOHC (Supercharged)</td>\r\n		</tr>\r\n		<tr>\r\n			<th>總排氣量</th>\r\n			<td>998 c.c</td>\r\n		</tr>\r\n		<tr>\r\n			<th>最高馬力</th>\r\n			<td>147.1 kW (200 PS) / 11,000 rpm (EUR)</td>\r\n		</tr>\r\n		<tr>\r\n			<th>最大扭力</th>\r\n			<td>137 N&bull;m (14.0 kgf&bull;m) / 8,500 rpm (EUR)</td>\r\n		</tr>\r\n		<tr>\r\n			<th>車體</th>\r\n			<td>2,085 / 810/ 1,130 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>最低離地高</th>\r\n			<td>140 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>軸距</th>\r\n			<td>1,455 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>前懸吊</th>\r\n			<td>SHOWA SFF-BP 43 mm 倒立式前叉、全可調</td>\r\n		</tr>\r\n		<tr>\r\n			<th>後懸吊</th>\r\n			<td>SHOWA New Uni-Trak、全可調</td>\r\n		</tr>\r\n		<tr>\r\n			<th>前煞車</th>\r\n			<td>Brembo M4 一體式對向四活塞卡鉗、 320mm浮動碟盤</td>\r\n		</tr>\r\n		<tr>\r\n			<th>後煞車</th>\r\n			<td>單向單活塞卡鉗、 260mm固定碟盤</td>\r\n		</tr>\r\n		<tr>\r\n			<th>座高</th>\r\n			<td>830 mm</td>\r\n		</tr>\r\n		<tr>\r\n			<th>裝備重量</th>\r\n			<td>240 kg</td>\r\n		</tr>\r\n		<tr>\r\n			<th>油箱</th>\r\n			<td>19 L</td>\r\n		</tr>\r\n		<tr>\r\n			<th>前後輪尺寸</th>\r\n			<td>120/70ZR17 190/55ZR17</td>\r\n		</tr>\r\n		<tr>\r\n			<th>車款顏色</th>\r\n			<td>鋼鐵灰(BK3)、石碳黑(BK2)</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n', 898000, 1, '2020-11-09 14:55:38');

-- --------------------------------------------------------

--
-- 資料表結構 `users`
--

CREATE TABLE `users` (
  `user_sn` mediumint(8) UNSIGNED NOT NULL COMMENT '使用者編號',
  `user_name` varchar(255) NOT NULL COMMENT '使用者姓名',
  `user_id` varchar(255) NOT NULL COMMENT '使用者帳號',
  `user_passwd` varchar(255) NOT NULL COMMENT '使用者密碼',
  `user_email` varchar(255) NOT NULL COMMENT '使用者信箱',
  `user_sex` enum('先生','女士') NOT NULL COMMENT '使用者性別',
  `user_tel` varchar(255) NOT NULL COMMENT '使用者電話',
  `user_zip` varchar(255) NOT NULL COMMENT '使用者郵遞區號',
  `user_county` varchar(255) NOT NULL COMMENT '使用者縣市',
  `user_district` varchar(255) NOT NULL COMMENT '使用者鄉鎮市區',
  `user_address` varchar(255) NOT NULL COMMENT '使用者地址'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 傾印資料表的資料 `users`
--

INSERT INTO `users` (`user_sn`, `user_name`, `user_id`, `user_passwd`, `user_email`, `user_sex`, `user_tel`, `user_zip`, `user_county`, `user_district`, `user_address`) VALUES
(1, 'AAA', '123456', '$2y$10$1M3MmEI.68yyAaNOQPjykuH6sjIvqrNmCY0FXVUVUbkaFWibZ5hPS', '123456@gmail.com', '先生', '123456', '262', '宜蘭縣', '礁溪鄉', '123456');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`bill_sn`);

--
-- 資料表索引 `bill_detail`
--
ALTER TABLE `bill_detail`
  ADD PRIMARY KEY (`bill_sn`,`goods_sn`);

--
-- 資料表索引 `goods`
--
ALTER TABLE `goods`
  ADD PRIMARY KEY (`goods_sn`);

--
-- 資料表索引 `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_sn`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `bill`
--
ALTER TABLE `bill`
  MODIFY `bill_sn` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '帳單編號';

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `goods`
--
ALTER TABLE `goods`
  MODIFY `goods_sn` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '商品編號', AUTO_INCREMENT=7;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `users`
--
ALTER TABLE `users`
  MODIFY `user_sn` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '使用者編號', AUTO_INCREMENT=2;
--
-- 資料庫： `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- 資料表結構 `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- 傾印資料表的資料 `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `config_data`) VALUES
('root', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"zh_TW\",\"Export\\/file_template_server\":\"__SERVER__-mysql_%Y-%m-%d\"}');

-- --------------------------------------------------------

--
-- 資料表結構 `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- 資料表結構 `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- 資料表索引 `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- 資料表索引 `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- 資料表索引 `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- 資料表索引 `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- 資料表索引 `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- 資料表索引 `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- 資料表索引 `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- 資料表索引 `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- 資料表索引 `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- 資料表索引 `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- 資料表索引 `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- 資料表索引 `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- 資料表索引 `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- 資料表索引 `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- 資料表索引 `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- 資料表索引 `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- 資料表索引 `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- 資料表索引 `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
