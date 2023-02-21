--
-- Database: `meowdb`
--
CREATE DATABASE IF NOT EXISTS `meowdb` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `meowdb`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `adminName` varchar(100) NOT NULL,
  `adminPass` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELATIONSHIPS FOR TABLE `admin`:
--

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `adminName`, `adminPass`) VALUES
(1, 'Sadeem', '111'),
(2, 'Noor', '222'),
(3, 'Sara', '333');

-- --------------------------------------------------------

--
-- Table structure for table `adopt`
--

DROP TABLE IF EXISTS `adopt`;
CREATE TABLE `adopt` (
  `id` int(11) NOT NULL,
  `catID` int(11) NOT NULL,
  `catName` varchar(100) NOT NULL,
  `adoptionDate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELATIONSHIPS FOR TABLE `adopt`:
--   `catID`
--       `catinfo` -> `ID`
--

--
-- Dumping data for table `adopt`
--

INSERT INTO `adopt` (`id`, `catID`, `catName`, `adoptionDate`) VALUES
(1, 28, 'Bonnie', '0000-00-00'),
(2, 31, 'Bunny', '0000-00-00'),
(3, 35, 'Leo.', '0000-00-00'),
(4, 38, 'Max.', '0000-00-00'),
(5, 39, 'Simba.', '0000-00-00'),
(6, 42, 'Dexter', '0000-00-00'),
(7, 43, 'Diego', '0000-00-00'),
(8, 44, 'Domino', '0000-00-00'),
(9, 46, 'Duncan', '0000-00-00'),
(10, 49, 'Eddie', '0000-00-00'),
(11, 50, 'Einstein', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
CREATE TABLE `bill` (
  `id` int(11) NOT NULL,
  `adminID` int(11) NOT NULL,
  `serviceName` varchar(100) NOT NULL,
  `servicePrice` decimal(10,0) NOT NULL,
  `cash` decimal(10,0) NOT NULL,
  `subtotal` decimal(10,0) NOT NULL,
  `total` decimal(10,0) NOT NULL,
  `change` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELATIONSHIPS FOR TABLE `bill`:
--   `adminID`
--       `admin` -> `id`
--

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`id`, `adminID`, `serviceName`, `servicePrice`, `cash`, `subtotal`, `total`, `change`) VALUES
(1, 1, 'Clinic', '52', '100', '52', '52', '48'),
(2, 2, 'Gym', '72', '80', '72', '72', '8'),
(3, 3, 'Adoption', '0', '0', '0', '0', '0'),
(4, 1, 'Gym', '65', '70', '65', '65', '5'),
(5, 2, 'Adoption', '0', '0', '0', '0', '0'),
(6, 3, 'Clinic', '55', '55', '55', '55', '0'),
(7, 1, 'Gym', '62', '80', '62', '62', '18'),
(8, 2, 'Adoption', '0', '0', '0', '0', '0'),
(9, 3, 'Clinic', '73', '100', '73', '73', '27');

-- --------------------------------------------------------

--
-- Table structure for table `breed`
--

DROP TABLE IF EXISTS `breed`;
CREATE TABLE `breed` (
  `id` int(11) NOT NULL,
  `breedName` varchar(100) NOT NULL,
  `notes` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- RELATIONSHIPS FOR TABLE `breed`:
--

--
-- Dumping data for table `breed`
--

INSERT INTO `breed` (`id`, `breedName`, `notes`) VALUES
(1, 'Chartreux', ''),
(2, 'Birman', ''),
(3, 'Bombay', ''),
(4, 'Burmese', ''),
(5, 'Exotic Short hair', ''),
(6, 'Himalayan', ''),
(7, 'Munchkin', ''),
(8, 'Persian', ''),
(9, 'Ragdoll', '');

-- --------------------------------------------------------

--
-- Table structure for table `catinfo`
--

DROP TABLE IF EXISTS `catinfo`;
CREATE TABLE `catinfo` (
  `ID` int(11) NOT NULL,
  `breedID` int(11) NOT NULL,
  `catName` varchar(100) NOT NULL,
  `Gender` varchar(1) NOT NULL,
  `Color` int(11) NOT NULL,
  `dob` varchar(10) NOT NULL,
  `price` int(11) NOT NULL,
  `weight` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELATIONSHIPS FOR TABLE `catinfo`:
--   `breedID`
--       `breed` -> `id`
--

--
-- Dumping data for table `catinfo`
--

INSERT INTO `catinfo` (`ID`, `breedID`, `catName`, `Gender`, `Color`, `dob`, `price`, `weight`) VALUES
(1, 1, 'Missy', 'F', 0, '15/08/2022', 100, 2),
(2, 2, 'Misty', 'F', 0, '20/11/2022', 112, 4),
(3, 3, 'Pearl', 'F', 0, '04/12/2022', 115, 3),
(4, 4, 'Penelope', 'F', 0, '15/11/2022', 124, 4),
(5, 5, 'Pinky', 'F', 0, '03/10/2022', 132, 3),
(6, 6, 'Piper', 'F', 0, '03/08/2022', 139, 2),
(7, 7, 'Pixie', 'F', 0, '14/11/2022', 147, 4),
(8, 8, 'Princess', 'F', 0, '02/11/2022', 154, 3),
(9, 9, 'Queenie', 'F', 0, '04/12/2022', 162, 4),
(10, 1, 'Rainbow', 'F', 0, '21/08/2022', 169, 3),
(11, 2, 'Raven', 'F', 0, '10/10/2022', 177, 2),
(12, 3, 'Roxy', 'F', 0, '02/09/2022', 184, 4),
(13, 4, 'Sasha', 'F', 0, '13/11/2022', 192, 3),
(14, 5, 'Scarlett', 'F', 0, '02/10/2022', 199, 4),
(15, 6, 'Smooches', 'F', 0, '30/10/2022', 250, 3),
(16, 7, 'Stormy', 'F', 0, '31/12/2022', 250, 2),
(17, 8, 'Summer', 'F', 0, '29/09/2022', 250, 4),
(18, 9, 'Sunny', 'F', 0, '08/10/2022', 250, 3),
(19, 1, 'Suzy', 'F', 0, '06/12/2022', 250, 4),
(20, 2, 'Violet', 'F', 0, '04/12/2022', 250, 3),
(21, 3, 'Ally', 'F', 0, '11/11/2022', 250, 2),
(22, 4, 'Amelia', 'F', 0, '30/12/2022', 250, 4),
(23, 5, 'Angel', 'F', 0, '20/11/2022', 250, 3),
(24, 6, 'Ava', 'F', 0, '22/11/2022', 250, 4),
(25, 7, 'Baby', 'F', 0, '02/08/2022', 250, 3),
(26, 8, 'Bessie', 'F', 0, '08/11/2022', 250, 2),
(27, 9, 'Blitz', 'F', 0, '28/11/2022', 250, 4),
(28, 1, 'Bonnie', 'F', 0, '03/08/2022', 304, 3),
(29, 2, 'Bubbly', 'F', 0, '18/12/2022', 312, 4),
(30, 3, 'Buffy', 'F', 0, '18/08/2022', 319, 3),
(31, 4, 'Bunny', 'F', 0, '15/08/2022', 327, 2),
(32, 5, 'Callie', 'F', 0, '07/08/2022', 334, 4),
(33, 6, 'Cassie', 'F', 0, '25/12/2022', 342, 3),
(34, 7, 'Oliver.', 'F', 0, '06/08/2022', 349, 4),
(35, 8, 'Leo.', 'F', 0, '10/10/2022', 357, 3),
(36, 9, 'Milo.', 'M', 0, '22/11/2022', 364, 2),
(37, 1, 'Charlie.', 'M', 0, '03/12/2022', 372, 4),
(38, 2, 'Max.', 'M', 0, '19/08/2022', 379, 3),
(39, 3, 'Simba.', 'M', 0, '24/11/2022', 387, 4),
(40, 4, 'Jack.', 'M', 0, '05/09/2022', 394, 3),
(41, 5, 'Loki.', 'M', 0, '16/11/2022', 402, 2),
(42, 6, 'Dexter', 'M', 0, '23/12/2022', 409, 4),
(43, 7, 'Diego', 'M', 0, '26/11/2022', 417, 3),
(44, 8, 'Domino', 'M', 0, '02/09/2022', 424, 4),
(45, 9, 'Duke', 'M', 0, '03/12/2022', 432, 3),
(46, 1, 'Duncan', 'M', 0, '10/10/2022', 439, 2),
(47, 2, 'Dusty', 'M', 0, '26/08/2022', 447, 4),
(48, 3, 'Dylan', 'M', 0, '04/08/2022', 454, 3),
(49, 4, 'Eddie', 'M', 0, '03/11/2022', 462, 4),
(50, 5, 'Einstein', 'M', 0, '05/12/2022', 469, 3),
(51, 6, 'Eli', 'M', 0, '25/12/2022', 477, 2),
(52, 7, 'Elvis', 'M', 0, '14/08/2022', 484, 4),
(53, 8, 'Ernie', 'M', 0, '04/08/2022', 492, 3),
(54, 9, 'Felix', 'M', 0, '05/09/2022', 499, 4),
(55, 1, 'Figaro', 'M', 0, '31/10/2022', 507, 3),
(56, 2, 'Finn', 'M', 0, '10/12/2022', 514, 2),
(57, 3, 'Finnegan', 'M', 0, '24/10/2022', 522, 4),
(58, 4, 'Fluffy', 'M', 0, '15/08/2022', 529, 3),
(59, 5, 'Frank', 'M', 0, '04/08/2022', 537, 4),
(60, 6, 'Frankie', 'M', 0, '25/11/2022', 544, 3),
(61, 7, 'Franklin', 'M', 0, '18/08/2022', 552, 2),
(62, 8, 'Fred', 'M', 0, '05/11/2022', 559, 4),
(63, 9, 'Freddie', 'M', 0, '19/11/2022', 567, 3),
(64, 2, 'Freddy', 'M', 0, '02/12/2022', 574, 4);

-- --------------------------------------------------------

--
-- Table structure for table `clinic`
--

DROP TABLE IF EXISTS `clinic`;
CREATE TABLE `clinic` (
  `id` int(11) NOT NULL,
  `appointment` varchar(12) NOT NULL,
  `servicePrice` int(11) NOT NULL,
  `catid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELATIONSHIPS FOR TABLE `clinic`:
--   `catid`
--       `catinfo` -> `ID`
--

--
-- Dumping data for table `clinic`
--

INSERT INTO `clinic` (`id`, `appointment`, `servicePrice`, `catid`) VALUES
(1, '5pm', 55, 5),
(2, '4pm', 44, 6),
(3, '7pm', 44, 12),
(4, '11am', 47, 12),
(5, '5pm', 99, 8),
(6, '3pm', 34, 44),
(7, '5pm', 99, 34),
(8, '3pm', 22, 11),
(9, '7pm', 55, 56),
(10, '11am', 44, 37),
(11, '3pm', 34, 14);

-- --------------------------------------------------------

--
-- Table structure for table `customerinfo`
--

DROP TABLE IF EXISTS `customerinfo`;
CREATE TABLE `customerinfo` (
  `id` int(11) NOT NULL,
  `adminID` int(11) NOT NULL,
  `customerName` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `tel` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELATIONSHIPS FOR TABLE `customerinfo`:
--   `adminID`
--       `admin` -> `id`
--

--
-- Dumping data for table `customerinfo`
--

INSERT INTO `customerinfo` (`id`, `adminID`, `customerName`, `email`, `address`, `tel`) VALUES
(1, 1, 'customerName', 'email', 'address', 'tel'),
(2, 2, 'Sara', 'Sara@Sara.COM', 'Sara My Address', '456789'),
(3, 3, 'Marwa', 'Marwa@Marwa.COM', 'Marwa My Address', '790122'),
(4, 1, 'Taha', 'Taha@Taha.COM', 'Taha My Address', '1123455'),
(5, 2, 'Ahmed', 'Ahmed@Ahmed.COM', 'Ahmed My Address', '1456788'),
(6, 3, 'Saad', 'Saad@Saad.COM', 'Saad My Address', '1790121'),
(7, 1, 'Aser', 'Aser@Aser.COM', 'Aser My Address', '2123454'),
(8, 1, 'Sara2', 'Sara2@Sara2.com', 'Sara2 Avenue ', ''),
(9, 2, 'Noora', 'Noora@Noora.com', 'Noora Bolivard', '');

-- --------------------------------------------------------

--
-- Table structure for table `gym`
--

DROP TABLE IF EXISTS `gym`;
CREATE TABLE `gym` (
  `id` int(11) NOT NULL,
  `catID` int(11) NOT NULL,
  `catName` varchar(100) NOT NULL,
  `sessionDateTime` varchar(50) NOT NULL,
  `sessionPrice` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELATIONSHIPS FOR TABLE `gym`:
--   `catID`
--       `catinfo` -> `ID`
--

--
-- Dumping data for table `gym`
--

INSERT INTO `gym` (`id`, `catID`, `catName`, `sessionDateTime`, `sessionPrice`) VALUES
(1, 20, 'Sasha', '28/11/2022', 50),
(2, 33, 'Stormy', '28/11/2022', 30),
(3, 1, 'Violet', '28/11/2022', 55),
(4, 2, 'Ava', '28/11/2022', 75),
(5, 27, 'Blitz', '28/11/2022', 58),
(6, 29, 'Bubbly', '18/12/2022', 100),
(7, 34, 'Oliver.', '06/08/2022', 55),
(8, 39, 'Simba.', '24/11/2022', 54),
(9, 41, 'Loki.', '16/11/2022', 64);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adopt`
--
ALTER TABLE `adopt`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catID` (`catID`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminID` (`adminID`);

--
-- Indexes for table `breed`
--
ALTER TABLE `breed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catinfo`
--
ALTER TABLE `catinfo`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `breedID` (`breedID`);

--
-- Indexes for table `clinic`
--
ALTER TABLE `clinic`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`);

--
-- Indexes for table `customerinfo`
--
ALTER TABLE `customerinfo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminID` (`adminID`);

--
-- Indexes for table `gym`
--
ALTER TABLE `gym`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catID` (`catID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `adopt`
--
ALTER TABLE `adopt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `breed`
--
ALTER TABLE `breed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `catinfo`
--
ALTER TABLE `catinfo`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `clinic`
--
ALTER TABLE `clinic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `customerinfo`
--
ALTER TABLE `customerinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `gym`
--
ALTER TABLE `gym`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `adopt`
--
ALTER TABLE `adopt`
  ADD CONSTRAINT `adopt_ibfk_1` FOREIGN KEY (`catID`) REFERENCES `catinfo` (`ID`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `bill_ibfk_1` FOREIGN KEY (`adminID`) REFERENCES `admin` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `catinfo`
--
ALTER TABLE `catinfo`
  ADD CONSTRAINT `catinfo_ibfk_1` FOREIGN KEY (`breedID`) REFERENCES `breed` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `clinic`
--
ALTER TABLE `clinic`
  ADD CONSTRAINT `clinic_ibfk_1` FOREIGN KEY (`catid`) REFERENCES `catinfo` (`ID`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `customerinfo`
--
ALTER TABLE `customerinfo`
  ADD CONSTRAINT `customerinfo_ibfk_1` FOREIGN KEY (`adminID`) REFERENCES `admin` (`id`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `gym`
--
ALTER TABLE `gym`
  ADD CONSTRAINT `gym_ibfk_1` FOREIGN KEY (`catID`) REFERENCES `catinfo` (`ID`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

SELECT * FROM `gym`;

UPDATE `gym` SET `sessionPrice` = '100' WHERE `gym`.`id` = 6;

SELECT * FROM `customerinfo`;

INSERT INTO `customerinfo` (`id`, `adminID`, `customerName`, `email`, `address`, `tel`) VALUES (NULL, '1', 'Sara2', 'Sara2@Sara2.com', 'Sara2 Avenue ', '654987'), (NULL, '2', 'Noora', 'Noora@Noora.com', 'Noora Avenue', '957864');

UPDATE `customerinfo` SET `address` = 'Noora Bolivard' WHERE `customerinfo`.`id` = 9;

SELECT * FROM `catinfo`

SELECT * FROM `catinfo` ORDER BY `catinfo`.`price` ASC

SELECT catName, price FROM `catinfo` WHERE `price` > 200;

/* Showing rows 0 - 24 (50 total, Query took 0.0030 seconds.)*/ 
/*
catName   price 
Smooches  207
Stormy    214
Summer    222
Sunny     229
Suzy      237
Violet    244
Ally      252
Amelia    259
Angel     267
Ava       274
Baby      282
Bessie    289
Blitz     297
Bonnie    304
Bubbly    312
Buffy     319
Bunny     327
Callie    334
Cassie    342
Oliver.   349
Leo.      357
Milo.     364
Charlie.  372
Max.      379
Simba.    387
*/

UPDATE `catinfo` SET `price`='250'WHERE `price` >200 and `price`< 300;


SELECT * FROM `catinfo` WHERE price >= 200 ORDER BY `price` ASC;
/*

 Showing rows 0 - 24 (50 total, Query took 0.0032 seconds.) [price: 250... - 387...]
ID  breedID catName Gender  Color dob price     weight  
15  6 Smooches  F 0 30/10/2022  250 3 
26  8 Bessie  F 0 08/11/2022  250 2 
25  7 Baby  F 0 02/08/2022  250 3 
24  6 Ava F 0 22/11/2022  250 4 
23  5 Angel F 0 20/11/2022  250 3 
22  4 Amelia  F 0 30/12/2022  250 4 
21  3 Ally  F 0 11/11/2022  250 2 
20  2 Violet  F 0 04/12/2022  250 3 
19  1 Suzy  F 0 06/12/2022  250 4 
18  9 Sunny F 0 08/10/2022  250 3 
17  8 Summer  F 0 29/09/2022  250 4 
16  7 Stormy  F 0 31/12/2022  250 2 
27  9 Blitz F 0 28/11/2022  250 4 
28  1 Bonnie  F 0 03/08/2022  304 3 
29  2 Bubbly  F 0 18/12/2022  312 4 
30  3 Buffy F 0 18/08/2022  319 3 
31  4 Bunny F 0 15/08/2022  327 2 
32  5 Callie  F 0 07/08/2022  334 4 
33  6 Cassie  F 0 25/12/2022  342 3 
34  7 Oliver. F 0 06/08/2022  349 4 
35  8 Leo.  F 0 10/10/2022  357 3 
36  9 Milo. M 0 22/11/2022  364 2 
37  1 Charlie.  M 0 03/12/2022  372 4 
38  2 Max.  M 0 19/08/2022  379 3 
39  3 Simba.  M 0 24/11/2022  387 4 

*/

