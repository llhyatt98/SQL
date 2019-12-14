
-- Create schema dist_base

CREATE DATABASE IF NOT EXISTS dist_base;
USE dist_base;

-- Definition of table `dist_base`.`employees`

DROP TABLE IF EXISTS `dist_base`.`employees`;
CREATE TABLE  `dist_base`.`employees` (
  `employeeID` integer NOT NULL,
  `firstName` char(15) NOT NULL,
  `lastName` char(15) NOT NULL,
  `email` char(30) NOT NULL default '',
  `jobTitle` char(15) default NULL,
  `officeCode` integer NOT NULL,
  `supervisor` integer,
  PRIMARY KEY (`employeeID`)
  -- FOREIGN KEY (`officeCode`) offices(`officeCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `dist_base`.`employees` VALUES
 (0001,'Bill', 'Nye', 'bill@gmail.com', 'scientist', 001, 0002),
 (0002,'John', 'Roger', 'john@warehouse.com', 'engineer', 002, 0004),
 (0003,'Will', 'Smith', 'will@gmail.com', 'architect', 003, 0002),
 (0004,'Steve', 'Balmer', 'steve@gmail.com', 'mechanic', 004, 00010),
 (0005,'Matt', 'Sayer', 'sayer@yahoo.com', 'scientist', 001, 0002),
 (0006,'Willis', 'Kidney', 'willis@yahoo.com', 'scientist', 001, 0005),
 (0007,'Rick', 'Newberry', 'berry@gmail.com', 'janitor', 005, 0005),
 (0008,'Alex', 'Dicker', 'alex@gmail.com', 'engineer', 002, 0002),
 (0009,'Nick', 'Licker', 'lick@gmail.com', 'mechanic', 004, 0008),
 (0010,'Bubby', 'Bubbers', 'bubs@mybubs.com', 'janitor', 005, NULL);


/********************************************************************************************/
/********************************************************************************************/

-- Definition of table `dist_base`.`offices`

DROP TABLE IF EXISTS `dist_base`.`offices`;
CREATE TABLE  `dist_base`.`offices` (
  `officeCode` integer NOT NULL,
  `city` char(15),
  `phone` char(10),
  `address` char(30) default '',
  `state` char(2),
  `country` char(4),
  `postalCode` char(5),
  PRIMARY KEY (`officeCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `dist_base`.`offices` VALUES
 (001, 'Salem', '5031467782', '222 Science Rd', 'OR', 'US', '97203'),
 (002, 'Eugene', '5031467794', '111 Engine St', 'OR', 'US', '97204'),
 (003, 'Portland', '5031467321', '333 Architect Rd', 'OR', 'US', '97205'),
 (004, 'Woodburn', '5031467412', '444 Mechanic Rd', 'OR', 'US', '97206'),
 (005, 'Seattle', '5031467451', '555 Janitor St', 'WA', 'US', '97207');


/********************************************************************************************/
/********************************************************************************************/


-- Definition of table `dist_base`.`payments`

DROP TABLE IF EXISTS `dist_base`.`payments`;
CREATE TABLE  `dist_base`.`payments` (
  `customerID` integer NOT NULL,
  `checkNum` char(30) NOT NULL,
  `payDate` date,
  `amount` decimal(10,2),
  PRIMARY KEY (`checkNum`)
  -- FOREIGN KEY (`customerID`) customers(`customerID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `dist_base`.`payments` VALUES
 (0001, '0001', '1998-08-28', 20.00),
 (0001, '0002', '1999-09-09', 5.00),
 (0001, '0003', '2001-10-07', 2.00),
 (0002, '0004', '2005-01-09', 25.00),
 (0002, '0005', '2010-02-01', 10.00),
 (0003, '0006', '1997-05-15', 3.99),
 (0017, '0007', '1999-06-05', 5.10),
 (0003, '0008', '2001-06-01', 2.50),
 (0018, '0009', '2005-06-03', 11.00),
 (0019, '0010', '2006-10-03', 100.00),
 (0005, '0011', '1991-11-01', 31.00),
 (0006, '0012', '1991-10-19', 121.00),
 (0006, '0013', '1994-11-20', 20.00),
 (0007, '0014', '2002-01-24', 30.80),
 (0008, '0015', '2001-02-25', 33.80),
 (0002, '0016', '2001-03-21', 41.40),
 (0009, '0017', '2003-03-21', 53.44),
 (0009, '0018', '2004-01-19', 76.44),
 (0010, '0019', '2004-08-16', 54.10),
 (0010, '0020', '2003-08-15', 24.19),
 (0011, '0021', '2002-09-13', 36.13),
 (0018, '0022', '1998-02-13', 37.12),
 (0017, '0023', '2002-03-09', 30.01),
 (0015, '0024', '2005-03-08', 38.90),
 (0014, '0025', '1996-06-21', 334.90),
 (0013, '0026', '2005-06-15', 63.24),
 (0011, '0027', '2002-04-05', 324.05),
 (0005, '0028', '1996-05-16', 35.56),
 (0007, '0029', '1996-06-17', 35.78),
 (0013, '0030', '2002-03-13', 363.22),
 (0001, '0031', '2005-01-11', 23.10),
 (0016, '0032', '1998-01-10', 343.60),
 (0017, '0033', '2005-11-21', 213.70),
 (0006, '0034', '2005-10-16', 442.80),
 (0018, '0035', '2003-12-21', 23.11),
 (0007, '0036', '1998-12-15', 345.00),
 (0005, '0037', '1995-12-16', 23.00),
 (0005, '0038', '1996-12-21', 334.00),
 (0009, '0039', '2005-04-13', 142.95),
 (0009, '0040', '1998-04-28', 54.15),
 (0011, '0041', '2005-04-21', 60.17),
 (0012, '0042', '2003-11-21', 386.10),
 (0019, '0043', '2003-12-15', 86.30),
 (0012, '0044', '2005-10-09', 75.40),
 (0013, '0045', '1998-10-04', 31.55),
 (0018, '0046', '1999-10-01', 450.67),
 (0015, '0047', '2003-09-03', 351.10),
 (0015, '0048', '2005-09-21', 314.99),
 (0014, '0049', '2002-09-19', 35.99),
 (0013, '0050', '2005-10-21', 51.99),
 (0014, '0051', '2002-11-30', 99.99),
 (0002, '0052', '2001-04-15', 111.11);


/********************************************************************************************/
/********************************************************************************************/



-- Definition of table `dist_base`.`customers`

DROP TABLE IF EXISTS `dist_base`.`customers`;
CREATE TABLE  `dist_base`.`customers` (
  `customerID` integer NOT NULL,
  `customerName` char(30) NOT NULL,
  `phone` char(10),
  `address` char(30),
  `city` char(15),
  `state` char(2),
  `postalCode` char(5),
  `country` char(4),
  `repEmployeeID` integer,
  PRIMARY KEY (`customerID`)
  -- FOREIGN KEY (`repEmployeeID`) employees(`employeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `dist_base`.`customers` VALUES
 (0001, 'John Smith', '5035089071', '2442 Baxter Rd', 'Salem', 'OR', '97302', 'US', 0001),
 (0002, 'Will Richard', '5035082222', '2222 Hello Rd', 'Eugene', 'OR', '97205', 'US', 0001),
 (0003, 'Alex Jones', '5035047829', '211 Street Rd', 'Eugene', 'OR', '97205', 'US', 0002),
 (0004, 'Josh Daniels', '5035089012', '2232 Way Rd', 'Seattle', 'WA', '92106', 'US', 0003),
 (0005, 'Nathan Smith', '5035089872', '1221 Google St', 'Seattle', 'WA', '92106', 'US', 0004),
 (0006, 'Mike Anthony', '5129876482', '2421 My St', 'Eugene', 'OR', '97205', 'US', 0004),
 (0007, 'Michael Rogers', '5128976551', '4213 Eller Rd', 'Woodburn', 'OR', '97306', 'US', 0005),
 (0008, 'Rudson McKinley', '5120998989', '2231 X-Mas Rd', 'Seattle', 'WA', '92106', 'US', 0005),
 (0009, 'Roger Rogers', '5030987654', '7863 Yahoo Rd', 'Salem', 'OR', '97306', 'US', 0001),
 (0010, 'Wesley Hudson', '5112223333', '1253 Yesman Rd', 'Seattle', 'WA', '92106', 'US', 0010),
 (0011, 'Rudolph Stand', '1112223333', '0987 Find St', 'Eugene', 'OR', '97205', 'US', 0009),
 (0012, 'Hello World', '9998887777', '2342 Bing Ave', 'Medford', 'OR', '91056', 'US', 0008),
 (0013, 'Mikey Meyers', '5035998888', '1111 Microhard Way', 'Woodburn', 'OR', '91346', 'US', 0007),
 (0014, 'Missly Misses', '5037770071', '3333 Orange Ave', 'Eugene', 'OR', '97205', 'US', 0014),
 (0015, 'Tyler Smith', '5134567891', '9999 Apple Blvd', 'Seattle', 'WA', '92106', 'US', 0012),
 (0016, 'Ricardo Garcia', '6448975671', '1231 Blue Dr', 'Salem', 'OR', '92312', 'US', 0019),
 (0017, 'Mitch Ronney', '6584991945', '1445 Signet St', 'Eugene', 'OR', '94213', 'US', 0013),
 (0018, 'Ricky Rupa', '2234518907', '123 Street St', 'Olympia', 'WA', '95421', 'US', 0015),
 (0019, 'Anthony Simmons', '9876574489', '3145 Negative Way', 'Bellevue', 'WA', '95542', 'US', 0015);



/********************************************************************************************/
/********************************************************************************************/


-- Definition of table `dist_borderDetails`

DROP TABLE IF EXISTS `dist_base`.`orders`;
CREATE TABLE  `dist_base`.`orders` (
  `orderNum` integer NOT NULL,
  `orderDate` date NOT NULL,
  `shipDate` date,
  `status` char(30),
  `customerID` int,
  PRIMARY KEY (`orderNum`)
  -- FOREIGN KEY (`customerID`) customers(`customerID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `dist_base`.`orders` VALUES
 (0001, '2005-08-20', '2005-08-22', 'Pending', 0001),
 (0002, '2003-01-20', '2003-01-22', 'Delivered', 0009),
 (0003, '2005-11-11', '2005-11-22', 'Returned', 0009),
 (0004, '2003-12-01', '2003-12-22', 'Delivered', 0011),
 (0005, '2001-11-10', '2001-12-01', 'Returned', 0001),
 (0006, '2003-08-20', '2003-08-25', 'Delivered', 0011),
 (0007, '2002-08-20', '2002-08-26', 'Returned', 0014),
 (0008, '2003-08-20', '2003-08-29', 'Delivered', 0012),
 (0009, '2003-08-20', '2003-09-22', 'Returned', 0013),
 (0010, '2004-08-20', '2005-10-22', 'Delivered', 0005),
 (0011, '2008-08-14', '2008-08-19', 'Returned', 0007),
 (0012, '1999-09-20', '2001-01-10', 'Delivered', 0002),
 (0013, '1999-11-20', '2001-01-10', 'Delivered', 0003),
 (0014, '1997-11-10', '1998-03-10', 'Returned', 0015),
 (0015, '1995-10-21', '1996-12-10', 'Delivered', 0006),
 (0016, '1991-12-21', '1992-01-05', 'Pending', 0009),
 (0017, '1992-12-24', '1991-06-07', 'Returned', 0009),
 (0018, '1995-03-25', '1996-07-10', 'Delivered', 0011),
 (0019, '1995-04-25', '1995-05-26', 'Delivered', 0012),
 (0020, '1997-05-12', '1997-05-12', 'Delivered', 0014),
 (0021, '2008-06-15', '2009-07-16', 'Returned', 0005),
 (0022, '1998-06-14', '1999-08-22', 'Pending', 0005),
 (0023, '1994-06-13', '2001-11-10', 'Delivered', 0015),
 (0024, '1995-05-15', '2007-06-22', 'Delivered', 0004),
 (0025, '2009-09-15', '2010-08-19', 'Returned', 0003),
 (0026, '1999-09-15', '2001-11-21', 'Delivered', 0004),
 (0027, '2004-09-15', '2006-06-22', 'Delivered', 0018),
 (0028, '1999-09-15', '2001-03-15', 'Delivered', 0019),
 (0029, '2003-09-15', '2005-01-01', 'Delivered', 0017),
 (0030, '1995-09-15', '2005-11-06', 'Returned', 0003),
 (0031, '2009-09-15', '2011-02-06', 'Delivered', 0005),
 (0032, '2004-09-15', '2004-04-17', 'Pending', 0004),
 (0033, '2003-09-15', '2006-08-17', 'Returned', 0007),
 (0034, '1995-09-15', '1996-11-11', 'Pending', 0007),
 (0035, '1999-09-15', '1999-12-12', 'Delivered', 0016),
 (0036, '2009-09-15', '2010-04-12', 'Pending', 0017),
 (0037, '1995-09-15', '1996-08-05', 'Delivered', 0019),
 (0038, '2009-09-15', '2010-08-13', 'Returned', 0018),
 (0039, '2003-09-15', '2004-02-08', 'Delivered', 0013),
 (0040, '1995-09-15', '1996-05-15', 'Delivered', 0015),
 (0041, '2004-09-15', '2005-06-08', 'Pending', 0017),
 (0042, '1999-09-15', '2001-07-01', 'Returned', 0016),
 (0043, '2003-09-15', '2004-11-15', 'Pending', 0014);


/********************************************************************************************/
/********************************************************************************************/


-- Definition of table `dist_base`.`orderDetails`

DROP TABLE IF EXISTS `dist_base`.`orderDetails`;
CREATE TABLE  `dist_base`.`orderDetails` (
  `orderNum` integer NOT NULL,
  `productCode` integer NOT NULL,
  `quantity` integer,
  `price` decimal(10,2)
  -- FOREIGN KEY (`orderNum`) orders(`orderNum`)
  -- FOREIGN KEY (`productCode`) products(`productCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `dist_base`.`orderDetails` VALUES
 (0001, 1, 11, 1309.11),
 (0002, 2, 22, 880.14),
 (0003, 2, 12, 480.51),
 (0004, 2, 11, 560.64),
 (0005, 3, 50, 890.26),
 (0006, 3, 10, 131.04),
 (0007, 5, 3, 114.06),
 (0008, 5, 22, 141.60),
 (0009, 2, 33, 599.26),
 (0010, 1, 44, 5236.62),
 (0011, 6, 55, 550.62),
 (0012, 6, 100, 1581.22),
 (0013, 5, 11, 1993.06),
 (0014, 7, 14, 1400.31),
 (0015, 9, 51, 513.13),
 (0016, 7, 22, 693.31),
 (0017, 9, 34, 1103.53),
 (0018, 8, 16, 1405.50),
 (0019, 2, 19, 1001.10),
 (0020, 1, 20, 689.51),
 (0021, 5, 30, 615.19),
 (0022, 4, 90, 2313.31),
 (0023, 6, 11, 1312.13),
 (0024, 5, 15, 414.51),
 (0025, 7, 41, 1951.13),
 (0026, 2, 22, 5612.16),
 (0027, 13, 21, 231.17),
 (0028, 12, 35, 341.19),
 (0029, 11, 41, 515.13),
 (0030, 4, 26, 2831.33),
 (0031, 4, 29, 3123.46),
 (0032, 10, 30, 413.73),
 (0033, 9, 31, 514.32),
 (0034, 8, 15, 5156.64),
 (0035, 7, 16, 414.21),
 (0036, 9, 12, 515.15),
 (0037, 5, 33, 625.51),
 (0038, 10, 41, 789.13),
 (0039, 9, 14, 1553.41),
 (0040, 8, 15, 6537.74),
 (0041, 8, 19, 525.52),
 (0042, 9, 22, 1301.52),
 (0043, 10, 19, 4021.13);



/********************************************************************************************/
/********************************************************************************************/


-- Definition of table `dist_base`.`products`

DROP TABLE IF EXISTS `dist_base`.`products`;
CREATE TABLE  `dist_base`.`products` (
  `productCode` integer NOT NULL,
  `productName` char(15),
  `productDesc` char(30),
  `quantityInStock` int,
  `priceBought` decimal(10,2),
  `MSRP` decimal(10,2),
  PRIMARY KEY (`productCode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `dist_base`.`products` VALUES
 (1, 'door', 'door for house', 387, 15.00, 119.00),
 (2, 'window', 'window for house', 510, 19.99, 40.00),
 (3, 'cabinet', 'multi-purpose cabinet', 30, 40.00, 200.00),
 (4, 'frame', 'frame for windows', 499, 12.90, 31.00),
 (5, 'flooring', 'utility floors', 512, 50.00, 200.00),
 (6, 'trim', 'trim for house', 764, 15.00, 32.99),
 (7, 'desk', 'office desk', 87, 33.00, 150.00),
 (8, 'lamp', 'standard lamp', 185, 15.00, 60.00),
 (9, 'light', 'bedroom light fixture', 223, 15.00, 60.00),
 (10, 'couch', 'living room furniture', 67, 50.00, 400.00),
 (11, 'rug', 'large persian rug', 44, 99.00, 500.00),
 (12, 'chandelier', 'ceiling light fixture', 13, 150.00, 1000.00),
 (13, 'shades', 'novelty window shades', 56, 14.00, 70.00);


/********************************************************************************************/
/********************************************************************************************/





