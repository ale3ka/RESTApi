-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2017 at 02:50 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
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
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
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
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
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
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

--
-- Dumping data for table `pma__navigationhiding`
--

INSERT INTO `pma__navigationhiding` (`username`, `item_name`, `item_type`, `db_name`, `table_name`) VALUES
('root', 'gasstations', 'table', 'stations', '');

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{"db":"stations","table":"transaction"},{"db":"stations","table":"pricedata"},{"db":"stations","table":"gasstations"},{"db":"stations","table":"users"},{"db":"stations","table":"alldata"},{"db":"stations","table":"min_price"},{"db":"stations","table":"stationsbycompany"},{"db":"stations","table":"TRANSACTION"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
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
-- Table structure for table `pma__savedsearches`
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
-- Table structure for table `pma__table_coords`
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
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'stations', 'pricedata', '{"sorted_col":"`pricedata`.`isPremium` ASC","CREATE_TIME":"2017-01-05 00:04:25","col_order":["0","1","2","3","4","5","8","6","7"],"col_visib":["1","1","1","1","1","1","1","1","1"]}', '2017-02-02 11:01:38'),
('root', 'stations', 'users', '{"sorted_col":"`id` DESC"}', '2017-01-15 16:35:33');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
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
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2017-01-03 10:38:20', '{"collation_connection":"utf8mb4_unicode_ci"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;--
-- Database: `stations`
--
CREATE DATABASE IF NOT EXISTS `stations` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `stations`;

-- --------------------------------------------------------

--
-- Stand-in structure for view `alldata`
--
CREATE TABLE `alldata` (
`gasStationID` smallint(5) unsigned
,`gasStationAddress` varchar(255)
,`fuelTypeID` tinyint(3) unsigned
,`fuelSubTypeID` tinyint(3) unsigned
,`fuelNormalName` varchar(64)
,`fuelName` varchar(128)
,`fuelPrice` decimal(4,3)
,`dateUpdated` timestamp
,`isPremium` tinyint(1)
,`gasStationLat` decimal(10,7)
,`gasStationLong` decimal(10,7)
,`fuelCompID` tinyint(4)
,`fuelCompNormalName` varchar(45)
,`gasStationOwner` varchar(128)
,`ddID` varchar(10)
,`ddNormalName` varchar(45)
,`municipalityID` varchar(10)
,`municipalityNormalName` varchar(45)
,`countyID` varchar(10)
,`countyName` varchar(64)
,`phone1` char(10)
);

-- --------------------------------------------------------

--
-- Table structure for table `gasstations`
--

CREATE TABLE `gasstations` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `gasStationLat` decimal(10,7) DEFAULT NULL,
  `gasStationLong` decimal(10,7) DEFAULT NULL,
  `fuelCompID` tinyint(4) NOT NULL,
  `fuelCompNormalName` varchar(45) NOT NULL,
  `gasStationOwner` varchar(128) NOT NULL,
  `ddID` varchar(10) NOT NULL,
  `ddNormalName` varchar(45) NOT NULL,
  `municipalityID` varchar(10) NOT NULL,
  `municipalityNormalName` varchar(45) NOT NULL,
  `countyID` varchar(10) NOT NULL,
  `countyName` varchar(64) NOT NULL,
  `gasStationAddress` varchar(255) DEFAULT NULL,
  `phone1` char(10) DEFAULT NULL,
  `username` varchar(45) NOT NULL,
  `users_id` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gasstations`
--

INSERT INTO `gasstations` (`id`, `gasStationLat`, `gasStationLong`, `fuelCompID`, `fuelCompNormalName`, `gasStationOwner`, `ddID`, `ddNormalName`, `municipalityID`, `municipalityNormalName`, `countyID`, `countyName`, `gasStationAddress`, `phone1`, `username`, `users_id`) VALUES
(441, '39.6337420', '22.4324412', 6, 'AVIN', 'ΜΑΚΡΑΙΩΝ Α.Ε. ΥΠΟΚ/ΜΑ Νο 53', '42010100', 'Δ.Δ. Λαρίσης', '42010000', 'ΛΑΡΙΣΑΣ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΒΟΛΟΥ 22-24 ΛΑΡΙΣΑ', NULL, 'user777', ''),
(442, '39.6263739', '22.4737532', 3, 'SHELL', 'ΕΡΜΗΣ ΑΕΜΕΕ ΥΠ/ΜΑ ΛΑΡΙΣΑΣ', '42010100', 'Δ.Δ. Λαρίσης', '42010000', 'ΛΑΡΙΣΑΣ', '42000000', 'ΛΑΡΙΣΗΣ', '5 ΧΛΜ. ΠΕΟ ΛΑΡΙΣΑΣ-ΒΟΛΟΥ, ΛΑΡΙΣΑ', '2410579511', 'user2', ''),
(443, '39.6603074', '22.4404827', 7, 'AEGEAN', 'ΤΕΜΕΤΕΡΟΝ Ε.Π.Ε.', '42010100', 'Δ.Δ. Λαρίσης', '42010000', 'ΛΑΡΙΣΑΣ', '42000000', 'ΛΑΡΙΣΗΣ', '3o ΧΛΜ ΛΑΡΙΣΑΣ-ΘΕΣΣΑΛΟΝΙΚΗΣ', '2410289901', 'user3', ''),
(444, '39.6585106', '22.4053986', 7, 'AEGEAN', 'ΤΕΜΕΤΕΡΟΝ ΕΠΕ ΛΑΡΙΣΑΣ 2', '42010100', 'Δ.Δ. Λαρίσης', '42010000', 'ΛΑΡΙΣΑΣ', '42000000', 'ΛΑΡΙΣΗΣ', '3 ΧΛΜ ΛΑΡΙΣΑΣ ΤΥΡΝΑΒΟΥ', NULL, 'user4', ''),
(445, '39.5999322', '22.4361581', 6, 'AVIN', 'ΑΦΟΙ ΒΕΡΟΠΟΥΛΟΙ ΑΕΒΕ - ΛΑΡΙΣΑ', '42010100', 'Δ.Δ. Λαρίσης', '42010000', 'ΛΑΡΙΣΑΣ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΛΑΡΙΣΗΣ ΤΡΙΚΑΛΩΝ ΛΑΡΙΣΗΣ ΦΑΡΣΑΛΩΝ', NULL, 'user5', ''),
(446, '39.6226569', '22.4259921', 6, 'AVIN', 'ΜΑΚΡΑΙΩΝ Α.Ε. (ΥΠΟΚ/ΜΑ: 23)', '42010100', 'Δ.Δ. Λαρίσης', '42010000', 'ΛΑΡΙΣΑΣ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΦΑΡΣΑΛΩΝ 99 ΛΑΡΙΣΑ', NULL, 'user6', ''),
(447, '39.6148882', '22.4303055', 3, 'SHELL', 'ΕΡΜΗΣ ΑΕΜΕΕ ΥΠ/ΜΑ ΛΑΡΙΣΑΣ 2', '42010100', 'Δ.Δ. Λαρίσης', '42010000', 'ΛΑΡΙΣΑΣ', '42000000', 'ΛΑΡΙΣΗΣ', 'Φαρσάλων 140', '2410617534', 'user7', ''),
(448, '39.6343568', '22.4303847', 8, 'EKO', 'ΔΡΑΜH Κ. ΑΦΟΙ Ο.Ε.', '42010100', 'Δ.Δ. Λαρίσης', '42010000', 'ΛΑΡΙΣΑΣ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΒΟΛΟΥ 12, ΛΑΡΙΣΑ', NULL, 'user8', ''),
(449, '39.6325901', '22.4263729', 3, 'SHELL', 'ΕΡΜΗΣ ΑΕΜΕΕ ΥΠ/ΜΑ ΛΑΡΙΣΑΣ 3', '42010100', 'Δ.Δ. Λαρίσης', '42010000', 'ΛΑΡΙΣΑΣ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΗΡΩΩΝ ΠΟΛΥΤΕΧΝΕΙΟΥ 110', '2410230107', 'user9', ''),
(450, '39.6639191', '22.4435887', 3, 'SHELL', 'ΕΡΜΗΣ ΑΕΜΕΕ ΥΠ/ΜΑ ΛΑΡΙΣΑΣ 1', '42010100', 'Δ.Δ. Λαρίσης', '42010000', 'ΛΑΡΙΣΑΣ', '42000000', 'ΛΑΡΙΣΗΣ', '4ο ΧΛΜ Ε.Ο ΛΑΡΙΣΗΣ - ΘΕΣ/ΚΗΣ, ΛΑΡΙΣΑ', '2410555229', 'user10', ''),
(451, '39.6257039', '22.4104497', 10, 'BP', 'ΕΛΙΣΑΒΕΤ Α. ΠΑΠΑΔΟΠΟΥΛΟΥ', '42010100', 'Δ.Δ. Λαρίσης', '42010000', 'ΛΑΡΙΣΑΣ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΚΑΡΔΙΤΣΗΣ 92 ΛΑΡΙΣΑ', NULL, 'user11', ''),
(452, '39.6427544', '22.4201253', 8, 'EKO', 'ΑΦΟΙ ΑΣΤ. ΔΡΑΜΗ ΟΕ', '42010100', 'Δ.Δ. Λαρίσης', '42010000', 'ΛΑΡΙΣΑΣ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΓΕΩΡΓΙΑΔΟΥ 28', '2410538447', 'user12', ''),
(453, '39.6230504', '22.4084430', 3, 'SHELL', 'ΤΟΥΡΣΟΥΝΙΔΗΣ ΚΙ & ΣΙΑ ΟΕ', '42010100', 'Δ.Δ. Λαρίσης', '42010000', 'ΛΑΡΙΣΑΣ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΚΑΡΔΙΤΣΗΣ ΚΑΙ ΡΙΖΑΡΗ ΓΩΝΙΑ', '2410620678', 'user13', ''),
(454, '39.6264774', '22.3973420', 3, 'SHELL', 'ΕΡΜΗΣ ΑΕΜΕΕ ΥΠ/ΜΑ ΛΑΡΙΣΑΣ 5', '42010100', 'Δ.Δ. Λαρίσης', '42010000', 'ΛΑΡΙΣΑΣ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΠΡΩΤΗΣ ΜΕΡΑΡΧΙΑΣ 2 ΛΑΡΙΣΑ', '2410670310', 'user14', ''),
(455, '39.6416019', '22.4308027', 3, 'SHELL', 'ΕΡΜΗΣ ΑΕΜΕΕ ΥΠ/ΜΑ ΛΑΡΙΣΑΣ 6', '42010100', 'Δ.Δ. Λαρίσης', '42010000', 'ΛΑΡΙΣΑΣ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΑΓΙΑΣ 64 & ΧΑΤΖΗΓΙΑΝΝΗ ΛΑΡΙΣΑ', '2410230561', 'user15', ''),
(456, '39.6261849', '22.4321588', 10, 'BP', 'ΑΦΟΙ ΓΑΛΑΤΣΙΔΑ & ΣΙΑ Ο.Ε.', '42010100', 'Δ.Δ. Λαρίσης', '42010000', 'ΛΑΡΙΣΑΣ', '42000000', 'ΛΑΡΙΣΗΣ', '1ο ΧΛΜ. ΛΑΡΙΣΑΣ - ΑΘΗΝΩΝ', NULL, 'user16', ''),
(457, '39.5476279', '22.4692001', 10, 'BP', 'ΕΛΕΝΗ ΚΑΡΠΟΥΖΑ & ΣΙΑ Ο.Ε.', '42010100', 'Δ.Δ. Λαρίσης', '42010000', 'ΛΑΡΙΣΑΣ', '42000000', 'ΛΑΡΙΣΗΣ', '11ο Χιλ.ΛΑΡΙΣΑΣ-ΦΑΡΣΑΛΩΝ', NULL, 'user17', ''),
(458, '39.6834131', '22.6323552', 9, 'REVOIL', 'ΣΙΩΧΑΣ ΒΑΣΙΛΕΙΟΣ(ΥΠΟΚ.)', '42020100', 'Δ.Δ. Αγιάς', '42020000', 'ΑΓΙΑΣ', '42000000', 'ΛΑΡΙΣΗΣ', '22ο ΧΛΜ ΕΟ ΛΑΡΙΣΑΣ-ΑΓΙΑΣ', '2494071397', 'user18', ''),
(460, '39.7111868', '22.7459242', 9, 'REVOIL', 'ΠΕΡΓΕΛΕΣ ΑΘΑΝΑΣΙΟΣ', '42020100', 'Δ.Δ. Αγιάς', '42020000', 'ΑΓΙΑΣ', '42000000', 'ΛΑΡΙΣΗΣ', '1ο χιλ.ΑΓΙΑΣ-ΛΑΡΙΣΗΣ', '2494023281', 'user19', ''),
(461, '39.6894286', '22.6925292', 10, 'BP', 'ΧΡΙΣΤΟΥΛΑΣ ΒΑΣΙΛΕΙΟΣ ΚΑΙ ΣΙΑ Ο.Ε.', '42020400', 'Δ.Δ. Γερακαρίου', '42020000', 'ΑΓΙΑΣ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΓΕΡΑΚΑΡΙ ΑΓΙΑΣ', NULL, 'user20', ''),
(463, '39.6655365', '22.3933465', 6, 'AVIN', 'ΤΡΑΓΑΚΗΣ ΓΕΩΡΓΙΟΣ', '42060100', 'Δ.Δ. Γιάννουλης', '42060000', 'ΓΙΑΝΝΟΥΛΗΣ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΚΟΖΑΝΗΣ 39Ε ΓΙΑΝΝΟΥΛΗ, ΛΑΡΙΣΑ', NULL, 'user21', ''),
(464, '39.6981012', '22.8760305', 8, 'EKO', 'ΚΑΤΕΛΑΣ ΑΝΤΩΝΙΟΣ', '42180300', 'Δ.Δ. Σκήτης', '42180000', 'ΜΕΛΙΒΟΙΑΣ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΑΓΙΟΚΑΜΠΟΣ ΛΑΡΙΣΑΣ', '2494051225', 'user22', ''),
(465, '39.8142752', '22.5071364', 8, 'EKO', 'ΕΚΟ ΚΑΛΥΨΩ Νο 37 ΛΑΡΙΣΑ', '42200100', 'Δ.Δ. Συκουρίου', '42200000', 'ΝΕΣΣΩΝΟΣ', '42000000', 'ΛΑΡΙΣΗΣ', '376+600 χλμ Ε.Ο. Αθηνών Θεσ/νίκης αριστερά, Συκούρι Λαρίσης', NULL, 'user23', ''),
(466, '39.8150046', '22.5086278', 8, 'EKO', 'ΕΚΟ ΚΑΛΥΨΩ Νο 36 ΛΑΡΙΣΑ', '42200100', 'Δ.Δ. Συκουρίου', '42200000', 'ΝΕΣΣΩΝΟΣ', '42000000', 'ΛΑΡΙΣΗΣ', '376+600 χλμ Ε.Ο. Αθηνών Θεσ/νίκης δεξιά, Συκούρι Λαρίσης', NULL, 'user24', ''),
(467, '39.5600657', '22.4655919', 10, 'BP', 'ΑΓΡΟΤΙΚΟΣ ΣΥΝΕΤΑΙΣΡΙΣΜΟΣ ΝΙΚΑΙΑΣ', '42210100', 'Δ.Δ. Νικαίας', '42210000', 'ΝΙΚΑΙΑΣ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΝΙΚΑΙΑ ΛΑΡΙΣΑΣ', NULL, 'user25', ''),
(468, '39.9868358', '22.2496687', 11, 'ΕΛΙΝΟΙΛ', 'ΑΣΣΙΧΙΔΗΣ ΝΙΚΟΛΑΟΣ', '42220500', 'Δ.Δ. Ολυμπιάδος', '42220000', 'ΟΛΥΜΠΟΥ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΟΛΥΜΠΙΑΔΑ ΕΛΑΣΣΟΝΑΣ', '2493061324', 'user26', ''),
(469, '39.3483089', '22.3280695', 9, 'REVOIL', 'Τουρμούσογλου Αγγέλικα', '42240100', 'Δ.Δ. Βαμβακούς', '42240000', 'ΠΟΛΥΔΑΜΑΝΤΑ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΛΟΦΟΣ - ΦΑΡΣΑΛΩΝ', '2491071237', 'user27', ''),
(470, '39.9960538', '22.0819103', 7, 'AEGEAN', 'ΚΑΤΣΑΡΑ ΧΡΥΣΟΥΛΑ', '42260200', 'Δ.Δ. Αζώρου (Βουβάλας)', '42260000', 'ΣΑΡΑΝΤΑΠΟΡΟΥ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΑΖΩΡΟΣ ΕΛΑΣΣΟΝΑΣ ΛΑΡΙΣΗΣ', '2493082331', 'user28', ''),
(471, '39.7504219', '22.2863484', 1, 'Α.Π.', 'Σιαίνης Ο. - Καρατσόλης Ν. Ο.Ε.', '42270100', 'Δ.Δ. Τυρνάβου', '42270000', 'ΤΥΡΝΑΒΟΥ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΕΙΡΗΝΗΣ ΤΕΡΜΑ - ΤΥΡΝΑΒΟΣ - ΛΑΡΙΣΑ', NULL, 'user29', ''),
(472, '39.2953464', '22.5824826', 11, 'ΕΛΙΝΟΙΛ', 'ΑΛΜΥΡΙΩΤΗΣ ΧΡΗΣΤΟΣ', '42280100', 'Δ.Δ. Φαρσάλων', '42280000', 'ΦΑΡΣΑΛΩΝ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΠΑΛΑΙΟΜΥΛΟΣ ΦΑΡΣΑΛΩΝ -ΛΑΡΙΣΑ', '2491051129', 'user30', ''),
(1647, '39.6276608', '22.4321967', 5, 'ΕΤΕΚΑ', 'ΧΑΝΤΖΟΠΛΑΚΗΣ ΑΠ.& ΑΡ. ΕΠΕ', '42010100', 'Δ.Δ. Λαρίσης', '42010000', 'ΛΑΡΙΣΑΣ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΧΑΝΤΖΟΠΛΑΚΗΣ 1οΧΜ. ΠΕΟ ΛΑΡΙΣΑΣ-ΑΘΗΝΩΝ', NULL, 'user31', ''),
(1648, '39.6238983', '22.4091667', 17, 'KAOIL', 'ΠΑΝΑΓΙΩΤΑ ΠΟΠΟΤΗ', '42010100', 'Δ.Δ. Λαρίσης', '42010000', 'ΛΑΡΙΣΑΣ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΚΑΡΔΙΤΣΗΣ 103 ΛΑΡΙΣΑ', NULL, 'user32', ''),
(1649, '39.6328154', '22.4392302', 8, 'EKO', 'ΠΟΥΡΙΚΑΣ ΑΝΑΣΤΑΣΙΟΣ', '42010100', 'Δ.Δ. Λαρίσης', '42010000', 'ΛΑΡΙΣΑΣ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΒΟΛΟΥ 65, ΛΑΡΙΣΑ', '2410232024', 'user33', ''),
(1650, '39.6303835', '22.4145085', 16, 'ΑΡΓΩ', 'ΝΙΚΟΛΑΟΣ ΔΕΜΠΕΛΑΣ & ΣΙΑ Ο.Ε', '42010100', 'Δ.Δ. Λαρίσης', '42010000', 'ΛΑΡΙΣΑΣ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΚΑΡΔΙΤΣΗΣ 13 ΛΑΡΙΣΑ', NULL, 'user34', ''),
(1651, '39.6278987', '22.4329173', 2, 'JETOIL', 'ΚΟΡΔΑΣ ΠΑΝΑΓΙΩΤΗΣ', '42010100', 'Δ.Δ. Λαρίσης', '42010000', 'ΛΑΡΙΣΑΣ', '42000000', 'ΛΑΡΙΣΗΣ', '1o ΧΛΜ ΛΑΡΙΣΗΣ - ΑΘΗΝΩΝ', NULL, 'user35', ''),
(1653, '39.6357771', '22.4029385', 3, 'SHELL', 'ΖΩΗ ΤΟΥΡΣΟΥΝΙΔΗ & ΣΙΑ ΟΕ', '42010100', 'Δ.Δ. Λαρίσης', '42010000', 'ΛΑΡΙΣΑΣ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΚΡΑΝΝΩΝΟΣ 16', NULL, 'user36', ''),
(1654, '39.7153988', '22.7529080', 3, 'SHELL', 'AΝΔΡΟΜΑΧΗ ΘΥΓ Κ.Α.ΜΙΧΟΠΟΥΛΟΥ', '42020100', 'Δ.Δ. Αγιάς', '42020000', 'ΑΓΙΑΣ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΑΓΙΑ', NULL, 'user37', ''),
(1655, '39.7051164', '22.4000343', 4, 'SILKOIL', 'ΚΑΡΑΛΑΣΚΟΣ ΓΕΩΡΓΙΟΣ & ΣΙΑ ΟΕ', '42060200', 'Δ.Δ. Φαλάννης', '42060000', 'ΓΙΑΝΝΟΥΛΗΣ', '42000000', 'ΛΑΡΙΣΗΣ', '1 χιλ ΦΑΛΑΝΗ  ΛΑΡΙΣΗΣ', NULL, 'user38', ''),
(1656, '39.5796195', '22.4526625', 5, 'ΕΤΕΚΑ', 'ΧΑΝΤΖΟΠΛΑΚΗΣ ΑΠ. & AΡ. Ε.Π.Ε', '42210100', 'Δ.Δ. Νικαίας', '42210000', 'ΝΙΚΑΙΑΣ', '42000000', 'ΛΑΡΙΣΗΣ', '6ο ΧΛΜ. ΛΑΡΙΣΑΣ-ΦΑΡΣΑΛΩΝ', NULL, 'user39', ''),
(1657, '39.3141570', '22.4727570', 11, 'ΕΛΙΝΟΙΛ', 'ΑΛΑΜΑΝΗΣ Α. κ ΣΙΑ ΕΕ', '42240200', 'Δ.Δ. Αμπελείας', '42240000', 'ΠΟΛΥΔΑΜΑΝΤΑ', '42000000', 'ΛΑΡΙΣΗΣ', '8ο ΧΛΜ ΦΑΡΣΑΛΩΝ ΜΙΚΡΟΘΗΒΩΝ', '2491022414', 'user40', ''),
(1658, '39.7513775', '22.2929456', 10, 'BP', 'ΑΦΟΙ Ν.ΤΣΙΓΑΝΗ & ΣΙΑ ΟΕ', '42270200', 'Δ.Δ. Αργυροπουλείου', '42270000', 'ΤΥΡΝΑΒΟΥ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΑΡΓΥΡΟΠΟΥΛΙΟΥ ΤΕΡΜΑ - ΤΥΡΝΑΒΟΣ', NULL, 'user41', ''),
(1659, '39.3182448', '22.3842467', 17, 'KAOIL', 'ΕΥΘΥΜΙΑΔΗ ΓΕΩΡΓΙΑ', '42280100', 'Δ.Δ. Φαρσάλων', '42280000', 'ΦΑΡΣΑΛΩΝ', '42000000', 'ΛΑΡΙΣΗΣ', '2ο χλμ. ΦΑΡΣΑΛΩΝ-ΛΑΡΙΣΑΣ', '2491022790', 'user42', ''),
(1660, '39.2977224', '22.3846259', 11, 'ΕΛΙΝΟΙΛ', 'ΑΛΑΜΑΝΗΣ ΑΛΕΧΑΝΔΡΟΣ κ ΣΙΑ Ε.Ε', '42280100', 'Δ.Δ. Φαρσάλων', '42280000', 'ΦΑΡΣΑΛΩΝ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΛΑΡΙΣΗΣ 52 ΦΑΡΣΑΛΑ', '2491025377', 'user43', ''),
(1661, '39.2926228', '22.3611545', 11, 'ΕΛΙΝΟΙΛ', 'ΑΛΑΜΑΝΗ ΜΑΡΙΑ', '42280100', 'Δ.Δ. Φαρσάλων', '42280000', 'ΦΑΡΣΑΛΩΝ', '42000000', 'ΛΑΡΙΣΗΣ', '2ο ΧΛΜ ΦΑΡΣΑΛΩΝ-ΛΑΜΙΑΣ, ΦΑΡΣΑΛΑ ΛΑΡΙΣΑΣ', '2491022414', 'user44', ''),
(2706, '39.6123403', '22.4340442', 1, 'Α.Π.', 'ΣΙΜΙΤΣΗ ΠΑΡΑΣΚΕΥΗ', '42010100', 'Δ.Δ. Λαρίσης', '42010000', 'ΛΑΡΙΣΑΣ', '42000000', 'ΛΑΡΙΣΗΣ', '3 ΧΛΜ ( ΠΕΟ) ΛΑΡΙΣΗΣ ΑΘΗΝΩΝ', NULL, 'user45', ''),
(2707, '39.6304805', '22.4530082', 5, 'ΕΤΕΚΑ', 'ΧΑΝΤΖΟΠΛΑΚΗΣ  ΑΠΟΣΤΟΛΟΣ & ΑΡΙΣΤΟΤΕΛΗΣ Ε.Π.Ε', '42010100', 'Δ.Δ. Λαρίσης', '42010000', 'ΛΑΡΙΣΑΣ', '42000000', 'ΛΑΡΙΣΗΣ', '3ο ΧΛΜ Π.Ε.Ο. ΛΑΡΙΣΗΣ-ΒΟΛΟΥ ΛΑΡΙΣΑ', '2441025026', 'user46', ''),
(2708, '39.6323683', '22.4403094', 17, 'KAOIL', 'ΓΚΑΡΑΒΕΛΑ ΜΑΡΙΑ', '42010100', 'Δ.Δ. Λαρίσης', '42010000', 'ΛΑΡΙΣΑΣ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΒΟΛΟΥ 86 - ΛΑΡΙΣΑ', '2410541381', 'user47', ''),
(2709, '39.6327881', '22.3927672', 2, 'JETOIL', 'ΔΗΜΗΤΡΙΟΣ Γ. ΜΠΟΥΧΛΑΡΙΩΤΗΣ', '42010100', 'Δ.Δ. Λαρίσης', '42010000', 'ΛΑΡΙΣΑΣ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΙΩΑΝΝΙΝΩΝ 156 - ΛΑΡΙΣΑ', NULL, 'user48', ''),
(2710, '39.6313795', '22.3623117', 9, 'REVOIL', 'ΝΙΝΟΠΟΥΛΟΥ ΜΑΡΙΑ', '42010200', 'Δ.Δ. Τερψιθέας', '42010000', 'ΛΑΡΙΣΑΣ', '42000000', 'ΛΑΡΙΣΗΣ', '5o ΧΛΜ ΛΑΡΙΣΑΣ-ΤΡΙΚΑΛΩΝ ΛΑΡΙΣΑ', NULL, 'user49', ''),
(2711, '39.7094508', '22.7719255', 8, 'EKO', 'ΒΕΡΒΕΡΑΣ ΓΕΩΡΓΙΟΣ', '42020100', 'Δ.Δ. Αγιάς', '42020000', 'ΑΓΙΑΣ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΑΓΙΑ ΛΑΡΙΣΑΣ', '2494024245', 'user50', ''),
(2712, '39.7010592', '22.7237599', 11, 'ΕΛΙΝΟΙΛ', 'ΡΙΖΟΥΛΗΣ ΔΗΜΗΤΡΙΟΣ', '42020100', 'Δ.Δ. Αγιάς', '42020000', 'ΑΓΙΑΣ', '42000000', 'ΛΑΡΙΣΗΣ', '3ΧΙΛ ΑΓΙΑΣ-ΛΑΡΙΣΑΣ', '2494022764', 'user51', ''),
(2714, '39.7005319', '22.7215217', 8, 'EKO', 'ΓΩΓΟΥ ΔΗΜ.ΑΝΑΣΤΑΣΙΑ', '42020800', 'Δ.Δ. Νερομύλων', '42020000', 'ΑΓΙΑΣ', '42000000', 'ΛΑΡΙΣΗΣ', '3ο ΧΙΛ  ΑΓΙΑΣ ΛΑΡΙΣΗΣ', '2494022728', 'user52', ''),
(2715, '39.7375907', '22.3633259', 1, 'Α.Π.', 'ΣΠΥΡΟΠΟΥΛΟΙ ΑΦΟΙ', '42030100', 'Δ.Δ. Αμπελώνος', '42030000', 'ΑΜΠΕΛΩΝΟΣ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΑΜΠΕΛΩΝΑΣ-ΤΥΡΝΑΒΟΣ, ΛΑΡΙΣΑ', NULL, 'user53', ''),
(2716, '39.8907649', '22.1871388', 1, 'Α.Π.', 'ΧΑΤΖΟΥΛΗΣ ΕΛ.', '42080100', 'Δ.Δ. Ελασσόνος', '42080000', 'ΕΛΑΣΣΟΝΟΣ', '42000000', 'ΛΑΡΙΣΗΣ', 'Μ.ΙΑΚΩΒΟΥ, ΕΛΑΣΣΟΝΑ ΛΑΡΙΣΑΣ', NULL, 'user54', ''),
(2717, '39.3866836', '22.3502774', 10, 'BP', 'ΑΓΡΟΤΙΚΟΣ ΣΥΝΕΤΑΙΡΙΣΜΟΣ ΚΡΗΝΗΣ', '42090500', 'Δ.Δ. Κρήνης', '42090000', 'ΕΝΙΠΠΕΑ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΚΡΗΝΗ ΦΑΡΣΑΛΩΝ', NULL, 'user55', ''),
(2718, '39.8943835', '22.6499786', 3, 'SHELL', 'ΤΖΙΜΟΠΟΥΛΟΣ ΘΩΜΑΣ', '42100300', 'Δ.Δ. Ομολίου', '42100000', 'ΕΥΡΥΜΕΝΩΝ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΟΜΟΛΙΟ ΛΑΡΙΣΑ', NULL, 'user56', ''),
(2719, '39.8449246', '22.7600515', 7, 'AEGEAN', 'ΜΠΑΣΔΡΑΒΑΛΑ ΧΑΡΙΚΛΕΙΑ', '42100400', 'Δ.Δ. Παλαιοπύργου', '42100000', 'ΕΥΡΥΜΕΝΩΝ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΚΑΡΙΤΣΑ ΛΑΡΙΣΑΣ', '2495092172', 'user57', ''),
(2720, '39.8995017', '22.6139076', 8, 'EKO', 'ΤΣΑΤΣΑΡΗΣ ΕΥΑΓΓΕΛΟΣ', '42110400', 'Δ.Δ. Ραψάνης', '42110000', 'ΚΑΤΩ ΟΛΥΜΠΟΥ', '42000000', 'ΛΑΡΙΣΗΣ', 'Σ.Σ.ΡΑΨΑΝΗΣ 38o χλμ ΛΑΡΙΣΑΣ-ΘΕΣ/ΝΙΚΗΣ', '2495041046', 'user58', ''),
(2721, '40.0580656', '22.1839645', 1, 'Α.Π.', 'ΜΑΝΤΖΑΡΑΣ ΠΑΝΑΓΙΩΤΗΣ', '42160200', 'Δ.Δ. Δολίχης', '42160000', 'ΛΙΒΑΔΙΟΥ', '42000000', 'ΛΑΡΙΣΗΣ', '21 ΧΛΜ ΕΛΑΣΣΟΝΑΣ - ΚΑΤΕΡΙΝΗΣ (ΔΟΛΙΧΗ)', NULL, 'user59', ''),
(2722, '39.7991050', '22.4977785', 7, 'AEGEAN', 'ΜΥΛΩΝΑ ΕΛΕΝΗ', '42170100', 'Δ.Δ. Μακρυχωρίου', '42170000', 'ΜΑΚΡΥΧΩΡΙΟΥ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΜΑΚΡΥΧΩΡΙ ΛΑΡΙΣΑΣ', '6977483311', 'user60', ''),
(2723, '39.7731446', '22.5761475', 6, 'AVIN', 'ΤΣΙΟΥΤΡΑ ΝΙΚΟΛΕΤΑ', '42200100', 'Δ.Δ. Συκουρίου', '42200000', 'ΝΕΣΣΩΝΟΣ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΠΟΥΡΝΑΡΙ', NULL, 'user61', ''),
(2724, '39.4587360', '22.4375980', 3, 'SHELL', 'ΧΡΙΣΤΟΔΟΥΛΟΥ ΚΩΝ/ΝΟΣ', '42210300', 'Δ.Δ. Ζαππείου', '42210000', 'ΝΙΚΑΙΑΣ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΖΑΠΠΕΙΟ ΛΑΡΙΣΑΣ', '2410781541', 'user62', ''),
(2725, '39.6245564', '22.5360905', 6, 'AVIN', 'ΚΥΡΙΤΣΗΣ ΧΡΗΣΤΟΣ', '42230100', 'Δ.Δ. Πλατυκάμπου', '42230000', 'ΠΛΑΤΥΚΑΜΠΟΥ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΠΛΑΤΥΚΑΜΠΟΣ, ΠΛΑΤΥΚΑΜΠΟΣ ΛΑΡΙΣΑΣ', NULL, 'user63', ''),
(2726, '39.6119065', '22.5745353', 1, 'Α.Π.', 'ΚΩΝΣΤΑΝΤΟΠΟΥΛΟΥ ΕΥΑΓΓΕΛΙΑ', '42230300', 'Δ.Δ. Γλαύκης', '42230000', 'ΠΛΑΤΥΚΑΜΠΟΥ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΓΛΑΥΚΗ ΛΑΡΙΣΑΣ', NULL, 'user64', ''),
(2727, '39.6824302', '22.4648663', 9, 'REVOIL', 'ΡΗΓΑΣ ΔΗΜ. ΓΕΩΡΓΙΟΣ', '42230800', 'Δ.Δ. Ομορφοχωρίου', '42230000', 'ΠΛΑΤΥΚΑΜΠΟΥ', '42000000', 'ΛΑΡΙΣΗΣ', '6ο ΧΛΜ. ΛΑΡΙΣΑΣ-ΣΥΚΟΥΡΙΟΥ, ΛΑΡΙΣΑ', '2410575274', 'user65', ''),
(2728, '39.3983097', '22.4281079', 11, 'ΕΛΙΝΟΙΛ', 'ΚΑΡΑΔΗΜΑΣ ΛΑΜΠΡΟΣ', '42240100', 'Δ.Δ. Βαμβακούς', '42240000', 'ΠΟΛΥΔΑΜΑΝΤΑ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΧΑΛΚΙΑΔΕΣ/ ΦΑΡΣΑΛΩΝ', NULL, 'user66', ''),
(2729, '39.7439902', '22.0903323', 9, 'REVOIL', 'ΚΟΝΤΟΘΑΝΑΣΗ ΒΑΣΙΛΙΚΗ', '42250100', 'Δ.Δ. Βλαχογιαννίου', '42250000', 'ΠΟΤΑΜΙΑΣ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΒΛΑΧΟΓΙΑΝΝΙ ΤΥΡΝΑΒΟΥ', '2492091802', 'user67', ''),
(2730, '39.7135079', '22.1879963', 1, 'Α.Π.', 'ΑΓΡΑΦΙΩΤΗΣ ΝΙΚΟΛΑΟΣ', '42270300', 'Δ.Δ. Δαμασίου', '42270000', 'ΤΥΡΝΑΒΟΥ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΔΑΜΑΣΙ ΤΥΡΝΑΒΟΥ', NULL, 'user68', ''),
(3490, '39.6164451', '22.4346923', 1, 'Α.Π.', 'ΓΙΑΝΔΙΚΙΔΗΣ ΕΥΓΕΝΙΟΣ', '42010100', 'Δ.Δ. Λαρίσης', '42010000', 'ΛΑΡΙΣΑΣ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΕΡΥΜΑΝΘΟΥ 27 -29  ΛΑΡΙΣΑ', NULL, 'user69', ''),
(3491, '39.6272656', '22.4325546', 8, 'EKO', 'ΑΦΟΙ Κ. ΔΡΑΜΗ Ο.Ε', '42010100', 'Δ.Δ. Λαρίσης', '42010000', 'ΛΑΡΙΣΑΣ', '42000000', 'ΛΑΡΙΣΗΣ', 'Λ. ΚΑΡΑΜΑΝΛΗ 102 - λΑΡΙΣΑ', NULL, 'user70', ''),
(3750, '39.6581745', '22.4384905', 1, 'Α.Π.', 'ΔΙΑΒΟΛΑΚΗΣ ΚΩΝ/ΝΟΣ', '42010100', 'Δ.Δ. Λαρίσης', '42010000', 'ΛΑΡΙΣΑΣ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΣΩΚΡΑΤΟΥΣ 140, ΛΑΡΙΣΑ', NULL, 'user71', ''),
(3751, '39.6327350', '22.4020849', 1, 'Α.Π.', 'ΜΑΝΑΧΙΑΡΗ ΖΑΧΑΡΟΥΛΑ', '42010100', 'Δ.Δ. Λαρίσης', '42010000', 'ΛΑΡΙΣΑΣ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΙΩΑΝΝΙΝΩΝ 50 & ΦΟΥΡΤΟΥΝΑ ΛΑΡΙΣΑ', NULL, 'user72', ''),
(3752, '39.7170759', '22.3962854', 3, 'SHELL', 'ΠΑΠΑΚΩΝΣΤΑΝΤΙΝΟΥ ΧΡΗΣΤΟΣ', '42060200', 'Δ.Δ. Φαλάννης', '42060000', 'ΓΙΑΝΝΟΥΛΗΣ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΦΑΛΑΝΗ ΛΑΡΙΣΑΣ', '2410941225', 'user73', ''),
(3753, '39.8936083', '22.1805954', 8, 'EKO', 'ΜΠΟΥΛΟΥΜΠΑΣΗ ΚΩΝΣΤΑΝΤΙΑ', '42080100', 'Δ.Δ. Ελασσόνος', '42080000', 'ΕΛΑΣΣΟΝΟΣ', '42000000', 'ΛΑΡΙΣΗΣ', '1οχιλ. ΕΛΑΣΣΟΝΑΣ-ΔΕΣΚΑΤΗΣ', '2493025320', 'user74', ''),
(3754, '39.8883960', '22.1866176', 19, 'ΤΡΙΑΙΝΑ', 'ΚΟΥΤΛΑ ΗΛΙΑΔΑ (ΥΠΟΚ/ΜΑ)', '42080100', 'Δ.Δ. Ελασσόνος', '42080000', 'ΕΛΑΣΣΟΝΟΣ', '42000000', 'ΛΑΡΙΣΗΣ', '6ης ΟΚΤΩΒΡΙΟΥ 177 - ΕΛΑΣΣΟΝΑ', NULL, 'user75', ''),
(3755, '39.8785495', '22.1812271', 17, 'KAOIL', 'ΙΑΚΩΒΟΣ ΔΑΥΙΔΟΠΟΥΛΟΣ & ΣΙΑ Ο.Ε', '42080100', 'Δ.Δ. Ελασσόνος', '42080000', 'ΕΛΑΣΣΟΝΟΣ', '42000000', 'ΛΑΡΙΣΗΣ', '1oΧΛΜ ΠΕΟ ΕΛΑΣΣΟΝΑΣ ΛΑΡΙΣΑΣ', NULL, 'user76', ''),
(3756, '39.8818352', '22.2209743', 19, 'ΤΡΙΑΙΝΑ', 'ΚΟΥΤΛΑ ΗΛΙΑΔΑ(ΥΠΟΚ/ΜΑ 3)', '42080900', 'Δ.Δ. Τσαριτσάνης', '42080000', 'ΕΛΑΣΣΟΝΟΣ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΤΣΑΡΙΤΣΑΝΗ ΕΛΑΣΣΟΝΑΣ', NULL, 'user77', ''),
(3757, '39.3887520', '22.2646210', 11, 'ΕΛΙΝΟΙΛ', 'Κωνσταντίνος Λαβδής', '42090800', 'Δ.Δ. Υπερείας', '42090000', 'ΕΝΙΠΠΕΑ', '42000000', 'ΛΑΡΙΣΗΣ', 'Υπέρεια Φαρσάλων', NULL, 'user78', ''),
(3759, '39.9488624', '22.6493464', 8, 'EKO', 'ΜΠΟΥΖΩΝΑΣ ΚΩΝ/ΝΟΣ', '42110200', 'Δ.Δ. Αιγάνης', '42110000', 'ΚΑΤΩ ΟΛΥΜΠΟΥ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΚΑΤΩ ΑΙΓΑΝΗ ΛΑΡΙΣΑΣ', NULL, 'user79', ''),
(3760, '39.5683471', '22.7430899', 9, 'REVOIL', 'ΠΑΣΙΑΝΗΣ ΔΗΜΗΤΡΙΟΣ', '42120300', 'Δ.Δ. Καλαμακίου', '42120000', 'ΚΙΛΕΛΕΡ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΚΑΛΑΜΑΚΙ, ΔΗΜΟΣ ΚΙΛΕΛΕΡ-Ν.ΛΑΡΙΣΑΣ', '2494061420', 'user80', ''),
(3761, '40.1211430', '22.1559540', 1, 'Α.Π.', 'ΧΑΡΙΣΗΣ ΛΑΖΑΡΟΣ', '42160100', 'Δ.Δ. Λιβαδίου', '42160000', 'ΛΙΒΑΔΙΟΥ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΛΙΒΑΔΙ ΕΛΑΣΣΟΝΑΣ', NULL, 'user81', ''),
(3764, '39.6139801', '22.5352110', 8, 'EKO', 'ΔΕΔΗΛΑΣ Κ. ΣΩΤΗΡΗΣ', '42230100', 'Δ.Δ. Πλατυκάμπου', '42230000', 'ΠΛΑΤΥΚΑΜΠΟΥ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΠΛΑΤΥΚΑΜΠΟΣ ΛΑΡΙΣΑΣ', '2410971226', 'user82', ''),
(3765, '39.8306539', '22.0521317', 1, 'Α.Π.', 'ΜΙΧΑΛΕΣ ΙΩΑΝΝΗΣ', '42250800', 'Δ.Δ. Συκέας', '42250000', 'ΠΟΤΑΜΙΑΣ', '42000000', 'ΛΑΡΙΣΗΣ', 'Συκεα Ελασσονας', NULL, 'user83', ''),
(3766, '39.7148344', '22.1880226', 1, 'Α.Π.', 'ΜΑΝΙΚΑΣ Θ. ΔΗΜΗΤΡΙΟΣ', '42270300', 'Δ.Δ. Δαμασίου', '42270000', 'ΤΥΡΝΑΒΟΥ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΔΑΜΑΣΙ  ΤΥΡΝΑΒΟΥ.', NULL, 'user84', ''),
(4299, '39.6645643', '22.3964821', 8, 'EKO', 'ΠΑΠΑΔΟΠΟΥΛΟΣ ΓΕΩΡΓΙΟΣ', '42010100', 'Δ.Δ. Λαρίσης', '42010000', 'ΛΑΡΙΣΑΣ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΓΙΑΝΝΟΥΛΗ, ΛΑΡΙΣΑ', '2410591026', 'user85', ''),
(4301, '39.7086700', '22.7740985', 8, 'EKO', 'ΓΚΑΡΑΝΕΣ ΑΛΕΞΑΝΔΡΟΣ', '42020100', 'Δ.Δ. Αγιάς', '42020000', 'ΑΓΙΑΣ', '42000000', 'ΛΑΡΙΣΗΣ', '2ο ΧΛΜ ΑΓΙΑΣ-ΑΓΙΟΚΑΜΠΟΥ ΛΑΡΙΣΑ', NULL, 'user86', ''),
(4302, '39.8925046', '22.2062302', 2, 'JETOIL', 'ΜΗΤΣΙΜΠΟΝΑΣ ΓΕΩΡΓΙΟΣ', '42080100', 'Δ.Δ. Ελασσόνος', '42080000', 'ΕΛΑΣΣΟΝΟΣ', '42000000', 'ΛΑΡΙΣΗΣ', '2οχιλ.N.EO. ΕΛΑΣΣΟΝΑΣ-ΛΑΡΙΣΑΣ', NULL, 'user87', ''),
(4304, '39.9191625', '22.6843945', 6, 'AVIN', 'ΛΙΟΛΙΟΣ ΑΡΓΥΡΙΟΣ', '42100400', 'Δ.Δ. Παλαιοπύργου', '42100000', 'ΕΥΡΥΜΕΝΩΝ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΠΑΛΑΙΟΠΥΡΓΟΣ ΛΑΡΙΣΑΣ', NULL, 'user88', ''),
(4305, '39.5306926', '22.2692276', 11, 'ΕΛΙΝΟΙΛ', 'ΤΣΟΛΑΚΗ ΚΑΛΛΙΟΠΗ', '42140700', 'Δ.Δ. Μαυροβουνίου', '42140000', 'ΚΡΑΝΝΩΝΟΣ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΜΑΥΡΟΒΟΥΝΙ ΛΑΡΙΣΑΣ', NULL, 'user89', ''),
(4306, '39.7531058', '22.4783359', 6, 'AVIN', 'ΒΛΑΓΓΑΣ ΑΣΤΕΡΙΟΣ', '42170100', 'Δ.Δ. Μακρυχωρίου', '42170000', 'ΜΑΚΡΥΧΩΡΙΟΥ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΒΙΟΜΗΧΑΝΙΚΗ ΠΕΡΙΟΧΗ ΛΑΡΙΣΑΣ', NULL, 'user90', ''),
(4307, '39.6077366', '22.5471979', 9, 'REVOIL', 'ΚΑΚΑΤΣΙΟΥ-ΖΑΧΑΡΙΑΔΗ ΑΝΑΣΤΑΣΙΑ', '42230100', 'Δ.Δ. Πλατυκάμπου', '42230000', 'ΠΛΑΤΥΚΑΜΠΟΥ', '42000000', 'ΛΑΡΙΣΗΣ', '12ο χλμ ΠΕΟ ΛΑΡΙΣΑΣ-ΒΟΛΟΥ', NULL, 'user91', ''),
(4308, '39.6821482', '22.4712568', 11, 'ΕΛΙΝΟΙΛ', 'ΜΗΤΣΙΟΥΛΗΣ ΑΣΤΕΡΙΟΣ', '42230800', 'Δ.Δ. Ομορφοχωρίου', '42230000', 'ΠΛΑΤΥΚΑΜΠΟΥ', '42000000', 'ΛΑΡΙΣΗΣ', '6ο ΧΛΜ. ΟΜΟΡΦΟΧΩΡΙΟΥ-ΛΑΡΙΣΑΣ, ΛΑΡΙΣΑ', '2410575224', 'user92', ''),
(4310, '39.7457033', '22.0867063', 13, 'CYCLON', 'ΔΑΛΑΚΑ ΕΛΕΝΗ', '42250100', 'Δ.Δ. Βλαχογιαννίου', '42250000', 'ΠΟΤΑΜΙΑΣ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΒΛΑΧΟΓΙΑΝΝΙ ΤΥΡΝΑΒΟΥ', NULL, 'user93', ''),
(4312, '39.7364071', '22.3062175', 1, 'Α.Π.', 'ΓΚΑΤΖΙΟΥΛΗΣ ΑΘΑΝΑΣΙΟΣ ΚΑΙ ΣΙΑ ΕΕ', '42270100', 'Δ.Δ. Τυρνάβου', '42270000', 'ΤΥΡΝΑΒΟΥ', '42000000', 'ΛΑΡΙΣΗΣ', '6ο χλμ  ΑΜΠΕΛΩΝΑ-ΤΥΡΝΑΒΟΥ', NULL, 'user94', ''),
(4541, '39.7829309', '22.2897657', 17, 'KAOIL', 'ΜΕΤΑΞΑ-ΖΑΓΚΟΤΗ ΕΛΕΝΗ', '42010100', 'Δ.Δ. Λαρίσης', '42010000', 'ΛΑΡΙΣΑΣ', '42000000', 'ΛΑΡΙΣΗΣ', '21ο ΧΛΜ. ΝΕΟ  ΛΑΡΙΣΑΣ-ΕΛΑΣΣΟΝΑΣ,ΤΥΡΝΑΒΟΣ', '2492023263', 'user95', ''),
(4570, '39.4884027', '22.6974627', 2, 'JETOIL', 'ΓΚΕΜΑΣ Β. ΑΘΑΝΑΣΙΟΣ', '42010100', 'Δ.Δ. Λαρίσης', '42010000', 'ΛΑΡΙΣΑΣ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΑΡΜΕΝΙΟ ΛΑΡΙΣΑΣ', NULL, 'user96', ''),
(4722, '39.6216420', '22.3916510', 3, 'SHELL', 'ΚΑΡΑΤΟΛΙΟΣ ΓΕΩΡΓΙΟΣ', '42010100', 'Δ.Δ. Λαρίσης', '42010000', 'ΛΑΡΙΣΑΣ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΚΑΡΑΟΛΗ ΔΗΜΗΤΡΙΟΥ ΤΕΡΜΑ, ΛΑΡΙΣΑ', '2410614854', 'user97', ''),
(4723, '39.7446193', '22.3615482', 11, 'ΕΛΙΝΟΙΛ', 'Μ.ΝΙΤΣΙΚΑΣ-Α.ΖΑΡΟΓΙΑΝΝΗΣ Ο.Ε.', '42030100', 'Δ.Δ. Αμπελώνος', '42030000', 'ΑΜΠΕΛΩΝΟΣ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΛΑΡΙΣΗΣ 4, ΑΜΠΕΛΩΝΑΣ', NULL, 'user98', ''),
(4724, '39.9454229', '21.9674072', 1, 'Α.Π.', 'ΠΟΥΡΝΑΡΑΣ ΔΗΜΗΤΡΙΟΣ', '42040100', 'Δ.Δ. Κρανέας Ελασσόνος', '42040000', 'ΑΝΤΙΧΑΣΙΩΝ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΚΡΑΝΕΑ ΕΛΑΣΣΟΝΑΣ-ΔΗΜΟΣ ΑΝΤΙΧΑΣΙΩΝ -ΛΑΡΙΣΑ', NULL, 'user99', ''),
(4725, '39.4853613', '22.7125675', 13, 'CYCLON', 'ΝΤΟΛΟΜΑΣ ΔΗΜΗΤΡΙΟΣ', '42050100', 'Δ.Δ. Αρμενίου', '42050000', 'ΑΡΜΕΝΙΟΥ', '42000000', 'ΛΑΡΙΣΗΣ', '31χλμ ΠΕΟ ΛΑΡΙΣΑΣ- ΒΟΛΟΥ', NULL, 'user100', ''),
(4727, '39.9206624', '22.1656486', 9, 'REVOIL', 'ΑΡΣΕΝΗΣ ΑΘΑΝΑΣΙΟΣ', '42080400', 'Δ.Δ. Δρυμού', '42080000', 'ΕΛΑΣΣΟΝΟΣ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΔΡΥΜΟΣ ΕΛΑΣΣΟΝΑΣ - ΛΑΡΙΣΑ', '2493096250', 'user101', ''),
(4728, '39.8494401', '22.1775917', 9, 'REVOIL', 'ΧΑΛΚΙΔΟΥ ΑΛΕΞ.ΠΕΛΑΓΙΑ', '42080800', 'Δ.Δ. Στεφανοβούνου', '42080000', 'ΕΛΑΣΣΟΝΟΣ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΣΤΕΦΑΝΟΒΟΥΝΟ ΕΛΑΣΣΟΝΑΣ', NULL, 'user102', ''),
(4730, '39.9179113', '22.5955350', 2, 'JETOIL', 'ΑΘΗΝΑ ΤΣΙΟΚΑΝΟΥ', '42110100', 'Δ.Δ. Πυργετού', '42110000', 'ΚΑΤΩ ΟΛΥΜΠΟΥ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΠΥΡΓΕΤΟΣ', NULL, 'user103', ''),
(4731, '39.4897324', '22.5978294', 1, 'Α.Π.', 'ΜΠΟΥΡΑ ΒΙΚΤΩΡΙΑ', '42120500', 'Δ.Δ. Νέου Περιβολίου', '42120000', 'ΚΙΛΕΛΕΡ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΝΕΟ ΠΕΡΙΒΟΛΙ ΛΑΡΙΣΑΣ', NULL, 'user104', ''),
(4732, '39.5699748', '22.5395622', 9, 'REVOIL', 'ΒΑΛΑΡΗ ΑΓΑΘΗ ΚΑΙ ΣΙΑ Ο.Ε.', '42230900', 'Δ.Δ. Χάλκης', '42230000', 'ΠΛΑΤΥΚΑΜΠΟΥ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΧΑΛΚΗ ΛΑΡΙΣΑΣ', '2410961151', 'user105', ''),
(4925, '39.6282099', '22.4637107', 13, 'CYCLON', 'ΝΑΤΣΗΣ ΑΡ. ΔΗΜΗΤΡΙΟΣ', '42010100', 'Δ.Δ. Λαρίσης', '42010000', 'ΛΑΡΙΣΑΣ', '42000000', 'ΛΑΡΙΣΗΣ', '5ο ΧΛΜ Π.Ε.Ο ΛΑΡΙΣΑΣ - ΒΟΛΟΥ', NULL, 'user106', ''),
(4928, '39.7544896', '22.5727279', 13, 'CYCLON', 'ΤΖΟΥΡΑ ΚΑΛΟΥΔΑ', '42200100', 'Δ.Δ. Συκουρίου', '42200000', 'ΝΕΣΣΩΝΟΣ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΣΥΚΟΥΡΙΟ ΛΑΡΙΣΑΣ', NULL, 'user107', ''),
(7640, '39.7615236', '22.2952648', 11, 'ΕΛΙΝΟΙΛ', 'ΠΟΡΤΕΣΗΣ ΙΩΑΝΝΗΣ', '42270100', 'Δ.Δ. Τυρνάβου', '42270000', 'ΤΥΡΝΑΒΟΥ', '42000000', 'ΛΑΡΙΣΗΣ', '3ο ΧΛΜ ΤΥΡΝΑΒΟΥ-ΚΟΖΑΝΗΣ Ν.Ε.Ο', '2492023253', 'user108', ''),
(7709, '39.7398903', '22.8636581', 17, 'KAOIL', 'ΠΕΡΔΙΚΗΣ ΚΩΣΤΑΝΤΙΝΟΣ', '42180200', 'Δ.Δ. Μελιβοίας', '42180000', 'ΜΕΛΙΒΟΙΑΣ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΒΕΛΙΚΑ ΑΓΙΑΣ ΛΑΡΙΣΑΣ', '2494051278', 'user109', ''),
(7867, '39.6263617', '22.5102276', 8, 'EKO', 'ΚΟΥΡΤΗΣ ΒΑΣΙΛΕΙΟΣ', '42230100', 'Δ.Δ. Πλατυκάμπου', '42230000', 'ΠΛΑΤΥΚΑΜΠΟΥ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΠΛΑΤΥΚΑΜΠΟΣ ΛΑΡΙΣΑΣ', '2410971010', 'user110', ''),
(7885, '39.8582894', '22.5313213', 2, 'JETOIL', 'ΤΣΑΝΤΙΛΑΣ Ν.- ΜΠΑΖΑΚΑΣ ΚΩΝ. Ο.Ε.', '42170100', 'Δ.Δ. Μακρυχωρίου', '42170000', 'ΜΑΚΡΥΧΩΡΙΟΥ', '42000000', 'ΛΑΡΙΣΗΣ', 'Ε.O. AΘΗΝΩΝ-ΘΕΣΣΑΛΟΝΙΚΗΣ ΔΙΟΔΙΑ ΤΕΜΠΩΝ', NULL, 'user111', ''),
(8015, '39.7509722', '22.3598593', 2, 'JETOIL', 'ΚΟΥΚΑΛΑ ΦΩΤΕΙΝΗ', '42030100', 'Δ.Δ. Αμπελώνος', '42030000', 'ΑΜΠΕΛΩΝΟΣ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΜΑΡΚΟΥ ΜΠΟΤΣΑΡΗ & ΜΠΛΟΤΣΗ-ΑΜΠΕΛΩΝΑΣ', NULL, 'user112', ''),
(8016, '39.7391024', '22.2879999', 1, 'Α.Π.', 'ΣΑΚΕΛΛΑΡΗΣ ΑΠΟΣΤΟΛΟΣ ΚΑΙ ΒΙΟΡΕΛΗΣ', '42270100', 'Δ.Δ. Τυρνάβου', '42270000', 'ΤΥΡΝΑΒΟΥ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΤΥΡΝΑΒΟΣ, ΤΥΡΝΑΒΟΣ ΛΑΡΙΣΑΣ', NULL, 'user113', ''),
(8065, '39.6953083', '22.4565770', 3, 'SHELL', 'ΕΡΜΗΣ ΑΕΜΕΕ ΥΠ/ΜΑ ΛΑΡΙΣΑΣ 4', '42010100', 'Δ.Δ. Λαρίσης', '42010000', 'ΛΑΡΙΣΑΣ', '42000000', 'ΛΑΡΙΣΗΣ', '6 ΧΛΜ Π.Ε.Ο. ΛΑΡΙΣΑΣ - ΘΕΣ/ΝΙΚΗΣ', '2410575170', 'user114', ''),
(8066, '39.8018848', '22.3428018', 6, 'AVIN', 'DIOGENESIS V.K. TRADING LTD', '42030300', 'Δ.Δ. Δελερίων', '42030000', 'ΑΜΠΕΛΩΝΟΣ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΔΕΛΕΡΙΑ ΤΥΡΝΑΒΟΥ', NULL, 'user115', ''),
(8067, '39.7456740', '22.2920026', 6, 'AVIN', 'DIOGENESIS V.K. TRADING LTD', '42270100', 'Δ.Δ. Τυρνάβου', '42270000', 'ΤΥΡΝΑΒΟΥ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΑΓΙΑΣ ΤΡΙΑΔΟΣ 92 ΤΥΡΝΑΒΟΣ', NULL, 'user116', ''),
(8098, '39.7391009', '22.3626073', 10, 'BP', 'ΚΑΓΙΑΣ ΝΙΚΟΛΑΟΣ', '42030100', 'Δ.Δ. Αμπελώνος', '42030000', 'ΑΜΠΕΛΩΝΟΣ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΛΑΡΙΣΗΣ 71 ΑΜΠΕΛΩΝΑΣ ΛΑΡΙΣΑΣ', NULL, 'user117', ''),
(8305, '39.6526597', '22.4344469', 17, 'KAOIL', 'ΓΚΟΥΝΕΛΑΣ Ν-ΓΚΟΥΝΕΛΑ Β ΟΕ', '42010100', 'Δ.Δ. Λαρίσης', '42010000', 'ΛΑΡΙΣΑΣ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΣΩΚΡΑΤΟΥΣ 71', '2410538213', 'user118', ''),
(8449, '39.7331688', '22.2782140', 1, 'Α.Π.', 'ΣΑΚΕΛΛΑΡΗΣ ΑΘΑΝΑΣΙΟΣ', '42270100', 'Δ.Δ. Τυρνάβου', '42270000', 'ΤΥΡΝΑΒΟΥ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΗΡΩΩΝ ΠΟΛΥΤΕΧΝΕΙΟΥ 89 ΤΥΡΝΑΒΟΣ', NULL, 'user119', ''),
(8452, '39.6334301', '22.4338038', 3, 'SHELL', 'ROYAL OIL ΜΟΝΟΠΡΟΣΩΠΗ ΕΠΕ', '42010100', 'Δ.Δ. Λαρίσης', '42010000', 'ΛΑΡΙΣΑΣ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΒΟΛΟΥ 32-34  ΛΑΡΙΣΗΣ', '2410232206', 'user120', ''),
(8849, '39.6035963', '22.4358866', 8, 'EKO', 'ΕΚΟ-ΚΑΛΥΨΩ Νο 118 ΛΑΡΙΣΑ', '42010100', 'Δ.Δ. Λαρίσης', '42010000', 'ΛΑΡΙΣΑΣ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΦΑΡΣΑΛΩΝ 209 ΛΑΡΙΣΑ', NULL, 'user121', ''),
(8893, '39.6384624', '22.4359994', 8, 'EKO', 'ΒΕΛΗΣΣΑΡΙΟΥ ΑΝΤΩΝΙΑ', '42010100', 'Δ.Δ. Λαρίσης', '42010000', 'ΛΑΡΙΣΑΣ', '42000000', 'ΛΑΡΙΣΗΣ', '2ο ΧΛΜ Π.Ε.Ο. ΛΑΡΙΣΑΣ -ΘΕΣ/ΝΙΚΗΣ  ΛΑΡΙΣΑ', '2410283894', 'user122', ''),
(8996, '39.6303885', '22.4519272', 2, 'JETOIL', 'ΜΠΛΙΟΣ ΑΠΟΣΤΟΛΟΣ', '42010100', 'Δ.Δ. Λαρίσης', '42010000', 'ΛΑΡΙΣΑΣ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΒΟΛΟΥ 174  - ΛΑΡΙΣΑ', NULL, 'user123', ''),
(9041, '39.8413342', '22.1063179', 1, 'Α.Π.', 'ΝΤΟΚΟΣ ΙΩΑΝΝΗΣ', '42080500', 'Δ.Δ. Ευαγγελισμού Ελασσόνος', '42080000', 'ΕΛΑΣΣΟΝΟΣ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΕΥΑΓΓΕΛΙΣΜΟΣ', NULL, 'user124', ''),
(9072, '39.3010084', '22.3918093', 2, 'JETOIL', 'ΓΚΕΒΡΟΥ ΕΥΑΓΓΕΛΙΑ', '42280100', 'Δ.Δ. Φαρσάλων', '42280000', 'ΦΑΡΣΑΛΩΝ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΒΟΛΟΥ 70, ΦΑΡΣΑΛΑ ΛΑΡΙΣΑΣ', NULL, 'user125', ''),
(9073, '39.2946403', '22.3679290', 2, 'JETOIL', 'ΓΚΕΒΡΟΣ ΔΗΜΗΤΡΙΟΣ', '42280100', 'Δ.Δ. Φαρσάλων', '42280000', 'ΦΑΡΣΑΛΩΝ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΤΕΡΜΑ ΛΑΜΙΑΣ', NULL, 'user126', ''),
(9118, '39.3460603', '22.3399387', 11, 'ΕΛΙΝΟΙΛ', 'ΒΑΪΤΣΗ ΙΩΑΝΝΑ', '42090100', 'Δ.Δ. Μεγάλου Ευυδρίου', '42090000', 'ΕΝΙΠΠΕΑ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΜΙΚΡΟ ΕΥΪΔΡΙΟ - ΦΑΡΣΑΛΑ', '2491071261', 'user127', ''),
(9151, '39.6328321', '22.3906165', 8, 'EKO', 'ΕΚΟ-ΚΑΛΥΨΩ Νο 125 ΛΑΡΙΣΑ', '42010100', 'Δ.Δ. Λαρίσης', '42010000', 'ΛΑΡΙΣΑΣ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΙΩΑΝΝΙΝΩΝ  79 ΛΑΡΙΣΑ', NULL, 'user128', ''),
(9253, '39.6473613', '22.5137559', 6, 'AVIN', 'ΦΛΩΡΟΥ ΑΦΟΙ Α.Ε.', '42020100', 'Δ.Δ. Αγιάς', '42020000', 'ΑΓΙΑΣ', '42000000', 'ΛΑΡΙΣΗΣ', '14ο ΧΛΜ ΛΑΡΙΣΑΣ-ΑΓΙΑΣ ΜΕΛΙΣΣΟΧΩΡΙ', NULL, 'user129', ''),
(9379, '39.6717840', '22.3809549', 3, 'SHELL', 'ΔΑΛΑΜΑΓΚΑΣ ΒΑΣ. ΑΛΕΞΑΝΔΡΟΣ', '42010100', 'Δ.Δ. Λαρίσης', '42010000', 'ΛΑΡΙΣΑΣ', '42000000', 'ΛΑΡΙΣΗΣ', '5 ΧΛΜ. Ε.Ο. ΛΑΡΙΣΑΣ-ΚΟΖΑΝΗΣ', '2410591777', 'user130', ''),
(9616, '39.5561132', '22.6441681', 11, 'ΕΛΙΝΟΙΛ', 'ΛΑΓΟΔΟΝΤΗ ΑΛΕΞΑΝΔΡΑ', '42120400', 'Δ.Δ. Μελίσσης', '42120000', 'ΚΙΛΕΛΕΡ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΜΕΛΙΣΣΑ ΚΙΛΕΛΕΡ ΛΑΡΙΣΑΣ', NULL, 'user131', ''),
(9795, '39.7188047', '22.5454032', 9, 'REVOIL', 'ΣΑΙΤΗΣ Γ. ΝΙΚΟΛΑΟΣ', '42200200', 'Δ.Δ. Καλοχωρίου', '42200000', 'ΝΕΣΣΩΝΟΣ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΚΑΛΟΧΩΡΙ ΛΑΡΙΣΑΣ', NULL, 'user132', ''),
(9926, '39.5828693', '22.3672005', 5, 'ΕΤΕΚΑ', 'ARISTON IKE', '42010100', 'Δ.Δ. Λαρίσης', '42010000', 'ΛΑΡΙΣΑΣ', '42000000', 'ΛΑΡΙΣΗΣ', '9o XΛΜ ΛΑΡΙΣΑΣ-ΚΑΡΔΙΤΣΑΣ', NULL, 'user133', ''),
(10017, '39.6467863', '22.4299510', 3, 'SHELL', 'ΕΡΜΗΣ ΑΕΜΕΕ ΥΠ/ΜΑ ΛΑΡΙΣΑΣ 7', '42010100', 'Δ.Δ. Λαρίσης', '42010000', 'ΛΑΡΙΣΑΣ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΑΕΡΟΔΡΟΜΙΟΥ 70 ΛΑΡΙΣΑ', '2410281530', 'user134', ''),
(10162, '40.0634170', '22.1703937', 11, 'ΕΛΙΝΟΙΛ', 'ΣΑΡΡΟΥ ΝΙΚΟΛΕΤΤΑ', '42160200', 'Δ.Δ. Δολίχης', '42160000', 'ΛΙΒΑΔΙΟΥ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΔΟΛΙΧΗ ΕΛΑΣΣΟΝΑΣ', '2493092263', 'user135', ''),
(10171, '39.6157730', '22.2615628', 1, 'Α.Π.', 'ΠΑΠΑΔΟΠΟΥΛΟΥ ΑΙΚΑΤΕΡΙΝΗ', '42130600', 'Δ.Δ. Μάνδρας', '42130000', 'ΚΟΙΛΑΔΑΣ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΜΑΝΔΡΑ ΛΑΡΙΣΑΣ', NULL, 'user136', ''),
(10212, '39.6755481', '22.3744778', 11, 'ΕΛΙΝΟΙΛ', 'MAΣΤΡΟΓΙΩΡΓΟΣ Δ. ΠΑΝΑΓΙΩΤΗΣ', '42060100', 'Δ.Δ. Γιάννουλης', '42060000', 'ΓΙΑΝΝΟΥΛΗΣ', '42000000', 'ΛΑΡΙΣΗΣ', '6o ΧΙΛ. ΛΑΡΙΣΑΣ-ΤΥΡΝΑΒΟΥ', NULL, 'user137', ''),
(10229, '39.6843255', '22.3622244', 2, 'JETOIL', 'ΖΩΗ ΚΑΙ ΒΑΪΟΣ ΓΚΕΒΡΟΣ Ο.Ε.', '42060100', 'Δ.Δ. Γιάννουλης', '42060000', 'ΓΙΑΝΝΟΥΛΗΣ', '42000000', 'ΛΑΡΙΣΗΣ', '7ο ΧΛΜ ΛΑΡΙΣΑΣ-ΤΥΡΝΑΒΟΥ', NULL, 'user138', ''),
(10265, '39.3153236', '22.2356031', 10, 'BP', 'ΡΑΦΤΟΠΟΥΛΟΥ ΙΩΑΝΝΑ', '42280100', 'Δ.Δ. Φαρσάλων', '42280000', 'ΦΑΡΣΑΛΩΝ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΣΤΑΥΡΟΣ ΦΑΡΣΑΛΩΝ', NULL, 'user139', ''),
(10443, '39.6485572', '22.4319629', 1, 'Α.Π.', 'ΠΡΙΟΝΑΣ ΝΙΚΟΛΑΟΣ', '42010100', 'Δ.Δ. Λαρίσης', '42010000', 'ΛΑΡΙΣΑΣ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΣΩΚΡΑΤΟΥΣ 4, ΛΑΡΙΣΑ', NULL, 'user140', ''),
(10444, '39.6327110', '22.4016525', 17, 'KAOIL', 'ΠΡΙΟΝΑΣ ΝΙΚΟΛΑΟΣ ΚΩΝ/ΝΟΣ', '42010100', 'Δ.Δ. Λαρίσης', '42010000', 'ΛΑΡΙΣΑΣ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΙΩΑΝΝΙΝΩΝ 54-56 - ΛΑΡΙΣΑ', '2410625297', 'user141', ''),
(10448, '39.7509985', '22.3630308', 13, 'CYCLON', 'ΚΑΡΑΚΩΣΤΑΣ ΓΕΩΡΓΙΟΣ', '42030100', 'Δ.Δ. Αμπελώνος', '42030000', 'ΑΜΠΕΛΩΝΟΣ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΜΑΡΚΟΥ ΜΠΟΤΣΑΡΗ 5  - ΑΜΠΕΛΩΝΑΣ ΛΑΡΙΣΑΣ', NULL, 'user142', ''),
(10465, '39.8924721', '22.1788310', 17, 'KAOIL', 'ΙΑΚΩΒΟΣ ΔΑΥΪΔΟΠΟΥΛΟΣ ΚΑΙ ΣΙΑ ΟΕ', '42080100', 'Δ.Δ. Ελασσόνος', '42080000', 'ΕΛΑΣΣΟΝΟΣ', '42000000', 'ΛΑΡΙΣΗΣ', 'Ε.Ο. ΕΛΑΣΣΟΝΑΣ  ΔΕΣΚΑΤΗΣ', NULL, 'user143', ''),
(10485, '39.6175387', '22.4036666', 10, 'BP', 'ΕΚΟ ΚΑΛΥΨΩ Νο 179 ΛΑΡΙΣΑ', '42010100', 'Δ.Δ. Λαρίσης', '42010000', 'ΛΑΡΙΣΑΣ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΚΑΡΔΙΤΣΗΣ & ΠΑΠΑΝΔΡΕΟΥ - ΛΑΡΙΣΑ', NULL, 'user144', ''),
(10519, '39.8583322', '22.5312677', 3, 'SHELL', 'Δ.Δ ΣΚΡΕΤΑ ΟΕ', '42070100', 'Δ.Δ. Γόννων', '42070000', 'ΓΟΝΝΩΝ', '42000000', 'ΛΑΡΙΣΗΣ', '385o χλμ ΑΘΗΝΩΝ-ΘΕΣΣΑΛΟΝΙΚΗΣ-ΤΕΜΠΗ', NULL, 'user145', ''),
(10539, '39.8871407', '22.1853564', 11, 'ΕΛΙΝΟΙΛ', 'Γ.& Σ. ΜΗΤΣΙΜΠΟΝΑΣ Ο.Ε', '42080100', 'Δ.Δ. Ελασσόνος', '42080000', 'ΕΛΑΣΣΟΝΟΣ', '42000000', 'ΛΑΡΙΣΗΣ', '6ης ΟΚΤΩΒΡΙΟΥ 182 ΕΛΑΣΣΟΝΑ', NULL, 'user146', ''),
(10544, '39.8553995', '22.4786293', 6, 'AVIN', 'ΑΦΟΙ ΣΑΜΟΥΤΗ Ο.Ε.', '42070100', 'Δ.Δ. Γόννων', '42070000', 'ΓΟΝΝΩΝ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΓΟΝΝΟΙ ΛΑΡΙΣΑΣ', NULL, 'user147', ''),
(10567, '39.5776748', '22.3552706', 17, 'KAOIL', 'ΤΟΛΛΙΑΣ ΑΘΑΝΑΣΙΟΣ', '42130300', 'Δ.Δ. Ελευθερών', '42130000', 'ΚΟΙΛΑΔΑΣ', '42000000', 'ΛΑΡΙΣΗΣ', '8οΧΛ ΛΑΡΙΣΑΣ-ΚΑΡΔΙΤΣΑΣ ΕΛΕΥΘΕΡΑΙ', '2410811011', 'user148', ''),
(10594, '39.6328309', '22.4056080', 5, 'ΕΤΕΚΑ', 'ARISTON I.K.E.', '42010100', 'Δ.Δ. Λαρίσης', '42010000', 'ΛΑΡΙΣΑΣ', '42000000', 'ΛΑΡΙΣΗΣ', 'IΩΑΝΝΙΝΩΝ 16 - ΛΑΡΙΣΑ', NULL, 'user149', ''),
(10671, '39.6077624', '22.4389702', 5, 'ΕΤΕΚΑ', 'ΠΑΠΑΔΗΜΗΤΡΙΟΥ Β. ΕΛΕΝΗ', '42010100', 'Δ.Δ. Λαρίσης', '42010000', 'ΛΑΡΙΣΑΣ', '42000000', 'ΛΑΡΙΣΗΣ', '3ο ΧΛΜ Π.Ε.Ο. ΛΑΡΙΣΑΣ-ΑΘΗΝΑΣ', NULL, 'user150', ''),
(10872, '39.8935083', '22.2008136', 10, 'BP', 'ΕΚΟ-ΚΑΛΥΨΩ Νο 147 ΕΛΑΣΣΟΝΑ', '42080100', 'Δ.Δ. Ελασσόνος', '42080000', 'ΕΛΑΣΣΟΝΟΣ', '42000000', 'ΛΑΡΙΣΗΣ', '1ο ΧΛΜ ΕΛΑΣΣΟΝΑΣ - ΛΑΡΙΣΑΣ', NULL, 'user151', ''),
(10933, '39.6329318', '22.4086743', 3, 'SHELL', 'ΥΙΟΙ ΑΣΤ. ΓΚΟΥΓΚΟΥΛΗ Ο.Ε.', '42010100', 'Δ.Δ. Λαρίσης', '42010000', 'ΛΑΡΙΣΑΣ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΗΡ. ΠΟΛΥΤΕΧΝΕΙΟΥ 9 - ΛΑΡΙΣΑ', NULL, 'user152', ''),
(10990, '39.6355210', '22.4275017', 10, 'BP', 'ΑΚΡΙΒΟΥΛΗ-ΙΩΑΝΝΙΔΗ ΓΛΥΚΕΡΙΑ', '42010100', 'Δ.Δ. Λαρίσης', '42010000', 'ΛΑΡΙΣΑΣ', '42000000', 'ΛΑΡΙΣΗΣ', '23ης ΟΚΤΩΒΡΙΟΥ 98 & Γ ΣΕΦΕΡΗ', NULL, 'user153', ''),
(11054, '39.6917330', '22.3671481', 1, 'Α.Π.', 'ΝΙΝΟΠΟΥΛΟΣ Δ.ΠΑΝΑΓΙΩΤΗΣ', '42060100', 'Δ.Δ. Γιάννουλης', '42060000', 'ΓΙΑΝΝΟΥΛΗΣ', '42000000', 'ΛΑΡΙΣΗΣ', '6o ΧΛΜ ΛΑΡΙΣΑΣ-ΑΜΠΕΛΩΝΑ ΛΑΡΙΣΑ', NULL, 'user154', ''),
(11062, '39.6471748', '22.4305987', 11, 'ΕΛΙΝΟΙΛ', 'Γ&Σ ΜΗΤΣΙΜΠΟΝΑΣ Ο.Ε.', '42010100', 'Δ.Δ. Λαρίσης', '42010000', 'ΛΑΡΙΣΑΣ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΑΕΡΟΔΡΟΜΙΟΥ 78 ΛΑΡΙΣΑ', NULL, 'user155', ''),
(11093, '39.6319043', '22.4121809', 2, 'JETOIL', 'ΓΚΕΒΡΟΣ ΔΗΜ. ΒΑΙΟΣ', '42010100', 'Δ.Δ. Λαρίσης', '42010000', 'ΛΑΡΙΣΑΣ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΗΡΩΩΝ ΠΟΛΥΤΕΧΝΕΙΟΥ 14, ΛΑΡΙΣΑ', NULL, 'user156', ''),
(11094, '39.6262373', '22.4321489', 5, 'ΕΤΕΚΑ', 'ARISTON IKE', '42010100', 'Δ.Δ. Λαρίσης', '42010000', 'ΛΑΡΙΣΑΣ', '42000000', 'ΛΑΡΙΣΗΣ', '1oXΛΜ ΛΑΡΙΣΑΣ-ΑΘΗΝΩΝ', NULL, 'user157', ''),
(11138, '39.8698494', '22.7242064', 10, 'BP', 'ΣΕΛΗΝΗΣ ΝΙΚΟΛΑΟΣ', '42100100', 'Δ.Δ. Στομίου', '42100000', 'ΕΥΡΥΜΕΝΩΝ', '42000000', 'ΛΑΡΙΣΗΣ', 'ΣΤΟΜΙΟ ΛΑΡΙΣΑΣ', NULL, 'user158', '');

-- --------------------------------------------------------

--
-- Stand-in structure for view `min_price`
--
CREATE TABLE `min_price` (
`fuelTypeID` tinyint(3) unsigned
,`fuelNormalName` varchar(64)
,`min_price` decimal(4,3)
);

-- --------------------------------------------------------

--
-- Table structure for table `pricedata`
--

CREATE TABLE `pricedata` (
  `id` int(11) NOT NULL,
  `gasStationID` smallint(5) UNSIGNED NOT NULL,
  `fuelTypeID` tinyint(3) UNSIGNED NOT NULL,
  `fuelSubTypeID` tinyint(3) UNSIGNED NOT NULL,
  `fuelNormalName` varchar(64) NOT NULL,
  `fuelName` varchar(128) NOT NULL,
  `fuelPrice` decimal(4,3) NOT NULL,
  `dateUpdated` timestamp NULL DEFAULT NULL,
  `isPremium` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pricedata`
--

INSERT INTO `pricedata` (`id`, `gasStationID`, `fuelTypeID`, `fuelSubTypeID`, `fuelNormalName`, `fuelName`, `fuelPrice`, `dateUpdated`, `isPremium`) VALUES
(1, 441, 1, 9, 'Αμόλυβδη 95', 'Αμόλυβδη AVIN Best 95', '1.379', '2016-12-01 07:54:39', 0),
(2, 441, 2, 0, 'Αμόλυβδη 100', 'Αμόλυβδη 100', '1.545', '2016-12-01 07:54:46', 0),
(3, 441, 4, 17, 'Diesel Κίνησης', 'AVIN Diesel Best ACTION', '1.117', '2016-12-01 07:55:07', 1),
(4, 441, 4, 18, 'Diesel Κίνησης', 'AVIN Diesel Best', '1.047', '2016-12-01 07:55:00', 0),
(5, 442, 1, 1, 'Αμόλυβδη 95 V-Power', 'Shell Αμόλυβδη 95 V-Power', '1.478', '2016-11-30 08:31:14', 1),
(6, 442, 1, 6, 'Αμόλυβδη 95', 'Shell Αμόλυβδη Ενισχυμένη 95 οκτανίων', '1.398', '2016-11-30 08:31:02', 0),
(7, 442, 2, 1, 'Αμόλυβδη 100', 'Shell Αμόλυβδη 100 V-Power Racing', '1.745', '2016-11-30 08:31:23', 1),
(8, 442, 4, 2, 'Diesel Κίνησης', 'Shell Μείγμα Κίνησης Βιοντήζελ Extra', '1.065', '2016-11-30 08:31:36', 0),
(9, 442, 4, 4, 'Diesel Κίνησης', 'Shell V-Power Diesel', '1.145', '2016-11-30 08:31:46', 1),
(10, 443, 1, 0, 'Αμόλυβδη 95', 'Αμόλυβδη 95', '1.395', '2016-11-03 09:49:57', 0),
(11, 443, 2, 0, 'Αμόλυβδη 100', 'Αμόλυβδη 100', '1.568', '2016-11-03 09:50:19', 0),
(12, 443, 4, 0, 'Diesel Κίνησης', 'Diesel Κίνησης', '1.098', '2016-11-03 09:50:35', 0),
(13, 443, 4, 16, 'Diesel Κίνησης', 'Diesel Κίνησης D-FORCE', '1.148', '2016-11-03 09:50:44', 1),
(14, 444, 1, 0, 'Αμόλυβδη 95', 'Αμόλυβδη 95', '1.395', '2016-11-07 08:01:24', 0),
(15, 444, 2, 0, 'Αμόλυβδη 100', 'Αμόλυβδη 100', '1.568', '2016-10-11 15:57:33', 0),
(16, 444, 4, 0, 'Diesel Κίνησης', 'Diesel Κίνησης', '1.098', '2016-10-11 15:57:48', 0),
(17, 444, 4, 16, 'Diesel Κίνησης', 'Diesel Κίνησης D-FORCE', '1.148', '2016-10-05 10:29:49', 1),
(18, 445, 1, 9, 'Αμόλυβδη 95', 'Αμόλυβδη AVIN Best 95', '1.378', '2016-11-25 13:34:30', 0),
(19, 445, 4, 22, 'Diesel Κίνησης', 'AVIN Diesel κίνησης', '1.048', '2016-12-01 12:53:35', 0),
(20, 446, 1, 9, 'Αμόλυβδη 95', 'Αμόλυβδη AVIN Best 95', '1.378', '2016-12-01 04:16:03', 0),
(21, 446, 2, 0, 'Αμόλυβδη 100', 'Αμόλυβδη 100', '1.545', '2016-12-01 04:16:12', 0),
(22, 446, 4, 18, 'Diesel Κίνησης', 'AVIN Diesel Best', '1.049', '2016-12-01 04:16:20', 0),
(23, 447, 1, 1, 'Αμόλυβδη 95 V-Power', 'Shell Αμόλυβδη 95 V-Power', '1.478', '2016-12-01 06:52:20', 1),
(24, 447, 1, 6, 'Αμόλυβδη 95', 'Shell Αμόλυβδη Ενισχυμένη 95 οκτανίων', '1.398', '2016-12-01 06:52:13', 0),
(25, 447, 2, 1, 'Αμόλυβδη 100', 'Shell Αμόλυβδη 100 V-Power Racing', '1.745', '2016-12-01 06:52:27', 1),
(26, 447, 4, 2, 'Diesel Κίνησης', 'Shell Μείγμα Κίνησης Βιοντήζελ Extra', '1.065', '2016-12-01 06:52:33', 0),
(27, 447, 4, 4, 'Diesel Κίνησης', 'Shell V-Power Diesel', '1.065', '2016-12-01 06:52:41', 1),
(28, 448, 1, 5, 'Αμόλυβδη 95', 'ΕΚΟ Kinitron Unleaded 95 Plus', '1.399', '2016-11-24 16:17:20', 0),
(29, 448, 2, 2, 'Αμόλυβδη 100', 'ΕΚΟ Kinitron Unleaded 100 Speed', '1.589', '2016-11-24 16:17:26', 0),
(30, 448, 4, 13, 'Diesel Κίνησης', 'EKO DIESEL EKONOMY', '1.089', '2016-11-24 16:17:33', 0),
(31, 448, 4, 14, 'Diesel Κίνησης', 'EKO DIESEL Avio', '1.159', '2016-11-24 16:17:40', 1),
(32, 448, 5, 0, 'Diesel Θέρμανσης', 'Diesel Θέρμασης', '0.910', '2016-11-24 16:17:48', 0),
(33, 448, 6, 0, 'Υγραέριο Κίνησης', 'Υγραέριο κίνησης (Autogas)', '0.668', '2016-11-24 16:17:55', 0),
(34, 449, 1, 1, 'Αμόλυβδη 95 V-Power', 'Shell Αμόλυβδη 95 V-Power', '1.478', '2016-12-01 07:25:19', 1),
(35, 449, 1, 6, 'Αμόλυβδη 95', 'Shell Αμόλυβδη Ενισχυμένη 95 οκτανίων', '1.398', '2016-12-01 07:25:01', 0),
(36, 449, 2, 1, 'Αμόλυβδη 100', 'Shell Αμόλυβδη 100 V-Power Racing', '1.745', '2016-12-01 07:25:30', 1),
(37, 449, 4, 2, 'Diesel Κίνησης', 'Shell Μείγμα Κίνησης Βιοντήζελ Extra', '1.065', '2016-12-01 07:25:46', 0),
(38, 449, 4, 4, 'Diesel Κίνησης', 'Shell V-Power Diesel', '1.065', '2016-12-01 07:26:09', 1),
(39, 449, 4, 6, 'Diesel Κίνησης', 'Shell Πετρέλαιο Κίνησης Extra', '1.058', '2016-07-12 06:50:57', 0),
(40, 450, 1, 1, 'Αμόλυβδη 95 V-Power', 'Shell Αμόλυβδη 95 V-Power', '1.478', '2016-12-01 03:57:18', 1),
(41, 450, 1, 6, 'Αμόλυβδη 95', 'Shell Αμόλυβδη Ενισχυμένη 95 οκτανίων', '1.398', '2016-12-01 03:57:06', 0),
(42, 450, 2, 1, 'Αμόλυβδη 100', 'Shell Αμόλυβδη 100 V-Power Racing', '1.745', '2016-12-01 03:57:27', 1),
(43, 450, 4, 2, 'Diesel Κίνησης', 'Shell Μείγμα Κίνησης Βιοντήζελ Extra', '1.065', '2016-12-01 03:57:45', 0),
(44, 450, 4, 4, 'Diesel Κίνησης', 'Shell V-Power Diesel', '1.065', '2016-12-01 03:57:58', 1),
(45, 450, 4, 6, 'Diesel Κίνησης', 'Shell Πετρέλαιο Κίνησης Extra', '1.087', '2016-10-24 03:09:03', 0),
(46, 450, 6, 0, 'Υγραέριο Κίνησης', 'Υγραέριο κίνησης (Autogas)', '0.665', '2016-12-01 03:58:14', 0),
(47, 451, 1, 0, 'Αμόλυβδη 95', 'Αμόλυβδη 95', '1.398', '2016-07-11 03:52:31', 0),
(48, 451, 1, 2, 'Αμόλυβδη 95', 'BP Unleaded 95', '1.418', '2016-11-30 13:34:13', 0),
(49, 451, 2, 0, 'Αμόλυβδη 100', 'Αμόλυβδη 100', '1.569', '2016-07-11 05:11:00', 0),
(50, 451, 2, 3, 'Αμόλυβδη 100', 'BP Ultimate 100', '1.618', '2016-11-30 13:34:24', 0),
(51, 451, 4, 0, 'Diesel Κίνησης', 'Diesel Κίνησης', '1.059', '2016-07-11 03:53:28', 0),
(52, 451, 4, 5, 'Diesel Κίνησης', 'BP Super Diesel', '1.088', '2016-11-30 13:34:44', 0),
(53, 451, 4, 11, 'Diesel Κίνησης', 'ΕΛΙΝ Diesel Crystal', '1.109', '2016-07-11 03:53:17', 1),
(54, 451, 4, 12, 'Diesel Κίνησης', 'BP Ultimate Diesel', '1.159', '2016-11-30 13:34:56', 1),
(55, 451, 5, 3, 'Diesel Θέρμανσης', 'BP Heat', '0.900', '2016-11-10 06:03:27', 0),
(56, 451, 7, 3, 'Diesel Θέρμανσης κ.ο. 500-1000 lt', 'BP Heat - K.O. μεταξύ 500 και 1000 lt', '0.900', '2016-11-12 17:53:44', 0),
(57, 451, 7, 5, 'Diesel Θέρμανσης κ.ο. <500 lt', 'BP Heat - K.O. < 500 lt', '0.920', '2016-11-30 13:33:37', 0),
(58, 451, 7, 8, 'Diesel Θέρμανσης κ.ο. 500-1000 lt', 'BP Super Heat - K.O. μεταξύ 500 και 1000 lt', '0.900', '2016-11-30 13:32:44', 1),
(59, 451, 7, 12, 'Diesel Θέρμανσης κ.ο. >1000 lt', 'BP Heat - K.O. > 1000 lt', '0.900', '2016-11-30 13:32:30', 0),
(60, 451, 7, 16, 'Diesel Θέρμανσης κ.ο. <500 lt', 'BP Super Heat - K.O. < 500 lt', '0.920', '2016-11-14 08:08:14', 1),
(61, 452, 1, 5, 'Αμόλυβδη 95', 'ΕΚΟ Kinitron Unleaded 95 Plus', '1.419', '2016-11-28 13:44:53', 0),
(62, 452, 2, 2, 'Αμόλυβδη 100', 'ΕΚΟ Kinitron Unleaded 100 Speed', '1.599', '2016-11-28 13:45:38', 0),
(63, 452, 4, 13, 'Diesel Κίνησης', 'EKO DIESEL EKONOMY', '1.089', '2016-11-28 13:45:05', 0),
(64, 452, 4, 14, 'Diesel Κίνησης', 'EKO DIESEL Avio', '1.159', '2016-11-28 13:45:50', 1),
(65, 452, 6, 0, 'Υγραέριο Κίνησης', 'Υγραέριο κίνησης (Autogas)', '0.668', '2016-11-28 13:46:02', 0),
(66, 453, 1, 1, 'Αμόλυβδη 95 V-Power', 'Shell Αμόλυβδη 95 V-Power', '1.478', '2016-11-30 07:03:18', 1),
(67, 453, 1, 6, 'Αμόλυβδη 95', 'Shell Αμόλυβδη Ενισχυμένη 95 οκτανίων', '1.408', '2016-11-30 07:03:52', 0),
(68, 453, 2, 1, 'Αμόλυβδη 100', 'Shell Αμόλυβδη 100 V-Power Racing', '1.745', '2016-10-05 05:36:00', 1),
(69, 453, 3, 3, 'Super', 'Shell Νέα Σούπερ', '1.468', '2016-11-15 07:15:31', 0),
(70, 453, 4, 2, 'Diesel Κίνησης', 'Shell Μείγμα Κίνησης Βιοντήζελ Extra', '1.108', '2016-11-01 07:52:41', 0),
(71, 453, 4, 4, 'Diesel Κίνησης', 'Shell V-Power Diesel', '1.098', '2016-12-01 06:58:37', 1),
(72, 453, 5, 2, 'Diesel Θέρμανσης', 'Shell Πετρέλαιο Θέρμανσης', '0.910', '2016-11-29 07:49:31', 0),
(73, 454, 1, 1, 'Αμόλυβδη 95 V-Power', 'Shell Αμόλυβδη 95 V-Power', '1.408', '2016-11-29 10:25:41', 1),
(74, 454, 1, 6, 'Αμόλυβδη 95', 'Shell Αμόλυβδη Ενισχυμένη 95 οκτανίων', '1.398', '2016-11-29 10:25:28', 0),
(75, 454, 2, 1, 'Αμόλυβδη 100', 'Shell Αμόλυβδη 100 V-Power Racing', '1.745', '2016-11-29 10:25:48', 1),
(76, 454, 4, 2, 'Diesel Κίνησης', 'Shell Μείγμα Κίνησης Βιοντήζελ Extra', '1.065', '2016-12-01 10:18:45', 0),
(77, 454, 4, 4, 'Diesel Κίνησης', 'Shell V-Power Diesel', '1.065', '2016-12-01 10:18:52', 1),
(78, 455, 1, 1, 'Αμόλυβδη 95 V-Power', 'Shell Αμόλυβδη 95 V-Power', '1.478', '2016-12-01 04:06:46', 1),
(79, 455, 1, 6, 'Αμόλυβδη 95', 'Shell Αμόλυβδη Ενισχυμένη 95 οκτανίων', '1.398', '2016-12-01 04:06:24', 0),
(80, 455, 2, 1, 'Αμόλυβδη 100', 'Shell Αμόλυβδη 100 V-Power Racing', '1.745', '2016-12-01 04:07:01', 1),
(81, 455, 4, 2, 'Diesel Κίνησης', 'Shell Μείγμα Κίνησης Βιοντήζελ Extra', '1.065', '2016-12-01 04:07:19', 0),
(82, 455, 4, 4, 'Diesel Κίνησης', 'Shell V-Power Diesel', '1.065', '2016-12-01 04:07:44', 1),
(83, 457, 1, 2, 'Αμόλυβδη 95', 'BP Unleaded 95', '1.449', '2016-11-26 06:55:29', 0),
(84, 457, 2, 3, 'Αμόλυβδη 100', 'BP Ultimate 100', '1.619', '2016-11-26 06:55:43', 0),
(85, 457, 4, 5, 'Diesel Κίνησης', 'BP Super Diesel', '1.119', '2016-11-26 06:56:05', 0),
(86, 457, 4, 12, 'Diesel Κίνησης', 'BP Ultimate Diesel', '1.199', '2016-11-26 06:56:25', 1),
(87, 457, 6, 0, 'Υγραέριο Κίνησης', 'Υγραέριο κίνησης (Autogas)', '0.689', '2016-10-09 05:14:01', 0),
(88, 457, 7, 3, 'Diesel Θέρμανσης κ.ο. 500-1000 lt', 'BP Heat - K.O. μεταξύ 500 και 1000 lt', '0.920', '2016-11-26 06:57:21', 0),
(89, 457, 7, 5, 'Diesel Θέρμανσης κ.ο. <500 lt', 'BP Heat - K.O. < 500 lt', '0.940', '2016-11-26 06:56:38', 0),
(90, 457, 7, 12, 'Diesel Θέρμανσης κ.ο. >1000 lt', 'BP Heat - K.O. > 1000 lt', '0.910', '2016-11-26 06:57:35', 0),
(91, 458, 1, 4, 'Αμόλυβδη 95', 'Revoil αμόλυβδη 95 xtra4', '1.405', '2016-07-07 09:09:39', 0),
(92, 458, 2, 5, 'Αμόλυβδη 100', 'Revoil Αμόλυβδη 100 xtra4', '1.559', '2016-07-07 09:10:21', 0),
(93, 458, 4, 1, 'Diesel Κίνησης', 'Revoil Πετρέλαιο Κίνησης xtra4', '1.095', '2016-07-07 09:11:55', 0),
(94, 458, 4, 20, 'Diesel Κίνησης', 'Revoil Πετρέλαιο Κίνησης diesel xtra4 revolution', '1.160', '2016-07-07 09:12:33', 1),
(95, 460, 1, 4, 'Αμόλυβδη 95', 'Revoil αμόλυβδη 95 xtra4', '1.449', '2016-11-21 19:06:37', 0),
(96, 460, 4, 1, 'Diesel Κίνησης', 'Revoil Πετρέλαιο Κίνησης xtra4', '1.119', '2016-11-21 19:06:55', 0),
(97, 460, 5, 1, 'Diesel Θέρμανσης', 'Revoil Πετρέλαιο Θέρμανσης Oikoplus', '0.919', '2016-11-21 19:07:16', 0),
(98, 460, 5, 5, 'Diesel Θέρμανσης', 'Diesel Θέρμανσης', '0.960', '2016-10-14 18:15:19', 0),
(99, 460, 7, 6, 'Diesel Θέρμανσης κ.ο. >1000 lt', 'Θέρμανσης K.O. > 1000 lt', '0.919', '2016-11-21 19:08:29', 0),
(100, 460, 7, 7, 'Diesel Θέρμανσης κ.ο. 500-1000 lt', 'Θέρμανσης K.O. μεταξύ 500 και 1000 lt', '0.919', '2016-11-21 19:07:52', 0),
(101, 460, 7, 14, 'Diesel Θέρμανσης κ.ο. <500 lt', 'Θέρμανσης K.O. < 500 lt', '0.919', '2016-11-21 19:07:34', 0),
(102, 461, 1, 2, 'Αμόλυβδη 95', 'BP Unleaded 95', '1.499', '2016-11-29 06:28:53', 0),
(103, 461, 2, 3, 'Αμόλυβδη 100', 'BP Ultimate 100', '1.875', '2016-11-29 06:29:10', 0),
(104, 461, 4, 5, 'Diesel Κίνησης', 'BP Super Diesel', '1.189', '2016-11-29 06:29:31', 0),
(105, 463, 1, 9, 'Αμόλυβδη 95', 'Αμόλυβδη AVIN Best 95', '1.429', '2016-11-24 11:53:23', 0),
(106, 463, 4, 17, 'Diesel Κίνησης', 'AVIN Diesel Best ACTION', '1.129', '2016-11-20 11:42:54', 1),
(107, 463, 4, 18, 'Diesel Κίνησης', 'AVIN Diesel Best', '1.099', '2016-11-24 11:53:31', 0),
(108, 463, 7, 6, 'Diesel Θέρμανσης κ.ο. >1000 lt', 'Θέρμανσης K.O. > 1000 lt', '0.920', '2016-11-23 14:04:47', 0),
(109, 463, 7, 7, 'Diesel Θέρμανσης κ.ο. 500-1000 lt', 'Θέρμανσης K.O. μεταξύ 500 και 1000 lt', '0.920', '2016-11-23 14:04:40', 0),
(110, 463, 7, 14, 'Diesel Θέρμανσης κ.ο. <500 lt', 'Θέρμανσης K.O. < 500 lt', '0.920', '2016-11-23 14:04:33', 0),
(111, 464, 1, 5, 'Αμόλυβδη 95', 'ΕΚΟ Kinitron Unleaded 95 Plus', '1.508', '2016-11-29 15:43:40', 0),
(112, 464, 2, 2, 'Αμόλυβδη 100', 'ΕΚΟ Kinitron Unleaded 100 Speed', '1.759', '2016-11-29 15:44:00', 0),
(113, 464, 4, 13, 'Diesel Κίνησης', 'EKO DIESEL EKONOMY', '1.179', '2016-11-29 15:44:23', 0),
(114, 464, 4, 14, 'Diesel Κίνησης', 'EKO DIESEL Avio', '1.208', '2016-11-29 15:44:42', 1),
(115, 464, 5, 0, 'Diesel Θέρμανσης', 'Diesel Θέρμασης', '0.952', '2016-11-29 15:45:23', 0),
(116, 464, 6, 0, 'Υγραέριο Κίνησης', 'Υγραέριο κίνησης (Autogas)', '0.698', '2016-11-29 15:46:13', 0),
(117, 465, 1, 5, 'Αμόλυβδη 95', 'ΕΚΟ Kinitron Unleaded 95 Plus', '1.535', '2016-11-28 04:59:44', 0),
(118, 465, 2, 2, 'Αμόλυβδη 100', 'ΕΚΟ Kinitron Unleaded 100 Speed', '1.769', '2016-11-28 04:59:57', 0),
(119, 465, 4, 13, 'Diesel Κίνησης', 'EKO DIESEL EKONOMY', '1.129', '2016-11-28 05:00:08', 0),
(120, 465, 4, 14, 'Diesel Κίνησης', 'EKO DIESEL Avio', '1.219', '2016-11-28 05:00:18', 1),
(121, 466, 1, 5, 'Αμόλυβδη 95', 'ΕΚΟ Kinitron Unleaded 95 Plus', '1.535', '2016-11-28 04:58:12', 0),
(122, 466, 2, 2, 'Αμόλυβδη 100', 'ΕΚΟ Kinitron Unleaded 100 Speed', '1.769', '2016-11-28 04:58:18', 0),
(123, 466, 4, 13, 'Diesel Κίνησης', 'EKO DIESEL EKONOMY', '1.129', '2016-11-28 04:58:24', 0),
(124, 466, 4, 14, 'Diesel Κίνησης', 'EKO DIESEL Avio', '1.219', '2016-11-28 04:58:30', 1),
(125, 466, 6, 0, 'Υγραέριο Κίνησης', 'Υγραέριο κίνησης (Autogas)', '0.759', '2016-11-28 04:58:38', 0),
(126, 467, 1, 2, 'Αμόλυβδη 95', 'BP Unleaded 95', '1.423', '2016-11-28 04:54:44', 0),
(127, 467, 4, 5, 'Diesel Κίνησης', 'BP Super Diesel', '1.099', '2016-11-28 04:54:59', 0),
(128, 467, 5, 3, 'Diesel Θέρμανσης', 'BP Heat', '0.920', '2016-11-28 04:55:16', 0),
(129, 468, 1, 0, 'Αμόλυβδη 95', 'Αμόλυβδη 95', '1.459', '2016-11-28 16:26:46', 0),
(130, 468, 1, 8, 'Αμόλυβδη 95', 'ΕΛΙΝ Unleaded Crystal', '1.499', '2016-11-28 16:26:51', 1),
(131, 468, 2, 0, 'Αμόλυβδη 100', 'Αμόλυβδη 100', '1.599', '2016-07-23 19:08:51', 0),
(132, 468, 4, 0, 'Diesel Κίνησης', 'Diesel Κίνησης', '1.129', '2016-11-28 16:26:57', 0),
(133, 468, 4, 11, 'Diesel Κίνησης', 'ΕΛΙΝ Diesel Crystal', '1.169', '2016-11-28 16:27:03', 1),
(134, 468, 5, 5, 'Diesel Θέρμανσης', 'Diesel Θέρμανσης', '0.890', '2016-11-28 16:27:09', 0),
(135, 469, 1, 0, 'Αμόλυβδη 95', 'Αμόλυβδη 95', '1.468', '2016-11-10 14:40:51', 0),
(136, 469, 4, 0, 'Diesel Κίνησης', 'Diesel Κίνησης', '1.158', '2016-11-10 14:39:33', 0),
(137, 470, 1, 0, 'Αμόλυβδη 95', 'Αμόλυβδη 95', '1.450', '2016-11-25 08:49:21', 0),
(138, 470, 4, 0, 'Diesel Κίνησης', 'Diesel Κίνησης', '1.150', '2016-11-25 08:49:45', 0),
(139, 470, 7, 7, 'Diesel Θέρμανσης κ.ο. 500-1000 lt', 'Θέρμανσης K.O. μεταξύ 500 και 1000 lt', '0.930', '2016-11-25 08:50:29', 0),
(140, 471, 1, 0, 'Αμόλυβδη 95', 'Αμόλυβδη 95', '1.361', '2016-11-11 09:36:36', 0),
(141, 471, 2, 0, 'Αμόλυβδη 100', 'Αμόλυβδη 100', '1.467', '2016-11-11 09:36:46', 0),
(142, 471, 3, 0, 'Super', 'Super', '1.445', '2016-11-11 09:36:58', 0),
(143, 471, 4, 0, 'Diesel Κίνησης', 'Diesel Κίνησης', '1.046', '2016-11-11 09:36:23', 0),
(144, 471, 6, 0, 'Υγραέριο Κίνησης', 'Υγραέριο κίνησης (Autogas)', '0.690', '2016-11-11 09:37:09', 0),
(145, 472, 1, 8, 'Αμόλυβδη 95', 'ΕΛΙΝ Unleaded Crystal', '1.449', '2016-11-26 05:44:43', 1),
(146, 472, 2, 0, 'Αμόλυβδη 100', 'Αμόλυβδη 100', '1.619', '2016-11-26 05:45:00', 0),
(147, 472, 4, 0, 'Diesel Κίνησης', 'Diesel Κίνησης', '1.139', '2016-11-26 05:45:27', 0),
(148, 472, 4, 11, 'Diesel Κίνησης', 'ΕΛΙΝ Diesel Crystal', '1.189', '2016-11-26 05:45:47', 1),
(149, 472, 5, 5, 'Diesel Θέρμανσης', 'Diesel Θέρμανσης', '0.990', '2016-11-26 05:46:09', 0),
(150, 1647, 1, 0, 'Αμόλυβδη 95', 'Αμόλυβδη 95', '1.389', '2016-10-20 09:16:23', 0),
(151, 1647, 2, 0, 'Αμόλυβδη 100', 'Αμόλυβδη 100', '1.459', '2016-10-08 19:11:57', 0),
(152, 1647, 4, 0, 'Diesel Κίνησης', 'Diesel Κίνησης', '1.069', '2016-10-20 09:16:36', 0),
(153, 1647, 5, 5, 'Diesel Θέρμανσης', 'Diesel Θέρμανσης', '0.889', '2016-10-14 11:43:56', 0),
(154, 1649, 1, 5, 'Αμόλυβδη 95', 'ΕΚΟ Kinitron Unleaded 95 Plus', '1.399', '2016-11-30 14:24:11', 0),
(155, 1649, 2, 2, 'Αμόλυβδη 100', 'ΕΚΟ Kinitron Unleaded 100 Speed', '1.559', '2016-11-30 14:24:23', 0),
(156, 1649, 4, 13, 'Diesel Κίνησης', 'EKO DIESEL EKONOMY', '1.099', '2016-11-30 14:24:46', 0),
(157, 1649, 4, 14, 'Diesel Κίνησης', 'EKO DIESEL Avio', '1.159', '2016-11-30 14:25:00', 1),
(158, 1649, 7, 1, 'Diesel Θέρμανσης κ.ο. >1000 lt', 'Diesel Θέρμασης - K.O. > 1000 lt', '0.930', '2016-11-30 14:25:34', 0),
(159, 1649, 7, 2, 'Diesel Θέρμανσης κ.ο. 500-1000 lt', 'Diesel Θέρμασης - K.O. μεταξύ 500 και 1000 lt', '0.930', '2016-11-30 14:25:22', 0),
(160, 1649, 7, 4, 'Diesel Θέρμανσης κ.ο. <500 lt', 'Diesel Θέρμασης - K.O. < 500 lt', '0.930', '2016-11-30 14:25:11', 0),
(161, 1651, 1, 0, 'Αμόλυβδη 95', 'Αμόλυβδη 95', '1.389', '2016-11-28 08:05:27', 0),
(162, 1651, 2, 0, 'Αμόλυβδη 100', 'Αμόλυβδη 100', '1.499', '2016-11-28 08:05:38', 0),
(163, 1651, 4, 0, 'Diesel Κίνησης', 'Diesel Κίνησης', '1.079', '2016-11-28 08:05:48', 0),
(164, 1651, 5, 5, 'Diesel Θέρμανσης', 'Diesel Θέρμανσης', '0.949', '2016-11-28 08:06:12', 0),
(165, 1651, 6, 0, 'Υγραέριο Κίνησης', 'Υγραέριο κίνησης (Autogas)', '0.647', '2016-11-28 08:06:01', 0),
(166, 1651, 7, 6, 'Diesel Θέρμανσης κ.ο. >1000 lt', 'Θέρμανσης K.O. > 1000 lt', '0.900', '2016-11-28 08:06:43', 0),
(167, 1651, 7, 7, 'Diesel Θέρμανσης κ.ο. 500-1000 lt', 'Θέρμανσης K.O. μεταξύ 500 και 1000 lt', '0.900', '2016-11-28 08:06:34', 0),
(168, 1651, 7, 14, 'Diesel Θέρμανσης κ.ο. <500 lt', 'Θέρμανσης K.O. < 500 lt', '0.949', '2016-11-28 08:06:24', 0),
(169, 1653, 1, 1, 'Αμόλυβδη 95 V-Power', 'Shell Αμόλυβδη 95 V-Power', '1.488', '2016-11-29 19:51:07', 1),
(170, 1653, 1, 6, 'Αμόλυβδη 95', 'Shell Αμόλυβδη Ενισχυμένη 95 οκτανίων', '1.408', '2016-11-28 20:07:12', 0),
(171, 1653, 2, 1, 'Αμόλυβδη 100', 'Shell Αμόλυβδη 100 V-Power Racing', '1.745', '2016-11-14 20:02:21', 1),
(172, 1653, 4, 2, 'Diesel Κίνησης', 'Shell Μείγμα Κίνησης Βιοντήζελ Extra', '1.098', '2016-11-01 19:53:40', 0),
(173, 1653, 4, 4, 'Diesel Κίνησης', 'Shell V-Power Diesel', '1.098', '2016-11-16 20:01:41', 1),
(174, 1653, 5, 2, 'Diesel Θέρμανσης', 'Shell Πετρέλαιο Θέρμανσης', '0.880', '2016-11-14 20:02:40', 0),
(175, 1654, 1, 1, 'Αμόλυβδη 95 V-Power', 'Shell Αμόλυβδη 95 V-Power', '1.495', '2016-11-05 12:37:06', 1),
(176, 1654, 1, 6, 'Αμόλυβδη 95', 'Shell Αμόλυβδη Ενισχυμένη 95 οκτανίων', '1.435', '2016-11-05 12:36:48', 0),
(177, 1654, 3, 3, 'Super', 'Shell Νέα Σούπερ', '1.470', '2016-11-05 12:37:17', 0),
(178, 1654, 4, 4, 'Diesel Κίνησης', 'Shell V-Power Diesel', '1.180', '2016-11-05 12:37:53', 1),
(179, 1654, 4, 6, 'Diesel Κίνησης', 'Shell Πετρέλαιο Κίνησης Extra', '1.110', '2016-11-05 12:37:39', 0),
(180, 1654, 5, 2, 'Diesel Θέρμανσης', 'Shell Πετρέλαιο Θέρμανσης', '0.915', '2016-11-05 12:38:14', 0),
(181, 1656, 1, 0, 'Αμόλυβδη 95', 'Αμόλυβδη 95', '1.399', '2016-11-25 20:16:21', 0),
(182, 1656, 2, 0, 'Αμόλυβδη 100', 'Αμόλυβδη 100', '1.497', '2016-11-22 18:35:48', 0),
(183, 1656, 4, 0, 'Diesel Κίνησης', 'Diesel Κίνησης', '1.079', '2016-11-25 20:16:32', 0),
(184, 1656, 5, 5, 'Diesel Θέρμανσης', 'Diesel Θέρμανσης', '0.879', '2016-11-24 19:39:32', 0),
(185, 1657, 1, 0, 'Αμόλυβδη 95', 'Αμόλυβδη 95', '1.458', '2016-11-25 17:53:59', 0),
(186, 1657, 4, 0, 'Diesel Κίνησης', 'Diesel Κίνησης', '1.155', '2016-11-25 17:54:36', 0),
(187, 1657, 4, 11, 'Diesel Κίνησης', 'ΕΛΙΝ Diesel Crystal', '1.188', '2016-11-25 17:54:56', 1),
(188, 1657, 5, 5, 'Diesel Θέρμανσης', 'Diesel Θέρμανσης', '0.960', '2016-11-25 17:55:05', 0),
(189, 1657, 7, 6, 'Diesel Θέρμανσης κ.ο. >1000 lt', 'Θέρμανσης K.O. > 1000 lt', '0.960', '2016-11-25 17:55:26', 0),
(190, 1657, 7, 7, 'Diesel Θέρμανσης κ.ο. 500-1000 lt', 'Θέρμανσης K.O. μεταξύ 500 και 1000 lt', '0.960', '2016-11-25 17:55:19', 0),
(191, 1657, 7, 14, 'Diesel Θέρμανσης κ.ο. <500 lt', 'Θέρμανσης K.O. < 500 lt', '0.960', '2016-11-25 17:55:12', 0),
(192, 1658, 1, 2, 'Αμόλυβδη 95', 'BP Unleaded 95', '1.409', '2016-07-25 09:02:05', 0),
(193, 1658, 2, 3, 'Αμόλυβδη 100', 'BP Ultimate 100', '1.659', '2016-07-25 09:02:15', 0),
(194, 1658, 4, 5, 'Diesel Κίνησης', 'BP Super Diesel', '1.089', '2016-07-25 09:02:31', 0),
(195, 1658, 4, 12, 'Diesel Κίνησης', 'BP Ultimate Diesel', '1.138', '2016-07-25 09:02:44', 1),
(196, 1658, 6, 0, 'Υγραέριο Κίνησης', 'Υγραέριο κίνησης (Autogas)', '0.667', '2016-07-25 09:02:57', 0),
(197, 1659, 1, 0, 'Αμόλυβδη 95', 'Αμόλυβδη 95', '1.440', '2016-11-25 08:58:47', 0),
(198, 1659, 2, 0, 'Αμόλυβδη 100', 'Αμόλυβδη 100', '1.580', '2016-11-25 08:59:04', 0),
(199, 1659, 4, 19, 'Diesel Κίνησης', 'KAOIL Eurodiesel', '1.130', '2016-11-25 08:59:19', 1),
(200, 1659, 6, 0, 'Υγραέριο Κίνησης', 'Υγραέριο κίνησης (Autogas)', '0.720', '2016-11-25 08:59:36', 0),
(201, 1660, 1, 0, 'Αμόλυβδη 95', 'Αμόλυβδη 95', '1.448', '2016-11-25 17:52:05', 0),
(202, 1660, 1, 8, 'Αμόλυβδη 95', 'ΕΛΙΝ Unleaded Crystal', '1.488', '2016-11-25 17:52:15', 1),
(203, 1660, 4, 0, 'Diesel Κίνησης', 'Diesel Κίνησης', '1.155', '2016-11-25 17:52:23', 0),
(204, 1660, 4, 11, 'Diesel Κίνησης', 'ΕΛΙΝ Diesel Crystal', '1.188', '2016-11-25 17:52:32', 1),
(205, 1660, 5, 5, 'Diesel Θέρμανσης', 'Diesel Θέρμανσης', '0.960', '2016-11-25 17:52:39', 0),
(206, 1660, 7, 6, 'Diesel Θέρμανσης κ.ο. >1000 lt', 'Θέρμανσης K.O. > 1000 lt', '0.960', '2016-11-25 17:53:00', 0),
(207, 1660, 7, 7, 'Diesel Θέρμανσης κ.ο. 500-1000 lt', 'Θέρμανσης K.O. μεταξύ 500 και 1000 lt', '0.960', '2016-11-25 17:52:54', 0),
(208, 1660, 7, 14, 'Diesel Θέρμανσης κ.ο. <500 lt', 'Θέρμανσης K.O. < 500 lt', '0.960', '2016-11-25 17:52:47', 0),
(209, 1661, 1, 0, 'Αμόλυβδη 95', 'Αμόλυβδη 95', '1.448', '2016-11-25 17:49:43', 0),
(210, 1661, 1, 8, 'Αμόλυβδη 95', 'ΕΛΙΝ Unleaded Crystal', '1.488', '2016-11-25 17:49:51', 1),
(211, 1661, 2, 0, 'Αμόλυβδη 100', 'Αμόλυβδη 100', '1.589', '2016-11-25 17:50:00', 0),
(212, 1661, 4, 0, 'Diesel Κίνησης', 'Diesel Κίνησης', '1.155', '2016-11-25 17:50:10', 0),
(213, 1661, 4, 11, 'Diesel Κίνησης', 'ΕΛΙΝ Diesel Crystal', '1.188', '2016-11-25 17:50:18', 1),
(214, 1661, 5, 5, 'Diesel Θέρμανσης', 'Diesel Θέρμανσης', '0.960', '2016-11-25 17:50:25', 0),
(215, 1661, 7, 6, 'Diesel Θέρμανσης κ.ο. >1000 lt', 'Θέρμανσης K.O. > 1000 lt', '0.960', '2016-11-25 17:51:01', 0),
(216, 1661, 7, 7, 'Diesel Θέρμανσης κ.ο. 500-1000 lt', 'Θέρμανσης K.O. μεταξύ 500 και 1000 lt', '0.960', '2016-11-25 17:50:54', 0),
(217, 1661, 7, 14, 'Diesel Θέρμανσης κ.ο. <500 lt', 'Θέρμανσης K.O. < 500 lt', '0.960', '2016-11-25 17:50:46', 0),
(218, 2706, 1, 0, 'Αμόλυβδη 95', 'Αμόλυβδη 95', '1.362', '2016-11-14 13:15:20', 0),
(219, 2706, 2, 0, 'Αμόλυβδη 100', 'Αμόλυβδη 100', '1.546', '2016-11-09 20:52:55', 0),
(220, 2706, 4, 0, 'Diesel Κίνησης', 'Diesel Κίνησης', '1.029', '2016-11-09 20:53:07', 0),
(221, 2706, 5, 5, 'Diesel Θέρμανσης', 'Diesel Θέρμανσης', '0.848', '2016-11-14 13:14:56', 0),
(222, 2706, 6, 0, 'Υγραέριο Κίνησης', 'Υγραέριο κίνησης (Autogas)', '0.626', '2016-11-19 13:44:49', 0),
(223, 2707, 1, 0, 'Αμόλυβδη 95', 'Αμόλυβδη 95', '1.379', '2016-11-25 20:08:15', 0),
(224, 2707, 4, 0, 'Diesel Κίνησης', 'Diesel Κίνησης', '1.039', '2016-11-25 20:08:28', 0),
(225, 2707, 5, 5, 'Diesel Θέρμανσης', 'Diesel Θέρμανσης', '0.859', '2016-11-28 17:30:43', 0),
(226, 2708, 1, 0, 'Αμόλυβδη 95', 'Αμόλυβδη 95', '1.387', '2016-11-18 10:04:18', 0),
(227, 2708, 2, 0, 'Αμόλυβδη 100', 'Αμόλυβδη 100', '1.599', '2016-10-26 08:32:58', 0),
(228, 2708, 4, 0, 'Diesel Κίνησης', 'Diesel Κίνησης', '1.049', '2016-11-18 10:04:27', 0),
(229, 2708, 4, 19, 'Diesel Κίνησης', 'KAOIL Eurodiesel', '1.049', '2016-11-18 10:04:36', 1),
(230, 2708, 5, 5, 'Diesel Θέρμανσης', 'Diesel Θέρμανσης', '0.890', '2016-11-18 10:04:48', 0),
(231, 2709, 1, 0, 'Αμόλυβδη 95', 'Αμόλυβδη 95', '1.409', '2016-11-27 17:53:25', 0),
(232, 2709, 4, 7, 'Diesel Κίνησης', 'Jet Premium Diesel', '1.139', '2016-11-27 17:52:59', 1),
(233, 2709, 5, 5, 'Diesel Θέρμανσης', 'Diesel Θέρμανσης', '0.910', '2016-11-27 17:53:13', 0),
(234, 2710, 1, 4, 'Αμόλυβδη 95', 'Revoil αμόλυβδη 95 xtra4', '1.389', '2016-11-18 13:57:21', 0),
(235, 2710, 4, 1, 'Diesel Κίνησης', 'Revoil Πετρέλαιο Κίνησης xtra4', '1.065', '2016-11-18 13:57:30', 0),
(236, 2710, 4, 20, 'Diesel Κίνησης', 'Revoil Πετρέλαιο Κίνησης diesel xtra4 revolution', '1.105', '2016-11-18 13:57:39', 1),
(237, 2710, 6, 0, 'Υγραέριο Κίνησης', 'Υγραέριο κίνησης (Autogas)', '0.658', '2016-11-18 13:57:47', 0),
(238, 2711, 1, 5, 'Αμόλυβδη 95', 'ΕΚΟ Kinitron Unleaded 95 Plus', '1.454', '2016-11-07 07:43:49', 0),
(239, 2711, 4, 13, 'Diesel Κίνησης', 'EKO DIESEL EKONOMY', '1.137', '2016-09-24 12:18:10', 0),
(240, 2711, 4, 14, 'Diesel Κίνησης', 'EKO DIESEL Avio', '1.156', '2016-11-08 16:36:05', 1),
(241, 2711, 5, 0, 'Diesel Θέρμανσης', 'Diesel Θέρμασης', '0.900', '2016-11-08 16:35:45', 0),
(242, 2712, 1, 0, 'Αμόλυβδη 95', 'Αμόλυβδη 95', '1.419', '2016-11-22 08:32:38', 0),
(243, 2712, 1, 8, 'Αμόλυβδη 95', 'ΕΛΙΝ Unleaded Crystal', '1.469', '2016-11-22 08:33:07', 1),
(244, 2712, 4, 0, 'Diesel Κίνησης', 'Diesel Κίνησης', '1.079', '2016-11-22 08:33:20', 0),
(245, 2712, 4, 11, 'Diesel Κίνησης', 'ΕΛΙΝ Diesel Crystal', '1.119', '2016-11-22 08:33:36', 1),
(246, 2712, 5, 5, 'Diesel Θέρμανσης', 'Diesel Θέρμανσης', '0.889', '2016-11-22 08:33:51', 0),
(247, 2712, 6, 0, 'Υγραέριο Κίνησης', 'Υγραέριο κίνησης (Autogas)', '0.656', '2016-11-22 08:35:03', 0),
(248, 2712, 7, 6, 'Diesel Θέρμανσης κ.ο. >1000 lt', 'Θέρμανσης K.O. > 1000 lt', '0.889', '2016-11-22 08:34:38', 0),
(249, 2712, 7, 7, 'Diesel Θέρμανσης κ.ο. 500-1000 lt', 'Θέρμανσης K.O. μεταξύ 500 και 1000 lt', '0.889', '2016-11-22 08:34:27', 0),
(250, 2712, 7, 14, 'Diesel Θέρμανσης κ.ο. <500 lt', 'Θέρμανσης K.O. < 500 lt', '0.889', '2016-11-22 08:34:19', 0),
(251, 2714, 1, 5, 'Αμόλυβδη 95', 'ΕΚΟ Kinitron Unleaded 95 Plus', '1.509', '2016-11-24 12:36:16', 0),
(252, 2714, 4, 13, 'Diesel Κίνησης', 'EKO DIESEL EKONOMY', '1.179', '2016-11-24 12:36:45', 0),
(253, 2714, 4, 14, 'Diesel Κίνησης', 'EKO DIESEL Avio', '1.209', '2016-11-24 12:37:42', 1),
(254, 2715, 1, 0, 'Αμόλυβδη 95', 'Αμόλυβδη 95', '1.398', '2016-11-19 17:06:41', 0),
(255, 2715, 4, 0, 'Diesel Κίνησης', 'Diesel Κίνησης', '1.098', '2016-11-19 17:06:53', 0),
(256, 2716, 1, 0, 'Αμόλυβδη 95', 'Αμόλυβδη 95', '1.393', '2016-11-22 14:29:54', 0),
(257, 2716, 4, 0, 'Diesel Κίνησης', 'Diesel Κίνησης', '1.073', '2016-11-27 10:23:21', 0),
(258, 2717, 1, 2, 'Αμόλυβδη 95', 'BP Unleaded 95', '1.464', '2016-11-28 14:23:50', 0),
(259, 2717, 4, 5, 'Diesel Κίνησης', 'BP Super Diesel', '1.155', '2016-11-28 14:24:14', 0),
(260, 2717, 5, 3, 'Diesel Θέρμανσης', 'BP Heat', '0.963', '2016-11-28 14:24:36', 0),
(261, 2718, 1, 6, 'Αμόλυβδη 95', 'Shell Αμόλυβδη Ενισχυμένη 95 οκτανίων', '1.395', '2016-11-24 09:16:31', 0),
(262, 2718, 4, 2, 'Diesel Κίνησης', 'Shell Μείγμα Κίνησης Βιοντήζελ Extra', '1.086', '2016-12-01 07:00:33', 0),
(263, 2718, 4, 4, 'Diesel Κίνησης', 'Shell V-Power Diesel', '1.086', '2016-12-01 07:00:43', 1),
(264, 2718, 5, 2, 'Diesel Θέρμανσης', 'Shell Πετρέλαιο Θέρμανσης', '0.890', '2016-11-25 14:00:33', 0),
(265, 2718, 6, 0, 'Υγραέριο Κίνησης', 'Υγραέριο κίνησης (Autogas)', '0.678', '2016-11-24 09:19:22', 0),
(266, 2718, 7, 9, 'Diesel Θέρμανσης κ.ο. 500-1000 lt', 'Shell Πετρέλαιο Θέρμανσης - K.O. μεταξύ 500 και 1000 lt', '0.890', '2016-11-25 14:00:49', 0),
(267, 2718, 7, 13, 'Diesel Θέρμανσης κ.ο. <500 lt', 'Shell Πετρέλαιο Θέρμανσης - K.O. < 500 lt', '0.890', '2016-11-25 14:00:42', 0),
(268, 2718, 7, 18, 'Diesel Θέρμανσης κ.ο. >1000 lt', 'Shell Πετρέλαιο Θέρμανσης - K.O. > 1000 lt', '0.890', '2016-11-25 14:00:57', 0),
(269, 2721, 1, 0, 'Αμόλυβδη 95', 'Αμόλυβδη 95', '1.425', '2016-11-06 19:03:29', 0),
(270, 2721, 4, 0, 'Diesel Κίνησης', 'Diesel Κίνησης', '1.085', '2016-11-11 19:22:46', 0),
(271, 2721, 5, 5, 'Diesel Θέρμανσης', 'Diesel Θέρμανσης', '0.925', '2016-11-03 07:58:18', 0),
(272, 2721, 6, 0, 'Υγραέριο Κίνησης', 'Υγραέριο κίνησης (Autogas)', '0.720', '2016-10-21 17:07:37', 0),
(273, 2721, 7, 7, 'Diesel Θέρμανσης κ.ο. 500-1000 lt', 'Θέρμανσης K.O. μεταξύ 500 και 1000 lt', '0.900', '2016-11-11 19:24:39', 0),
(274, 2721, 7, 14, 'Diesel Θέρμανσης κ.ο. <500 lt', 'Θέρμανσης K.O. < 500 lt', '0.900', '2016-11-11 19:24:26', 0),
(275, 2722, 1, 0, 'Αμόλυβδη 95', 'Αμόλυβδη 95', '1.420', '2016-11-28 08:38:06', 0),
(276, 2722, 4, 0, 'Diesel Κίνησης', 'Diesel Κίνησης', '1.058', '2016-11-28 08:38:29', 0),
(277, 2722, 4, 16, 'Diesel Κίνησης', 'Diesel Κίνησης D-FORCE', '1.108', '2016-11-28 08:38:51', 1),
(278, 2723, 1, 0, 'Αμόλυβδη 95', 'Αμόλυβδη 95', '1.419', '2016-12-01 08:38:09', 0),
(279, 2723, 4, 18, 'Diesel Κίνησης', 'AVIN Diesel Best', '1.079', '2016-09-19 07:30:20', 0),
(280, 2723, 4, 22, 'Diesel Κίνησης', 'AVIN Diesel κίνησης', '1.119', '2016-12-01 08:38:24', 0),
(281, 2723, 5, 5, 'Diesel Θέρμανσης', 'Diesel Θέρμανσης', '0.905', '2016-12-01 08:38:38', 0),
(282, 2724, 1, 6, 'Αμόλυβδη 95', 'Shell Αμόλυβδη Ενισχυμένη 95 οκτανίων', '1.459', '2016-11-29 14:10:26', 0),
(283, 2724, 4, 4, 'Diesel Κίνησης', 'Shell V-Power Diesel', '1.219', '2016-11-29 14:10:50', 1),
(284, 2724, 4, 6, 'Diesel Κίνησης', 'Shell Πετρέλαιο Κίνησης Extra', '1.139', '2016-11-29 14:10:37', 0),
(285, 2724, 5, 2, 'Diesel Θέρμανσης', 'Shell Πετρέλαιο Θέρμανσης', '0.940', '2016-11-29 14:11:02', 0),
(286, 2725, 1, 9, 'Αμόλυβδη 95', 'Αμόλυβδη AVIN Best 95', '1.398', '2016-11-21 12:31:59', 0),
(287, 2725, 4, 17, 'Diesel Κίνησης', 'AVIN Diesel Best ACTION', '1.129', '2016-11-21 12:32:28', 1),
(288, 2725, 4, 18, 'Diesel Κίνησης', 'AVIN Diesel Best', '1.068', '2016-11-21 12:32:18', 0),
(289, 2725, 5, 5, 'Diesel Θέρμανσης', 'Diesel Θέρμανσης', '0.880', '2016-11-21 12:32:39', 0),
(290, 2726, 1, 0, 'Αμόλυβδη 95', 'Αμόλυβδη 95', '1.429', '2016-11-27 10:46:16', 0),
(291, 2726, 4, 0, 'Diesel Κίνησης', 'Diesel Κίνησης', '1.089', '2016-11-27 10:46:30', 0),
(292, 2726, 5, 5, 'Diesel Θέρμανσης', 'Diesel Θέρμανσης', '0.900', '2016-11-27 10:46:37', 0),
(293, 2726, 7, 6, 'Diesel Θέρμανσης κ.ο. >1000 lt', 'Θέρμανσης K.O. > 1000 lt', '0.900', '2016-11-27 10:47:22', 0),
(294, 2726, 7, 7, 'Diesel Θέρμανσης κ.ο. 500-1000 lt', 'Θέρμανσης K.O. μεταξύ 500 και 1000 lt', '0.900', '2016-11-27 10:47:16', 0),
(295, 2726, 7, 14, 'Diesel Θέρμανσης κ.ο. <500 lt', 'Θέρμανσης K.O. < 500 lt', '0.900', '2016-11-27 10:47:10', 0),
(296, 2727, 1, 0, 'Αμόλυβδη 95', 'Αμόλυβδη 95', '1.398', '2016-11-24 07:29:34', 0),
(297, 2727, 4, 0, 'Diesel Κίνησης', 'Diesel Κίνησης', '1.079', '2016-11-24 07:29:49', 0),
(298, 2727, 6, 0, 'Υγραέριο Κίνησης', 'Υγραέριο κίνησης (Autogas)', '0.650', '2016-11-24 07:30:02', 0),
(299, 2727, 7, 6, 'Diesel Θέρμανσης κ.ο. >1000 lt', 'Θέρμανσης K.O. > 1000 lt', '0.880', '2016-11-24 07:30:15', 0),
(300, 2727, 7, 7, 'Diesel Θέρμανσης κ.ο. 500-1000 lt', 'Θέρμανσης K.O. μεταξύ 500 και 1000 lt', '0.890', '2016-11-24 07:30:34', 0),
(301, 2727, 7, 14, 'Diesel Θέρμανσης κ.ο. <500 lt', 'Θέρμανσης K.O. < 500 lt', '0.930', '2016-11-24 07:30:42', 0),
(302, 2728, 1, 0, 'Αμόλυβδη 95', 'Αμόλυβδη 95', '1.438', '2016-11-25 20:17:29', 0),
(303, 2728, 4, 0, 'Diesel Κίνησης', 'Diesel Κίνησης', '1.135', '2016-11-25 20:17:42', 0),
(304, 2728, 4, 11, 'Diesel Κίνησης', 'ΕΛΙΝ Diesel Crystal', '1.165', '2016-11-25 20:17:57', 1),
(305, 2728, 5, 5, 'Diesel Θέρμανσης', 'Diesel Θέρμανσης', '0.950', '2016-11-25 20:18:10', 0),
(306, 2730, 1, 0, 'Αμόλυβδη 95', 'Αμόλυβδη 95', '1.428', '2016-11-22 11:24:45', 0),
(307, 2730, 4, 0, 'Diesel Κίνησης', 'Diesel Κίνησης', '1.089', '2016-11-11 07:54:15', 0),
(308, 2730, 5, 5, 'Diesel Θέρμανσης', 'Diesel Θέρμανσης', '0.910', '2016-11-22 11:25:40', 0),
(309, 3490, 6, 0, 'Υγραέριο Κίνησης', 'Υγραέριο κίνησης (Autogas)', '0.618', '2016-11-08 09:19:35', 0),
(310, 3491, 1, 5, 'Αμόλυβδη 95', 'ΕΚΟ Kinitron Unleaded 95 Plus', '1.399', '2016-11-26 05:56:47', 0),
(311, 3491, 2, 2, 'Αμόλυβδη 100', 'ΕΚΟ Kinitron Unleaded 100 Speed', '1.589', '2016-11-26 05:57:00', 0),
(312, 3491, 4, 13, 'Diesel Κίνησης', 'EKO DIESEL EKONOMY', '1.089', '2016-11-26 05:57:07', 0),
(313, 3491, 4, 14, 'Diesel Κίνησης', 'EKO DIESEL Avio', '1.159', '2016-11-26 05:57:14', 1),
(314, 3491, 6, 0, 'Υγραέριο Κίνησης', 'Υγραέριο κίνησης (Autogas)', '0.667', '2016-11-26 05:57:22', 0),
(315, 3750, 1, 0, 'Αμόλυβδη 95', 'Αμόλυβδη 95', '1.392', '2016-11-29 09:45:13', 0),
(316, 3750, 2, 0, 'Αμόλυβδη 100', 'Αμόλυβδη 100', '1.495', '2016-11-29 09:45:21', 0),
(317, 3750, 4, 0, 'Diesel Κίνησης', 'Diesel Κίνησης', '1.052', '2016-11-29 09:45:32', 0),
(318, 3750, 5, 5, 'Diesel Θέρμανσης', 'Diesel Θέρμανσης', '0.900', '2016-11-29 09:45:39', 0),
(319, 3750, 6, 0, 'Υγραέριο Κίνησης', 'Υγραέριο κίνησης (Autogas)', '0.648', '2016-11-29 09:45:48', 0),
(320, 3752, 1, 1, 'Αμόλυβδη 95 V-Power', 'Shell Αμόλυβδη 95 V-Power', '1.506', '2016-09-21 06:44:07', 1),
(321, 3752, 1, 6, 'Αμόλυβδη 95', 'Shell Αμόλυβδη Ενισχυμένη 95 οκτανίων', '1.454', '2016-09-21 06:43:05', 0),
(322, 3752, 4, 2, 'Diesel Κίνησης', 'Shell Μείγμα Κίνησης Βιοντήζελ Extra', '1.105', '2016-09-21 06:43:50', 0),
(323, 3753, 1, 5, 'Αμόλυβδη 95', 'ΕΚΟ Kinitron Unleaded 95 Plus', '1.418', '2016-11-28 13:13:28', 0),
(324, 3753, 2, 2, 'Αμόλυβδη 100', 'ΕΚΟ Kinitron Unleaded 100 Speed', '1.625', '2016-11-28 13:13:55', 0),
(325, 3753, 4, 13, 'Diesel Κίνησης', 'EKO DIESEL EKONOMY', '1.098', '2016-11-28 13:14:08', 0),
(326, 3753, 4, 14, 'Diesel Κίνησης', 'EKO DIESEL Avio', '1.147', '2016-11-28 13:14:19', 1),
(327, 3754, 1, 7, 'Αμόλυβδη 95', 'Αμόλυβδη 95RON 10PPM', '1.429', '2016-11-29 12:28:39', 0),
(328, 3754, 4, 10, 'Diesel Κίνησης', 'Πετρελαιο Κινησης (Βιοντηζελ) 10PPM', '1.099', '2016-11-29 12:29:02', 0),
(329, 3754, 5, 6, 'Diesel Θέρμανσης', 'Πετρέλαιο Θέρμανσης', '0.900', '2016-11-29 12:29:14', 0),
(330, 3754, 6, 0, 'Υγραέριο Κίνησης', 'Υγραέριο κίνησης (Autogas)', '0.715', '2016-11-29 12:29:28', 0),
(331, 3755, 1, 0, 'Αμόλυβδη 95', 'Αμόλυβδη 95', '1.416', '2016-11-16 12:52:09', 0),
(332, 3755, 4, 0, 'Diesel Κίνησης', 'Diesel Κίνησης', '1.075', '2016-07-12 06:13:37', 0),
(333, 3755, 4, 19, 'Diesel Κίνησης', 'KAOIL Eurodiesel', '1.098', '2016-11-16 12:52:26', 1),
(334, 3755, 5, 5, 'Diesel Θέρμανσης', 'Diesel Θέρμανσης', '0.890', '2016-11-16 12:52:58', 0),
(335, 3755, 6, 0, 'Υγραέριο Κίνησης', 'Υγραέριο κίνησης (Autogas)', '0.718', '2016-11-16 12:53:54', 0),
(336, 3757, 1, 0, 'Αμόλυβδη 95', 'Αμόλυβδη 95', '1.450', '2016-11-28 15:45:24', 0),
(337, 3757, 4, 0, 'Diesel Κίνησης', 'Diesel Κίνησης', '1.150', '2016-11-28 15:45:46', 0),
(338, 3757, 5, 5, 'Diesel Θέρμανσης', 'Diesel Θέρμανσης', '0.950', '2016-11-28 15:45:02', 0),
(339, 3759, 1, 5, 'Αμόλυβδη 95', 'ΕΚΟ Kinitron Unleaded 95 Plus', '1.462', '2016-11-28 10:52:28', 0),
(340, 3759, 4, 13, 'Diesel Κίνησης', 'EKO DIESEL EKONOMY', '1.124', '2016-11-28 10:52:43', 0),
(341, 3759, 4, 14, 'Diesel Κίνησης', 'EKO DIESEL Avio', '1.173', '2016-11-28 10:52:58', 1),
(342, 3759, 6, 0, 'Υγραέριο Κίνησης', 'Υγραέριο κίνησης (Autogas)', '0.688', '2016-11-18 09:26:30', 0),
(343, 3760, 1, 4, 'Αμόλυβδη 95', 'Revoil αμόλυβδη 95 xtra4', '1.469', '2016-11-29 08:50:58', 0),
(344, 3760, 4, 1, 'Diesel Κίνησης', 'Revoil Πετρέλαιο Κίνησης xtra4', '1.149', '2016-11-29 08:51:36', 0),
(345, 3760, 4, 20, 'Diesel Κίνησης', 'Revoil Πετρέλαιο Κίνησης diesel xtra4 revolution', '1.189', '2016-11-29 08:51:47', 1),
(346, 3760, 5, 1, 'Diesel Θέρμανσης', 'Revoil Πετρέλαιο Θέρμανσης Oikoplus', '0.930', '2016-11-29 08:51:58', 0),
(347, 3760, 7, 6, 'Diesel Θέρμανσης κ.ο. >1000 lt', 'Θέρμανσης K.O. > 1000 lt', '0.930', '2016-11-29 08:52:44', 0),
(348, 3760, 7, 7, 'Diesel Θέρμανσης κ.ο. 500-1000 lt', 'Θέρμανσης K.O. μεταξύ 500 και 1000 lt', '0.930', '2016-11-29 08:52:32', 0),
(349, 3760, 7, 14, 'Diesel Θέρμανσης κ.ο. <500 lt', 'Θέρμανσης K.O. < 500 lt', '0.930', '2016-11-29 08:52:12', 0),
(350, 3761, 1, 0, 'Αμόλυβδη 95', 'Αμόλυβδη 95', '1.420', '2016-11-16 15:59:10', 0),
(351, 3761, 4, 0, 'Diesel Κίνησης', 'Diesel Κίνησης', '1.070', '2016-11-16 15:59:24', 0),
(352, 3761, 5, 5, 'Diesel Θέρμανσης', 'Diesel Θέρμανσης', '0.920', '2016-11-16 15:59:38', 0),
(353, 3764, 1, 5, 'Αμόλυβδη 95', 'ΕΚΟ Kinitron Unleaded 95 Plus', '1.462', '2016-11-21 18:06:39', 0),
(354, 3764, 4, 13, 'Diesel Κίνησης', 'EKO DIESEL EKONOMY', '1.128', '2016-11-21 18:07:18', 0),
(355, 3764, 4, 14, 'Diesel Κίνησης', 'EKO DIESEL Avio', '1.169', '2016-11-21 18:07:31', 1),
(356, 3764, 5, 0, 'Diesel Θέρμανσης', 'Diesel Θέρμασης', '0.940', '2016-11-21 18:07:48', 0),
(357, 3765, 1, 0, 'Αμόλυβδη 95', 'Αμόλυβδη 95', '1.476', '2016-11-04 07:36:50', 0),
(358, 3765, 4, 0, 'Diesel Κίνησης', 'Diesel Κίνησης', '1.112', '2016-11-30 07:34:13', 0),
(359, 3765, 5, 5, 'Diesel Θέρμανσης', 'Diesel Θέρμανσης', '0.920', '2016-11-04 07:37:26', 0),
(360, 3766, 1, 0, 'Αμόλυβδη 95', 'Αμόλυβδη 95', '1.426', '2016-11-30 17:05:09', 0),
(361, 3766, 4, 0, 'Diesel Κίνησης', 'Diesel Κίνησης', '1.116', '2016-11-30 17:06:02', 0),
(362, 4299, 1, 5, 'Αμόλυβδη 95', 'ΕΚΟ Kinitron Unleaded 95 Plus', '1.449', '2016-11-29 07:25:20', 0),
(363, 4299, 2, 2, 'Αμόλυβδη 100', 'ΕΚΟ Kinitron Unleaded 100 Speed', '1.580', '2016-11-29 07:25:31', 0),
(364, 4299, 4, 13, 'Diesel Κίνησης', 'EKO DIESEL EKONOMY', '1.109', '2016-11-29 07:25:42', 0),
(365, 4299, 4, 14, 'Diesel Κίνησης', 'EKO DIESEL Avio', '1.180', '2016-11-29 07:25:58', 1),
(366, 4301, 1, 5, 'Αμόλυβδη 95', 'ΕΚΟ Kinitron Unleaded 95 Plus', '1.456', '2016-11-11 05:58:20', 0),
(367, 4301, 4, 14, 'Diesel Κίνησης', 'EKO DIESEL Avio', '1.146', '2016-11-11 05:58:58', 1),
(368, 4304, 1, 9, 'Αμόλυβδη 95', 'Αμόλυβδη AVIN Best 95', '1.440', '2016-11-26 09:36:46', 0),
(369, 4304, 4, 17, 'Diesel Κίνησης', 'AVIN Diesel Best ACTION', '1.160', '2016-11-26 09:37:09', 1),
(370, 4304, 4, 18, 'Diesel Κίνησης', 'AVIN Diesel Best', '1.110', '2016-11-26 09:36:56', 0),
(371, 4305, 1, 0, 'Αμόλυβδη 95', 'Αμόλυβδη 95', '1.439', '2016-11-23 10:04:26', 0),
(372, 4305, 4, 0, 'Diesel Κίνησης', 'Diesel Κίνησης', '1.109', '2016-11-23 10:04:50', 0),
(373, 4305, 4, 11, 'Diesel Κίνησης', 'ΕΛΙΝ Diesel Crystal', '1.149', '2016-11-23 10:05:12', 1),
(374, 4305, 5, 5, 'Diesel Θέρμανσης', 'Diesel Θέρμανσης', '0.939', '2016-11-23 10:05:31', 0),
(375, 4306, 1, 9, 'Αμόλυβδη 95', 'Αμόλυβδη AVIN Best 95', '1.438', '2016-11-28 05:57:07', 0),
(376, 4306, 4, 18, 'Diesel Κίνησης', 'AVIN Diesel Best', '1.086', '2016-11-28 05:57:21', 0),
(377, 4306, 5, 5, 'Diesel Θέρμανσης', 'Diesel Θέρμανσης', '0.920', '2016-11-28 05:57:33', 0),
(378, 4307, 1, 4, 'Αμόλυβδη 95', 'Revoil αμόλυβδη 95 xtra4', '1.389', '2016-11-10 06:37:21', 0),
(379, 4307, 2, 0, 'Αμόλυβδη 100', 'Αμόλυβδη 100', '1.559', '2016-10-22 14:57:42', 0),
(380, 4307, 2, 5, 'Αμόλυβδη 100', 'Revoil Αμόλυβδη 100 xtra4', '1.559', '2016-11-10 06:37:48', 0),
(381, 4307, 4, 1, 'Diesel Κίνησης', 'Revoil Πετρέλαιο Κίνησης xtra4', '1.068', '2016-11-10 06:38:54', 0),
(382, 4307, 5, 1, 'Diesel Θέρμανσης', 'Revoil Πετρέλαιο Θέρμανσης Oikoplus', '0.900', '2016-11-10 06:38:18', 0),
(383, 4308, 1, 0, 'Αμόλυβδη 95', 'Αμόλυβδη 95', '1.399', '2016-11-18 08:16:12', 0),
(384, 4308, 4, 0, 'Diesel Κίνησης', 'Diesel Κίνησης', '1.089', '2016-11-18 08:16:42', 0),
(385, 4308, 5, 5, 'Diesel Θέρμανσης', 'Diesel Θέρμανσης', '0.890', '2016-11-18 08:17:29', 0),
(386, 4308, 7, 6, 'Diesel Θέρμανσης κ.ο. >1000 lt', 'Θέρμανσης K.O. > 1000 lt', '0.870', '2016-11-18 08:18:13', 0),
(387, 4308, 7, 7, 'Diesel Θέρμανσης κ.ο. 500-1000 lt', 'Θέρμανσης K.O. μεταξύ 500 και 1000 lt', '0.880', '2016-11-18 08:18:02', 0),
(388, 4308, 7, 14, 'Diesel Θέρμανσης κ.ο. <500 lt', 'Θέρμανσης K.O. < 500 lt', '0.890', '2016-11-18 08:17:48', 0),
(389, 4310, 1, 3, 'Αμόλυβδη 95', 'Cyclon Drive Max Unleaded 95', '1.419', '2016-11-24 08:09:27', 0),
(390, 4310, 4, 0, 'Diesel Κίνησης', 'Diesel Κίνησης', '1.098', '2016-11-24 08:09:40', 0),
(391, 4310, 4, 23, 'Diesel Κίνησης', 'Cyclon Drive Max Diesel Κίνησης', '1.098', '2016-11-24 08:09:59', 0),
(392, 4310, 5, 5, 'Diesel Θέρμανσης', 'Diesel Θέρμανσης', '0.880', '2016-11-24 08:10:22', 0),
(393, 4310, 7, 10, 'Diesel Θέρμανσης κ.ο. >1000 lt', 'Diesel Θέρμανσης - K.O. > 1000 lt', '0.930', '2016-10-20 15:48:36', 0),
(394, 4310, 7, 11, 'Diesel Θέρμανσης κ.ο. 500-1000 lt', 'Diesel Θέρμανσης - K.O. μεταξύ 500 και 1000 lt', '0.930', '2016-10-20 15:48:27', 0),
(395, 4310, 7, 15, 'Diesel Θέρμανσης κ.ο. <500 lt', 'Diesel Θέρμανσης - K.O. < 500 lt', '0.930', '2016-10-20 15:48:18', 0),
(396, 4541, 1, 0, 'Αμόλυβδη 95', 'Αμόλυβδη 95', '1.398', '2016-11-07 18:25:26', 0),
(397, 4541, 4, 0, 'Diesel Κίνησης', 'Diesel Κίνησης', '1.079', '2016-10-07 11:24:39', 0),
(398, 4541, 4, 19, 'Diesel Κίνησης', 'KAOIL Eurodiesel', '1.098', '2016-10-29 14:29:37', 1),
(399, 4722, 1, 1, 'Αμόλυβδη 95 V-Power', 'Shell Αμόλυβδη 95 V-Power', '1.497', '2016-11-27 11:06:38', 1),
(400, 4722, 1, 6, 'Αμόλυβδη 95', 'Shell Αμόλυβδη Ενισχυμένη 95 οκτανίων', '1.418', '2016-11-27 11:06:25', 0),
(401, 4722, 2, 1, 'Αμόλυβδη 100', 'Shell Αμόλυβδη 100 V-Power Racing', '1.745', '2016-11-27 11:06:48', 1),
(402, 4722, 4, 2, 'Diesel Κίνησης', 'Shell Μείγμα Κίνησης Βιοντήζελ Extra', '1.098', '2016-11-27 11:07:05', 0),
(403, 4722, 4, 4, 'Diesel Κίνησης', 'Shell V-Power Diesel', '1.178', '2016-11-27 11:07:18', 1),
(404, 4722, 5, 2, 'Diesel Θέρμανσης', 'Shell Πετρέλαιο Θέρμανσης', '0.920', '2016-11-27 11:07:38', 0),
(405, 4722, 6, 0, 'Υγραέριο Κίνησης', 'Υγραέριο κίνησης (Autogas)', '0.697', '2016-11-27 11:07:55', 0),
(406, 4723, 1, 0, 'Αμόλυβδη 95', 'Αμόλυβδη 95', '1.449', '2016-11-15 04:49:55', 0),
(407, 4723, 1, 8, 'Αμόλυβδη 95', 'ΕΛΙΝ Unleaded Crystal', '1.459', '2016-11-23 05:26:59', 1),
(408, 4723, 4, 11, 'Diesel Κίνησης', 'ΕΛΙΝ Diesel Crystal', '1.149', '2016-11-23 05:27:12', 1),
(409, 4727, 1, 4, 'Αμόλυβδη 95', 'Revoil αμόλυβδη 95 xtra4', '1.415', '2016-08-30 06:38:34', 0),
(410, 4727, 4, 8, 'Diesel Κίνησης', 'Revoil Πετρέλαιο Κίνησης Dieselmax', '1.135', '2016-10-26 07:25:38', 1),
(411, 4728, 1, 0, 'Αμόλυβδη 95', 'Αμόλυβδη 95', '1.405', '2016-11-15 12:14:34', 0),
(412, 4728, 4, 0, 'Diesel Κίνησης', 'Diesel Κίνησης', '1.085', '2016-11-15 12:14:52', 0),
(413, 4728, 4, 20, 'Diesel Κίνησης', 'Revoil Πετρέλαιο Κίνησης diesel xtra4 revolution', '1.125', '2016-11-15 12:15:14', 1),
(414, 4728, 5, 1, 'Diesel Θέρμανσης', 'Revoil Πετρέλαιο Θέρμανσης Oikoplus', '0.890', '2016-11-22 17:30:26', 0),
(415, 4728, 5, 5, 'Diesel Θέρμανσης', 'Diesel Θέρμανσης', '0.890', '2016-11-22 17:31:57', 0),
(416, 4728, 7, 6, 'Diesel Θέρμανσης κ.ο. >1000 lt', 'Θέρμανσης K.O. > 1000 lt', '0.910', '2016-10-22 16:50:57', 0),
(417, 4728, 7, 7, 'Diesel Θέρμανσης κ.ο. 500-1000 lt', 'Θέρμανσης K.O. μεταξύ 500 και 1000 lt', '0.910', '2016-10-22 16:52:09', 0),
(418, 4728, 7, 14, 'Diesel Θέρμανσης κ.ο. <500 lt', 'Θέρμανσης K.O. < 500 lt', '0.920', '2016-10-22 16:51:14', 0),
(419, 4731, 1, 0, 'Αμόλυβδη 95', 'Αμόλυβδη 95', '1.439', '2016-11-28 06:12:34', 0),
(420, 4731, 4, 0, 'Diesel Κίνησης', 'Diesel Κίνησης', '1.098', '2016-11-22 05:45:41', 0),
(421, 4731, 5, 5, 'Diesel Θέρμανσης', 'Diesel Θέρμανσης', '0.940', '2016-11-24 07:43:12', 0),
(422, 4731, 7, 6, 'Diesel Θέρμανσης κ.ο. >1000 lt', 'Θέρμανσης K.O. > 1000 lt', '0.910', '2016-11-24 07:43:34', 0),
(423, 4731, 7, 7, 'Diesel Θέρμανσης κ.ο. 500-1000 lt', 'Θέρμανσης K.O. μεταξύ 500 και 1000 lt', '0.920', '2016-11-24 07:43:23', 0),
(424, 4731, 7, 14, 'Diesel Θέρμανσης κ.ο. <500 lt', 'Θέρμανσης K.O. < 500 lt', '0.930', '2016-11-24 07:43:53', 0),
(425, 4732, 1, 4, 'Αμόλυβδη 95', 'Revoil αμόλυβδη 95 xtra4', '1.419', '2016-06-09 07:02:42', 0),
(426, 4732, 4, 1, 'Diesel Κίνησης', 'Revoil Πετρέλαιο Κίνησης xtra4', '1.089', '2016-06-09 07:04:15', 0),
(427, 4925, 1, 3, 'Αμόλυβδη 95', 'Cyclon Drive Max Unleaded 95', '1.389', '2016-10-12 18:02:48', 0),
(428, 4925, 2, 4, 'Αμόλυβδη 100', 'Cyclon Drive Max Unleaded 100', '1.479', '2016-08-03 11:00:47', 0),
(429, 4925, 4, 0, 'Diesel Κίνησης', 'Diesel Κίνησης', '1.058', '2016-10-12 18:03:02', 0),
(430, 4925, 4, 23, 'Diesel Κίνησης', 'Cyclon Drive Max Diesel Κίνησης', '1.058', '2016-10-12 18:03:09', 0),
(431, 7709, 1, 0, 'Αμόλυβδη 95', 'Αμόλυβδη 95', '1.475', '2016-11-22 18:58:51', 0),
(432, 7709, 4, 0, 'Diesel Κίνησης', 'Diesel Κίνησης', '1.140', '2016-06-16 04:52:31', 0),
(433, 7709, 4, 19, 'Diesel Κίνησης', 'KAOIL Eurodiesel', '1.140', '2016-11-22 18:59:28', 1),
(434, 7867, 1, 5, 'Αμόλυβδη 95', 'ΕΚΟ Kinitron Unleaded 95 Plus', '1.399', '2016-11-15 11:02:50', 0),
(435, 7867, 2, 2, 'Αμόλυβδη 100', 'ΕΚΟ Kinitron Unleaded 100 Speed', '1.559', '2016-11-15 11:04:00', 0),
(436, 7867, 4, 13, 'Diesel Κίνησης', 'EKO DIESEL EKONOMY', '1.079', '2016-11-24 14:26:38', 0),
(437, 7867, 4, 14, 'Diesel Κίνησης', 'EKO DIESEL Avio', '1.139', '2016-11-15 11:04:21', 1),
(438, 7867, 5, 0, 'Diesel Θέρμανσης', 'Diesel Θέρμασης', '0.900', '2016-12-01 11:31:40', 0),
(439, 7867, 6, 0, 'Υγραέριο Κίνησης', 'Υγραέριο κίνησης (Autogas)', '0.658', '2016-11-15 11:04:48', 0),
(440, 8016, 1, 0, 'Αμόλυβδη 95', 'Αμόλυβδη 95', '1.402', '2016-06-03 11:44:33', 0),
(441, 8016, 4, 0, 'Diesel Κίνησης', 'Diesel Κίνησης', '1.053', '2016-06-03 11:44:46', 0),
(442, 8065, 1, 1, 'Αμόλυβδη 95 V-Power', 'Shell Αμόλυβδη 95 V-Power', '1.478', '2016-12-01 04:41:29', 1),
(443, 8065, 1, 6, 'Αμόλυβδη 95', 'Shell Αμόλυβδη Ενισχυμένη 95 οκτανίων', '1.398', '2016-12-01 04:41:19', 0),
(444, 8065, 2, 1, 'Αμόλυβδη 100', 'Shell Αμόλυβδη 100 V-Power Racing', '1.745', '2016-12-01 04:41:38', 1),
(445, 8065, 4, 2, 'Diesel Κίνησης', 'Shell Μείγμα Κίνησης Βιοντήζελ Extra', '1.065', '2016-12-01 04:41:47', 0),
(446, 8065, 4, 4, 'Diesel Κίνησης', 'Shell V-Power Diesel', '1.065', '2016-12-01 04:41:57', 1),
(447, 8065, 5, 2, 'Diesel Θέρμανσης', 'Shell Πετρέλαιο Θέρμανσης', '0.908', '2016-12-01 04:42:08', 0),
(448, 8065, 7, 9, 'Diesel Θέρμανσης κ.ο. 500-1000 lt', 'Shell Πετρέλαιο Θέρμανσης - K.O. μεταξύ 500 και 1000 lt', '0.908', '2016-12-01 04:42:28', 0),
(449, 8065, 7, 13, 'Diesel Θέρμανσης κ.ο. <500 lt', 'Shell Πετρέλαιο Θέρμανσης - K.O. < 500 lt', '0.908', '2016-12-01 04:42:17', 0),
(450, 8065, 7, 18, 'Diesel Θέρμανσης κ.ο. >1000 lt', 'Shell Πετρέλαιο Θέρμανσης - K.O. > 1000 lt', '0.908', '2016-12-01 04:42:39', 0),
(451, 8067, 1, 9, 'Αμόλυβδη 95', 'Αμόλυβδη AVIN Best 95', '1.427', '2016-11-15 07:38:33', 0),
(452, 8067, 2, 0, 'Αμόλυβδη 100', 'Αμόλυβδη 100', '1.685', '2016-11-15 07:36:44', 0),
(453, 8067, 4, 17, 'Diesel Κίνησης', 'AVIN Diesel Best ACTION', '1.157', '2016-11-15 05:37:37', 1),
(454, 8067, 4, 18, 'Diesel Κίνησης', 'AVIN Diesel Best', '1.106', '2016-11-15 05:36:55', 0),
(455, 8067, 5, 5, 'Diesel Θέρμανσης', 'Diesel Θέρμανσης', '0.915', '2016-11-15 05:40:58', 0),
(456, 8067, 7, 7, 'Diesel Θέρμανσης κ.ο. 500-1000 lt', 'Θέρμανσης K.O. μεταξύ 500 και 1000 lt', '0.880', '2016-11-15 05:41:44', 0),
(457, 8067, 7, 14, 'Diesel Θέρμανσης κ.ο. <500 lt', 'Θέρμανσης K.O. < 500 lt', '0.880', '2016-11-15 05:41:16', 0),
(458, 8305, 1, 0, 'Αμόλυβδη 95', 'Αμόλυβδη 95', '1.393', '2016-10-18 08:15:24', 0),
(459, 8305, 4, 0, 'Diesel Κίνησης', 'Diesel Κίνησης', '1.029', '2016-09-06 05:29:20', 0),
(460, 8305, 4, 19, 'Diesel Κίνησης', 'KAOIL Eurodiesel', '1.094', '2016-10-18 08:16:32', 1),
(461, 8305, 5, 5, 'Diesel Θέρμανσης', 'Diesel Θέρμανσης', '0.890', '2016-10-18 08:17:05', 0),
(462, 8305, 7, 6, 'Diesel Θέρμανσης κ.ο. >1000 lt', 'Θέρμανσης K.O. > 1000 lt', '0.890', '2016-10-18 08:17:38', 0),
(463, 8305, 7, 7, 'Diesel Θέρμανσης κ.ο. 500-1000 lt', 'Θέρμανσης K.O. μεταξύ 500 και 1000 lt', '0.890', '2016-10-18 08:17:23', 0),
(464, 8305, 7, 14, 'Diesel Θέρμανσης κ.ο. <500 lt', 'Θέρμανσης K.O. < 500 lt', '0.890', '2016-10-18 08:16:46', 0),
(465, 8452, 1, 1, 'Αμόλυβδη 95 V-Power', 'Shell Αμόλυβδη 95 V-Power', '1.475', '2016-11-29 21:52:44', 1),
(466, 8452, 1, 6, 'Αμόλυβδη 95', 'Shell Αμόλυβδη Ενισχυμένη 95 οκτανίων', '1.395', '2016-11-24 08:23:26', 0),
(467, 8452, 2, 1, 'Αμόλυβδη 100', 'Shell Αμόλυβδη 100 V-Power Racing', '1.745', '2016-11-27 21:47:59', 1),
(468, 8452, 4, 2, 'Diesel Κίνησης', 'Shell Μείγμα Κίνησης Βιοντήζελ Extra', '1.068', '2016-11-26 12:37:12', 0),
(469, 8452, 4, 4, 'Diesel Κίνησης', 'Shell V-Power Diesel', '1.148', '2016-11-26 12:37:22', 1),
(470, 8452, 4, 6, 'Diesel Κίνησης', 'Shell Πετρέλαιο Κίνησης Extra', '1.038', '2016-08-13 19:41:26', 0),
(471, 8452, 6, 0, 'Υγραέριο Κίνησης', 'Υγραέριο κίνησης (Autogas)', '0.668', '2016-11-25 12:30:01', 0),
(472, 8849, 1, 5, 'Αμόλυβδη 95', 'ΕΚΟ Kinitron Unleaded 95 Plus', '1.399', '2016-11-24 05:24:21', 0),
(473, 8849, 2, 2, 'Αμόλυβδη 100', 'ΕΚΟ Kinitron Unleaded 100 Speed', '1.609', '2016-11-24 05:24:28', 0),
(474, 8849, 4, 13, 'Diesel Κίνησης', 'EKO DIESEL EKONOMY', '1.069', '2016-11-24 05:24:35', 0),
(475, 8849, 4, 14, 'Diesel Κίνησης', 'EKO DIESEL Avio', '1.159', '2016-11-24 05:24:43', 1),
(476, 8893, 1, 5, 'Αμόλυβδη 95', 'ΕΚΟ Kinitron Unleaded 95 Plus', '1.449', '2016-11-26 04:49:37', 0),
(477, 8893, 2, 2, 'Αμόλυβδη 100', 'ΕΚΟ Kinitron Unleaded 100 Speed', '1.759', '2016-11-26 04:50:35', 0),
(478, 8893, 4, 13, 'Diesel Κίνησης', 'EKO DIESEL EKONOMY', '1.139', '2016-11-26 04:50:16', 0),
(479, 8893, 5, 0, 'Diesel Θέρμανσης', 'Diesel Θέρμασης', '1.029', '2016-11-01 05:36:56', 0),
(480, 8996, 1, 0, 'Αμόλυβδη 95', 'Αμόλυβδη 95', '1.378', '2016-12-01 09:57:27', 0),
(481, 8996, 2, 0, 'Αμόλυβδη 100', 'Αμόλυβδη 100', '1.495', '2016-11-29 16:24:35', 0),
(482, 8996, 4, 0, 'Diesel Κίνησης', 'Diesel Κίνησης', '1.038', '2016-12-01 09:58:17', 0),
(483, 8996, 4, 7, 'Diesel Κίνησης', 'Jet Premium Diesel', '1.098', '2016-11-28 21:44:39', 1),
(484, 8996, 5, 5, 'Diesel Θέρμανσης', 'Diesel Θέρμανσης', '0.857', '2016-11-30 11:55:48', 0),
(485, 8996, 7, 6, 'Diesel Θέρμανσης κ.ο. >1000 lt', 'Θέρμανσης K.O. > 1000 lt', '0.880', '2016-11-28 15:43:00', 0),
(486, 8996, 7, 7, 'Diesel Θέρμανσης κ.ο. 500-1000 lt', 'Θέρμανσης K.O. μεταξύ 500 και 1000 lt', '0.889', '2016-11-28 15:44:49', 0),
(487, 8996, 7, 14, 'Diesel Θέρμανσης κ.ο. <500 lt', 'Θέρμανσης K.O. < 500 lt', '0.899', '2016-11-29 21:55:28', 0),
(488, 9072, 1, 0, 'Αμόλυβδη 95', 'Αμόλυβδη 95', '1.398', '2016-11-08 10:46:12', 0),
(489, 9072, 2, 0, 'Αμόλυβδη 100', 'Αμόλυβδη 100', '1.555', '2016-11-08 10:46:22', 0),
(490, 9072, 4, 0, 'Diesel Κίνησης', 'Diesel Κίνησης', '1.098', '2016-11-08 10:46:33', 0),
(491, 9072, 4, 7, 'Diesel Κίνησης', 'Jet Premium Diesel', '1.128', '2016-11-08 10:46:44', 1),
(492, 9072, 5, 5, 'Diesel Θέρμανσης', 'Diesel Θέρμανσης', '0.910', '2016-11-08 10:46:54', 0),
(493, 9073, 1, 0, 'Αμόλυβδη 95', 'Αμόλυβδη 95', '1.398', '2016-11-08 10:38:43', 0),
(494, 9073, 2, 0, 'Αμόλυβδη 100', 'Αμόλυβδη 100', '1.555', '2016-11-08 10:39:19', 0),
(495, 9073, 4, 0, 'Diesel Κίνησης', 'Diesel Κίνησης', '1.098', '2016-11-08 10:39:35', 0),
(496, 9073, 4, 7, 'Diesel Κίνησης', 'Jet Premium Diesel', '1.128', '2016-11-08 10:39:51', 1),
(497, 9151, 1, 5, 'Αμόλυβδη 95', 'ΕΚΟ Kinitron Unleaded 95 Plus', '1.399', '2016-11-28 05:06:31', 0),
(498, 9151, 2, 2, 'Αμόλυβδη 100', 'ΕΚΟ Kinitron Unleaded 100 Speed', '1.609', '2016-11-28 05:06:39', 0),
(499, 9151, 4, 13, 'Diesel Κίνησης', 'EKO DIESEL EKONOMY', '1.079', '2016-11-28 05:06:46', 0),
(500, 9151, 4, 14, 'Diesel Κίνησης', 'EKO DIESEL Avio', '1.169', '2016-11-28 05:06:53', 1),
(501, 9379, 1, 0, 'Αμόλυβδη 95', 'Αμόλυβδη 95', '1.389', '2016-07-14 21:08:51', 0),
(502, 9379, 1, 1, 'Αμόλυβδη 95 V-Power', 'Shell Αμόλυβδη 95 V-Power', '1.498', '2016-11-30 09:03:21', 1),
(503, 9379, 1, 6, 'Αμόλυβδη 95', 'Shell Αμόλυβδη Ενισχυμένη 95 οκτανίων', '1.418', '2016-11-26 14:54:00', 0),
(504, 9379, 2, 0, 'Αμόλυβδη 100', 'Αμόλυβδη 100', '1.728', '2016-07-14 22:59:15', 0),
(505, 9379, 2, 1, 'Αμόλυβδη 100', 'Shell Αμόλυβδη 100 V-Power Racing', '1.798', '2016-11-26 14:54:27', 1),
(506, 9379, 4, 0, 'Diesel Κίνησης', 'Diesel Κίνησης', '1.148', '2016-07-14 22:59:33', 0),
(507, 9379, 4, 2, 'Diesel Κίνησης', 'Shell Μείγμα Κίνησης Βιοντήζελ Extra', '1.098', '2016-11-26 14:54:43', 0),
(508, 9379, 4, 4, 'Diesel Κίνησης', 'Shell V-Power Diesel', '1.176', '2016-11-26 14:54:59', 1),
(509, 9379, 4, 6, 'Diesel Κίνησης', 'Shell Πετρέλαιο Κίνησης Extra', '1.078', '2016-08-20 04:03:44', 0),
(510, 9379, 4, 19, 'Diesel Κίνησης', 'KAOIL Eurodiesel', '1.148', '2016-06-01 07:28:02', 1),
(511, 9379, 5, 2, 'Diesel Θέρμανσης', 'Shell Πετρέλαιο Θέρμανσης', '0.968', '2016-11-26 14:55:24', 0);
INSERT INTO `pricedata` (`id`, `gasStationID`, `fuelTypeID`, `fuelSubTypeID`, `fuelNormalName`, `fuelName`, `fuelPrice`, `dateUpdated`, `isPremium`) VALUES
(512, 9379, 6, 0, 'Υγραέριο Κίνησης', 'Υγραέριο κίνησης (Autogas)', '0.697', '2016-11-26 14:55:38', 0),
(513, 9379, 7, 9, 'Diesel Θέρμανσης κ.ο. 500-1000 lt', 'Shell Πετρέλαιο Θέρμανσης - K.O. μεταξύ 500 και 1000 lt', '0.920', '2016-11-26 14:58:49', 0),
(514, 9379, 7, 13, 'Diesel Θέρμανσης κ.ο. <500 lt', 'Shell Πετρέλαιο Θέρμανσης - K.O. < 500 lt', '0.930', '2016-11-26 14:58:41', 0),
(515, 9379, 7, 18, 'Diesel Θέρμανσης κ.ο. >1000 lt', 'Shell Πετρέλαιο Θέρμανσης - K.O. > 1000 lt', '0.920', '2016-11-26 14:59:00', 0),
(516, 9616, 1, 0, 'Αμόλυβδη 95', 'Αμόλυβδη 95', '1.399', '2016-07-13 13:41:05', 0),
(517, 9616, 1, 8, 'Αμόλυβδη 95', 'ΕΛΙΝ Unleaded Crystal', '1.441', '2016-09-24 06:36:19', 1),
(518, 9616, 4, 0, 'Diesel Κίνησης', 'Diesel Κίνησης', '1.079', '2016-09-24 06:36:49', 0),
(519, 9795, 1, 4, 'Αμόλυβδη 95', 'Revoil αμόλυβδη 95 xtra4', '1.445', '2016-11-24 11:06:22', 0),
(520, 9795, 2, 5, 'Αμόλυβδη 100', 'Revoil Αμόλυβδη 100 xtra4', '1.562', '2016-11-24 11:22:57', 0),
(521, 9795, 4, 1, 'Diesel Κίνησης', 'Revoil Πετρέλαιο Κίνησης xtra4', '1.098', '2016-11-24 11:23:13', 0),
(522, 9795, 4, 20, 'Diesel Κίνησης', 'Revoil Πετρέλαιο Κίνησης diesel xtra4 revolution', '1.139', '2016-11-24 11:23:24', 1),
(523, 9795, 5, 1, 'Diesel Θέρμανσης', 'Revoil Πετρέλαιο Θέρμανσης Oikoplus', '0.949', '2016-11-24 11:23:40', 0),
(524, 9795, 7, 6, 'Diesel Θέρμανσης κ.ο. >1000 lt', 'Θέρμανσης K.O. > 1000 lt', '0.860', '2016-11-24 11:25:19', 0),
(525, 9795, 7, 7, 'Diesel Θέρμανσης κ.ο. 500-1000 lt', 'Θέρμανσης K.O. μεταξύ 500 και 1000 lt', '0.900', '2016-11-24 11:34:27', 0),
(526, 9795, 7, 14, 'Diesel Θέρμανσης κ.ο. <500 lt', 'Θέρμανσης K.O. < 500 lt', '0.900', '2016-11-24 11:33:44', 0),
(527, 9926, 1, 0, 'Αμόλυβδη 95', 'Αμόλυβδη 95', '1.399', '2016-11-25 20:09:33', 0),
(528, 9926, 2, 0, 'Αμόλυβδη 100', 'Αμόλυβδη 100', '1.497', '2016-11-22 18:30:38', 0),
(529, 9926, 4, 0, 'Diesel Κίνησης', 'Diesel Κίνησης', '1.079', '2016-11-25 20:09:52', 0),
(530, 9926, 5, 5, 'Diesel Θέρμανσης', 'Diesel Θέρμανσης', '0.879', '2016-11-24 19:35:02', 0),
(531, 10017, 1, 1, 'Αμόλυβδη 95 V-Power', 'Shell Αμόλυβδη 95 V-Power', '1.478', '2016-11-28 08:47:35', 1),
(532, 10017, 1, 6, 'Αμόλυβδη 95', 'Shell Αμόλυβδη Ενισχυμένη 95 οκτανίων', '1.398', '2016-11-28 08:47:20', 0),
(533, 10017, 2, 1, 'Αμόλυβδη 100', 'Shell Αμόλυβδη 100 V-Power Racing', '1.745', '2016-11-28 08:47:45', 1),
(534, 10017, 4, 2, 'Diesel Κίνησης', 'Shell Μείγμα Κίνησης Βιοντήζελ Extra', '1.148', '2016-10-04 11:37:18', 0),
(535, 10017, 4, 4, 'Diesel Κίνησης', 'Shell V-Power Diesel', '1.145', '2016-11-28 08:48:22', 1),
(536, 10017, 4, 6, 'Diesel Κίνησης', 'Shell Πετρέλαιο Κίνησης Extra', '1.065', '2016-11-28 08:48:03', 0),
(537, 10162, 1, 0, 'Αμόλυβδη 95', 'Αμόλυβδη 95', '1.420', '2016-11-19 09:58:50', 0),
(538, 10162, 4, 0, 'Diesel Κίνησης', 'Diesel Κίνησης', '1.070', '2016-11-19 09:59:11', 0),
(539, 10162, 4, 11, 'Diesel Κίνησης', 'ΕΛΙΝ Diesel Crystal', '1.120', '2016-11-23 15:30:17', 1),
(540, 10212, 1, 0, 'Αμόλυβδη 95', 'Αμόλυβδη 95', '1.440', '2016-11-30 06:05:29', 0),
(541, 10212, 4, 0, 'Diesel Κίνησης', 'Diesel Κίνησης', '1.130', '2016-11-30 06:05:45', 0),
(542, 10212, 4, 11, 'Diesel Κίνησης', 'ΕΛΙΝ Diesel Crystal', '1.170', '2016-11-30 06:06:06', 1),
(543, 10229, 1, 0, 'Αμόλυβδη 95', 'Αμόλυβδη 95', '1.388', '2016-11-28 13:37:12', 0),
(544, 10229, 2, 0, 'Αμόλυβδη 100', 'Αμόλυβδη 100', '1.608', '2016-11-28 13:37:25', 0),
(545, 10229, 4, 0, 'Diesel Κίνησης', 'Diesel Κίνησης', '1.078', '2016-11-28 13:38:08', 0),
(546, 10229, 4, 7, 'Diesel Κίνησης', 'Jet Premium Diesel', '1.108', '2016-11-28 13:38:21', 1),
(547, 10229, 5, 5, 'Diesel Θέρμανσης', 'Diesel Θέρμανσης', '0.950', '2016-11-28 13:38:35', 0),
(548, 10229, 6, 0, 'Υγραέριο Κίνησης', 'Υγραέριο κίνησης (Autogas)', '0.638', '2016-11-28 13:37:43', 0),
(549, 10265, 1, 2, 'Αμόλυβδη 95', 'BP Unleaded 95', '1.525', '2016-11-30 10:58:09', 0),
(550, 10265, 4, 5, 'Diesel Κίνησης', 'BP Super Diesel', '1.195', '2016-11-30 10:58:41', 0),
(551, 10265, 5, 3, 'Diesel Θέρμανσης', 'BP Heat', '0.985', '2016-11-30 10:59:33', 0),
(552, 10465, 1, 0, 'Αμόλυβδη 95', 'Αμόλυβδη 95', '1.396', '2016-11-16 12:57:35', 0),
(553, 10465, 4, 0, 'Diesel Κίνησης', 'Diesel Κίνησης', '1.089', '2016-06-23 07:48:23', 0),
(554, 10465, 4, 19, 'Diesel Κίνησης', 'KAOIL Eurodiesel', '1.078', '2016-11-16 12:57:46', 1),
(555, 10465, 4, 25, 'Diesel Κίνησης', 'KAOIL Eurodiesel Gold', '1.127', '2016-11-16 12:57:59', 1),
(556, 10465, 6, 0, 'Υγραέριο Κίνησης', 'Υγραέριο κίνησης (Autogas)', '0.718', '2016-11-16 12:58:11', 0),
(557, 10485, 1, 2, 'Αμόλυβδη 95', 'BP Unleaded 95', '1.399', '2016-11-24 06:36:49', 0),
(558, 10485, 2, 3, 'Αμόλυβδη 100', 'BP Ultimate 100', '1.619', '2016-11-24 06:37:05', 0),
(559, 10485, 4, 5, 'Diesel Κίνησης', 'BP Super Diesel', '1.079', '2016-11-28 11:24:36', 0),
(560, 10485, 4, 12, 'Diesel Κίνησης', 'BP Ultimate Diesel', '1.169', '2016-11-28 11:25:02', 1),
(561, 10485, 5, 3, 'Diesel Θέρμανσης', 'BP Heat', '0.899', '2016-11-29 09:55:15', 0),
(562, 10539, 1, 0, 'Αμόλυβδη 95', 'Αμόλυβδη 95', '1.396', '2016-11-21 13:34:51', 0),
(563, 10539, 4, 0, 'Diesel Κίνησης', 'Diesel Κίνησης', '1.096', '2016-11-26 18:41:14', 0),
(564, 10539, 4, 11, 'Diesel Κίνησης', 'ΕΛΙΝ Diesel Crystal', '1.176', '2016-11-26 18:41:35', 1),
(565, 10544, 1, 9, 'Αμόλυβδη 95', 'Αμόλυβδη AVIN Best 95', '1.426', '2016-11-17 14:00:47', 0),
(566, 10544, 4, 18, 'Diesel Κίνησης', 'AVIN Diesel Best', '1.095', '2016-11-17 13:59:55', 0),
(567, 10544, 5, 5, 'Diesel Θέρμανσης', 'Diesel Θέρμανσης', '0.900', '2016-11-17 14:02:37', 0),
(568, 10567, 1, 0, 'Αμόλυβδη 95', 'Αμόλυβδη 95', '1.429', '2016-06-08 08:00:38', 0),
(569, 10567, 4, 19, 'Diesel Κίνησης', 'KAOIL Eurodiesel', '1.159', '2016-06-08 08:01:19', 1),
(570, 10594, 1, 0, 'Αμόλυβδη 95', 'Αμόλυβδη 95', '1.389', '2016-11-25 20:12:36', 0),
(571, 10594, 2, 0, 'Αμόλυβδη 100', 'Αμόλυβδη 100', '1.497', '2016-11-22 18:31:38', 0),
(572, 10594, 4, 0, 'Diesel Κίνησης', 'Diesel Κίνησης', '1.069', '2016-11-25 20:12:47', 0),
(573, 10594, 5, 5, 'Diesel Θέρμανσης', 'Diesel Θέρμανσης', '0.879', '2016-11-24 19:37:28', 0),
(574, 10671, 1, 0, 'Αμόλυβδη 95', 'Αμόλυβδη 95', '1.359', '2016-11-12 15:52:10', 0),
(575, 10671, 4, 0, 'Diesel Κίνησης', 'Diesel Κίνησης', '1.025', '2016-11-12 15:52:21', 0),
(576, 10671, 6, 0, 'Υγραέριο Κίνησης', 'Υγραέριο κίνησης (Autogas)', '0.628', '2016-11-12 15:52:33', 0),
(577, 10872, 1, 2, 'Αμόλυβδη 95', 'BP Unleaded 95', '1.389', '2016-10-10 09:51:14', 0),
(578, 10872, 2, 3, 'Αμόλυβδη 100', 'BP Ultimate 100', '1.609', '2016-10-10 09:51:26', 0),
(579, 10872, 4, 5, 'Diesel Κίνησης', 'BP Super Diesel', '1.059', '2016-10-10 09:51:39', 0),
(580, 10872, 4, 12, 'Diesel Κίνησης', 'BP Ultimate Diesel', '1.149', '2016-10-10 09:51:49', 1),
(581, 10933, 1, 1, 'Αμόλυβδη 95 V-Power', 'Shell Αμόλυβδη 95 V-Power', '1.478', '2016-11-09 15:22:04', 1),
(582, 10933, 1, 6, 'Αμόλυβδη 95', 'Shell Αμόλυβδη Ενισχυμένη 95 οκτανίων', '1.398', '2016-11-09 15:21:12', 0),
(583, 10933, 2, 1, 'Αμόλυβδη 100', 'Shell Αμόλυβδη 100 V-Power Racing', '1.745', '2016-11-09 15:22:22', 1),
(584, 10933, 4, 2, 'Diesel Κίνησης', 'Shell Μείγμα Κίνησης Βιοντήζελ Extra', '1.098', '2016-11-09 15:25:01', 0),
(585, 10933, 4, 4, 'Diesel Κίνησης', 'Shell V-Power Diesel', '1.178', '2016-11-09 15:25:43', 1),
(586, 10933, 4, 6, 'Diesel Κίνησης', 'Shell Πετρέλαιο Κίνησης Extra', '1.058', '2016-08-24 07:17:42', 0),
(587, 10990, 1, 2, 'Αμόλυβδη 95', 'BP Unleaded 95', '1.398', '2016-11-28 10:11:44', 0),
(588, 10990, 2, 3, 'Αμόλυβδη 100', 'BP Ultimate 100', '1.598', '2016-11-28 10:11:56', 0),
(589, 10990, 4, 12, 'Diesel Κίνησης', 'BP Ultimate Diesel', '1.068', '2016-08-02 08:22:27', 1),
(590, 11054, 6, 0, 'Υγραέριο Κίνησης', 'Υγραέριο κίνησης (Autogas)', '0.648', '2016-11-07 09:20:21', 0),
(591, 11062, 1, 0, 'Αμόλυβδη 95', 'Αμόλυβδη 95', '1.384', '2016-11-30 10:18:14', 0),
(592, 11062, 1, 8, 'Αμόλυβδη 95', 'ΕΛΙΝ Unleaded Crystal', '1.434', '2016-11-30 10:18:28', 1),
(593, 11062, 4, 0, 'Diesel Κίνησης', 'Diesel Κίνησης', '1.065', '2016-11-30 10:18:42', 0),
(594, 11062, 4, 11, 'Diesel Κίνησης', 'ΕΛΙΝ Diesel Crystal', '1.115', '2016-11-30 10:18:54', 1),
(595, 11093, 1, 0, 'Αμόλυβδη 95', 'Αμόλυβδη 95', '1.386', '2016-11-28 11:42:43', 0),
(596, 11093, 2, 0, 'Αμόλυβδη 100', 'Αμόλυβδη 100', '1.538', '2016-11-28 11:42:54', 0),
(597, 11093, 4, 0, 'Diesel Κίνησης', 'Diesel Κίνησης', '1.068', '2016-11-28 11:43:06', 0),
(598, 11093, 5, 5, 'Diesel Θέρμανσης', 'Diesel Θέρμανσης', '0.900', '2016-11-28 11:43:21', 0),
(599, 11094, 1, 0, 'Αμόλυβδη 95', 'Αμόλυβδη 95', '1.389', '2016-11-25 20:13:52', 0),
(600, 11094, 2, 0, 'Αμόλυβδη 100', 'Αμόλυβδη 100', '1.497', '2016-11-22 18:33:19', 0),
(601, 11094, 4, 0, 'Diesel Κίνησης', 'Diesel Κίνησης', '1.069', '2016-11-25 20:14:02', 0),
(602, 11094, 5, 5, 'Diesel Θέρμανσης', 'Diesel Θέρμανσης', '0.879', '2016-11-24 19:38:32', 0),
(603, 11138, 1, 2, 'Αμόλυβδη 95', 'BP Unleaded 95', '1.450', '2016-11-26 06:29:32', 0),
(604, 11138, 4, 5, 'Diesel Κίνησης', 'BP Super Diesel', '1.150', '2016-11-26 06:29:06', 0),
(605, 11138, 5, 3, 'Diesel Θέρμανσης', 'BP Heat', '0.950', '2016-11-26 06:30:20', 0),
(606, 11138, 7, 5, 'Diesel Θέρμανσης κ.ο. <500 lt', 'BP Heat - K.O. < 500 lt', '0.920', '2016-11-12 06:39:52', 0),
(607, 11138, 7, 8, 'Diesel Θέρμανσης κ.ο. 500-1000 lt', 'BP Super Heat - K.O. μεταξύ 500 και 1000 lt', '0.910', '2016-11-12 06:39:41', 1),
(608, 11138, 7, 12, 'Diesel Θέρμανσης κ.ο. >1000 lt', 'BP Heat - K.O. > 1000 lt', '0.900', '2016-11-12 06:39:29', 0);

-- --------------------------------------------------------

--
-- Stand-in structure for view `stationsbycompany`
--
CREATE TABLE `stationsbycompany` (
`company` varchar(45)
,`number` bigint(21)
);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `quantity` int(11) NOT NULL,
  `pricedata_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  `gasstations_id` smallint(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`date`, `quantity`, `pricedata_id`, `users_id`, `gasstations_id`) VALUES
('2017-01-15 19:20:59', 200, 5, 99, 441);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `name` varchar(45) NOT NULL,
  `password` varchar(60) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `remember_token` varchar(60) DEFAULT NULL,
  `expires` int(11) DEFAULT NULL,
  `owner` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`name`, `password`, `email`, `id`, `remember_token`, `expires`, `owner`) VALUES
('user1', 'pass1', 'email1@gmail.com', 1, '', 0, 1),
('user10', 'pass10', 'email10@gmail.com', 2, '', 0, 1),
('user100', 'pass100', 'email100@gmail.com', 3, '', 0, 1),
('user101', 'pass101', 'email101@gmail.com', 4, '', 0, 1),
('user102', 'pass102', 'email102@gmail.com', 5, '', 0, 1),
('user103', 'pass103', 'email103@gmail.com', 6, '', 0, 1),
('user104', 'pass104', 'email104@gmail.com', 7, '', 0, 1),
('user105', 'pass105', 'email105@gmail.com', 8, '', 0, 1),
('user106', 'pass106', 'email106@gmail.com', 9, '', 0, 1),
('user107', 'pass107', 'email107@gmail.com', 10, '', 0, 1),
('user108', 'pass108', 'email108@gmail.com', 11, '', 0, 1),
('user109', 'pass109', 'email109@gmail.com', 12, '', 0, 1),
('user11', 'pass11', 'email11@gmail.com', 13, '', 0, 1),
('user110', 'pass110', 'email110@gmail.com', 14, '', 0, 1),
('user111', 'pass111', 'email111@gmail.com', 15, '', 0, 1),
('user112', 'pass112', 'email112@gmail.com', 16, '', 0, 1),
('user113', 'pass113', 'email113@gmail.com', 17, '', 0, 1),
('user114', 'pass114', 'email114@gmail.com', 18, '', 0, 1),
('user115', 'pass115', 'email115@gmail.com', 19, '', 0, 1),
('user116', 'pass116', 'email116@gmail.com', 20, '', 0, 1),
('user117', 'pass117', 'email117@gmail.com', 21, '', 0, 1),
('user118', 'pass118', 'email118@gmail.com', 22, '', 0, 1),
('user119', 'pass119', 'email119@gmail.com', 23, '', 0, 1),
('user12', 'pass12', 'email12@gmail.com', 24, '', 0, 1),
('user120', 'pass120', 'email120@gmail.com', 25, '', 0, 1),
('user121', 'pass121', 'email121@gmail.com', 26, '', 0, 1),
('user122', 'pass122', 'email122@gmail.com', 27, '', 0, 1),
('user123', 'pass123', 'email123@gmail.com', 28, '', 0, 1),
('user124', 'pass124', 'email124@gmail.com', 29, '', 0, 1),
('user125', 'pass125', 'email125@gmail.com', 30, '', 0, 1),
('user126', 'pass126', 'email126@gmail.com', 31, '', 0, 1),
('user127', 'pass127', 'email127@gmail.com', 32, '', 0, 1),
('user128', 'pass128', 'email128@gmail.com', 33, '', 0, 1),
('user129', 'pass129', 'email129@gmail.com', 34, '', 0, 1),
('user13', 'pass13', 'email13@gmail.com', 35, '', 0, 1),
('user130', 'pass130', 'email130@gmail.com', 36, '', 0, 1),
('user131', 'pass131', 'email131@gmail.com', 37, '', 0, 1),
('user132', 'pass132', 'email132@gmail.com', 38, '', 0, 1),
('user133', 'pass133', 'email133@gmail.com', 39, '', 0, 1),
('user134', 'pass134', 'email134@gmail.com', 40, '', 0, 1),
('user135', 'pass135', 'email135@gmail.com', 41, '', 0, 1),
('user136', 'pass136', 'email136@gmail.com', 42, '', 0, 1),
('user137', 'pass137', 'email137@gmail.com', 43, '', 0, 1),
('user138', 'pass138', 'email138@gmail.com', 44, '', 0, 1),
('user139', 'pass139', 'email139@gmail.com', 45, '', 0, 1),
('user14', 'pass14', 'email14@gmail.com', 46, '', 0, 1),
('user140', 'pass140', 'email140@gmail.com', 47, '', 0, 1),
('user141', 'pass141', 'email141@gmail.com', 48, '', 0, 1),
('user142', 'pass142', 'email142@gmail.com', 49, '', 0, 1),
('user143', 'pass143', 'email143@gmail.com', 50, '', 0, 1),
('user144', 'pass144', 'email144@gmail.com', 51, '', 0, 1),
('user145', 'pass145', 'email145@gmail.com', 52, '', 0, 1),
('user146', 'pass146', 'email146@gmail.com', 53, '', 0, 1),
('user147', 'pass147', 'email147@gmail.com', 54, '', 0, 1),
('user148', 'pass148', 'email148@gmail.com', 55, '', 0, 1),
('user149', 'pass149', 'email149@gmail.com', 56, '', 0, 1),
('user15', 'pass15', 'email15@gmail.com', 57, '', 0, 1),
('user150', 'pass150', 'email150@gmail.com', 58, '', 0, 1),
('user151', 'pass151', 'email151@gmail.com', 59, '', 0, 1),
('user152', 'pass152', 'email152@gmail.com', 60, '', 0, 1),
('user153', 'pass153', 'email153@gmail.com', 61, '', 0, 1),
('user154', 'pass154', 'email154@gmail.com', 62, '', 0, 1),
('user155', 'pass155', 'email155@gmail.com', 63, '', 0, 1),
('user156', 'pass156', 'email156@gmail.com', 64, '', 0, 1),
('user157', 'pass157', 'email157@gmail.com', 65, '', 0, 1),
('user158', 'pass158', 'email158@gmail.com', 66, '', 0, 1),
('user159', 'pass159', 'email159@gmail.com', 67, '', 0, 1),
('user16', 'pass16', 'email16@gmail.com', 68, '', 0, 1),
('user160', 'pass160', 'email160@gmail.com', 69, '', 0, 1),
('user17', 'pass17', 'email17@gmail.com', 70, '', 0, 1),
('user18', 'pass18', 'email18@gmail.com', 71, '', 0, 1),
('user19', 'pass19', 'email19@gmail.com', 72, '', 0, 1),
('user2', 'pass2', 'email2@gmail.com', 73, '', 0, 1),
('user20', 'pass20', 'email20@gmail.com', 74, '', 0, 1),
('user21', 'pass21', 'email21@gmail.com', 75, '', 0, 1),
('user22', 'pass22', 'email22@gmail.com', 76, '', 0, 1),
('user222', '$2y$10$PYSV7WcA4gKQnaujST8aUOGyEUW7d/.n8hPNtgo4FMqhbCSzZWRU.', 'user222@gmail.com', 170, 'ln63zK7DaImUI8QFWS0O3sPbclj57mHLCXRClLB33wq2ajpqT57lKw3vhEp7', NULL, 0),
('user23', 'pass23', 'email23@gmail.com', 77, '', 0, 1),
('user24', 'pass24', 'email24@gmail.com', 78, '', 0, 1),
('user25', 'pass25', 'email25@gmail.com', 79, '', 0, 1),
('user26', 'pass26', 'email26@gmail.com', 80, '', 0, 1),
('user27', 'pass27', 'email27@gmail.com', 81, '', 0, 1),
('user28', 'pass28', 'email28@gmail.com', 82, '', 0, 1),
('user29', 'pass29', 'email29@gmail.com', 83, '', 0, 1),
('user3', 'pass3', 'email3@gmail.com', 84, '', 0, 1),
('user30', 'pass30', 'email30@gmail.com', 85, '', 0, 1),
('user31', 'pass31', 'email31@gmail.com', 86, '', 0, 1),
('user32', 'pass32', 'email32@gmail.com', 87, '', 0, 1),
('user33', 'pass33', 'email33@gmail.com', 88, '', 0, 1),
('user333', '$2y$10$jVOyQt8d11oLn5CkhpsNC.hzCvDGTpUSnMyYE6wfPQUrqwergCpJ2', 'user333@gmail.com', 169, 'OGI0N8l1B8vsM3fnXgR3goS934t945OiEKAAXz3XjOEAWBLccBf66lbuemKf', NULL, 1),
('user34', 'pass34', 'email34@gmail.com', 89, '', 0, 1),
('user35', 'pass35', 'email35@gmail.com', 90, '', 0, 1),
('user36', 'pass36', 'email36@gmail.com', 91, '', 0, 1),
('user37', 'pass37', 'email37@gmail.com', 92, '', 0, 1),
('user38', 'pass38', 'email38@gmail.com', 93, '', 0, 1),
('user39', 'pass39', 'email39@gmail.com', 94, '', 0, 1),
('user4', 'pass4', 'email4@gmail.com', 95, '', 0, 1),
('user40', 'pass40', 'email40@gmail.com', 96, '', 0, 1),
('user41', 'pass41', 'email41@gmail.com', 97, '', 0, 1),
('user42', 'pass42', 'email42@gmail.com', 98, '', 0, 1),
('user43', 'pass43', 'email43@gmail.com', 99, '', 0, 1),
('user44', 'pass44', 'email44@gmail.com', 100, '', 0, 1),
('user444', '$2y$10$80HkF04AOBF4X.mOW49ymuo./oCX20FAhfffaSSCXM8IfdWNuFnwe', 'user444@gmail.com', 168, 'UEjytdymDEYls5OxVP3NDgCQFRt49qmyuVOUcfCnm0hFrg3IaXxqCaJA4nJd', NULL, 1),
('user45', 'pass45', 'email45@gmail.com', 101, '', 0, 1),
('user46', 'pass46', 'email46@gmail.com', 102, '', 0, 1),
('user47', 'pass47', 'email47@gmail.com', 103, '', 0, 1),
('user48', 'pass48', 'email48@gmail.com', 104, '', 0, 1),
('user49', 'pass49', 'email49@gmail.com', 105, '', 0, 1),
('user5', 'pass5', 'email5@gmail.com', 106, '', 0, 1),
('user50', 'pass50', 'email50@gmail.com', 107, '', 0, 1),
('user51', 'pass51', 'email51@gmail.com', 108, '', 0, 1),
('user52', 'pass52', 'email52@gmail.com', 109, '', 0, 1),
('user53', 'pass53', 'email53@gmail.com', 110, '', 0, 1),
('user54', 'pass54', 'email54@gmail.com', 111, '', 0, 1),
('user55', 'pass55', 'email55@gmail.com', 112, '', 0, 1),
('user555', '$2y$10$2amn7DJrlne4wp545sXD1eLNWhCA37r..JZHvrPDAJ0wIzh1v1D6y', '555@gmail.com', 167, 'cIEIFvyCAWT1HETNIbE3itzCVgZ4lux42pKqK7pFUyLy5mAAxhtA8DQAR42s', NULL, 1),
('user56', 'pass56', 'email56@gmail.com', 113, '', 0, 1),
('user57', 'pass57', 'email57@gmail.com', 114, '', 0, 1),
('user58', 'pass58', 'email58@gmail.com', 115, '', 0, 1),
('user59', 'pass59', 'email59@gmail.com', 116, '', 0, 1),
('user6', 'pass6', 'email6@gmail.com', 117, '', 0, 1),
('user60', 'pass60', 'email60@gmail.com', 118, '', 0, 1),
('user61', 'pass61', 'email61@gmail.com', 119, '', 0, 1),
('user62', 'pass62', 'email62@gmail.com', 120, '', 0, 1),
('user63', 'pass63', 'email63@gmail.com', 121, '', 0, 1),
('user64', 'pass64', 'email64@gmail.com', 122, '', 0, 1),
('user65', 'pass65', 'email65@gmail.com', 123, '', 0, 1),
('user66', 'pass66', 'email66@gmail.com', 124, '', 0, 1),
('user666', '$2y$10$wIOyzf17tI0Lvbik5ZgxrujIGM0SjhRWlSYQLatCetAFd.WeeYFK2', 'user666@gmail.com', 178, 'BVM32upSzaztNuNajB3uXNudFi21buh7uevn4SzuI3oPhCiJSv0LcQRPtTCv', NULL, 0),
('user67', 'pass67', 'email67@gmail.com', 125, '', 0, 1),
('user68', 'pass68', 'email68@gmail.com', 126, '', 0, 1),
('user69', 'pass69', 'email69@gmail.com', 127, '', 0, 1),
('user7', 'pass7', 'email7@gmail.com', 128, '', 0, 1),
('user70', 'pass70', 'email70@gmail.com', 129, '', 0, 1),
('user71', 'pass71', 'email71@gmail.com', 130, '', 0, 1),
('user72', 'pass72', 'email72@gmail.com', 131, '', 0, 1),
('user73', 'pass73', 'email73@gmail.com', 132, '', 0, 1),
('user74', 'pass74', 'email74@gmail.com', 133, '', 0, 1),
('user75', 'pass75', 'email75@gmail.com', 134, '', 0, 1),
('user76', 'pass76', 'email76@gmail.com', 135, '', 0, 1),
('user77', 'pass77', 'email77@gmail.com', 136, '', 0, 1),
('user777', '$2y$10$9r1.QyLCh9cSZOo0vgI71OSmjdc04rtqy82jH8FUah8DkRKNtcUJ6', 'user777@gmail.com', 177, 'as3fDTMuvXtjeyugnkuta5vJsw6n5rY84Je4oGU2VCDg6MAL8AZfJoa2DPRI', NULL, 1),
('user78', 'pass78', 'email78@gmail.com', 137, '', 0, 1),
('user79', 'pass79', 'email79@gmail.com', 138, '', 0, 1),
('user8', 'pass8', 'email8@gmail.com', 139, '', 0, 1),
('user80', 'pass80', 'email80@gmail.com', 140, '', 0, 1),
('user81', 'pass81', 'email81@gmail.com', 141, '', 0, 1),
('user82', 'pass82', 'email82@gmail.com', 142, '', 0, 1),
('user83', 'pass83', 'email83@gmail.com', 143, '', 0, 1),
('user84', 'pass84', 'email84@gmail.com', 144, '', 0, 1),
('user85', 'pass85', 'email85@gmail.com', 145, '', 0, 1),
('user86', 'pass86', 'email86@gmail.com', 146, '', 0, 1),
('user87', 'pass87', 'email87@gmail.com', 147, '', 0, 1),
('user88', 'pass88', 'email88@gmail.com', 148, '', 0, 1),
('user888', '$2y$10$MRZBwcuJcGD6fnfjLDf34e04L9rJEQlKUmxOy7YS.DyofzBQqgy0W', 'user888@gmail.com', 176, 'V3fENwhjF0rn8ezhznL8Yk8lIgdwIRghtiR4biQBzizr5bLVsHdoztjjtjcZ', NULL, 0),
('user89', 'pass89', 'email89@gmail.com', 149, '', 0, 1),
('user9', 'pass9', 'email9@gmail.com', 150, '', 0, 1),
('user90', 'pass90', 'email90@gmail.com', 151, '', 0, 1),
('user91', 'pass91', 'email91@gmail.com', 152, '', 0, 1),
('user92', 'pass92', 'email92@gmail.com', 153, '', 0, 1),
('user93', 'pass93', 'email93@gmail.com', 154, '', 0, 1),
('user94', 'pass94', 'email94@gmail.com', 155, '', 0, 1),
('user95', 'pass95', 'email95@gmail.com', 156, '', 0, 1),
('user96', 'pass96', 'email96@gmail.com', 157, '', 0, 1),
('user97', 'pass97', 'email97@gmail.com', 158, '', 0, 1),
('user98', 'pass98', 'email98@gmail.com', 159, '', 0, 1),
('user99', 'pass99', 'email99@gmail.com', 160, '', 0, 1),
('user999', '$2y$10$VtX3ngVBQdHCMsHyeJb3POIC53QVaB4.eS9LIfYNpQdp/reD/51pe', 'user999@gmail.com', 175, 'JY3NWqq599cP4gmIcoVZAKX9OOEqJa1aMg4hyt1Ns2sT2JV72CnnpJnD8ycB', NULL, 0);

-- --------------------------------------------------------

--
-- Structure for view `alldata`
--
DROP TABLE IF EXISTS `alldata`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `alldata`  AS  select `pricedata`.`gasStationID` AS `gasStationID`,`gasstations`.`gasStationAddress` AS `gasStationAddress`,`pricedata`.`fuelTypeID` AS `fuelTypeID`,`pricedata`.`fuelSubTypeID` AS `fuelSubTypeID`,`pricedata`.`fuelNormalName` AS `fuelNormalName`,`pricedata`.`fuelName` AS `fuelName`,`pricedata`.`fuelPrice` AS `fuelPrice`,`pricedata`.`dateUpdated` AS `dateUpdated`,`pricedata`.`isPremium` AS `isPremium`,`gasstations`.`gasStationLat` AS `gasStationLat`,`gasstations`.`gasStationLong` AS `gasStationLong`,`gasstations`.`fuelCompID` AS `fuelCompID`,`gasstations`.`fuelCompNormalName` AS `fuelCompNormalName`,`gasstations`.`gasStationOwner` AS `gasStationOwner`,`gasstations`.`ddID` AS `ddID`,`gasstations`.`ddNormalName` AS `ddNormalName`,`gasstations`.`municipalityID` AS `municipalityID`,`gasstations`.`municipalityNormalName` AS `municipalityNormalName`,`gasstations`.`countyID` AS `countyID`,`gasstations`.`countyName` AS `countyName`,`gasstations`.`phone1` AS `phone1` from (`pricedata` join `gasstations`) where (`gasstations`.`id` = `pricedata`.`gasStationID`) ;

-- --------------------------------------------------------

--
-- Structure for view `min_price`
--
DROP TABLE IF EXISTS `min_price`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `min_price`  AS  select `pricedata`.`fuelTypeID` AS `fuelTypeID`,`pricedata`.`fuelNormalName` AS `fuelNormalName`,min(`pricedata`.`fuelPrice`) AS `min_price` from `pricedata` group by `pricedata`.`fuelTypeID`,`pricedata`.`fuelNormalName` ;

-- --------------------------------------------------------

--
-- Structure for view `stationsbycompany`
--
DROP TABLE IF EXISTS `stationsbycompany`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `stationsbycompany`  AS  select `gasstations`.`fuelCompNormalName` AS `company`,count(`gasstations`.`id`) AS `number` from `gasstations` group by `gasstations`.`fuelCompNormalName` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gasstations`
--
ALTER TABLE `gasstations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `pricedata`
--
ALTER TABLE `pricedata`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index2` (`gasStationID`,`fuelTypeID`,`fuelSubTypeID`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`pricedata_id`,`users_id`,`gasstations_id`) USING BTREE,
  ADD KEY `fk_transaction_pricedata1` (`pricedata_id`) USING BTREE,
  ADD KEY `fk_transaction_users_id` (`users_id`) USING BTREE,
  ADD KEY `fk_transaction_gasstations` (`gasstations_id`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`name`) USING BTREE,
  ADD KEY `id` (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pricedata`
--
ALTER TABLE `pricedata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=609;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `pricedata`
--
ALTER TABLE `pricedata`
  ADD CONSTRAINT `fk_pricedata_gasstations` FOREIGN KEY (`gasStationID`) REFERENCES `gasstations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `fk_transaction_gasstation` FOREIGN KEY (`gasstations_id`) REFERENCES `gasstations` (`id`),
  ADD CONSTRAINT `fk_transaction_pricedata1` FOREIGN KEY (`pricedata_id`) REFERENCES `pricedata` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_transaction_user_id` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
