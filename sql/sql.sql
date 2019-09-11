/*
SQLyog Ultimate v12.08 (64 bit)
MySQL - 5.5.60 : Database - erpdata
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`erpdata` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `erpdata`;

/*Table structure for table `chladvancegather` */

DROP TABLE IF EXISTS `chladvancegather`;

CREATE TABLE `chladvancegather` (
  `Billid` VARCHAR(20) NOT NULL COMMENT '单据号码',
  `Billdate` DATE NOT NULL COMMENT '单据日期',
  `Sinid` INT(11) NOT NULL COMMENT '单据类型singleType(sinId)',
  `Cliid` VARCHAR(50) NOT NULL COMMENT '客户编号client(cliid)',
  `Clishortname` VARCHAR(50) NOT NULL COMMENT '客户简称',
  `Currencytype` VARCHAR(50) NOT NULL COMMENT '币别',
  `Reckontypef` VARCHAR(50) NOT NULL COMMENT '结算方式一',
  `Reckontypes` VARCHAR(50) NOT NULL COMMENT '结算方式一',
  `Reckontypet` VARCHAR(50) NOT NULL COMMENT '结算方式一',
  `Reckonmoneyf` DECIMAL(10,2) NOT NULL COMMENT '金额',
  `Reckonmoneys` DECIMAL(10,2) NOT NULL COMMENT '金额',
  `Reckonmoneyt` DECIMAL(10,2) NOT NULL COMMENT '金额',
  `Gatherdiscount` DECIMAL(10,2) NOT NULL COMMENT '折扣率',
  `Gatherendaccountmonth` DATE NOT NULL COMMENT '终止帐月',
  `Empid` VARCHAR(50) NOT NULL COMMENT '业务人员编号，也就是人员编号employee(empid)',
  `Empname` VARCHAR(50) NOT NULL COMMENT '业务人员',
  `Depid` VARCHAR(50) NOT NULL COMMENT '部门编号depttab(depid)',
  `Depname` VARCHAR(50) NOT NULL COMMENT '所属部门',
  `Makeempname` VARCHAR(50) NOT NULL COMMENT '制单人员',
  `Auditingempname` VARCHAR(50) NOT NULL COMMENT '复核人员',
  `Checkstate` INT(11) NOT NULL COMMENT '审核状态',
  `Remark` VARCHAR(2000) NOT NULL COMMENT '备注',
  `Enables` INT(11) NOT NULL COMMENT '标识是否删除',
  `Safetyone` VARCHAR(50) NOT NULL COMMENT '保留字段',
  `Safetytwo` VARCHAR(50) NOT NULL COMMENT '保留字段',
  `Extend0` VARCHAR(200) DEFAULT NULL COMMENT '扩展字段0',
  `Extend1` VARCHAR(200) DEFAULT NULL COMMENT '扩展字段1',
  `Extend2` VARCHAR(200) DEFAULT NULL COMMENT '扩展字段2',
  `Extend3` VARCHAR(200) DEFAULT NULL COMMENT '扩展字段3',
  `Extend4` VARCHAR(200) DEFAULT NULL COMMENT '扩展字段4',
  PRIMARY KEY (`Billid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='预收款主表';

/*Data for the table `chladvancegather` */

/*Table structure for table `chladvancegatherdetails` */

DROP TABLE IF EXISTS `chladvancegatherdetails`;

CREATE TABLE `chladvancegatherdetails` (
  `Billid` VARCHAR(20) NOT NULL COMMENT '单据号码Advancegather(billId)',
  `Cotemark` INT(11) NOT NULL COMMENT '栏号',
  `Promisedmoney` DECIMAL(10,2) NOT NULL COMMENT '预收金额',
  `Advancemoney` DECIMAL(10,2) NOT NULL COMMENT '预收余额',
  `Sinname` VARCHAR(50) NOT NULL COMMENT '来源单别',
  `Originbillid` VARCHAR(20) NOT NULL COMMENT '来源单号',
  `Summary` VARCHAR(2000) NOT NULL COMMENT '摘要',
  `Enables` INT(11) NOT NULL COMMENT '标识是否删除',
  `Safetyone` VARCHAR(50) NOT NULL COMMENT '保留字段',
  `Safetytwo` VARCHAR(50) NOT NULL COMMENT '保留字段',
  `Extend0` VARCHAR(200) DEFAULT NULL COMMENT '扩展字段0',
  `Extend1` VARCHAR(200) DEFAULT NULL COMMENT '扩展字段1',
  `Extend2` VARCHAR(200) DEFAULT NULL COMMENT '扩展字段2',
  `Extend3` VARCHAR(200) DEFAULT NULL COMMENT '扩展字段3',
  `Extend4` VARCHAR(200) DEFAULT NULL COMMENT '扩展字段4',
  PRIMARY KEY (`Billid`,`Cotemark`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='预收款明细表';

/*Data for the table `chladvancegatherdetails` */

/*Table structure for table `chlclashfund` */

DROP TABLE IF EXISTS `chlclashfund`;

CREATE TABLE `chlclashfund` (
  `Billid` VARCHAR(20) NOT NULL COMMENT '单据号码',
  `Billdate` DATE NOT NULL COMMENT '单据日期',
  `Sinid` INT(11) NOT NULL COMMENT '单据类型singleType(sinId)',
  `Cliid` VARCHAR(50) NOT NULL COMMENT '客户编号client(cliid)',
  `Clishortname` VARCHAR(50) NOT NULL COMMENT '客户简称',
  `Currencytype` VARCHAR(50) NOT NULL COMMENT '币别',
  `Reckontypef` VARCHAR(50) NOT NULL COMMENT '结算方式一',
  `Reckontypes` VARCHAR(50) NOT NULL COMMENT '结算方式一',
  `Reckontypet` VARCHAR(50) NOT NULL COMMENT '结算方式一',
  `Reckonmoneyf` DECIMAL(10,2) NOT NULL COMMENT '金额',
  `Reckonmoneys` DECIMAL(10,2) NOT NULL COMMENT '金额',
  `Reckonmoneyt` DECIMAL(10,2) NOT NULL COMMENT '金额',
  `Gatherdiscount` DECIMAL(19,4) NOT NULL COMMENT '折扣率',
  `Gatherendaccountmonth` DATE NOT NULL COMMENT '终止帐月',
  `Empid` VARCHAR(50) NOT NULL COMMENT '业务人员编号，也就是人员编号employee(empid)',
  `Empname` VARCHAR(50) NOT NULL COMMENT '业务人员',
  `Depid` VARCHAR(50) NOT NULL COMMENT '部门编号depttab(depid)',
  `Depname` VARCHAR(50) NOT NULL COMMENT '所属部门',
  `Makeempname` VARCHAR(50) NOT NULL COMMENT '制单人员',
  `Auditingempname` VARCHAR(50) NOT NULL COMMENT '复核人员',
  `Checkstate` INT(11) NOT NULL COMMENT '审核状态',
  `Remark` VARCHAR(2000) NOT NULL COMMENT '备注',
  `Enables` INT(11) NOT NULL COMMENT '标识是否删除',
  `Safetyone` VARCHAR(50) NOT NULL COMMENT '保留字段',
  `Safetytwo` VARCHAR(50) NOT NULL COMMENT '保留字段',
  `Extend0` VARCHAR(200) DEFAULT NULL COMMENT '扩展字段0',
  `Extend1` VARCHAR(200) DEFAULT NULL COMMENT '扩展字段1',
  `Extend2` VARCHAR(200) DEFAULT NULL COMMENT '扩展字段2',
  `Extend3` VARCHAR(200) DEFAULT NULL COMMENT '扩展字段3',
  `Extend4` VARCHAR(200) DEFAULT NULL COMMENT '扩展字段4',
  PRIMARY KEY (`Billid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='收款冲款主表';

/*Data for the table `chlclashfund` */

/*Table structure for table `chlclashfunddetailsone` */

DROP TABLE IF EXISTS `chlclashfunddetailsone`;

CREATE TABLE `chlclashfunddetailsone` (
  `Billid` VARCHAR(20) NOT NULL COMMENT '单据号码clashfund(billId)',
  `Cotemark` INT(11) NOT NULL COMMENT '栏号',
  `Sinname` VARCHAR(50) NOT NULL COMMENT '来源单别(销售订单)',
  `Originbillid` VARCHAR(20) NOT NULL COMMENT '来源单号',
  `Originodddate` DATE NOT NULL COMMENT '原单日期',
  `Originoddmoney` DECIMAL(10,2) NOT NULL COMMENT '原单金额',
  `Currentlybalance` DECIMAL(10,2) NOT NULL COMMENT '现行余额',
  `Discountmoney` DECIMAL(10,2) NOT NULL COMMENT '折让金额',
  `Clashmoney` DECIMAL(10,2) NOT NULL COMMENT '冲款金额',
  `Enables` INT(11) NOT NULL COMMENT '标识是否删除',
  `Safetyone` VARCHAR(50) NOT NULL COMMENT '保留字段',
  `Safetytwo` VARCHAR(50) NOT NULL COMMENT '保留字段',
  `Extend0` VARCHAR(200) DEFAULT NULL COMMENT '扩展字段0',
  `Extend1` VARCHAR(200) DEFAULT NULL COMMENT '扩展字段1',
  `Extend2` VARCHAR(200) DEFAULT NULL COMMENT '扩展字段2',
  `Extend3` VARCHAR(200) DEFAULT NULL COMMENT '扩展字段3',
  `Extend4` VARCHAR(200) DEFAULT NULL COMMENT '扩展字段4',
  PRIMARY KEY (`Billid`,`Cotemark`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='冲款款明细表';

/*Data for the table `chlclashfunddetailsone` */

/*Table structure for table `chlclashfunddetailstwo` */

DROP TABLE IF EXISTS `chlclashfunddetailstwo`;

CREATE TABLE `chlclashfunddetailstwo` (
  `Billid` VARCHAR(20) NOT NULL COMMENT '单据号码clashfund(billId)',
  `Cotemark` INT(11) NOT NULL COMMENT '栏号',
  `Gatherid` VARCHAR(20) NOT NULL COMMENT '预收款单单号',
  `Sinname` VARCHAR(50) NOT NULL COMMENT '来源单别(销售订单)',
  `Originbillid` VARCHAR(20) NOT NULL COMMENT '来源单号（销售订单号）',
  `Originoddrowid` INT(11) NOT NULL COMMENT '来源单号(行号)',
  `Advancemoney` DECIMAL(10,2) NOT NULL COMMENT '预收金额',
  `Advancebalance` DECIMAL(10,2) NOT NULL COMMENT '预收余额',
  `Adoptadvancemoney` DECIMAL(10,2) NOT NULL COMMENT '取用预收金额',
  `Enables` INT(11) NOT NULL COMMENT '标识是否删除',
  `Safetyone` VARCHAR(50) NOT NULL COMMENT '保留字段',
  `Safetytwo` VARCHAR(50) NOT NULL COMMENT '保留字段',
  `Extend0` VARCHAR(200) DEFAULT NULL COMMENT '扩展字段0',
  `Extend1` VARCHAR(200) DEFAULT NULL COMMENT '扩展字段1',
  `Extend2` VARCHAR(200) DEFAULT NULL COMMENT '扩展字段2',
  `Extend3` VARCHAR(200) DEFAULT NULL COMMENT '扩展字段3',
  `Extend4` VARCHAR(200) DEFAULT NULL COMMENT '扩展字段4',
  PRIMARY KEY (`Billid`,`Cotemark`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='冲款款明细表2';

/*Data for the table `chlclashfunddetailstwo` */

/*Table structure for table `chlsmbinvoicemain` */

DROP TABLE IF EXISTS `chlsmbinvoicemain`;

CREATE TABLE `chlsmbinvoicemain` (
  `BillNo` VARCHAR(15) NOT NULL COMMENT '单据号码，主键，PK',
  `Flag` INT(11) NOT NULL COMMENT '标记，主键，PK，',
  `AffirmState` SMALLINT(6) DEFAULT NULL COMMENT '销售核对状态',
  `BillType` SMALLINT(6) DEFAULT NULL COMMENT '单据类型',
  `PayTerm` SMALLINT(6) DEFAULT NULL COMMENT '收款条件',
  `DelayDays` INT(11) DEFAULT NULL COMMENT '收款天数',
  `InvoTypeId` VARCHAR(6) DEFAULT NULL COMMENT '发票类型',
  `GatherOther` VARCHAR(20) DEFAULT NULL COMMENT '其他收款方式',
  `ExportDate` INT(11) DEFAULT NULL COMMENT '导出日期',
  `ExportID` VARCHAR(20) DEFAULT NULL COMMENT '导出人员',
  PRIMARY KEY (`BillNo`,`Flag`),
  UNIQUE KEY `BillNo` (`BillNo`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='销售发票主表';

/*Data for the table `chlsmbinvoicemain` */

/*Table structure for table `chlsmbinvoicesub` */

DROP TABLE IF EXISTS `chlsmbinvoicesub`;

CREATE TABLE `chlsmbinvoicesub` (
  `BillNo` VARCHAR(15) NOT NULL COMMENT '单据号码，主键，PK',
  `Flag` INT(11) NOT NULL COMMENT '标记，主键，PK，',
  `ProdId` VARCHAR(20) DEFAULT NULL COMMENT '物料编号',
  `Quantity` DECIMAL(10,2) DEFAULT NULL COMMENT '数量',
  `Price` FLOAT DEFAULT NULL COMMENT '价格',
  `Amount` DECIMAL(10,2) DEFAULT NULL COMMENT '金额',
  `TaxRate` FLOAT DEFAULT NULL COMMENT '税率%',
  `TaxAmt` DECIMAL(10,2) DEFAULT NULL COMMENT '税额',
  `AmountWithTax` DECIMAL(10,2) DEFAULT NULL COMMENT '含税金额',
  `LocalAmount` DECIMAL(10,2) DEFAULT NULL COMMENT '金额本位币',
  `LocalTaxAmt` DECIMAL(10,2) DEFAULT NULL COMMENT '税额本位币',
  `LocalAmountWithTax` DECIMAL(10,2) DEFAULT NULL COMMENT '含税金额本位币',
  `SerNo` INT(11) DEFAULT NULL COMMENT '栏号',
  `RowNo` INT(11) NOT NULL COMMENT '行号，主键，PK',
  `BillDate` INT(11) DEFAULT NULL COMMENT '单据日期',
  `LQty` DECIMAL(10,2) DEFAULT NULL COMMENT '未出数量',
  `HasCheck` BIT(1) DEFAULT b'0' COMMENT '审核状态',
  `Remark` VARCHAR(400) DEFAULT NULL COMMENT '备注',
  `ProdName` VARCHAR(60) DEFAULT NULL COMMENT '物料名称',
  `ProdSize` VARCHAR(60) DEFAULT NULL COMMENT '规格型号',
  `FromNo` VARCHAR(15) DEFAULT NULL COMMENT '来源单号',
  `FromRow` INT(11) DEFAULT NULL COMMENT '来源行号',
  `TranType` INT(11) DEFAULT NULL COMMENT '转录',
  `QtyRemain` INT(11) DEFAULT NULL COMMENT '未出详情',
  `IsMerge` BIT(1) DEFAULT NULL COMMENT '合并',
  `SUnitID` VARCHAR(8) DEFAULT NULL COMMENT '单位编号',
  `SPrice` FLOAT DEFAULT NULL COMMENT '实际金额',
  `SQuantity` DECIMAL(10,2) DEFAULT NULL COMMENT '实际数量',
  `UnitRelation` FLOAT DEFAULT NULL COMMENT '单位关系',
  PRIMARY KEY (`BillNo`,`Flag`,`RowNo`),
  UNIQUE KEY `BillNo` (`BillNo`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COMMENT='销售发票从表';

/*Data for the table `chlsmbinvoicesub` */

/*Table structure for table `comarea` */

DROP TABLE IF EXISTS `comarea`;

CREATE TABLE `comarea` (
  `areaID` VARCHAR(6) NOT NULL,
  `areaName` VARCHAR(20) DEFAULT NULL,
  `engName` VARCHAR(20) DEFAULT NULL,
  `memo` VARCHAR(4000) DEFAULT NULL,
  `mergeOutState` SMALLINT(6) DEFAULT NULL,
  PRIMARY KEY (`areaID`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

/*Data for the table `comarea` */

INSERT  INTO `comarea`(`areaID`,`areaName`,`engName`,`memo`,`mergeOutState`) VALUES ('001','厦门','1','1',NULL),('002','株洲',NULL,NULL,NULL),('003','长沙',NULL,NULL,NULL),('004','湘潭',NULL,NULL,NULL),('005','北京',NULL,NULL,NULL),('006','上海',NULL,NULL,NULL),('007','深圳',NULL,NULL,NULL);

/*Table structure for table `combank` */

DROP TABLE IF EXISTS `combank`;

CREATE TABLE `combank` (
  `bankID` VARCHAR(7) NOT NULL,
  `bankClsID` VARCHAR(6) DEFAULT NULL,
  `bankName` VARCHAR(60) DEFAULT NULL,
  `engName` VARCHAR(60) DEFAULT NULL,
  `telePhone` VARCHAR(25) DEFAULT NULL,
  `dilivZoneNo` VARCHAR(12) DEFAULT NULL,
  `address` VARCHAR(150) DEFAULT NULL,
  `mergeOutState` SMALLINT(6) DEFAULT NULL,
  `memo` VARCHAR(4000) DEFAULT NULL,
  PRIMARY KEY (`bankID`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

/*Data for the table `combank` */

/*Table structure for table `combankcls` */

DROP TABLE IF EXISTS `combankcls`;

CREATE TABLE `combankcls` (
  `bankClsID` VARCHAR(6) NOT NULL,
  `bankClsName` VARCHAR(20) DEFAULT NULL,
  `engName` VARCHAR(20) DEFAULT NULL,
  `memo` VARCHAR(4000) DEFAULT NULL,
  `mergeOutState` SMALLINT(6) DEFAULT NULL,
  PRIMARY KEY (`bankClsID`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

/*Data for the table `combankcls` */

INSERT  INTO `combankcls`(`bankClsID`,`bankClsName`,`engName`,`memo`,`mergeOutState`) VALUES ('001','外资银行1','waiziyinhang','无',NULL);

/*Table structure for table `comcustaddress` */

DROP TABLE IF EXISTS `comcustaddress`;

CREATE TABLE `comcustaddress` (
  `Flag` SMALLINT(6) NOT NULL,
  `ID` VARCHAR(12) NOT NULL,
  `AddrID` VARCHAR(12) NOT NULL,
  `ZipCode` VARCHAR(12) DEFAULT NULL,
  `Address` VARCHAR(150) DEFAULT NULL,
  `LinkMan` VARCHAR(50) DEFAULT NULL,
  `LinkManProf` VARCHAR(20) DEFAULT NULL,
  `Telephone` VARCHAR(25) DEFAULT NULL,
  `FaxNo` VARCHAR(25) DEFAULT NULL,
  `Memo` VARCHAR(400) DEFAULT NULL,
  `WalkAddr` VARCHAR(100) DEFAULT NULL,
  PRIMARY KEY (`Flag`,`ID`,`AddrID`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

/*Data for the table `comcustaddress` */

INSERT  INTO `comcustaddress`(`Flag`,`ID`,`AddrID`,`ZipCode`,`Address`,`LinkMan`,`LinkManProf`,`Telephone`,`FaxNo`,`Memo`,`WalkAddr`) VALUES (1,'001','001','1','1','1','1','1','1','1','1'),(1,'001','002','10001','湖南株洲','联系人','职称','13833838438','0001',NULL,'行走路线'),(1,'001','003','1','1','1','1','1','1',NULL,NULL),(1,'007','003','3','3','3','3','3','3','3','3'),(2,'001','001','430023','供应商地址','联系人','职称','13866662222','123456',NULL,'行走录像');

/*Table structure for table `comcustclass` */

DROP TABLE IF EXISTS `comcustclass`;

CREATE TABLE `comcustclass` (
  `Flag` SMALLINT(6) NOT NULL,
  `ClassID` VARCHAR(6) NOT NULL,
  `ClassName` VARCHAR(20) DEFAULT NULL,
  `EngName` VARCHAR(20) DEFAULT NULL,
  `Memo` VARCHAR(4000) DEFAULT NULL,
  `MergeOutState` SMALLINT(6) DEFAULT NULL,
  PRIMARY KEY (`Flag`,`ClassID`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

/*Data for the table `comcustclass` */

INSERT  INTO `comcustclass`(`Flag`,`ClassID`,`ClassName`,`EngName`,`Memo`,`MergeOutState`) VALUES (1,'001','工厂',NULL,NULL,NULL),(1,'002','散客',NULL,NULL,NULL),(1,'003','政府',NULL,NULL,NULL),(2,'001','配件',NULL,NULL,NULL),(2,'002','整机',NULL,NULL,NULL),(2,'003','原材料',NULL,NULL,NULL),(2,'004','成品',NULL,NULL,NULL);

/*Table structure for table `comcustomer` */

DROP TABLE IF EXISTS `comcustomer`;

CREATE TABLE `comcustomer` (
  `Flag` SMALLINT(6) NOT NULL,
  `ID` VARCHAR(12) NOT NULL,
  `engFullName` VARCHAR(12) DEFAULT NULL,
  `engShortName` VARCHAR(12) DEFAULT NULL,
  `FundsAttribution` VARCHAR(12) DEFAULT NULL,
  `TransNewID` VARCHAR(12) DEFAULT NULL,
  `ClassID` VARCHAR(6) DEFAULT NULL,
  `AreaID` VARCHAR(6) DEFAULT NULL,
  `CurrencyID` VARCHAR(4) DEFAULT NULL,
  `FullName` VARCHAR(40) DEFAULT NULL,
  `IsTemp` TINYINT(1) DEFAULT NULL,
  `IsForeign` TINYINT(1) DEFAULT NULL,
  `ShortName` VARCHAR(40) DEFAULT NULL,
  `TaxNo` VARCHAR(20) DEFAULT NULL,
  `ChiefName` VARCHAR(20) DEFAULT NULL,
  `Capitalization` DECIMAL(19,2) DEFAULT NULL,
  `LinkMan` VARCHAR(20) DEFAULT NULL,
  `LinkManProf` VARCHAR(12) DEFAULT NULL,
  `Telephone1` VARCHAR(25) DEFAULT NULL,
  `Telephone2` VARCHAR(25) DEFAULT NULL,
  `Telephone3` VARCHAR(25) DEFAULT NULL,
  `MobileTel` VARCHAR(16) DEFAULT NULL,
  `Moderm` VARCHAR(16) DEFAULT NULL,
  `FaxNo` VARCHAR(25) DEFAULT NULL,
  `PersonID` VARCHAR(8) DEFAULT NULL,
  `ServerID` VARCHAR(8) DEFAULT NULL,
  `DealerID` VARCHAR(10) DEFAULT NULL,
  `IndustrialClass` VARCHAR(18) DEFAULT NULL,
  `Email` VARCHAR(50) DEFAULT NULL,
  `WebAddress` VARCHAR(50) DEFAULT NULL,
  `MergeOutState` SMALLINT(6) DEFAULT NULL,
  `IsFactory` TINYINT(1) DEFAULT NULL,
  `StartReceivable` DECIMAL(19,2) DEFAULT NULL,
  `PriceofTax` TINYINT(1) DEFAULT NULL,
  `DirectCust` TINYINT(1) DEFAULT NULL,
  `VIP` TINYINT(1) DEFAULT NULL,
  `VIPLevel` VARCHAR(6) DEFAULT NULL,
  `DataVer` INT(11) DEFAULT NULL,
  `MemberCodeNo` VARCHAR(50) DEFAULT NULL,
  `MembercodeDate` DATE DEFAULT NULL,
  `IdentityNO` VARCHAR(20) DEFAULT NULL,
  `MaritalStatus` SMALLINT(6) DEFAULT NULL,
  `SexDistinction` TINYINT(1) DEFAULT NULL,
  `Metier` VARCHAR(16) DEFAULT NULL,
  `NativePlace` VARCHAR(16) DEFAULT NULL,
  `NativeAddress` VARCHAR(50) DEFAULT NULL,
  `FamilyAddress` VARCHAR(50) DEFAULT NULL,
  `ZipCode` VARCHAR(16) DEFAULT NULL,
  `InvoiceHead` VARCHAR(40) DEFAULT NULL,
  `GatherOther` VARCHAR(20) DEFAULT NULL,
  `CheckOther` VARCHAR(20) DEFAULT NULL,
  `InvoTax` INT(11) DEFAULT NULL,
  `LastVisitDate` DATE DEFAULT NULL,
  `BookVisitDate` DATE DEFAULT NULL,
  `UsePerms` TINYINT(1) DEFAULT NULL,
  `BuildUpDate` DATE DEFAULT NULL,
  `LevelID` VARCHAR(6) DEFAULT NULL,
  `StageID` VARCHAR(6) DEFAULT NULL,
  `LeaderID` VARCHAR(10) DEFAULT NULL,
  `BeginStageDate` DATE DEFAULT NULL,
  `BargainAmt` DECIMAL(19,2) DEFAULT NULL,
  `CustIntro` VARCHAR(400) DEFAULT NULL,
  `Efficiency` DOUBLE DEFAULT NULL,
  `InvoTypeID` VARCHAR(6) DEFAULT NULL,
  `firstTradeDate` DATE DEFAULT NULL,
  `earliestTradeDate` DATE DEFAULT NULL,
  `BankId` VARCHAR(10) DEFAULT NULL,
  `PriceRank` VARCHAR(10) DEFAULT NULL,
  `latelyTradeDate` DATE DEFAULT NULL,
  `latelyReturnDate` DATE DEFAULT NULL,
  `finalTradeDate` DATE DEFAULT NULL,
  `amountQuota` DECIMAL(19,2) DEFAULT NULL,
  `billQuota` DECIMAL(19,2) DEFAULT NULL,
  `unEnCashQuota` DECIMAL(19,2) DEFAULT NULL,
  `noChkUnEnCashQuota` DECIMAL(19,2) DEFAULT NULL,
  `dayOfClose` INT(11) DEFAULT NULL,
  `dayOfRecv` INT(11) DEFAULT NULL,
  `endreceivables` DECIMAL(19,2) DEFAULT NULL,
  `distDays` INT(11) DEFAULT NULL,
  `initialreceivables` DECIMAL(19,2) DEFAULT NULL,
  `creditLevel` VARCHAR(10) DEFAULT NULL,
  `accBillRecv` INT(11) DEFAULT NULL,
  `invoiceType` INT(11) DEFAULT NULL,
  `taxKind` INT(11) DEFAULT NULL,
  `rateOfDiscount` INT(11) DEFAULT NULL,
  PRIMARY KEY (`Flag`,`ID`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

/*Data for the table `comcustomer` */

INSERT  INTO `comcustomer`(`Flag`,`ID`,`engFullName`,`engShortName`,`FundsAttribution`,`TransNewID`,`ClassID`,`AreaID`,`CurrencyID`,`FullName`,`IsTemp`,`IsForeign`,`ShortName`,`TaxNo`,`ChiefName`,`Capitalization`,`LinkMan`,`LinkManProf`,`Telephone1`,`Telephone2`,`Telephone3`,`MobileTel`,`Moderm`,`FaxNo`,`PersonID`,`ServerID`,`DealerID`,`IndustrialClass`,`Email`,`WebAddress`,`MergeOutState`,`IsFactory`,`StartReceivable`,`PriceofTax`,`DirectCust`,`VIP`,`VIPLevel`,`DataVer`,`MemberCodeNo`,`MembercodeDate`,`IdentityNO`,`MaritalStatus`,`SexDistinction`,`Metier`,`NativePlace`,`NativeAddress`,`FamilyAddress`,`ZipCode`,`InvoiceHead`,`GatherOther`,`CheckOther`,`InvoTax`,`LastVisitDate`,`BookVisitDate`,`UsePerms`,`BuildUpDate`,`LevelID`,`StageID`,`LeaderID`,`BeginStageDate`,`BargainAmt`,`CustIntro`,`Efficiency`,`InvoTypeID`,`firstTradeDate`,`earliestTradeDate`,`BankId`,`PriceRank`,`latelyTradeDate`,`latelyReturnDate`,`finalTradeDate`,`amountQuota`,`billQuota`,`unEnCashQuota`,`noChkUnEnCashQuota`,`dayOfClose`,`dayOfRecv`,`endreceivables`,`distDays`,`initialreceivables`,`creditLevel`,`accBillRecv`,`invoiceType`,`taxKind`,`rateOfDiscount`) VALUES (1,'001','1','1','1',NULL,'001','003','RMB','1',NULL,NULL,'1','1','1','1.00','1',NULL,'1','1','1','1',NULL,'1','1',NULL,NULL,'1','1','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,'2019-07-31','2019-07-31',NULL,'2019-07-31',NULL,NULL,NULL,NULL,NULL,'1',NULL,NULL,'2019-08-31','2019-08-31','1','1','2019-07-31','2019-07-31','2019-07-31','1.00','1.00','1.00','1.00',1,1,'1.00',1,'1.00','F',1,1,1,1),(1,'002','yingwen','eng','002',NULL,'001','004','RMB','客户全称',NULL,NULL,'客户简称','税务登记号','负责人','100.00','联系人',NULL,'电话1','电话2','电话3','移动电话',NULL,'银行账户','业务人员',NULL,NULL,'行业别','电子邮件','网址',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,'2019-07-28','2019-07-30',NULL,'2019-07-29',NULL,NULL,NULL,NULL,NULL,'4',NULL,NULL,'2019-07-25','2019-07-27','100','2','2019-07-29','2019-07-27','2019-07-31','100.00','10000.00','100.00','20000.00',1,1,'30000.00',100,'40000.00','E',50000,111,60000,1),(1,'003','3','3','003',NULL,'001','001','RMB','3',NULL,NULL,'3','3','3','3.00','3',NULL,'3','3','3','3',NULL,'3','3',NULL,NULL,'3','3','3',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,'2019-08-15','2019-07-26',NULL,'2019-08-08',NULL,NULL,NULL,NULL,NULL,'3',NULL,NULL,'2019-08-16','2019-08-22','3','3','2019-08-16','2019-08-08','2019-08-01','3.00','3.00','3.00','3.00',1,3,'3.00',3,'3.00','D',3,3,3,3),(2,'001','eng','e','001',NULL,'004','002','RMB','供应商全称',NULL,NULL,'供应商简称','12321','负责人','100.00','联系人',NULL,'1','2','3','4',NULL,'5','采购人员',NULL,NULL,'546','2009571022@qq.com','www.baidu.com',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'10.00',NULL,NULL,NULL,'2019-09-01','2019-09-01','123',NULL,'2019-09-01','2019-09-01','2019-09-01','100.00','10.00','100.00','10.00',1,1,'10.00',31,'10.00','B',NULL,100,10,NULL);

/*Table structure for table `comcustomerlevel` */

DROP TABLE IF EXISTS `comcustomerlevel`;

CREATE TABLE `comcustomerlevel` (
  `LevelID` VARCHAR(6) DEFAULT NULL,
  `LevelName` VARCHAR(30) DEFAULT NULL,
  `Memo` VARCHAR(400) DEFAULT NULL,
  `MergeOutState` SMALLINT(6) DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

/*Data for the table `comcustomerlevel` */

INSERT  INTO `comcustomerlevel`(`LevelID`,`LevelName`,`Memo`,`MergeOutState`) VALUES ('A','核心',NULL,NULL),('B','重点',NULL,NULL),('C','普通',NULL,NULL);

/*Table structure for table `comdepartment` */

DROP TABLE IF EXISTS `comdepartment`;

CREATE TABLE `comdepartment` (
  `DepartID` VARCHAR(8) NOT NULL,
  `DepartName` VARCHAR(30) DEFAULT NULL,
  `EngName` VARCHAR(40) DEFAULT NULL,
  `Memo` VARCHAR(4000) DEFAULT NULL,
  `Female` SMALLINT(6) DEFAULT NULL,
  `Male` SMALLINT(6) DEFAULT NULL,
  `JobSch` VARCHAR(10) DEFAULT NULL,
  `MergeOutState` SMALLINT(6) DEFAULT NULL,
  `CalID` VARCHAR(10) DEFAULT NULL,
  `SalaryTypeID` VARCHAR(10) DEFAULT NULL,
  PRIMARY KEY (`DepartID`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

/*Data for the table `comdepartment` */

INSERT  INTO `comdepartment`(`DepartID`,`DepartName`,`EngName`,`Memo`,`Female`,`Male`,`JobSch`,`MergeOutState`,`CalID`,`SalaryTypeID`) VALUES ('001','生产部',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('002','采购部',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('003','销售部',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `cominvoicetype` */

DROP TABLE IF EXISTS `cominvoicetype`;

CREATE TABLE `cominvoicetype` (
  `Id` VARCHAR(6) NOT NULL,
  `Name` VARCHAR(30) DEFAULT NULL,
  `Remark` VARCHAR(400) DEFAULT NULL,
  `EngName` VARCHAR(30) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

/*Data for the table `cominvoicetype` */

INSERT  INTO `cominvoicetype`(`Id`,`Name`,`Remark`,`EngName`) VALUES ('001','增值税发票',NULL,NULL),('002','普通发票',NULL,NULL),('003','服务发票',NULL,NULL),('004','出口商业发票',NULL,NULL);

/*Table structure for table `commontype` */

DROP TABLE IF EXISTS `commontype`;

CREATE TABLE `commontype` (
  `flag` INT(11) NOT NULL,
  `typeId` VARCHAR(20) NOT NULL,
  `typeName` VARCHAR(20) DEFAULT NULL,
  `engName` VARCHAR(20) DEFAULT NULL,
  `memo` VARCHAR(500) DEFAULT NULL,
  PRIMARY KEY (`flag`,`typeId`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

/*Data for the table `commontype` */

INSERT  INTO `commontype`(`flag`,`typeId`,`typeName`,`engName`,`memo`) VALUES (1,'001','采购类型2',NULL,NULL),(1,'003','采购请购类型',NULL,NULL),(2,'001','采购入库类型',NULL,NULL),(2,'002','采购入库类型02',NULL,NULL),(2,'003','采购入库类型03',NULL,NULL),(3,'001','采购订单类型01',NULL,NULL),(3,'002','采购订单类型02',NULL,NULL),(4,'001','销售订单类型01',NULL,NULL),(4,'002','销售订单类型02',NULL,NULL),(4,'003','销售订单类型03',NULL,NULL),(5,'001','销售出库类型01',NULL,NULL),(5,'002','销售出库类型02',NULL,NULL),(5,'003','销售出库类型03',NULL,NULL),(6,'001','入库类型01',NULL,NULL),(6,'002','入库类型1',NULL,NULL),(7,'001','出库类型01',NULL,NULL),(7,'002','出库类型02',NULL,NULL);

/*Table structure for table `comperson` */

DROP TABLE IF EXISTS `comperson`;

CREATE TABLE `comperson` (
  `PersonID` VARCHAR(8) NOT NULL,
  `DepartID` VARCHAR(8) DEFAULT NULL,
  `PersonName` VARCHAR(10) DEFAULT NULL,
  `EngName` VARCHAR(18) DEFAULT NULL,
  `GroupID` VARCHAR(6) DEFAULT NULL,
  `IdentityNumber` VARCHAR(20) DEFAULT NULL,
  `SexDistinction` INT(1) DEFAULT NULL,
  `ProfTitle` VARCHAR(16) DEFAULT NULL,
  `EngProfTitle` VARCHAR(30) DEFAULT NULL,
  `Birthday` DATE DEFAULT NULL,
  `OnJobDate` DATE DEFAULT NULL,
  `Nationality` VARCHAR(16) DEFAULT NULL,
  `technicalTitle` VARCHAR(10) DEFAULT NULL,
  `FamilyReg` VARCHAR(16) DEFAULT NULL,
  `LeaveJobDate` DATE DEFAULT NULL,
  `MaritalStatus` INT(6) DEFAULT NULL,
  `Address1` VARCHAR(50) DEFAULT NULL,
  `Address2` VARCHAR(60) DEFAULT NULL,
  `Phone1` VARCHAR(16) DEFAULT NULL,
  `MobilePhone` VARCHAR(16) DEFAULT NULL,
  `Email` VARCHAR(30) DEFAULT NULL,
  `Memo` VARCHAR(4000) DEFAULT NULL,
  `UsrDef1` VARCHAR(50) DEFAULT NULL,
  `UsrDef2` VARCHAR(50) DEFAULT NULL,
  `BloodType` VARCHAR(20) DEFAULT NULL,
  `BPMachine` VARCHAR(15) DEFAULT NULL,
  `Country` VARCHAR(10) DEFAULT NULL,
  `PosiID` VARCHAR(10) DEFAULT NULL,
  `MergeOutState` SMALLINT(6) DEFAULT NULL,
  `DataVer` INT(11) DEFAULT NULL,
  `PoliticCountenance` VARCHAR(10) DEFAULT NULL,
  `humschoolId` INT(11) DEFAULT NULL,
  `maturityDate` DATE DEFAULT NULL,
  `academicDegree` VARCHAR(10) DEFAULT NULL,
  `dateofentry` DATE DEFAULT NULL,
  `graduationSchool` VARCHAR(20) DEFAULT NULL,
  `passport` VARCHAR(30) DEFAULT NULL,
  `major` VARCHAR(30) DEFAULT NULL,
  `Startingdateofcontract` DATE DEFAULT NULL,
  `englishlevel` VARCHAR(10) DEFAULT NULL,
  `TerminationDateofContract` DATE DEFAULT NULL,
  `Dateofphysicalexamination` DATE DEFAULT NULL,
  `emergencycontact` VARCHAR(10) DEFAULT NULL,
  `phone2` VARCHAR(20) DEFAULT NULL,
  `Address3` VARCHAR(60) DEFAULT NULL,
  PRIMARY KEY (`PersonID`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

/*Data for the table `comperson` */

INSERT  INTO `comperson`(`PersonID`,`DepartID`,`PersonName`,`EngName`,`GroupID`,`IdentityNumber`,`SexDistinction`,`ProfTitle`,`EngProfTitle`,`Birthday`,`OnJobDate`,`Nationality`,`technicalTitle`,`FamilyReg`,`LeaveJobDate`,`MaritalStatus`,`Address1`,`Address2`,`Phone1`,`MobilePhone`,`Email`,`Memo`,`UsrDef1`,`UsrDef2`,`BloodType`,`BPMachine`,`Country`,`PosiID`,`MergeOutState`,`DataVer`,`PoliticCountenance`,`humschoolId`,`maturityDate`,`academicDegree`,`dateofentry`,`graduationSchool`,`passport`,`major`,`Startingdateofcontract`,`englishlevel`,`TerminationDateofContract`,`Dateofphysicalexamination`,`emergencycontact`,`phone2`,`Address3`) VALUES ('001','001','阳鑫','yangxin',NULL,'430223199908082223',2,'总监','zongjian','2019-08-30','2019-07-31','汉','技术总监','湖南','2019-08-31',2,'湖南','湖南株洲','13838384382','080845','20090808','没有备注',NULL,NULL,'AB',NULL,'中国',NULL,NULL,NULL,'团员',1,'2019-07-26','硕士','2019-08-26','清华大学','88888888','软件工程','2019-08-26','极高','2019-08-26','2019-08-28','杨爹','996852','湖南'),('002','003','苏明亮','sml',NULL,'1151312132',1,'高级','gaoji','2019-08-07','2019-08-21','汉','高级技工','湖南','2019-08-29',1,'湖南','湖南株洲','13366668888','13322220000','2009@qq.com','无',NULL,NULL,'A',NULL,'中国',NULL,NULL,NULL,'党员',6,'2019-08-15','学位','2019-08-27','北大青鸟','8886666','it','2019-08-20','英语8级','2019-08-20','2019-08-29','人','13355554444','地址');

/*Table structure for table `comproduct` */

DROP TABLE IF EXISTS `comproduct`;

CREATE TABLE `comproduct` (
  `ProdID` VARCHAR(20) DEFAULT NULL,
  `FOBCurrID` VARCHAR(4) DEFAULT NULL,
  `CAvgCost` DOUBLE DEFAULT NULL,
  `SubID` VARCHAR(4) DEFAULT NULL,
  `ClassID` VARCHAR(6) DEFAULT NULL,
  `BarCodeID` VARCHAR(20) DEFAULT NULL,
  `UnitID` VARCHAR(8) DEFAULT NULL,
  `Unit` VARCHAR(20) DEFAULT NULL,
  `ProdName` VARCHAR(60) DEFAULT NULL,
  `ProdSize` VARCHAR(60) DEFAULT NULL,
  `EngName` VARCHAR(200) DEFAULT NULL,
  `CurrID` VARCHAR(4) DEFAULT NULL,
  `SuggestPrice` DOUBLE DEFAULT NULL,
  `SalesPriceA` DOUBLE DEFAULT NULL,
  `SalesPriceB` DOUBLE DEFAULT NULL,
  `SalesPriceC` DOUBLE DEFAULT NULL,
  `SalesPriceD` DOUBLE DEFAULT NULL,
  `SalesPriceE` DOUBLE DEFAULT NULL,
  `StdPrice` DOUBLE DEFAULT NULL,
  `ConverUnit` VARCHAR(8) DEFAULT NULL,
  `ConverRate` FLOAT DEFAULT NULL,
  `PackAmt1` DECIMAL(19,2) DEFAULT NULL,
  `PackAmt2` DECIMAL(19,2) DEFAULT NULL,
  `PackUnit1` VARCHAR(8) DEFAULT NULL,
  `PackUnit2` VARCHAR(8) DEFAULT NULL,
  `InventoryID` VARCHAR(4) DEFAULT NULL,
  `BusiTaxRate` FLOAT DEFAULT NULL,
  `Excise` FLOAT DEFAULT NULL,
  `ImpTaxRate` FLOAT DEFAULT NULL,
  `BatchUsed` TINYINT(1) DEFAULT NULL,
  `EffectDateUsed` TINYINT(1) DEFAULT NULL,
  `ProdDesc` VARCHAR(4000) DEFAULT NULL,
  `ProdPic` VARCHAR(38) DEFAULT NULL,
  `ProdForm` SMALLINT(6) DEFAULT NULL,
  `BaseInc` DECIMAL(19,2) DEFAULT NULL,
  `MinPurch` DECIMAL(19,2) DEFAULT NULL,
  `SafeStock` TINYINT(1) DEFAULT NULL,
  `AdvanceDays` INT(11) DEFAULT NULL,
  `MaterialWare` VARCHAR(6) DEFAULT NULL,
  `OverReceRate` FLOAT DEFAULT NULL,
  `PurchPolicy` SMALLINT(6) DEFAULT NULL,
  `MajorSupplier` VARCHAR(12) DEFAULT NULL,
  `BOutStockDay` DATE DEFAULT NULL,
  `BInStockDay` DATE DEFAULT NULL,
  `BPurchDate` DATE DEFAULT NULL,
  `BSalesDate` DATE DEFAULT NULL,
  `SluggishDays` INT(11) DEFAULT NULL,
  `LatestIndate` DATE DEFAULT NULL,
  `LatestOutDate` DATE DEFAULT NULL,
  `LatestPurchDate` DATE DEFAULT NULL,
  `LatestSalesDate` DATE DEFAULT NULL,
  `StopDate` DATE DEFAULT NULL,
  `Main_Des` VARCHAR(60) DEFAULT NULL,
  `CCC_CODE` VARCHAR(20) DEFAULT NULL,
  `EngUnit` VARCHAR(6) DEFAULT NULL,
  `FOBPrice` DOUBLE DEFAULT NULL,
  `CY20` DECIMAL(19,2) DEFAULT NULL,
  `CY40` DECIMAL(19,2) DEFAULT NULL,
  `InPackAmt` DECIMAL(19,2) UNSIGNED DEFAULT NULL,
  `OutPackAmt` DECIMAL(19,2) DEFAULT NULL,
  `VolumeUnit` VARCHAR(6) DEFAULT NULL,
  `Volume` DECIMAL(19,2) DEFAULT NULL,
  `NetWeight` DECIMAL(19,2) DEFAULT NULL,
  `GrossWeigh` DECIMAL(19,2) DEFAULT NULL,
  `BAvgCost` DOUBLE DEFAULT NULL,
  `BStdCost` DOUBLE DEFAULT NULL,
  `MergeOutState` SMALLINT(6) DEFAULT NULL,
  `IsCheck` TINYINT(1) DEFAULT NULL,
  `CTotalCost` DECIMAL(19,2) DEFAULT NULL,
  `InvoProdName` VARCHAR(60) DEFAULT NULL,
  `DefValidDay` SMALLINT(6) DEFAULT NULL,
  `ValidDateUsed` TINYINT(1) DEFAULT NULL,
  `BackTaxRate` FLOAT DEFAULT NULL,
  `DataVer` INT(11) DEFAULT NULL,
  `MoreRate` FLOAT DEFAULT NULL,
  `UDef1` VARCHAR(50) DEFAULT NULL,
  `UDef2` VARCHAR(50) DEFAULT NULL,
  `RepairTerm` INT(11) DEFAULT NULL,
  `PriceOfTax` TINYINT(1) DEFAULT NULL,
  `InsurRate` FLOAT DEFAULT NULL,
  `InsurRateEx` FLOAT DEFAULT NULL,
  `BTotalCost` DECIMAL(19,2) DEFAULT NULL,
  `HQ40` DECIMAL(19,2) DEFAULT NULL,
  `CY45` DECIMAL(19,2) DEFAULT NULL,
  `PerDays` INT(11) DEFAULT NULL,
  `StdUnitID` VARCHAR(8) DEFAULT NULL,
  `StdUnitName` VARCHAR(20) DEFAULT NULL,
  `SafeQty` INT(11) DEFAULT NULL,
  `BSalesBackDate` DATE DEFAULT NULL,
  `BInOtherDate` DATE DEFAULT NULL,
  `BPurBackDate` DATE DEFAULT NULL,
  `BOutOtherDate` DATE DEFAULT NULL,
  `StdCost` DOUBLE DEFAULT NULL,
  `CAllAmt` DECIMAL(19,2) DEFAULT NULL,
  `NWeight` DECIMAL(19,2) DEFAULT NULL,
  `GWeight` DECIMAL(19,2) DEFAULT NULL,
  `LUnit` VARCHAR(6) DEFAULT NULL,
  `Width` DECIMAL(19,2) DEFAULT NULL,
  `Hight` DECIMAL(19,2) DEFAULT NULL,
  `MVolume` DECIMAL(19,2) DEFAULT NULL,
  `ProdBigType` VARCHAR(100) DEFAULT NULL,
  `InPackUnit` VARCHAR(6) DEFAULT NULL,
  `OutPackUnit` VARCHAR(6) DEFAULT NULL,
  `NetWeightUnit` VARCHAR(6) DEFAULT NULL,
  `GrossWeightUnit` VARCHAR(6) DEFAULT NULL,
  `MEAMTUnit` VARCHAR(6) DEFAULT NULL,
  `MEAMT` DECIMAL(19,2) DEFAULT NULL,
  `TaxItemsID` VARCHAR(10) DEFAULT NULL,
  `doesItIncludeTax` VARCHAR(20) DEFAULT NULL,
  `CSafeAllstk` INT(11) DEFAULT NULL,
  `BAllAmt` INT(11) DEFAULT NULL,
  `CCurrStock` INT(11) DEFAULT NULL,
  `BAllCost` DOUBLE DEFAULT NULL,
  `CAllCost` DOUBLE DEFAULT NULL,
  `COutStockDay` DATE DEFAULT NULL,
  `CInStockDay` DATE DEFAULT NULL,
  `invaliDate` DATE DEFAULT NULL,
  `cstdCost` DOUBLE DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

/*Data for the table `comproduct` */

INSERT  INTO `comproduct`(`ProdID`,`FOBCurrID`,`CAvgCost`,`SubID`,`ClassID`,`BarCodeID`,`UnitID`,`Unit`,`ProdName`,`ProdSize`,`EngName`,`CurrID`,`SuggestPrice`,`SalesPriceA`,`SalesPriceB`,`SalesPriceC`,`SalesPriceD`,`SalesPriceE`,`StdPrice`,`ConverUnit`,`ConverRate`,`PackAmt1`,`PackAmt2`,`PackUnit1`,`PackUnit2`,`InventoryID`,`BusiTaxRate`,`Excise`,`ImpTaxRate`,`BatchUsed`,`EffectDateUsed`,`ProdDesc`,`ProdPic`,`ProdForm`,`BaseInc`,`MinPurch`,`SafeStock`,`AdvanceDays`,`MaterialWare`,`OverReceRate`,`PurchPolicy`,`MajorSupplier`,`BOutStockDay`,`BInStockDay`,`BPurchDate`,`BSalesDate`,`SluggishDays`,`LatestIndate`,`LatestOutDate`,`LatestPurchDate`,`LatestSalesDate`,`StopDate`,`Main_Des`,`CCC_CODE`,`EngUnit`,`FOBPrice`,`CY20`,`CY40`,`InPackAmt`,`OutPackAmt`,`VolumeUnit`,`Volume`,`NetWeight`,`GrossWeigh`,`BAvgCost`,`BStdCost`,`MergeOutState`,`IsCheck`,`CTotalCost`,`InvoProdName`,`DefValidDay`,`ValidDateUsed`,`BackTaxRate`,`DataVer`,`MoreRate`,`UDef1`,`UDef2`,`RepairTerm`,`PriceOfTax`,`InsurRate`,`InsurRateEx`,`BTotalCost`,`HQ40`,`CY45`,`PerDays`,`StdUnitID`,`StdUnitName`,`SafeQty`,`BSalesBackDate`,`BInOtherDate`,`BPurBackDate`,`BOutOtherDate`,`StdCost`,`CAllAmt`,`NWeight`,`GWeight`,`LUnit`,`Width`,`Hight`,`MVolume`,`ProdBigType`,`InPackUnit`,`OutPackUnit`,`NetWeightUnit`,`GrossWeightUnit`,`MEAMTUnit`,`MEAMT`,`TaxItemsID`,`doesItIncludeTax`,`CSafeAllstk`,`BAllAmt`,`CCurrStock`,`BAllCost`,`CAllCost`,`COutStockDay`,`CInStockDay`,`invaliDate`,`cstdCost`) VALUES ('001',NULL,21,NULL,'A01','645311','04',NULL,'物料名称','规格型号','eng','RMB',1,1,11,1,1,1,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'1111',NULL,1,NULL,NULL,NULL,1,NULL,NULL,NULL,'1','2019-08-13','2019-08-13',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,21,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','含税',45,12,21,12,12,'2019-08-12','2019-08-11','2019-08-04',11);

/*Table structure for table `comproductclass` */

DROP TABLE IF EXISTS `comproductclass`;

CREATE TABLE `comproductclass` (
  `ClassID` VARCHAR(6) NOT NULL,
  `ClassName` VARCHAR(20) DEFAULT NULL,
  `EngName` VARCHAR(20) DEFAULT NULL,
  `AccInventory` VARCHAR(16) DEFAULT NULL,
  `AccPurchased` VARCHAR(16) DEFAULT NULL,
  `ReturnPurchase` VARCHAR(16) DEFAULT NULL,
  `AccSale` VARCHAR(16) DEFAULT NULL,
  `AccSaleCost` VARCHAR(16) DEFAULT NULL,
  `ReturnSale` VARCHAR(16) DEFAULT NULL,
  `GiftExpense` VARCHAR(16) DEFAULT NULL,
  `MaterialWarehouse` VARCHAR(8) DEFAULT NULL,
  `MergeOutState` SMALLINT(6) DEFAULT NULL,
  `DataVer` INT(11) DEFAULT NULL,
  `OtherExpense` VARCHAR(16) DEFAULT NULL,
  `OtherIncome` VARCHAR(16) DEFAULT NULL,
  `OtherCost` VARCHAR(16) DEFAULT NULL,
  `Memo` VARCHAR(4000) DEFAULT NULL,
  PRIMARY KEY (`ClassID`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

/*Data for the table `comproductclass` */

INSERT  INTO `comproductclass`(`ClassID`,`ClassName`,`EngName`,`AccInventory`,`AccPurchased`,`ReturnPurchase`,`AccSale`,`AccSaleCost`,`ReturnSale`,`GiftExpense`,`MaterialWarehouse`,`MergeOutState`,`DataVer`,`OtherExpense`,`OtherIncome`,`OtherCost`,`Memo`) VALUES ('001','物料类别名称','eng','存货科目',NULL,NULL,'销售收入科目','发出商品科目',NULL,'赠品费用科目',NULL,NULL,NULL,'其他收入科目','其他费用科目','其他成本科目','无'),('A01','主板','','1243','','','5101','5401','','','',0,5,'','','',''),('A02','硬盘','','1243','','','5101','5401','','','',0,5,'','','',''),('A03','显卡','','1243','','','5101','5401','','','',0,5,'','','',''),('A04','内存','','1243','','','5101','5401','','','',0,5,'','','',''),('A05','显示器','','1243','','','5101','5401','','','',0,5,'','','',''),('A06','机箱','','1243','','','5101','5401','','','',0,5,'','','',''),('A07','CPU','','1243','','','5101','5401','','','',0,4,'','','',''),('B01','集线器','','','','','','','','','',0,3,'','','',''),('B02','交换机','','','','','','','','','',0,3,'','','',''),('B03','路由器','','1241','','','5101','5401','','550104','',0,3,'','','',''),('C01','笔记本','','1243','','','5101','5401','','','',0,5,'','','',''),('Q01','汽车','','1243','','','5101','5401','','550104','',0,5,'','','',''),('Q02','祭','','','','','','','','','',0,2,'','','','');

/*Table structure for table `comproject` */

DROP TABLE IF EXISTS `comproject`;

CREATE TABLE `comproject` (
  `projectID` VARCHAR(15) NOT NULL,
  `projectName` VARCHAR(40) DEFAULT NULL,
  `engName` VARCHAR(20) DEFAULT NULL,
  `memo` VARCHAR(4000) DEFAULT NULL,
  `mergeOutState` SMALLINT(6) DEFAULT NULL,
  `invalidDate` INT(11) DEFAULT NULL,
  PRIMARY KEY (`projectID`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

/*Data for the table `comproject` */

INSERT  INTO `comproject`(`projectID`,`projectName`,`engName`,`memo`,`mergeOutState`,`invalidDate`) VALUES ('001','项目1','12','32',NULL,NULL),('002','项目02',NULL,NULL,NULL,NULL);

/*Table structure for table `comstdunit` */

DROP TABLE IF EXISTS `comstdunit`;

CREATE TABLE `comstdunit` (
  `UnitID` VARCHAR(6) DEFAULT NULL,
  `UnitName` VARCHAR(20) DEFAULT NULL,
  `EngName` VARCHAR(20) DEFAULT NULL,
  `Memo` VARCHAR(4000) DEFAULT NULL,
  `MergeOutState` SMALLINT(6) DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

/*Data for the table `comstdunit` */

INSERT  INTO `comstdunit`(`UnitID`,`UnitName`,`EngName`,`Memo`,`MergeOutState`) VALUES ('001','克','ke','无',NULL),('002','吨','dun','无',NULL),('01','台','pcs','',0),('02','件','','',0),('03','条','','',0),('04','块','pcs','',0),('05','个','','',0),('06','片','','',0),('07','幢','','',0),('08','辆','','',0),('09','皮','','',0);

/*Table structure for table `comtaxitems` */

DROP TABLE IF EXISTS `comtaxitems`;

CREATE TABLE `comtaxitems` (
  `TaxItemsID` VARCHAR(10) NOT NULL,
  `TaxItemsName` VARCHAR(50) DEFAULT NULL,
  `EngName` VARCHAR(30) DEFAULT NULL,
  `memo` VARCHAR(400) DEFAULT NULL,
  `MergeOutState` SMALLINT(6) DEFAULT NULL,
  PRIMARY KEY (`TaxItemsID`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

/*Data for the table `comtaxitems` */

INSERT  INTO `comtaxitems`(`TaxItemsID`,`TaxItemsName`,`EngName`,`memo`,`MergeOutState`) VALUES ('001','小汽车',NULL,NULL,NULL),('002','商业(17%)',NULL,NULL,NULL);

/*Table structure for table `comwarehouse` */

DROP TABLE IF EXISTS `comwarehouse`;

CREATE TABLE `comwarehouse` (
  `WareHouseID` VARCHAR(6) DEFAULT NULL,
  `WareHouseName` VARCHAR(20) DEFAULT NULL,
  `ShortName` VARCHAR(8) DEFAULT NULL,
  `EngName` VARCHAR(20) DEFAULT NULL,
  `LinkMan` VARCHAR(12) DEFAULT NULL,
  `Telephone` VARCHAR(16) DEFAULT NULL,
  `WareHouseAddress` VARCHAR(50) DEFAULT NULL,
  `Memo` VARCHAR(4000) DEFAULT NULL,
  `MergeOutState` SMALLINT(6) DEFAULT NULL,
  `DataVer` INT(11) DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

/*Data for the table `comwarehouse` */

INSERT  INTO `comwarehouse`(`WareHouseID`,`WareHouseName`,`ShortName`,`EngName`,`LinkMan`,`Telephone`,`WareHouseAddress`,`Memo`,`MergeOutState`,`DataVer`) VALUES ('001','厦门仓','厦门','xianmencang','豪哥','16603332222','厦门市厦门区厦门镇厦门','备注12311561323',NULL,NULL),('002','株洲仓','株洲','zhuzhou','好人','13366664444','株洲河西','无',NULL,NULL),('003','长沙仓','长沙','changsha','坏人','13344442222','长沙雨花','无',NULL,NULL),('004','湘潭仓','湘潭','xiangtan','滴滴滴','12233331111','湘潭铺子','无',NULL,NULL),('005','上海仓','上海','shanghai','嘿嘿','16633334444','上海','无',NULL,NULL),('006','广州仓','广州','guangzhou','仅仅','14422223333','广州','无',NULL,NULL),('007','武汉仓','武汉','wuhan','流浪','18899997777','武汉','无',NULL,NULL);

/*Table structure for table `humschooling` */

DROP TABLE IF EXISTS `humschooling`;

CREATE TABLE `humschooling` (
  `schoolingID` VARCHAR(10) NOT NULL,
  `schoolingName` VARCHAR(30) DEFAULT NULL,
  `engName` VARCHAR(40) DEFAULT NULL,
  `memo` VARCHAR(4000) DEFAULT NULL,
  `mergeOutState` SMALLINT(6) DEFAULT NULL,
  PRIMARY KEY (`schoolingID`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

/*Data for the table `humschooling` */

INSERT  INTO `humschooling`(`schoolingID`,`schoolingName`,`engName`,`memo`,`mergeOutState`) VALUES ('001','高中','gongzhong','无2',NULL),('002','初中','初中','阿斯蒂芬',NULL),('003','小学',NULL,NULL,NULL),('004','本科',NULL,NULL,NULL),('005','博士',NULL,NULL,NULL),('006','研究生',NULL,NULL,NULL);

/*Table structure for table `lyaccountlist` */

DROP TABLE IF EXISTS `lyaccountlist`;

CREATE TABLE `lyaccountlist` (
  `SerNo` INT(11) NOT NULL COMMENT '栏号',
  `ProdID` INT(11) NOT NULL COMMENT '物料编号',
  `ProdName` VARCHAR(50) DEFAULT NULL COMMENT '物料名称',
  `SourceAmount` DOUBLE DEFAULT NULL COMMENT '原单金额',
  `Amount` DOUBLE DEFAULT NULL COMMENT '发票金额',
  `BalanceAmt` DOUBLE DEFAULT NULL COMMENT '价差',
  `RateBalanceAmt` FLOAT DEFAULT NULL COMMENT '汇差',
  `TotalBalanceAmt` FLOAT DEFAULT NULL COMMENT '差额合计',
  `ProdSize` VARCHAR(30) DEFAULT NULL COMMENT '规格型号',
  PRIMARY KEY (`SerNo`,`ProdID`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

/*Data for the table `lyaccountlist` */

/*Table structure for table `lyadvance` */

DROP TABLE IF EXISTS `lyadvance`;

CREATE TABLE `lyadvance` (
  `advid` VARCHAR(20) DEFAULT NULL COMMENT '预付单单号',
  `advdate` DATE DEFAULT NULL COMMENT '单据日期',
  `purveyid` VARCHAR(20) DEFAULT NULL COMMENT '供应商ID',
  `purveyname` VARCHAR(50) DEFAULT NULL COMMENT '供应商名称',
  `advstrike1` VARCHAR(50) DEFAULT NULL COMMENT '结算方式1',
  `advstrike2` VARCHAR(50) DEFAULT NULL COMMENT '结算方式2',
  `advstrike3` VARCHAR(50) DEFAULT NULL COMMENT '结算方式3',
  `advmoney1` DOUBLE DEFAULT NULL COMMENT '金额1',
  `advmoney2` DOUBLE DEFAULT NULL COMMENT '金额2',
  `advmoney3` DOUBLE DEFAULT NULL COMMENT '金额3',
  `advmakeing` VARCHAR(50) DEFAULT NULL COMMENT '制单人员',
  `stodept` VARCHAR(50) DEFAULT NULL COMMENT '制单人所属部门',
  `stodeptid` INT(100) DEFAULT NULL COMMENT '部门ID',
  `advcheckman` VARCHAR(50) NOT NULL COMMENT '复核人员',
  `advremark` VARCHAR(1000) DEFAULT NULL COMMENT '备注',
  `isaditing` INT(4) DEFAULT NULL COMMENT '是否审核',
  `safetyone` VARCHAR(50) DEFAULT NULL COMMENT '保存（“预付款单”）',
  `enables` INT(4) DEFAULT '1' COMMENT '标识是否删除'
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

/*Data for the table `lyadvance` */

/*Table structure for table `lyadvancedetails` */

DROP TABLE IF EXISTS `lyadvancedetails`;

CREATE TABLE `lyadvancedetails` (
  `advid` VARCHAR(20) NOT NULL COMMENT '主表单号,也是外键',
  `advdetid` INT(9) NOT NULL COMMENT '行号',
  `advdetmoney` DOUBLE NOT NULL COMMENT '预付金额',
  `advdetoddtype` VARCHAR(50) NOT NULL COMMENT '来源单别',
  `advdetoddid` VARCHAR(20) NOT NULL COMMENT '来源单号',
  `advdetdegest` VARCHAR(50) DEFAULT NULL COMMENT '摘要',
  `advdetbalance` DOUBLE NOT NULL COMMENT '预付余额',
  `enables` INT(11) DEFAULT '1' COMMENT '标识是否删除',
  PRIMARY KEY (`advid`,`advdetid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

/*Data for the table `lyadvancedetails` */

/*Table structure for table `lypayment` */

DROP TABLE IF EXISTS `lypayment`;

CREATE TABLE `lypayment` (
  `payid` VARCHAR(20) NOT NULL COMMENT '应付冲款单单号',
  `paydate` DATE NOT NULL COMMENT '单据日期',
  `purveyid` VARCHAR(20) DEFAULT NULL COMMENT '供应商ID',
  `purveyname` VARCHAR(50) NOT NULL COMMENT '供应商名称',
  `paystrike1` VARCHAR(50) DEFAULT NULL COMMENT '结算方式1',
  `paystrike2` VARCHAR(50) DEFAULT NULL COMMENT '结算方式2',
  `paystrike3` VARCHAR(50) DEFAULT NULL COMMENT '结算方式3',
  `paymoney1` DOUBLE DEFAULT NULL COMMENT '金额1',
  `paymoney2` DOUBLE DEFAULT NULL COMMENT '金额2',
  `paymoney3` DOUBLE DEFAULT NULL COMMENT '金额3',
  `paymakeing` VARCHAR(50) DEFAULT NULL COMMENT '制单人员',
  `paydept` VARCHAR(50) DEFAULT NULL COMMENT '制单人所属部门',
  `stodeptid` VARCHAR(50) DEFAULT NULL COMMENT '部门ID （伪ID）',
  `paycheckman` VARCHAR(50) NOT NULL COMMENT '审核人员',
  `payremark` VARCHAR(2000) DEFAULT NULL COMMENT '备注',
  `isaditing` INT(11) DEFAULT NULL COMMENT '是否审核',
  `enables` INT(11) DEFAULT '1' COMMENT '标识是否删除',
  PRIMARY KEY (`payid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

/*Data for the table `lypayment` */

/*Table structure for table `lypaymentdetails` */

DROP TABLE IF EXISTS `lypaymentdetails`;

CREATE TABLE `lypaymentdetails` (
  `payid` VARCHAR(20) NOT NULL COMMENT '应付冲款单单号',
  `paydetid` VARCHAR(20) NOT NULL COMMENT '行号',
  `paydetoddtype` VARCHAR(20) NOT NULL COMMENT '来源单别',
  `paydetoddid` VARCHAR(20) NOT NULL COMMENT '来源单号',
  `formeroddmoney` DOUBLE NOT NULL COMMENT '原单金额',
  `nocebalance` DOUBLE NOT NULL COMMENT '现行余额',
  `payzr` DOUBLE DEFAULT NULL COMMENT '折让金额',
  `paydetmoney` DOUBLE NOT NULL COMMENT '冲款金额',
  `takadvmoney` DOUBLE DEFAULT NULL COMMENT '取用预付',
  `rushmoney` DOUBLE NOT NULL COMMENT '冲抵金额',
  `enables` INT(4) DEFAULT '1' COMMENT '标识是否删除',
  PRIMARY KEY (`payid`,`paydetid`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

/*Data for the table `lypaymentdetails` */

/*Table structure for table `lypurchaseinvoice` */

DROP TABLE IF EXISTS `lypurchaseinvoice`;

CREATE TABLE `lypurchaseinvoice` (
  `FundBillNo` INT(11) NOT NULL COMMENT '单据号码',
  `BillDate` DATE DEFAULT NULL COMMENT '单据日期',
  `CustID` INT(11) DEFAULT NULL COMMENT '供应商',
  `FullName` VARCHAR(50) DEFAULT NULL COMMENT '供应商全称',
  `DueTo` VARCHAR(30) DEFAULT NULL COMMENT '账款归属',
  `AccMonth` DATE DEFAULT NULL COMMENT '账款月份',
  `InvoiceNo` INT(11) DEFAULT NULL COMMENT '发票号码',
  `CurrID` INT(11) DEFAULT NULL COMMENT '币别',
  `CurrencyName` VARCHAR(30) DEFAULT NULL COMMENT '币别名称',
  `ExchRate` FLOAT DEFAULT NULL COMMENT '汇率',
  `Total` DOUBLE DEFAULT NULL COMMENT '发票金额',
  `CashPay` DOUBLE DEFAULT NULL COMMENT '结算方式一金额',
  `VisaPay` DOUBLE DEFAULT NULL COMMENT '结算方式二金额',
  `OffSet` DOUBLE DEFAULT NULL COMMENT '已冲款金额',
  `Discount` DOUBLE DEFAULT NULL COMMENT '冲款单折让金额',
  `PrepayDay` DATE DEFAULT NULL COMMENT '付款日期',
  `DaptID` INT(11) DEFAULT NULL COMMENT '所属部门',
  `DaptName` VARCHAR(20) DEFAULT NULL COMMENT '部门名称',
  `ProjectID` INT(11) DEFAULT NULL COMMENT '所属项目',
  `ProjectName` VARCHAR(30) DEFAULT NULL COMMENT '项目名称',
  `Salesman` INT(11) DEFAULT NULL COMMENT '采购人员',
  `PersonName` VARCHAR(30) DEFAULT NULL COMMENT '人员姓名',
  `CashPayStyle` INT(11) DEFAULT NULL COMMENT '结算方式一',
  `CashPayStyleName` VARCHAR(30) DEFAULT NULL COMMENT '结算方式一名称',
  `VisaPayStyle` INT(11) DEFAULT NULL COMMENT '结算方式二',
  `VisaPayStyleName` VARCHAR(30) DEFAULT NULL COMMENT '结算方式二名称',
  `OtherPayStyle` INT(11) DEFAULT NULL COMMENT '结算方式三',
  `OtherPayStyleName` VARCHAR(30) DEFAULT NULL COMMENT '结算方式三名称',
  `OtherPay` DOUBLE DEFAULT NULL COMMENT '结算方式三金额',
  `PriceOfTax` INT(5) DEFAULT NULL COMMENT '单价是否含税',
  `VoucherNo` INT(11) DEFAULT NULL COMMENT '凭证编号',
  `CVoucherNo` INT(11) DEFAULT NULL COMMENT '差价凭证编号',
  `MakerID` INT(11) DEFAULT NULL COMMENT '制单人员编号',
  `Maker` VARCHAR(30) DEFAULT NULL COMMENT '制单人员',
  `PermitterID` INT(11) DEFAULT NULL COMMENT '复核人员编号',
  `Permitter` VARCHAR(30) DEFAULT NULL COMMENT '复核人员',
  `Remark` VARCHAR(225) DEFAULT NULL COMMENT '备注',
  `BillTypeID` INT(11) DEFAULT NULL COMMENT '单据类型编号',
  `BillType` VARCHAR(30) DEFAULT NULL COMMENT '单据类型',
  `AffirmStateID` INT(11) DEFAULT NULL COMMENT '采购核对状态编号',
  `AffirmState` VARCHAR(30) DEFAULT NULL COMMENT '采购核对状态',
  `PayTermID` INT(11) DEFAULT NULL COMMENT '付款条件编号',
  `PayTerm` VARCHAR(30) DEFAULT NULL COMMENT '付款条件',
  `DelayDays` INT(11) DEFAULT NULL COMMENT '付款延迟天数',
  `InvoTypeID` INT(11) DEFAULT NULL COMMENT '发票类型编号',
  `InvotypeName` VARCHAR(30) DEFAULT NULL COMMENT '发票类型名称',
  `GatherOther` VARCHAR(225) DEFAULT NULL COMMENT '其他收款方式描述',
  `MakerSign` VARCHAR(30) DEFAULT NULL COMMENT '制单人签名',
  `PermitterSign` VARCHAR(30) DEFAULT NULL COMMENT '复核人签名',
  `Tax` DOUBLE DEFAULT NULL COMMENT '发票税额',
  PRIMARY KEY (`FundBillNo`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

/*Data for the table `lypurchaseinvoice` */

/*Table structure for table `lypurchaseinvoicedetails` */

DROP TABLE IF EXISTS `lypurchaseinvoicedetails`;

CREATE TABLE `lypurchaseinvoicedetails` (
  `ProdID` INT(11) NOT NULL COMMENT '物料编号',
  `StdUnitName` VARCHAR(20) DEFAULT NULL COMMENT '基本单位',
  `StdUnitID` INT(11) DEFAULT NULL COMMENT '单位编号',
  `Amount` DOUBLE DEFAULT NULL COMMENT '金额',
  `TaxAmt` FLOAT DEFAULT NULL COMMENT '税率%',
  `AmountWithTax` FLOAT DEFAULT NULL COMMENT '含税金额',
  `SerNo` INT(11) DEFAULT NULL COMMENT '栏号',
  `LQty` INT(11) DEFAULT NULL COMMENT '未进数量',
  `Remark` INT(11) DEFAULT NULL COMMENT '分录备注',
  `ProdName` VARCHAR(50) DEFAULT NULL COMMENT '物料名称',
  `ProdSize` VARCHAR(30) DEFAULT NULL COMMENT '规格型号',
  `FormNo` INT(11) DEFAULT NULL COMMENT '采购订单号',
  `SUnitID` INT(11) DEFAULT NULL COMMENT '单位编号',
  `SUnit` VARCHAR(30) DEFAULT NULL COMMENT '单位名称',
  `SPriice` DOUBLE DEFAULT NULL COMMENT '单价',
  `SQuantity` INT(5) DEFAULT NULL COMMENT '数量',
  PRIMARY KEY (`ProdID`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

/*Data for the table `lypurchaseinvoicedetails` */

/*Table structure for table `lypurchaselist` */

DROP TABLE IF EXISTS `lypurchaselist`;

CREATE TABLE `lypurchaselist` (
  `SerNo` INT(11) NOT NULL COMMENT '栏号',
  `ProdID` INT(11) NOT NULL COMMENT '物料编号',
  `ProdName` VARCHAR(30) DEFAULT NULL COMMENT '物料名称',
  `ProdSize` VARCHAR(30) DEFAULT NULL COMMENT '规格型号',
  `SourcePrice` DOUBLE DEFAULT NULL COMMENT '单价',
  `SourceAmount` DOUBLE DEFAULT NULL COMMENT '金额',
  `Quantity` INT(5) DEFAULT NULL COMMENT '数量',
  `TaxRate` FLOAT DEFAULT NULL COMMENT '税率%',
  `TaxAmt` FLOAT DEFAULT NULL COMMENT '含税金额',
  `AmountWithTax` DOUBLE DEFAULT NULL COMMENT '价差',
  `BalanceAmt` INT(11) DEFAULT NULL COMMENT '来源单别',
  `SourceType` VARCHAR(50) DEFAULT NULL COMMENT '来源单号',
  `RateBalanceAmt` INT(11) DEFAULT NULL COMMENT '汇差',
  `TotalBalanceAmt` INT(11) DEFAULT NULL COMMENT '差额合计',
  `Remark` INT(11) DEFAULT NULL COMMENT '分录备注',
  `StdUnitID` INT(11) DEFAULT NULL COMMENT '单位编号',
  `StdUnitName` VARCHAR(50) DEFAULT NULL COMMENT '单位',
  PRIMARY KEY (`SerNo`,`ProdID`),
  KEY `ProdID` (`ProdID`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

/*Data for the table `lypurchaselist` */

/*Table structure for table `smlordbillmain` */

DROP TABLE IF EXISTS `smlordbillmain`;

CREATE TABLE `smlordbillmain` (
  `flag` INT(4) NOT NULL COMMENT '标识字段',
  `billNo` VARCHAR(14) NOT NULL COMMENT '单据号码',
  `billDate` DATE DEFAULT NULL COMMENT '单据日期',
  `customerID` VARCHAR(20)  COMMENT '客户编号',
  `dueTo` VARCHAR(20)  COMMENT '账款归属',
  `custAddres` VARCHAR(20)  COMMENT '送货地址名称',
  `billStyle` INT(4)  COMMENT '销售订单类型',
  `salesMan` VARCHAR(10)  COMMENT '业务员编号',
  `currID` VARCHAR(4)  COMMENT '币别',
  `formalCust` INT(4)  COMMENT '正式客户',
  `validDate` DATE  COMMENT '有效日期',
  `departID` VARCHAR(4)  COMMENT '所属部门',
  `maker` VARCHAR(4)  COMMENT '审核人',
  `auditStatus` INT(2)  COMMENT '审核状态',
  `permitter` VARCHAR(4) COMMENT '复核人员',
  `detail` VARCHAR(4) DEFAULT NULL COMMENT '描述编号',
  `isTrans` VARCHAR(4) DEFAULT NULL COMMENT '已转采购建议',
  `sumBTaxAmt` FLOAT DEFAULT NULL COMMENT '金额合计',
  `taxType` VARCHAR(4) DEFAULT NULL COMMENT '课税类别',
  `sumTax` FLOAT DEFAULT NULL COMMENT '税额合计',
  `sumQty` INT(10) DEFAULT NULL COMMENT '数量合计',
  `billStatus` INT(2) DEFAULT NULL COMMENT '单况',
  `mergeOutState` VARCHAR(10) DEFAULT NULL COMMENT '抛出状态',
  `linkMan` VARCHAR(10) DEFAULT NULL COMMENT '联络人员',
  `linkTelephone` VARCHAR(20) DEFAULT NULL COMMENT '联络电话',
  `priceOfTax` INT(2) DEFAULT NULL COMMENT '单价是否含税',
  `gatherStyle` VARCHAR(20) DEFAULT NULL COMMENT '收款条件',
  `gatherDelay` INT(4) DEFAULT NULL COMMENT '收款天数',
  `checkStyle` INT(4) DEFAULT NULL COMMENT '票期方式',
  `checkDelay` INT(10) DEFAULT NULL COMMENT '票期天数',
  `prepayDay` DATE DEFAULT NULL COMMENT '收款日期',
  `encashDay` DATE DEFAULT NULL COMMENT '预兑日期',
  `accMonth` VARCHAR(10) DEFAULT NULL COMMENT '账款月份',
  `makerID` INT(10) DEFAULT NULL COMMENT '制单人员',
  `permitterID` INT(10) DEFAULT NULL COMMENT '复核人员',
  `signBack` VARCHAR(10) DEFAULT NULL COMMENT '签回',
  `hasCheck` INT(2) DEFAULT NULL COMMENT '是否过账',
  `sumAmtATax` FLOAT DEFAULT NULL COMMENT '含税金额合计',
  `localTotal` FLOAT DEFAULT NULL COMMENT '本币未税',
  `localTax` FLOAT DEFAULT NULL COMMENT '税额本位币合计',
  `totalErrAmount` FLOAT DEFAULT NULL COMMENT '总计误差',
  `mlSumBTaxAmt` FLOAT DEFAULT NULL COMMENT '金额合计本位币',
  `mlSumAmtATax` FLOAT DEFAULT NULL COMMENT '含税金额本位币合计',
  PRIMARY KEY (`flag`,`billNo`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='销售主表';

/*Data for the table `smlordbillmain` */

/*Table structure for table `smlordbillsub` */

DROP TABLE IF EXISTS `smlordbillsub`;

CREATE TABLE `smlordbillsub` (
  `flag` INT(4) NOT NULL COMMENT '标识字段',
  `billNo` VARCHAR(14) NOT NULL COMMENT '单据号码',
  `rowNO` INT(4) NOT NULL COMMENT '行号',
  `serNO` INT(4)  COMMENT '行号',
  `billDate` DATE DEFAULT NULL COMMENT '单据日期',
  `prodID` VARCHAR(20)  COMMENT '物料编号',
  `prodName` VARCHAR(50)  COMMENT '物料名称',
  `prodSize` VARCHAR(20)  COMMENT '物料规格',
  `quantity` INT(10)  COMMENT '基本数量',
  `unit` VARCHAR(20) COMMENT '基本单位',
  `oldPrice` FLOAT  COMMENT '折扣前单价',
  `price` FLOAT  COMMENT '基本单价',
  `amount` FLOAT  COMMENT '金额',
  `taxRate` FLOAT COMMENT '税率',
  `taxAmt` FLOAT DEFAULT NULL COMMENT '税额',
  `mlTaxAmt` FLOAT DEFAULT NULL COMMENT '税额本位币',
  `discount` FLOAT DEFAULT NULL COMMENT '折数',
  `isGift` BOOLEAN DEFAULT NULL COMMENT '赠品',
  `itemRemark` VARCHAR(50) DEFAULT NULL COMMENT '分录备注',
  `detail` VARCHAR(20) DEFAULT NULL COMMENT '细项描述',
  `preInDate` DATE DEFAULT NULL COMMENT '预交货日期',
  `needExamine` VARCHAR(10) DEFAULT NULL COMMENT '验货',
  `arrangeNO` VARCHAR(20) DEFAULT NULL COMMENT '排程单号',
  `fromRow` INT(4) DEFAULT NULL COMMENT '来源栏号',
  `fromNO` VARCHAR(20) DEFAULT NULL COMMENT '来源单号',
  `tranType` VARCHAR(20) DEFAULT NULL COMMENT '来源别',
  `qtyRemain` INT(10) DEFAULT NULL COMMENT '未转数量',
  `converRate` INT(4) DEFAULT NULL COMMENT '换算率',
  `outQty` INT(10) DEFAULT NULL COMMENT '数量1',
  `custBillNo` VARCHAR(20) DEFAULT NULL COMMENT '客户订单',
  `mark` VARCHAR(4) DEFAULT NULL COMMENT '标记',
  `mlAmount` FLOAT DEFAULT NULL COMMENT '金额本位币',
  `hasCheck` INT(2) DEFAULT NULL COMMENT '是否过账',
  `sPrice` FLOAT DEFAULT NULL COMMENT '单价',
  `sQuantity` INT(10) DEFAULT NULL COMMENT '数量',
  `unitRelation` FLOAT DEFAULT NULL COMMENT '换算率',
  `sUnitID` INT(4) DEFAULT NULL COMMENT '单位编号',
  `eQuantity` INT(10) DEFAULT NULL COMMENT '辅助数量',
  `eUnitID` VARCHAR(20) DEFAULT NULL COMMENT '辅助单位',
  `eUnitRelation` FLOAT DEFAULT NULL COMMENT '辅助换算率',
  PRIMARY KEY (`flag`,`billNo`,`rowNO`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='销售报价、订单明细表';

/*Data for the table `smlordbillsub` */

/*Table structure for table `smlstkadjustmain` */

DROP TABLE IF EXISTS `smlstkadjustmain`;

CREATE TABLE `smlstkadjustmain` (
  `flag` INT(4) NOT NULL COMMENT '标识字段',
  `adjustNO` VARCHAR(20) NOT NULL COMMENT '单据编号',
  `adjustDate` DATE NOT NULL COMMENT '单据日期',
  `maker` VARCHAR(20) DEFAULT NULL COMMENT '制单人员',
  `permitter` VARCHAR(20) DEFAULT NULL COMMENT '复核人员',
  `voucherNO` VARCHAR(20) NOT NULL COMMENT '凭证编号',
  `sumQty` INT(10) NOT NULL COMMENT '数量合计',
  `uDef1` VARCHAR(20) NOT NULL COMMENT '自定栏一',
  `uDef2` VARCHAR(20) NOT NULL COMMENT '自定栏二',
  `departID` INT(4) NOT NULL COMMENT '所属部门',
  `makerID` INT(4) NOT NULL COMMENT '复核人员',
  `wareID` INT(4) NOT NULL COMMENT '仓库id',
  `salesID` INT(4) NOT NULL COMMENT '出库人员id',
  `billStyle` INT(4) NOT NULL COMMENT '出库类型id',
  `billStatus` INT(4) DEFAULT NULL COMMENT '出库状态',
  PRIMARY KEY (`flag`,`adjustNO`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='销售报价、订单明细表';

/*Data for the table `smlstkadjustmain` */

/*Table structure for table `smlstkadjustsub` */

DROP TABLE IF EXISTS `smlstkadjustsub`;

CREATE TABLE `smlstkadjustsub` (
  `flag` INT(4) NOT NULL COMMENT '标识字段',
  `adjustNO` VARCHAR(20) NOT NULL COMMENT '单据编号',
  `rowNo` INT(4) NOT NULL COMMENT '行号',
  `serNO` INT(4) DEFAULT NULL COMMENT '栏号',
  `adjustDate` DATE DEFAULT NULL COMMENT '单据日期',
  `price` FLOAT NOT NULL COMMENT '单价',
  `amount` FLOAT NOT NULL COMMENT '金额',
  `haveBatch` VARCHAR(20) NOT NULL COMMENT '批号',
  `itemRemark` VARCHAR(255) NOT NULL COMMENT '分录备注',
  PRIMARY KEY (`flag`,`adjustNO`,`rowNo`)
) ENGINE=INNODB DEFAULT CHARSET=utf8 COMMENT='销售报价、订单明细表';

/*Data for the table `smlstkadjustsub` */

/*Table structure for table `sys_permissions` */

DROP TABLE IF EXISTS `sys_permissions`;

CREATE TABLE `sys_permissions` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `permission` VARCHAR(100) DEFAULT NULL,
  `description` VARCHAR(100) DEFAULT NULL,
  `available` TINYINT(1) DEFAULT '0',
  `path` VARCHAR(255) DEFAULT NULL,
  `catalog` TINYINT(1) DEFAULT NULL,
  `icon` VARCHAR(255) DEFAULT NULL,
  `component` VARCHAR(255) DEFAULT NULL,
  `name` VARCHAR(255) DEFAULT NULL,
  `pid` BIGINT(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_sys_permissions_permission` (`permission`)
) ENGINE=INNODB AUTO_INCREMENT=307 DEFAULT CHARSET=utf8;

/*Data for the table `sys_permissions` */

INSERT  INTO `sys_permissions`(`id`,`permission`,`description`,`available`,`path`,`catalog`,`icon`,`component`,`name`,`pid`) VALUES (1,'commonMaterials','共用物料',0,'/commonMaterials',NULL,NULL,NULL,NULL,NULL),(2,'commonMaterialsMenu1','基本资料',0,'/commonMaterials/menu1',NULL,NULL,NULL,NULL,NULL),(3,'commonMaterialsMenu1-1','部门设定',0,'/commonMaterials/menu1/menu1-1',NULL,NULL,NULL,NULL,NULL),(4,'commonMaterialsMenu1-2','项目设定',0,'/commonMaterials/menu1/menu1-2',NULL,NULL,NULL,NULL,NULL),(5,'commonMaterialsMenu1-3','币别设定',0,'/commonMaterials/menu1/menu1-3',NULL,NULL,NULL,NULL,NULL),(6,'commonMaterialsMenu1-4','地区设定',0,'/commonMaterials/menu1/menu1-4',NULL,NULL,NULL,NULL,NULL),(7,'commonMaterialsMenu1-5','学历设定',0,'/commonMaterials/menu1/menu1-5',NULL,NULL,NULL,NULL,NULL),(8,'commonMaterialsMenu1-6','银行类别设定',0,'/commonMaterials/menu1/menu1-6',NULL,NULL,NULL,NULL,NULL),(9,'commonMaterialsMenu1-7','银行设定',0,'/commonMaterials/menu1/menu1-7',NULL,NULL,NULL,NULL,NULL),(10,'commonMaterialsMenu1-8','税目设定',0,'/commonMaterials/menu1/menu1-8',NULL,NULL,NULL,NULL,NULL),(11,'commonMaterialsMenu1-9','发票类型设定',0,'/commonMaterials/menu1/menu1-9',NULL,NULL,NULL,NULL,NULL),(12,'commonMaterialsMenu1-10','现金账户设定',0,'/commonMaterials/menu1/menu1-10',NULL,NULL,NULL,NULL,NULL),(13,'commonMaterialsMenu1-11','银行存款账户设定',0,'/commonMaterials/menu1/menu1-11',NULL,NULL,NULL,NULL,NULL),(14,'commonMaterialsMenu1-12','结算方式设定',0,'/commonMaterials/menu1/menu1-12',NULL,NULL,NULL,NULL,NULL),(15,'commonMaterialsMenu1-13','人员主文件设定',0,'/commonMaterials/menu1/menu1-13',NULL,NULL,NULL,NULL,NULL),(16,'commonMaterialsMenu1-14','收入费用类别设定',0,'/commonMaterials/menu1/menu1-14',NULL,NULL,NULL,NULL,NULL),(17,'commonMaterialsMenu1-15','节假日设定',0,'/commonMaterials/menu1/menu1-15',NULL,NULL,NULL,NULL,NULL),(18,'commonMaterialsMenu1-16','行事历设定',0,'/commonMaterials/menu1/menu1-16',NULL,NULL,NULL,NULL,NULL),(19,'commonMaterialsMenu2','物料资料',0,'/commonMaterials/menu2',NULL,NULL,NULL,NULL,NULL),(20,'commonMaterialsMenu2-1','仓库设定',0,'/commonMaterials/menu2/menu2-1',NULL,NULL,NULL,NULL,NULL),(21,'commonMaterialsMenu2-2','物料类别设定',0,'/commonMaterials/menu2/menu2-2',NULL,NULL,NULL,NULL,NULL),(22,'commonMaterialsMenu2-3','计量单位设定',0,'/commonMaterials/menu2/menu2-3',NULL,NULL,NULL,NULL,NULL),(23,'commonMaterialsMenu2-4','物料主文件设定',0,'/commonMaterials/menu2/menu2-4',NULL,NULL,NULL,NULL,NULL),(24,'commonMaterialsMenu2-5','价格批次设定',0,'/commonMaterials/menu2/menu2-5',NULL,NULL,NULL,NULL,NULL),(25,'commonMaterialsMenu2-6','物料组合一览表',0,'/commonMaterials/menu2/menu2-6',NULL,NULL,NULL,NULL,NULL),(26,'commonMaterialsMenu2-7','原厂编号查询',0,'/commonMaterials/menu2/menu2-7',NULL,NULL,NULL,NULL,NULL),(27,'commonMaterialsMenu2-8','子件一览表',0,'/commonMaterials/menu2/menu2-8',NULL,NULL,NULL,NULL,NULL),(28,'commonMaterialsMenu3','往来资料',0,'/commonMaterials/menu3',NULL,NULL,NULL,NULL,NULL),(29,'commonMaterialsMenu3-1','客户类别设定',0,'/commonMaterials/menu3/menu3-1',NULL,NULL,NULL,NULL,NULL),(30,'commonMaterialsMenu3-2','客户等级设定',0,'/commonMaterials/menu3/menu3-2',NULL,NULL,NULL,NULL,NULL),(31,'commonMaterialsMenu3-3','洽谈阶段设定',0,'/commonMaterials/menu3/menu3-3',NULL,NULL,NULL,NULL,NULL),(32,'commonMaterialsMenu3-4','潜在客户主文件设定',0,'/commonMaterials/menu3/menu3-4',NULL,NULL,NULL,NULL,NULL),(33,'commonMaterialsMenu3-5','客户主文件设定',0,'/commonMaterials/menu3/menu3-5',NULL,NULL,NULL,NULL,NULL),(34,'commonMaterialsMenu3-6','潜在客户转正式客户',0,'/commonMaterials/menu3/menu3-6',NULL,NULL,NULL,NULL,NULL),(35,'commonMaterialsMenu3-7','供应商类别设定',0,'/commonMaterials/menu3/menu3-7',NULL,NULL,NULL,NULL,NULL),(36,'commonMaterialsMenu3-8','供应商主文件设定',0,'/commonMaterials/menu3/menu3-8',NULL,NULL,NULL,NULL,NULL),(37,'commonMaterialsMenu4','科目资料',0,'/commonMaterials/menu4',NULL,NULL,NULL,NULL,NULL),(38,'commonMaterialsMenu4-1','科目总类设定',0,'/commonMaterials/menu4/menu4-1',NULL,NULL,NULL,NULL,NULL),(39,'commonMaterialsMenu4-2','科目类别设定',0,'/commonMaterials/menu4/menu4-2',NULL,NULL,NULL,NULL,NULL),(40,'commonMaterialsMenu4-3','会计科目设定',0,'/commonMaterials/menu4/menu4-3',NULL,NULL,NULL,NULL,NULL),(41,'purchase','采购管理',0,'/purchase',NULL,NULL,NULL,NULL,NULL),(42,'purchaseMenu1','基本资料',0,'/purchase/menu1',NULL,NULL,NULL,NULL,NULL),(43,'purchaseMenu1-1','采购请购类型设定',0,'/purchase/menu1/menu1-1',NULL,NULL,NULL,NULL,NULL),(44,'purchaseMenu1-2','采购入库类型设定',0,'/purchase/menu1/menu1-2',NULL,NULL,NULL,NULL,NULL),(45,'purchaseMenu1-3','采购订单类型设定',0,'/purchase/menu1/menu1-3',NULL,NULL,NULL,NULL,NULL),(46,'purchaseMenu2','采购作业',0,'/purchase/menu2',NULL,NULL,NULL,NULL,NULL),(47,'purchaseMenu2-1','采购请购单',0,'/purchase/menu2/menu2-1',NULL,NULL,NULL,NULL,NULL),(48,'purchaseMenu2-2','采购询价单',0,'/purchase/menu2/menu2-2',NULL,NULL,NULL,NULL,NULL),(49,'purchaseMenu2-3','采购订单',0,'/purchase/menu2/menu2-3',NULL,NULL,NULL,NULL,NULL),(50,'purchaseMenu2-4','采购入库单',0,'/purchase/menu2/menu2-4',NULL,NULL,NULL,NULL,NULL),(51,'purchaseMenu2-5','采购退货单',0,'/purchase/menu2/menu2-5',NULL,NULL,NULL,NULL,NULL),(52,'purchaseMenu2-6','采购折让确认单',0,'/purchase/menu2/menu2-6',NULL,NULL,NULL,NULL,NULL),(53,'purchaseMenu2-7','采购发票',0,'/purchase/menu2/menu2-7',NULL,NULL,NULL,NULL,NULL),(54,'purchaseMenu2-8','采购历史交易记录',0,'/purchase/menu2/menu2-8',NULL,NULL,NULL,NULL,NULL),(55,'purchaseMenu3','分摊作业',0,'/purchase/menu3',NULL,NULL,NULL,NULL,NULL),(56,'purchaseMenu3-1','采购分摊作业',0,'/purchase/menu3/menu3-1',NULL,NULL,NULL,NULL,NULL),(57,'sale','销售管理',0,'/sale',NULL,NULL,NULL,NULL,NULL),(58,'saleMenu1','基本资料',0,'/sale/menu1',NULL,NULL,NULL,NULL,NULL),(59,'saleMenu1-1','销售订单类型设定',0,'/sale/menu1/menu1-1',NULL,NULL,NULL,NULL,NULL),(60,'saleMenu1-2','销售出库类型设定',0,'/sale/menu1/menu1-2',NULL,NULL,NULL,NULL,NULL),(61,'saleMenu2','销售作业',0,'/sale/menu2',NULL,NULL,NULL,NULL,NULL),(62,'saleMenu2-1','销售报价单',0,'/sale/menu2/menu2-1',NULL,NULL,NULL,NULL,NULL),(63,'saleMenu2-2','销售订单',0,'/sale/menu2/menu2-2',NULL,NULL,NULL,NULL,NULL),(64,'saleMenu2-3','销售出库单',0,'/sale/menu2/menu2-3',NULL,NULL,NULL,NULL,NULL),(65,'saleMenu2-4','销售退货单',0,'/sale/menu2/menu2-4',NULL,NULL,NULL,NULL,NULL),(66,'saleMenu2-5','销售折让确认单',0,'/sale/menu2/menu2-5',NULL,NULL,NULL,NULL,NULL),(67,'saleMenu2-6','销售发票',0,'/sale/menu2/menu2-6',NULL,NULL,NULL,NULL,NULL),(68,'saleMenu3','金税接口',0,'/sale/menu3',NULL,NULL,NULL,NULL,NULL),(69,'saleMenu3-1','销售发票到处',0,'/sale/menu3/menu3-1',NULL,NULL,NULL,NULL,NULL),(70,'saleMenu4','报表',0,'/sale/menu4',NULL,NULL,NULL,NULL,NULL),(71,'saleMenu4-1','销售日报表',0,'/sale/menu4/menu4-1',NULL,NULL,NULL,NULL,NULL),(72,'saleMenu4-2','销售分析表',0,'/sale/menu4/menu4-2',NULL,NULL,NULL,NULL,NULL),(73,'stock','库存管理',0,'/stock',NULL,NULL,NULL,NULL,NULL),(74,'stockMenu1','基本资料',0,'/stock/menu1',NULL,NULL,NULL,NULL,NULL),(75,'stockMenu1-1','入库类型设定',0,'/stock/menu1/menu1-1',NULL,NULL,NULL,NULL,NULL),(76,'stockMenu1-2','出库类型设定',0,'/stock/menu1/menu1-2',NULL,NULL,NULL,NULL,NULL),(77,'stockMenu2','其他出入库作业',0,'/stock/menu2',NULL,NULL,NULL,NULL,NULL),(78,'stockMenu2-1','其他入库单',0,'/stock/menu2/menu2-1',NULL,NULL,NULL,NULL,NULL),(79,'stockMenu2-2','其他出库单',0,'/stock/menu2/menu2-2',NULL,NULL,NULL,NULL,NULL),(80,'stockMenu3','调拨盘点作业',0,'/stock/menu3',NULL,NULL,NULL,NULL,NULL),(81,'stockMenu3-1','调拨单',0,'/stock/menu3/menu3-1',NULL,NULL,NULL,NULL,NULL),(82,'stockMenu3-2','打印盘点单',0,'/stock/menu3/menu3-2',NULL,NULL,NULL,NULL,NULL),(83,'stockMenu3-3','盘点单',0,'/stock/menu3/menu3-3',NULL,NULL,NULL,NULL,NULL),(84,'stockMenu4','调价作业',0,'/stock/menu4',NULL,NULL,NULL,NULL,NULL),(85,'stockMenu4-1','调价单',0,'/stock/menu4/menu4-1',NULL,NULL,NULL,NULL,NULL),(86,'production','生产管理',0,'/production',NULL,NULL,NULL,NULL,NULL),(87,'productionMenu1','基本资料',0,'/production/menu1',NULL,NULL,NULL,NULL,NULL),(88,'productionMenu1-1','BOM设定',0,'/production/menu1/menu1-1',NULL,NULL,NULL,NULL,NULL),(89,'productionMenu1-2','生产单位设定',0,'/production/menu1/menu1-2',NULL,NULL,NULL,NULL,NULL),(90,'productionMenu2','生产排程作业',0,'/production/menu2',NULL,NULL,NULL,NULL,NULL),(91,'productionMenu2-1','计划生产单',0,'/production/menu2/menu2-1',NULL,NULL,NULL,NULL,NULL),(92,'productionMenu2-2','MRP',0,'/production/menu2/menu2-2',NULL,NULL,NULL,NULL,NULL),(93,'productionMenu2-3','生产排程调整',0,'/production/menu2/menu2-3',NULL,NULL,NULL,NULL,NULL),(94,'productionMenu3','厂内生产作业',0,'/production/menu3',NULL,NULL,NULL,NULL,NULL),(95,'productionMenu3-1','厂内生产工单',0,'/production/menu3/menu3-1',NULL,NULL,NULL,NULL,NULL),(96,'productionMenu3-2','厂内生产领料单',0,'/production/menu3/menu3-2',NULL,NULL,NULL,NULL,NULL),(97,'productionMenu3-3','厂内生产退料单',0,'/production/menu3/menu3-3',NULL,NULL,NULL,NULL,NULL),(98,'productionMenu3-4','厂内生产入库单',0,'/production/menu3/menu3-4',NULL,NULL,NULL,NULL,NULL),(99,'productionMenu4','委外生产作业',0,'/production/menu4',NULL,NULL,NULL,NULL,NULL),(100,'productionMenu4-1','委外生产工单',0,'/production/menu4/menu4-1',NULL,NULL,NULL,NULL,NULL),(101,'productionMenu4-2','委外生产领料单',0,'/production/menu4/menu4-2',NULL,NULL,NULL,NULL,NULL),(102,'productionMenu4-3','委外生产退料单',0,'/production/menu4/menu4-3',NULL,NULL,NULL,NULL,NULL),(103,'productionMenu4-4','委外生产入库单',0,'/production/menu4/menu4-4',NULL,NULL,NULL,NULL,NULL),(104,'productionMenu4-5','委外加工送货单',0,'/production/menu4/menu4-5',NULL,NULL,NULL,NULL,NULL),(105,'productionMenu5','生产成本作业',0,'/production/menu5',NULL,NULL,NULL,NULL,NULL),(106,'productionMenu5-1','生产成本确认单',0,'/production/menu5/menu5-1',NULL,NULL,NULL,NULL,NULL),(107,'bill','账款管理',0,'/bill',NULL,NULL,NULL,NULL,NULL),(108,'billMenu1','其他应收付作业',0,'/bill/menu1',NULL,NULL,NULL,NULL,NULL),(109,'billMenu1-1','其他应收单',0,'/bill/menu1/menu1-1',NULL,NULL,NULL,NULL,NULL),(110,'billMenu1-2','其他应付单',0,'/bill/menu1/menu1-2',NULL,NULL,NULL,NULL,NULL),(111,'billMenu2','冲款作业',0,'/bill/menu2',NULL,NULL,NULL,NULL,NULL),(112,'billMenu2-1','应收冲款单',0,'/bill/menu2/menu2-1',NULL,NULL,NULL,NULL,NULL),(113,'billMenu2-2','应付冲款单',0,'/bill/menu2/menu2-2',NULL,NULL,NULL,NULL,NULL),(114,'finance','财务管理',0,'/finance',NULL,NULL,NULL,NULL,NULL),(115,'financeMenu1','期初开账',0,'/finance/menu1',NULL,NULL,NULL,NULL,NULL),(116,'financeMenu1-1','期初余额录入',0,'/finance/menu1/menu1-1',NULL,NULL,NULL,NULL,NULL),(117,'financeMenu2','凭证作业',0,'/finance/menu2',NULL,NULL,NULL,NULL,NULL),(118,'financeMenu2-1','记账凭证',0,'/finance/menu2/menu2-1',NULL,NULL,NULL,NULL,NULL),(119,'financeMenu2-2','凭证常用分录设定',0,'/finance/menu2/menu2-2',NULL,NULL,NULL,NULL,NULL),(120,'financeMenu2-3','现金流量项目设定',0,'/finance/menu2/menu2-3',NULL,NULL,NULL,NULL,NULL),(121,'financeMenu2-4','历史记账凭证',0,'/finance/menu2/menu2-4',NULL,NULL,NULL,NULL,NULL),(122,'financeMenu3','财务公式',0,'/finance/menu3',NULL,NULL,NULL,NULL,NULL),(123,'financeMenu3-1','利润公式设定',0,'/finance/menu3/menu3-1',NULL,NULL,NULL,NULL,NULL),(124,'financeMenu3-2','现金流量公式设定',0,'/finance/menu3/menu3-2',NULL,NULL,NULL,NULL,NULL),(125,'financeMenu3-3','利润分配公式设定',0,'/finance/menu3/menu3-3',NULL,NULL,NULL,NULL,NULL),(126,'financeMenu3-4','资产负债表公式设定',0,'/finance/menu3/menu3-4',NULL,NULL,NULL,NULL,NULL),(127,'financeMenu3-5','财务比率公式设定',0,'/finance/menu3/menu3-5',NULL,NULL,NULL,NULL,NULL),(128,'financeMenu3-6','应交税公式设定',0,'/finance/menu3/menu3-6',NULL,NULL,NULL,NULL,NULL),(129,'financeMenu3-7','股东权益增减变动公式设定',0,'/finance/menu3/menu3-7',NULL,NULL,NULL,NULL,NULL),(130,'financeMenu4','特殊作业',0,'/finance/menu4',NULL,NULL,NULL,NULL,NULL),(131,'financeMenu4-1','预算实时查询',0,'/finance/menu4/menu4-1',NULL,NULL,NULL,NULL,NULL),(132,'financeMenu4-2','多栏式明细账设定',0,'/finance/menu4/menu4-2',NULL,NULL,NULL,NULL,NULL),(133,'financeMenu4-3','财务数据导出',0,'/finance/menu4/menu4-3',NULL,NULL,NULL,NULL,NULL),(134,'financeMenu4-4','凭证分录科目对调',0,'/finance/menu4/menu4-4',NULL,NULL,NULL,NULL,NULL),(135,'financeMenu5','传输作业',0,'/finance/menu5',NULL,NULL,NULL,NULL,NULL),(136,'financeMenu5-1','采购传输作业',0,'/finance/menu5/menu5-1',NULL,NULL,NULL,NULL,NULL),(137,'financeMenu5-2','销售传输作业',0,'/finance/menu5/menu5-2',NULL,NULL,NULL,NULL,NULL),(138,'financeMenu5-3','库存传输作业',0,'/finance/menu5/menu5-3',NULL,NULL,NULL,NULL,NULL),(139,'financeMenu5-4','账款传输作业',0,'/finance/menu5/menu5-4',NULL,NULL,NULL,NULL,NULL),(140,'financeMenu5-5','生产传输作业',0,'/finance/menu5/menu5-5',NULL,NULL,NULL,NULL,NULL),(141,'financeMenu5-6','固资传输作业',0,'/finance/menu5/menu5-6',NULL,NULL,NULL,NULL,NULL),(142,'financeMenu6','期末处理',0,'/finance/menu6',NULL,NULL,NULL,NULL,NULL),(143,'financeMenu6-1','自动转账设定',0,'/finance/menu6/menu6-1',NULL,NULL,NULL,NULL,NULL),(144,'financeMenu6-2','自动转账',0,'/finance/menu6/menu6-2',NULL,NULL,NULL,NULL,NULL),(145,'financeMenu6-3','期末调汇',0,'/finance/menu6/menu6-3',NULL,NULL,NULL,NULL,NULL),(146,'financeMenu6-4','结转损益',0,'/finance/menu6/menu6-4',NULL,NULL,NULL,NULL,NULL),(147,'cashier','出纳管理',0,'/cashier',NULL,NULL,NULL,NULL,NULL),(148,'cashierMenu1','期初开账',0,'/cashier/menu1',NULL,NULL,NULL,NULL,NULL),(149,'cashierMenu1-1','出纳期初余额录入',0,'/cashier/menu1/menu1-1',NULL,NULL,NULL,NULL,NULL),(150,'cashierMenu2','业务管理',0,'/cashier/menu2',NULL,NULL,NULL,NULL,NULL),(151,'cashierMenu2-1','现金收款单',0,'/cashier/menu2/menu2-1',NULL,NULL,NULL,NULL,NULL),(152,'cashierMenu2-2','现金付款单',0,'/cashier/menu2/menu2-2',NULL,NULL,NULL,NULL,NULL),(153,'cashierMenu2-3','银行存款收款单',0,'/cashier/menu2/menu2-3',NULL,NULL,NULL,NULL,NULL),(154,'cashierMenu2-4','银行存款付款单',0,'/cashier/menu2/menu2-4',NULL,NULL,NULL,NULL,NULL),(155,'cashierMenu2-5','银行存款对账单',0,'/cashier/menu2/menu2-5',NULL,NULL,NULL,NULL,NULL),(156,'cashierMenu2-6','银行存款对账',0,'/cashier/menu2/menu2-6',NULL,NULL,NULL,NULL,NULL),(157,'cashierMenu2-7','调汇单',0,'/cashier/menu2/menu2-7',NULL,NULL,NULL,NULL,NULL),(158,'cashierMenu3','支票管理',0,'/cashier/menu3',NULL,NULL,NULL,NULL,NULL),(159,'cashierMenu3-1','支票管理',0,'/cashier/menu3/menu3-1',NULL,NULL,NULL,NULL,NULL),(160,'cashierMenu3-2','支票购买',0,'/cashier/menu3/menu3-2',NULL,NULL,NULL,NULL,NULL),(161,'cashierMenu3-3','支票领用',0,'/cashier/menu3/menu3-3',NULL,NULL,NULL,NULL,NULL),(162,'cashierMenu3-4','支票签发',0,'/cashier/menu3/menu3-4',NULL,NULL,NULL,NULL,NULL),(163,'cashierMenu3-5','支票核销',0,'/cashier/menu3/menu3-5',NULL,NULL,NULL,NULL,NULL),(164,'solidcapital','固资管理',0,'/solidcapital',NULL,NULL,NULL,NULL,NULL),(165,'solidcapitalMenu1','基本资料',0,'/solidcapital/menu1',NULL,NULL,NULL,NULL,NULL),(166,'solidcapitalMenu1-1','使用状态设定',0,'/solidcapital/menu1/menu1-1',NULL,NULL,NULL,NULL,NULL),(167,'solidcapitalMenu1-2','资产来源设定',0,'/solidcapital/menu1/menu1-2',NULL,NULL,NULL,NULL,NULL),(168,'solidcapitalMenu1-3','资产处置方式设定',0,'/solidcapital/menu1/menu1-3',NULL,NULL,NULL,NULL,NULL),(169,'solidcapitalMenu1-4','资产类别设定',0,'/solidcapital/menu1/menu1-4',NULL,NULL,NULL,NULL,NULL),(170,'solidcapitalMenu1-5','存放位置设定',0,'/solidcapital/menu1/menu1-5',NULL,NULL,NULL,NULL,NULL),(171,'solidcapitalMenu2','业务处理',0,'/solidcapital/menu2',NULL,NULL,NULL,NULL,NULL),(172,'solidcapitalMenu2-1','固定资产新增单',0,'/solidcapital/menu2/menu2-1',NULL,NULL,NULL,NULL,NULL),(173,'solidcapitalMenu2-2','固定资产卡片',0,'/solidcapital/menu2/menu2-2',NULL,NULL,NULL,NULL,NULL),(174,'solidcapitalMenu2-3','固定资产处置单',0,'/solidcapital/menu2/menu2-3',NULL,NULL,NULL,NULL,NULL),(175,'solidcapitalMenu2-4','固定资产调整单',0,'/solidcapital/menu2/menu2-4',NULL,NULL,NULL,NULL,NULL),(176,'solidcapitalMenu2-5','固定资产工作量录入单',0,'/solidcapital/menu2/menu2-5',NULL,NULL,NULL,NULL,NULL),(177,'solidcapitalMenu2-6','固定资产批次减值单',0,'/solidcapital/menu2/menu2-6',NULL,NULL,NULL,NULL,NULL),(178,'solidcapitalMenu2-7','固定资产折旧单',0,'/solidcapital/menu2/menu2-7',NULL,NULL,NULL,NULL,NULL),(179,'message','消息管理',0,'/message',NULL,NULL,NULL,NULL,NULL),(180,'messageMenu1','发送消息',0,'/message/menu1',NULL,NULL,NULL,NULL,NULL),(181,'messageMenu1-1','发送消息',0,'/message/menu1/menu1-1',NULL,NULL,NULL,NULL,NULL),(182,'messageMenu2','发送公告',0,'/message/menu2',NULL,NULL,NULL,NULL,NULL),(183,'messageMenu2-1','发送公告',0,'/message/menu2/menu2-1',NULL,NULL,NULL,NULL,NULL),(184,'messageMenu3','讯息管理',0,'/message/menu3',NULL,NULL,NULL,NULL,NULL),(185,'messageMenu3-1','消息管理员',0,'/message/menu3/menu3-1',NULL,NULL,NULL,NULL,NULL),(186,'relationship','客户关系管理',0,'/relationship',NULL,NULL,NULL,NULL,NULL),(187,'relationshipMenu1','业务管理',0,'/relationship/menu1',NULL,NULL,NULL,NULL,NULL),(188,'relationshipMenu1-1','联系人类别设定',0,'/relationship/menu1/menu1-1',NULL,NULL,NULL,NULL,NULL),(189,'relationshipMenu1-2','联系人主文件',0,'/relationship/menu1/menu1-2',NULL,NULL,NULL,NULL,NULL),(190,'relationshipMenu1-3','拜访记录单',0,'/relationship/menu1/menu1-3',NULL,NULL,NULL,NULL,NULL),(191,'relationshipMenu1-4','竞争对手主文件',0,'/relationship/menu1/menu1-4',NULL,NULL,NULL,NULL,NULL),(192,'relationshipMenu2','客户服务',0,'/relationship/menu2',NULL,NULL,NULL,NULL,NULL),(193,'relationshipMenu2-1','问题类别设定',0,'/relationship/menu2/menu2-1',NULL,NULL,NULL,NULL,NULL),(194,'relationshipMenu2-2','处理方式设定',0,'/relationship/menu2/menu2-2',NULL,NULL,NULL,NULL,NULL),(195,'relationshipMenu2-3','客服记录查询',0,'/relationship/menu2/menu2-3',NULL,NULL,NULL,NULL,NULL),(196,'relationshipMenu2-4','客诉单',0,'/relationship/menu2/menu2-4',NULL,NULL,NULL,NULL,NULL),(197,'relationshipMenu2-5','客诉处理单',0,'/relationship/menu2/menu2-5',NULL,NULL,NULL,NULL,NULL),(198,'relationshipMenu3','移动商务',0,'/relationship/menu3',NULL,NULL,NULL,NULL,NULL),(199,'relationshipMenu3-1','通信设置',0,'/relationship/menu3/menu3-1',NULL,NULL,NULL,NULL,NULL),(200,'relationshipMenu3-2','短语类别设定',0,'/relationship/menu3/menu3-2',NULL,NULL,NULL,NULL,NULL),(201,'relationshipMenu3-3','常用短语设定',0,'/relationship/menu3/menu3-3',NULL,NULL,NULL,NULL,NULL),(202,'relationshipMenu3-4','发送短信',0,'/relationship/menu3/menu3-4',NULL,NULL,NULL,NULL,NULL),(203,'relationshipMenu3-5','个人短信管理',0,'/relationship/menu3/menu3-5',NULL,NULL,NULL,NULL,NULL),(204,'relationshipMenu3-6','系统短信管理',0,'/relationship/menu3/menu3-6',NULL,NULL,NULL,NULL,NULL),(205,'reportform','报表管理',0,'/reportform',NULL,NULL,NULL,NULL,NULL),(206,'reportformMenu1','采购报表',0,'/reportform/menu1',NULL,NULL,NULL,NULL,NULL),(207,'reportformMenu1-1','采购订单分析表',0,'/reportform/menu1/menu1-1',NULL,NULL,NULL,NULL,NULL),(208,'reportformMenu1-2','采购订单分析明细表',0,'/reportform/menu1/menu1-2',NULL,NULL,NULL,NULL,NULL),(209,'reportformMenu1-3','采购交易分析表',0,'/reportform/menu1/menu1-3',NULL,NULL,NULL,NULL,NULL),(210,'reportformMenu1-4','采购交易分析明细表',0,'/reportform/menu1/menu1-4',NULL,NULL,NULL,NULL,NULL),(211,'reportformMenu1-5','供应商交易明细表',0,'/reportform/menu1/menu1-5',NULL,NULL,NULL,NULL,NULL),(212,'reportformMenu1-6','采购开票状况分析表',0,'/reportform/menu1/menu1-6',NULL,NULL,NULL,NULL,NULL),(213,'reportformMenu1-7','采购分摊明细表',0,'/reportform/menu1/menu1-7',NULL,NULL,NULL,NULL,NULL),(214,'reportformMenu2','销售报表',0,'/reportform/menu2',NULL,NULL,NULL,NULL,NULL),(215,'reportformMenu2-1','销售订单分析表',0,'/reportform/menu2/menu2-1',NULL,NULL,NULL,NULL,NULL),(216,'reportformMenu2-2','销售订单分析明细表',0,'/reportform/menu2/menu2-2',NULL,NULL,NULL,NULL,NULL),(217,'reportformMenu2-3','销售交易分析表',0,'/reportform/menu2/menu2-3',NULL,NULL,NULL,NULL,NULL),(218,'reportformMenu2-4','销售交易分析明细表',0,'/reportform/menu2/menu2-4',NULL,NULL,NULL,NULL,NULL),(219,'reportformMenu2-5','客户交易明细表',0,'/reportform/menu2/menu2-5',NULL,NULL,NULL,NULL,NULL),(220,'reportformMenu2-6','采购开票状况分析表',0,'/reportform/menu2/menu2-6',NULL,NULL,NULL,NULL,NULL),(221,'reportformMenu3','库存报表',0,'/reportform/menu3',NULL,NULL,NULL,NULL,NULL),(222,'reportformMenu3-1','物料清单',0,'/reportform/menu3/menu3-1',NULL,NULL,NULL,NULL,NULL),(223,'reportformMenu3-2','物料存量预估表',0,'/reportform/menu3/menu3-2',NULL,NULL,NULL,NULL,NULL),(224,'reportformMenu3-3','物料存量预估明细表',0,'/reportform/menu3/menu3-3',NULL,NULL,NULL,NULL,NULL),(225,'reportformMenu3-4','库存查询',0,'/reportform/menu3/menu3-4',NULL,NULL,NULL,NULL,NULL),(226,'reportformMenu3-5','库存台账',0,'/reportform/menu3/menu3-5',NULL,NULL,NULL,NULL,NULL),(227,'reportformMenu3-6','库存台账明细表',0,'/reportform/menu3/menu3-6',NULL,NULL,NULL,NULL,NULL),(228,'reportformMenu3-7','批号库交易分析表',0,'/reportform/menu3/menu3-7',NULL,NULL,NULL,NULL,NULL),(229,'reportformMenu3-8','批号库交易分析明细表',0,'/reportform/menu3/menu3-8',NULL,NULL,NULL,NULL,NULL),(230,'reportformMenu3-9','库存呆滞分析表',0,'/reportform/menu3/menu3-9',NULL,NULL,NULL,NULL,NULL),(231,'reportformMenu4','生产报表',0,'/reportform/menu4',NULL,NULL,NULL,NULL,NULL),(232,'reportformMenu4-1','领料明细表',0,'/reportform/menu4/menu4-1',NULL,NULL,NULL,NULL,NULL),(233,'reportformMenu4-2','退料明细表',0,'/reportform/menu4/menu4-2',NULL,NULL,NULL,NULL,NULL),(234,'reportformMenu4-3','生产登记薄',0,'/reportform/menu4/menu4-3',NULL,NULL,NULL,NULL,NULL),(235,'reportformMenu4-4','生产登记薄明细表',0,'/reportform/menu4/menu4-4',NULL,NULL,NULL,NULL,NULL),(236,'reportformMenu4-5','生产状况分析表',0,'/reportform/menu4/menu4-5',NULL,NULL,NULL,NULL,NULL),(237,'reportformMenu4-6','工单材料用量检核表',0,'/reportform/menu4/menu4-6',NULL,NULL,NULL,NULL,NULL),(238,'reportformMenu5','账款报表',0,'/reportform/menu5',NULL,NULL,NULL,NULL,NULL),(239,'reportformMenu5-1','应收款报表',0,'/reportform/menu5/menu5-1',NULL,NULL,NULL,NULL,NULL),(240,'reportformMenu5-2','应收款明细表',0,'/reportform/menu5/menu5-2',NULL,NULL,NULL,NULL,NULL),(241,'reportformMenu5-3','应收款账龄分析表',0,'/reportform/menu5/menu5-3',NULL,NULL,NULL,NULL,NULL),(242,'reportformMenu5-4','应收款账龄明细表',0,'/reportform/menu5/menu5-4',NULL,NULL,NULL,NULL,NULL),(243,'reportformMenu5-5','应付款报表',0,'/reportform/menu5/menu5-5',NULL,NULL,NULL,NULL,NULL),(244,'reportformMenu5-6','应付款明细表',0,'/reportform/menu5/menu5-6',NULL,NULL,NULL,NULL,NULL),(245,'reportformMenu5-7','应付款账龄分析表',0,'/reportform/menu5/menu5-7',NULL,NULL,NULL,NULL,NULL),(246,'reportformMenu5-8','应付款账龄明细表',0,'/reportform/menu5/menu5-8',NULL,NULL,NULL,NULL,NULL),(247,'reportformMenu5-9','应付佣金明细表',0,'/reportform/menu5/menu5-9',NULL,NULL,NULL,NULL,NULL),(248,'reportformMenu5-10','应收账款对账表',0,'/reportform/menu5/menu5-10',NULL,NULL,NULL,NULL,NULL),(249,'reportformMenu5-11','应付账款对账表',0,'/reportform/menu5/menu5-11',NULL,NULL,NULL,NULL,NULL),(250,'reportformMenu6','财务报表',0,'/reportform/menu6',NULL,NULL,NULL,NULL,NULL),(251,'reportformMenu6-1','总账',0,'/reportform/menu6/menu6-1',NULL,NULL,NULL,NULL,NULL),(252,'reportformMenu6-2','明细表',0,'/reportform/menu6/menu6-2',NULL,NULL,NULL,NULL,NULL),(253,'reportformMenu6-3','数量金额总账',0,'/reportform/menu6/menu6-3',NULL,NULL,NULL,NULL,NULL),(254,'reportformMenu6-4','数量金额明细表',0,'/reportform/menu6/menu6-4',NULL,NULL,NULL,NULL,NULL),(255,'reportformMenu6-5','多栏式明细账',0,'/reportform/menu6/menu6-5',NULL,NULL,NULL,NULL,NULL),(256,'reportformMenu6-6','序时账',0,'/reportform/menu6/menu6-6',NULL,NULL,NULL,NULL,NULL),(257,'reportformMenu6-7','日记账',0,'/reportform/menu6/menu6-7',NULL,NULL,NULL,NULL,NULL),(258,'reportformMenu6-8','核算项目总账',0,'/reportform/menu6/menu6-8',NULL,NULL,NULL,NULL,NULL),(259,'reportformMenu6-9','核算项目明细账',0,'/reportform/menu6/menu6-9',NULL,NULL,NULL,NULL,NULL),(260,'reportformMenu6-10','科目余额表',0,'/reportform/menu6/menu6-10',NULL,NULL,NULL,NULL,NULL),(261,'reportformMenu6-11','试算平衡表',0,'/reportform/menu6/menu6-11',NULL,NULL,NULL,NULL,NULL),(262,'reportformMenu6-12','核算项目余额表',0,'/reportform/menu6/menu6-12',NULL,NULL,NULL,NULL,NULL),(263,'reportformMenu6-13','科目汇总表',0,'/reportform/menu6/menu6-13',NULL,NULL,NULL,NULL,NULL),(264,'reportformMenu6-14','日报表',0,'/reportform/menu6/menu6-14',NULL,NULL,NULL,NULL,NULL),(265,'reportformMenu6-15','调汇历史信息表',0,'/reportform/menu6/menu6-15',NULL,NULL,NULL,NULL,NULL),(266,'reportformMenu6-16','利润表',0,'/reportform/menu6/menu6-16',NULL,NULL,NULL,NULL,NULL),(267,'reportformMenu6-17','利润分配表',0,'/reportform/menu6/menu6-17',NULL,NULL,NULL,NULL,NULL),(268,'reportformMenu6-18','两期利润比较表',0,'/reportform/menu6/menu6-18',NULL,NULL,NULL,NULL,NULL),(269,'reportformMenu6-19','实际/预算利润表',0,'/reportform/menu6/menu6-19',NULL,NULL,NULL,NULL,NULL),(270,'reportformMenu6-20','多部门利润表',0,'/reportform/menu6/menu6-20',NULL,NULL,NULL,NULL,NULL),(271,'reportformMenu6-21','多项目利润表',0,'/reportform/menu6/menu6-21',NULL,NULL,NULL,NULL,NULL),(272,'reportformMenu6-22','多月份利润表',0,'/reportform/menu6/menu6-22',NULL,NULL,NULL,NULL,NULL),(273,'reportformMenu6-23','资产负债表',0,'/reportform/menu6/menu6-23',NULL,NULL,NULL,NULL,NULL),(274,'reportformMenu6-24','两期资产负债表',0,'/reportform/menu6/menu6-24',NULL,NULL,NULL,NULL,NULL),(275,'reportformMenu6-25','股东权益增减变动表',0,'/reportform/menu6/menu6-25',NULL,NULL,NULL,NULL,NULL),(276,'reportformMenu6-26','应交税金明细表',0,'/reportform/menu6/menu6-26',NULL,NULL,NULL,NULL,NULL),(277,'reportformMenu6-27','应交税金/利润表',0,'/reportform/menu6/menu6-27',NULL,NULL,NULL,NULL,NULL),(278,'reportformMenu6-28','现金流失表',0,'/reportform/menu6/menu6-28',NULL,NULL,NULL,NULL,NULL),(279,'reportformMenu6-29','现金流量查询',0,'/reportform/menu6/menu6-29',NULL,NULL,NULL,NULL,NULL),(280,'reportformMenu6-30','两期现金流量表',0,'/reportform/menu6/menu6-30',NULL,NULL,NULL,NULL,NULL),(281,'reportformMenu6-31','财务比率分析表',0,'/reportform/menu6/menu6-31',NULL,NULL,NULL,NULL,NULL),(282,'reportformMenu6-32','两期比率比较表',0,'/reportform/menu6/menu6-32',NULL,NULL,NULL,NULL,NULL),(283,'reportformMenu7','出纳报表',0,'/reportform/menu7',NULL,NULL,NULL,NULL,NULL),(284,'reportformMenu7-1','现金日记账',0,'/reportform/menu7/menu7-1',NULL,NULL,NULL,NULL,NULL),(285,'reportformMenu7-2','银行存款日记账',0,'/reportform/menu7/menu7-2',NULL,NULL,NULL,NULL,NULL),(286,'reportformMenu7-3','出纳账户日记账',0,'/reportform/menu7/menu7-3',NULL,NULL,NULL,NULL,NULL),(287,'reportformMenu7-4','资金余额表',0,'/reportform/menu7/menu7-4',NULL,NULL,NULL,NULL,NULL),(288,'reportformMenu7-5','银行存款余额调节表',0,'/reportform/menu7/menu7-5',NULL,NULL,NULL,NULL,NULL),(289,'reportformMenu8','基本资料',0,'/reportform/menu8',NULL,NULL,NULL,NULL,NULL),(290,'reportformMenu8-1','固定资产清单',0,'/reportform/menu8/menu8-1',NULL,NULL,NULL,NULL,NULL),(291,'reportformMenu8-2','折旧明细表',0,'/reportform/menu8/menu8-2',NULL,NULL,NULL,NULL,NULL),(292,'reportformMenu8-3','附属设备明细表',0,'/reportform/menu8/menu8-3',NULL,NULL,NULL,NULL,NULL),(293,'reportformMenu8-4','减值准备明细表',0,'/reportform/menu8/menu8-4',NULL,NULL,NULL,NULL,NULL),(294,'reportformMenu8-5','变动记录表',0,'/reportform/menu8/menu8-5',NULL,NULL,NULL,NULL,NULL),(295,'reportformMenu9','基本资料',0,'/reportform/menu9',NULL,NULL,NULL,NULL,NULL),(296,'reportformMenu9-1','商机明细表',0,'/reportform/menu9/menu9-1',NULL,NULL,NULL,NULL,NULL),(297,'reportformMenu9-2','商机呆滞分析表',0,'/reportform/menu9/menu9-2',NULL,NULL,NULL,NULL,NULL),(298,'reportformMenu9-3','产品需求状况表',0,'/reportform/menu9/menu9-3',NULL,NULL,NULL,NULL,NULL),(299,'reportformMenu9-4','市场价格分析表',0,'/reportform/menu9/menu9-4',NULL,NULL,NULL,NULL,NULL),(300,'reportformMenu9-5','客诉统计表',0,'/reportform/menu9/menu9-5',NULL,NULL,NULL,NULL,NULL),(301,'reportformMenu9-6','逾时处理分析表',0,'/reportform/menu9/menu9-6',NULL,NULL,NULL,NULL,NULL),(302,'stystem','系统管理',0,'/stystem',NULL,NULL,NULL,NULL,NULL),(303,'stystemMenu1','权限管理',0,'/stystem/menu1',NULL,NULL,NULL,NULL,NULL),(304,'stystemMenu1-1','用户设定',0,'/stystem/menu1/menu1-1',NULL,NULL,NULL,NULL,NULL),(305,'stystemMenu1-2','角色设定',0,'/stystem/menu1/menu1-2',NULL,NULL,NULL,NULL,NULL),(306,'stystemMenu1-3','权限设定',0,'/stystem/menu1/menu1-3',NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `sys_roles` */

DROP TABLE IF EXISTS `sys_roles`;

CREATE TABLE `sys_roles` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `role` VARCHAR(100) DEFAULT NULL,
  `description` VARCHAR(100) DEFAULT NULL,
  `available` TINYINT(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_sys_roles_role` (`role`)
) ENGINE=INNODB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

/*Data for the table `sys_roles` */

INSERT  INTO `sys_roles`(`id`,`role`,`description`,`available`) VALUES (39,'adminmanger','超级管理员',0),(41,'采购管理员','采购管理员',0),(42,'销售管理员','销售管理员',0);

/*Table structure for table `sys_roles_permissions` */

DROP TABLE IF EXISTS `sys_roles_permissions`;

CREATE TABLE `sys_roles_permissions` (
  `role_id` BIGINT(20) NOT NULL,
  `permission_id` BIGINT(20) NOT NULL,
  PRIMARY KEY (`role_id`,`permission_id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Data for the table `sys_roles_permissions` */

INSERT  INTO `sys_roles_permissions`(`role_id`,`permission_id`) VALUES (39,1),(39,2),(39,3),(39,4),(39,5),(39,6),(39,7),(39,8),(39,9),(39,10),(39,11),(39,12),(39,13),(39,14),(39,15),(39,16),(39,17),(39,18),(39,19),(39,20),(39,21),(39,22),(39,23),(39,24),(39,25),(39,26),(39,27),(39,28),(39,29),(39,30),(39,31),(39,32),(39,33),(39,34),(39,35),(39,36),(39,37),(39,38),(39,39),(39,40),(39,41),(39,42),(39,43),(39,44),(39,45),(39,46),(39,47),(39,48),(39,49),(39,50),(39,51),(39,52),(39,53),(39,54),(39,55),(39,56),(39,57),(39,58),(39,59),(39,60),(39,61),(39,62),(39,63),(39,64),(39,65),(39,66),(39,67),(39,68),(39,69),(39,70),(39,71),(39,72),(39,73),(39,74),(39,75),(39,76),(39,77),(39,78),(39,79),(39,80),(39,81),(39,82),(39,83),(39,84),(39,85),(39,86),(39,87),(39,88),(39,89),(39,90),(39,91),(39,92),(39,93),(39,94),(39,95),(39,96),(39,97),(39,98),(39,99),(39,100),(39,101),(39,102),(39,103),(39,104),(39,105),(39,106),(39,107),(39,108),(39,109),(39,110),(39,111),(39,112),(39,113),(39,114),(39,115),(39,116),(39,117),(39,118),(39,119),(39,120),(39,121),(39,122),(39,123),(39,124),(39,125),(39,126),(39,127),(39,128),(39,129),(39,130),(39,131),(39,132),(39,133),(39,134),(39,135),(39,136),(39,137),(39,138),(39,139),(39,140),(39,141),(39,142),(39,143),(39,144),(39,145),(39,146),(39,147),(39,148),(39,149),(39,150),(39,151),(39,152),(39,153),(39,154),(39,155),(39,156),(39,157),(39,158),(39,159),(39,160),(39,161),(39,162),(39,163),(39,164),(39,165),(39,166),(39,167),(39,168),(39,169),(39,170),(39,171),(39,172),(39,173),(39,174),(39,175),(39,176),(39,177),(39,178),(39,179),(39,180),(39,181),(39,182),(39,183),(39,184),(39,185),(39,186),(39,187),(39,188),(39,189),(39,190),(39,191),(39,192),(39,193),(39,194),(39,195),(39,196),(39,197),(39,198),(39,199),(39,200),(39,201),(39,202),(39,203),(39,204),(39,205),(39,206),(39,207),(39,208),(39,209),(39,210),(39,211),(39,212),(39,213),(39,214),(39,215),(39,216),(39,217),(39,218),(39,219),(39,220),(39,221),(39,222),(39,223),(39,224),(39,225),(39,226),(39,227),(39,228),(39,229),(39,230),(39,231),(39,232),(39,233),(39,234),(39,235),(39,236),(39,237),(39,238),(39,239),(39,240),(39,241),(39,242),(39,243),(39,244),(39,245),(39,246),(39,247),(39,248),(39,249),(39,250),(39,251),(39,252),(39,253),(39,254),(39,255),(39,256),(39,257),(39,258),(39,259),(39,260),(39,261),(39,262),(39,263),(39,264),(39,265),(39,266),(39,267),(39,268),(39,269),(39,270),(39,271),(39,272),(39,273),(39,274),(39,275),(39,276),(39,277),(39,278),(39,279),(39,280),(39,281),(39,282),(39,283),(39,284),(39,285),(39,286),(39,287),(39,288),(39,289),(39,290),(39,291),(39,292),(39,293),(39,294),(39,295),(39,296),(39,297),(39,298),(39,299),(39,300),(39,301),(39,302),(39,303),(39,304),(39,305),(39,306),(41,41),(41,42),(41,43),(41,44),(41,45),(41,46),(41,47),(41,48),(41,49),(41,50),(41,51),(41,52),(41,53),(41,54),(41,55),(41,56),(41,57),(41,58),(41,59),(41,60),(41,61),(41,62),(41,63),(41,64),(41,65),(41,66),(41,67),(41,68),(41,69),(41,70),(41,71),(41,72),(41,74),(41,75),(41,76),(41,77),(41,78),(41,79),(42,57),(42,58),(42,59),(42,60),(42,61),(42,62),(42,63),(42,64),(42,65),(42,66),(42,67),(42,68),(42,69),(42,70),(42,71),(42,72);

/*Table structure for table `sys_users` */

DROP TABLE IF EXISTS `sys_users`;

CREATE TABLE `sys_users` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(100) DEFAULT NULL,
  `password` VARCHAR(100) DEFAULT NULL,
  `salt` VARCHAR(100) DEFAULT NULL,
  `locked` TINYINT(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_sys_users_username` (`username`)
) ENGINE=INNODB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `sys_users` */

INSERT  INTO `sys_users`(`id`,`username`,`password`,`salt`,`locked`) VALUES (6,'1','1',NULL,0),(7,'2','2',NULL,0),(8,'3','3',NULL,0);

/*Table structure for table `sys_users_roles` */

DROP TABLE IF EXISTS `sys_users_roles`;

CREATE TABLE `sys_users_roles` (
  `user_id` BIGINT(20) NOT NULL,
  `role_id` BIGINT(20) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Data for the table `sys_users_roles` */

INSERT  INTO `sys_users_roles`(`user_id`,`role_id`) VALUES (6,39),(6,40),(7,42),(8,41);

/*Table structure for table `tjcadjustprices` */

DROP TABLE IF EXISTS `tjcadjustprices`;

CREATE TABLE `tjcadjustprices` (
  `adjustpricesID` INT(11) NOT NULL COMMENT '调价单ID',
  `billNo` INT(50) DEFAULT NULL COMMENT '单据号码',
  `adjustDate` DATE DEFAULT NULL COMMENT '单据日期',
  `maker` VARCHAR(50) DEFAULT NULL COMMENT '制单人员',
  `permitter` VARCHAR(50) DEFAULT NULL COMMENT '复核人员',
  `udef1` VARCHAR(200) DEFAULT NULL COMMENT '自定栏一',
  `udef2` VARCHAR(200) DEFAULT NULL COMMENT '自定栏二',
  `remark` VARCHAR(200) DEFAULT NULL COMMENT '备注',
  `sumQty` INT(50) NOT NULL AUTO_INCREMENT COMMENT '库存量合计',
  `sumCost` DOUBLE DEFAULT NULL COMMENT '调价金额合计',
  `voucherNO` INT(50) DEFAULT NULL COMMENT '凭证编号',
  `engName` VARCHAR(50) DEFAULT NULL COMMENT '英文名称',
  `incSubjectID` INT(50) DEFAULT NULL COMMENT '增值科目',
  `incSubjectName` VARCHAR(50) DEFAULT NULL COMMENT '增值科目名称',
  `decSujectID` INT(50) DEFAULT NULL COMMENT '减值科目',
  `decSujectName` VARCHAR(50) DEFAULT NULL COMMENT '减值科目名称',
  `makerSign` VARCHAR(50) DEFAULT NULL COMMENT '制单人',
  `permitterSign` VARCHAR(50) DEFAULT NULL COMMENT '复核人',
  `adjustType` VARCHAR(50) DEFAULT NULL COMMENT '调整类别',
  `adjustStyle` VARCHAR(50) DEFAULT NULL COMMENT '调整方式',
  `mergeOutState` INT(50) DEFAULT NULL COMMENT '单据抛转状态标识',
  `departID` INT(50) DEFAULT NULL COMMENT '调价部门',
  `departName` VARCHAR(50) DEFAULT NULL COMMENT '部门名称',
  `makerID` INT(50) DEFAULT NULL COMMENT '制单人员编号',
  `permitterID` INT(50) DEFAULT NULL COMMENT '复核人员编号',
  `dateVar` VARCHAR(50) DEFAULT NULL COMMENT '数据版本',
  `hasCheck` INT(11) DEFAULT NULL COMMENT '是否过账',
  `hasBillAttach` INT(11) DEFAULT NULL COMMENT '是否存在附件',
  `noPowerToViewAdvPerms` VARCHAR(50) DEFAULT NULL COMMENT '无权查看当前记录',
  PRIMARY KEY (`adjustpricesID`),
  KEY `sumQty` (`sumQty`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Data for the table `tjcadjustprices` */

/*Table structure for table `tjcadjustpriceslist` */

DROP TABLE IF EXISTS `tjcadjustpriceslist`;

CREATE TABLE `tjcadjustpriceslist` (
  `BillNo` INT(20) NOT NULL COMMENT '调价单的单据号码',
  `MoveNumber` INT(20) DEFAULT NULL COMMENT '单据号码',
  `ColumnNo` INT(20) DEFAULT NULL COMMENT '栏号',
  `StockNumber` VARCHAR(50) DEFAULT NULL COMMENT '物料编号',
  `StockName` VARCHAR(50) DEFAULT NULL COMMENT '物料名称',
  `Specifications` VARCHAR(50) DEFAULT NULL COMMENT '规格型号',
  `Unit` VARCHAR(50) DEFAULT NULL COMMENT '单位',
  `Stock` INT(20) DEFAULT NULL COMMENT '库存量',
  `Average` DOUBLE DEFAULT NULL COMMENT '平均成本',
  `UnitPrice` DOUBLE DEFAULT NULL COMMENT '单价',
  `Quantity` DOUBLE DEFAULT NULL COMMENT '单价金额',
  `EntryNote` VARCHAR(500) DEFAULT NULL COMMENT '分录备注',
  `testone` VARCHAR(50) DEFAULT NULL COMMENT '保留字段1',
  `testtwo` VARCHAR(50) DEFAULT NULL COMMENT '保留字段2',
  PRIMARY KEY (`BillNo`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Data for the table `tjcadjustpriceslist` */

/*Table structure for table `tjcallot` */

DROP TABLE IF EXISTS `tjcallot`;

CREATE TABLE `tjcallot` (
  `allotId` INT(11) NOT NULL COMMENT '调拨单ID',
  `moveDate` DATE DEFAULT NULL COMMENT '单据日期',
  `maker` VARCHAR(50) DEFAULT NULL COMMENT '制单人员',
  `permitter` VARCHAR(50) DEFAULT NULL COMMENT '复核人员',
  `sumQty` INT(50) DEFAULT NULL COMMENT '数量合计',
  `Remark` VARCHAR(200) DEFAULT NULL COMMENT '备注',
  `udef1` VARCHAR(200) DEFAULT NULL COMMENT '自定栏一',
  `udef2` VARCHAR(200) DEFAULT NULL COMMENT '自定栏二',
  `wareOutID` INT(50) DEFAULT NULL COMMENT '调出仓库',
  `wareOutName` VARCHAR(50) DEFAULT NULL COMMENT '调出仓库名称',
  `wareID` INT(50) DEFAULT NULL COMMENT '调入仓库',
  `wareName` VARCHAR(50) DEFAULT NULL COMMENT '调入仓库名称',
  `makerSign` VARCHAR(50) DEFAULT NULL COMMENT '制单人',
  `permitterSign` VARCHAR(50) DEFAULT NULL COMMENT '复核人',
  `moveNo` INT(50) DEFAULT NULL COMMENT '单据号码',
  `mergeOutState` INT(11) DEFAULT NULL COMMENT '单据抛转状态标识',
  `makerID` INT(50) DEFAULT NULL COMMENT '制单人员编号',
  `permitterID` INT(50) DEFAULT NULL COMMENT '复核人员编号',
  `dateVar` VARCHAR(50) DEFAULT NULL COMMENT '数据版本',
  `hasCheck` INT(11) DEFAULT NULL COMMENT '是否过账',
  `hasBillAttach` INT(11) DEFAULT NULL COMMENT '是否存在附件',
  `noPowerToViewAdvPerms` VARCHAR(50) DEFAULT NULL COMMENT '无权限查看当前记录',
  PRIMARY KEY (`allotId`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Data for the table `tjcallot` */

INSERT  INTO `tjcallot`(`allotId`,`moveDate`,`maker`,`permitter`,`sumQty`,`Remark`,`udef1`,`udef2`,`wareOutID`,`wareOutName`,`wareID`,`wareName`,`makerSign`,`permitterSign`,`moveNo`,`mergeOutState`,`makerID`,`permitterID`,`dateVar`,`hasCheck`,`hasBillAttach`,`noPowerToViewAdvPerms`) VALUES (1,'2019-08-25','张三','轩轩',10,'备注','自定义栏1','自定义栏2',1,'北京仓库',1,'上海仓库','张三制单','李四复核',201908271,1,1,1,'1.1',1,1,'1'),(2,'2019-08-29','李四','王五',10,'备注','自定义栏1','自定义栏2',2,'上海仓库',2,'厦门仓库','王五制单','赵六复核',201908272,2,2,2,'1.2',2,2,'2');

/*Table structure for table `tjcallotlist` */

DROP TABLE IF EXISTS `tjcallotlist`;

CREATE TABLE `tjcallotlist` (
  `MoveNo` INT(20) NOT NULL COMMENT '调拨明细单的单据号码',
  `MoveNumber` INT(20) DEFAULT NULL COMMENT '单据号码',
  `ColumnNo` INT(20) DEFAULT NULL COMMENT '栏号',
  `StockNumber` VARCHAR(50) DEFAULT NULL COMMENT '物料编号',
  `StockName` VARCHAR(50) DEFAULT NULL COMMENT '物料名称',
  `Specifications` VARCHAR(50) DEFAULT NULL COMMENT '规格型号',
  `Unit` VARCHAR(50) DEFAULT NULL COMMENT '单位',
  `Current` DOUBLE DEFAULT NULL COMMENT '现行不均成本',
  `Quantity` INT(20) DEFAULT NULL COMMENT '数量',
  `EntryNote` VARCHAR(200) DEFAULT NULL COMMENT '分录备注',
  `EffectiveDate` VARCHAR(50) DEFAULT NULL COMMENT '使用有效日期',
  `testone` VARCHAR(50) DEFAULT NULL COMMENT '保留字段1',
  `testtwo` VARCHAR(50) DEFAULT NULL COMMENT '保留字段2',
  PRIMARY KEY (`MoveNo`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Data for the table `tjcallotlist` */

/*Table structure for table `tjccheck` */

DROP TABLE IF EXISTS `tjccheck`;

CREATE TABLE `tjccheck` (
  `checkID` INT(50) NOT NULL COMMENT '盘点单ID',
  `billNo` INT(50) DEFAULT NULL COMMENT '单据号码',
  `adjustDate` DATE DEFAULT NULL COMMENT '单据日期',
  `maker` VARCHAR(50) DEFAULT NULL COMMENT '制单人员',
  `permitter` VARCHAR(50) DEFAULT NULL COMMENT '复核人员',
  `udef1` VARCHAR(200) DEFAULT NULL COMMENT '自定栏一',
  `udef2` VARCHAR(200) DEFAULT NULL COMMENT '自定栏二',
  `remark` VARCHAR(200) DEFAULT NULL COMMENT '备注',
  `wareID` INT(50) DEFAULT NULL COMMENT '盘点仓库',
  `wareName` VARCHAR(50) DEFAULT NULL COMMENT '盘点仓库名称',
  `sumQty` INT(50) DEFAULT NULL COMMENT '盘亏数量合计',
  `sumCost` DOUBLE DEFAULT NULL COMMENT '盘亏金额合计',
  `voucherNo` INT(50) DEFAULT NULL COMMENT '凭证编号',
  `salesID` INT(50) DEFAULT NULL COMMENT '盘点人员',
  `salesName` VARCHAR(50) DEFAULT NULL COMMENT '盘点人员名称',
  `departID` INT(50) DEFAULT NULL COMMENT '所属部门',
  `departName` VARCHAR(50) DEFAULT NULL COMMENT '所属部门名称',
  `engName` VARCHAR(50) DEFAULT NULL COMMENT '英文名称',
  `zeroFilter` INT(11) DEFAULT NULL COMMENT '帐面数量为零载入',
  `sumCurQty` INT(50) DEFAULT NULL COMMENT '帐面数量合计',
  `sumCheckQty` INT(50) DEFAULT NULL COMMENT '盘点数量合计',
  `incSubjectID` INT(50) DEFAULT NULL COMMENT '增值科目',
  `incSubjectName` VARCHAR(50) DEFAULT NULL COMMENT '增值科目名称',
  `decSujectID` INT(50) DEFAULT NULL COMMENT '减值科目',
  `decSujectName` VARCHAR(50) DEFAULT NULL COMMENT '减值科目名称',
  `makerSign` VARCHAR(50) DEFAULT NULL COMMENT '制单人',
  `permitterSign` VARCHAR(50) DEFAULT NULL COMMENT '复核人',
  `billStatus` INT(11) DEFAULT NULL COMMENT '单据状态',
  `adjustType` VARCHAR(50) DEFAULT NULL COMMENT '调整类别',
  `adjustStyle` VARCHAR(50) DEFAULT NULL COMMENT '调整方式',
  `mergeOutState` INT(11) DEFAULT NULL COMMENT '单据抛转状态标识',
  `makerID` INT(50) DEFAULT NULL COMMENT '制单人员编号',
  `permitterID` INT(50) DEFAULT NULL COMMENT '复核人员编号',
  `dateVer` VARCHAR(50) DEFAULT NULL COMMENT '数据版本',
  `hasCheck` INT(11) DEFAULT NULL COMMENT '是否过账',
  `hasBillAttach` INT(11) DEFAULT NULL COMMENT '是否存在附件',
  `noPowerToViewAdvPerms` VARCHAR(50) DEFAULT NULL COMMENT '无权限查看当前记录',
  PRIMARY KEY (`checkID`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Data for the table `tjccheck` */

/*Table structure for table `tjcchecklist` */

DROP TABLE IF EXISTS `tjcchecklist`;

CREATE TABLE `tjcchecklist` (
  `BillNo` INT(20) NOT NULL COMMENT '盘点单的单据号码',
  `MoveNumber` INT(20) DEFAULT NULL COMMENT '单据号码',
  `ColumnNo` INT(20) DEFAULT NULL COMMENT '栏号',
  `StockNumber` VARCHAR(50) DEFAULT NULL COMMENT '物料编号',
  `StockName` VARCHAR(50) DEFAULT NULL COMMENT '物料名称',
  `Specifications` VARCHAR(50) DEFAULT NULL COMMENT '规格型号',
  `Unit` VARCHAR(50) DEFAULT NULL COMMENT '单位',
  `Physical` INT(20) DEFAULT NULL COMMENT '账面数量',
  `Inventory` INT(20) DEFAULT NULL COMMENT '盘点数量',
  `NumberOfProfit` INT(20) DEFAULT NULL COMMENT '盘亏数量',
  `UnitPrice` DOUBLE DEFAULT NULL COMMENT '单价',
  `Quantity` DOUBLE DEFAULT NULL COMMENT '盘亏金额',
  `EntryNote` VARCHAR(500) DEFAULT NULL COMMENT '原因',
  `testone` VARCHAR(50) DEFAULT NULL COMMENT '保留字段1',
  `testtwo` VARCHAR(50) DEFAULT NULL COMMENT '保留字段2',
  PRIMARY KEY (`BillNo`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Data for the table `tjcchecklist` */

/*Table structure for table `tjcinventorybook` */

DROP TABLE IF EXISTS `tjcinventorybook`;

CREATE TABLE `tjcinventorybook` (
  `inventorybookID` INT(11) NOT NULL COMMENT '库存台账ID',
  `materialSectionStart` VARCHAR(50) DEFAULT NULL COMMENT '物料区间开始',
  `materialSectionOver` VARCHAR(50) DEFAULT NULL COMMENT '物料区间结束',
  `warehouseSectionStart` VARCHAR(50) DEFAULT NULL COMMENT '仓库区间开始',
  `warehouseSectionOver` VARCHAR(50) DEFAULT NULL COMMENT '仓库区间结束',
  `dateSectionStart` DATE DEFAULT NULL COMMENT '日期区间开始',
  `dateSectionOver` DATE DEFAULT NULL COMMENT '日期区间结束',
  `differentiateWarehouse` INT(11) DEFAULT NULL COMMENT '是否区分仓库',
  `test1` VARCHAR(50) DEFAULT NULL COMMENT '备用列1',
  `test2` VARCHAR(50) DEFAULT NULL COMMENT '备用列2',
  `test3` INT(50) DEFAULT NULL COMMENT '备用列3',
  PRIMARY KEY (`inventorybookID`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Data for the table `tjcinventorybook` */

/*Table structure for table `tjcinventorybookdetail` */

DROP TABLE IF EXISTS `tjcinventorybookdetail`;

CREATE TABLE `tjcinventorybookdetail` (
  `inventorybookDetailID` INT(11) NOT NULL COMMENT '库存台账明细表ID',
  `materialSectionStart` VARCHAR(50) DEFAULT NULL COMMENT '物料区间开始',
  `materialSectionOver` VARCHAR(50) DEFAULT NULL COMMENT '物料区间结束',
  `warehouseSectionStart` VARCHAR(50) DEFAULT NULL COMMENT '仓库区间开始',
  `warehouseSectionOver` VARCHAR(50) DEFAULT NULL COMMENT '仓库区间结束',
  `dateSectionStart` DATE DEFAULT NULL COMMENT '日期区间开始',
  `dateSectionOver` DATE DEFAULT NULL COMMENT '日期区间结束',
  `differentiateWarehouse` INT(11) DEFAULT NULL COMMENT '是否区分仓库',
  `test1` VARCHAR(50) DEFAULT NULL COMMENT '备用列1',
  `test2` VARCHAR(50) DEFAULT NULL COMMENT '备用列2',
  `test3` INT(50) DEFAULT NULL COMMENT '备用列3',
  PRIMARY KEY (`inventorybookDetailID`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Data for the table `tjcinventorybookdetail` */

/*Table structure for table `tjcmaterialdull` */

DROP TABLE IF EXISTS `tjcmaterialdull`;

CREATE TABLE `tjcmaterialdull` (
  `materialDullID` INT(11) NOT NULL COMMENT '库存呆滞分析表ID',
  `materialSectionStart` VARCHAR(50) DEFAULT NULL COMMENT '物料区间开始',
  `materialSectionOver` VARCHAR(50) DEFAULT NULL COMMENT '物料区间结束',
  `materialTypeStart` VARCHAR(50) DEFAULT NULL COMMENT '物料类别开始',
  `materialTypeOver` VARCHAR(50) DEFAULT NULL COMMENT '物料类别结束',
  `materialDate` INT(11) DEFAULT NULL COMMENT '日期选择',
  `dullCountDate` DATE DEFAULT NULL COMMENT '呆滞计算日期',
  `test1` VARCHAR(50) DEFAULT NULL COMMENT '备用列1',
  `test2` VARCHAR(50) DEFAULT NULL COMMENT '备用列2',
  `test3` INT(50) DEFAULT NULL COMMENT '备用列3',
  PRIMARY KEY (`materialDullID`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Data for the table `tjcmaterialdull` */

/*Table structure for table `yxpurchasedetail` */

DROP TABLE IF EXISTS `yxpurchasedetail`;

CREATE TABLE `yxpurchasedetail` (
  `billNO` VARCHAR(20) NOT NULL,
  `billDate` DATE DEFAULT NULL,
  `serNO` INT(11) NOT NULL,
  `prodID` INT(11) DEFAULT NULL,
  `prodName` VARCHAR(50) DEFAULT NULL,
  `prodSize` VARCHAR(50) DEFAULT NULL,
  `SUnit` VARCHAR(50) DEFAULT NULL,
  `sQuantity` INT(11) DEFAULT NULL,
  `oldPrice` DOUBLE DEFAULT NULL,
  `discount` DOUBLE DEFAULT NULL,
  `sPrice` DOUBLE DEFAULT NULL,
  `amount` DOUBLE DEFAULT NULL,
  `taxRate` DOUBLE DEFAULT NULL,
  `taxAmt` DOUBLE DEFAULT NULL,
  `vFTotal` DOUBLE DEFAULT NULL,
  `preInDate` DATE DEFAULT NULL,
  `qtyRemein` INT(11) DEFAULT NULL,
  `isGift` INT(11) DEFAULT NULL,
  `itemRemark` VARCHAR(50) DEFAULT NULL,
  `tranType` VARCHAR(50) DEFAULT NULL,
  `fromNO` INT(11) DEFAULT NULL,
  `bills` INT(11) DEFAULT NULL,
  `data1` VARCHAR(50) DEFAULT NULL,
  `data2` VARCHAR(50) DEFAULT NULL,
  `data3` VARCHAR(50) DEFAULT NULL,
  `data4` VARCHAR(50) DEFAULT NULL,
  `data5` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY (`billNO`,`serNO`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

/*Data for the table `yxpurchasedetail` */

/*Table structure for table `yxpurchaseenquiry` */

DROP TABLE IF EXISTS `yxpurchaseenquiry`;

CREATE TABLE `yxpurchaseenquiry` (
  `billNO` VARCHAR(20) NOT NULL,
  `billDate` DATE DEFAULT NULL,
  `customerID` INT(11) DEFAULT NULL,
  `custShortName` VARCHAR(50) DEFAULT NULL,
  `addressID` INT(11) DEFAULT NULL,
  `custAddress` VARCHAR(50) DEFAULT NULL,
  `validDate` DATE DEFAULT NULL,
  `curr` VARCHAR(50) DEFAULT NULL,
  `exchRate` DOUBLE DEFAULT NULL,
  `priceOfTax` INT(11) DEFAULT NULL,
  `salesID` INT(11) DEFAULT NULL,
  `salesName` VARCHAR(50) DEFAULT NULL,
  `departID` INT(11) DEFAULT NULL,
  `departName` VARCHAR(50) DEFAULT NULL,
  `outAddress` VARCHAR(50) DEFAULT NULL,
  `maker` VARCHAR(50) DEFAULT NULL,
  `permitter` VARCHAR(50) DEFAULT NULL,
  `remark` VARCHAR(100) DEFAULT NULL,
  `data1` VARCHAR(50) DEFAULT NULL,
  `data2` VARCHAR(50) DEFAULT NULL,
  `data3` VARCHAR(50) DEFAULT NULL,
  `data4` VARCHAR(50) DEFAULT NULL,
  `data5` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY (`billNO`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

/*Data for the table `yxpurchaseenquiry` */

/*Table structure for table `yxpurchaseorder` */

DROP TABLE IF EXISTS `yxpurchaseorder`;

CREATE TABLE `yxpurchaseorder` (
  `billNO` VARCHAR(20) NOT NULL,
  `billDate` DATE DEFAULT NULL,
  `billStatus` INT(11) DEFAULT NULL,
  `priceOfTax` INT(11) DEFAULT NULL,
  `billStyleID` INT(11) DEFAULT NULL,
  `billStyleName` VARCHAR(50) DEFAULT NULL,
  `customerID` INT(11) DEFAULT NULL,
  `custShortName` VARCHAR(50) DEFAULT NULL,
  `addressID` INT(11) DEFAULT NULL,
  `custAddress` VARCHAR(50) DEFAULT NULL,
  `curr` VARCHAR(50) DEFAULT NULL,
  `exchRate` DOUBLE DEFAULT NULL,
  `outAddress` VARCHAR(50) DEFAULT NULL,
  `factFundsAttribution` VARCHAR(50) DEFAULT NULL,
  `prepayDay` DATE DEFAULT NULL,
  `accMonth` DATE DEFAULT NULL,
  `gatherStyle` VARCHAR(50) DEFAULT NULL,
  `gatherDelay` INT(11) DEFAULT NULL,
  `salesID` INT(11) DEFAULT NULL,
  `salesName` VARCHAR(50) DEFAULT NULL,
  `departID` INT(11) DEFAULT NULL,
  `departName` VARCHAR(50) DEFAULT NULL,
  `projectID` INT(11) DEFAULT NULL,
  `projectName` VARCHAR(50) DEFAULT NULL,
  `maker` VARCHAR(50) DEFAULT NULL,
  `permitter` VARCHAR(50) DEFAULT NULL,
  `remark` VARCHAR(100) DEFAULT NULL,
  `data1` VARCHAR(50) DEFAULT NULL,
  `data2` VARCHAR(50) DEFAULT NULL,
  `data3` VARCHAR(50) DEFAULT NULL,
  `data4` VARCHAR(50) DEFAULT NULL,
  `data5` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY (`billNO`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

/*Data for the table `yxpurchaseorder` */

/*Table structure for table `yxrequisitions` */

DROP TABLE IF EXISTS `yxrequisitions`;

CREATE TABLE `yxrequisitions` (
  `billNO` VARCHAR(20) NOT NULL,
  `billDate` DATE DEFAULT NULL,
  `billStyleID` INT(11) DEFAULT NULL,
  `billStyleName` VARCHAR(50) DEFAULT NULL,
  `billStatus` INT(11) DEFAULT NULL,
  `salesID` INT(11) DEFAULT NULL,
  `salesName` VARCHAR(50) DEFAULT NULL,
  `departID` INT(11) DEFAULT NULL,
  `departName` VARCHAR(50) DEFAULT NULL,
  `maker` VARCHAR(50) DEFAULT NULL,
  `permitter` VARCHAR(50) DEFAULT NULL,
  `remark` VARCHAR(100) DEFAULT NULL,
  `data1` VARCHAR(50) DEFAULT NULL,
  `data2` VARCHAR(50) DEFAULT NULL,
  `data3` VARCHAR(50) DEFAULT NULL,
  `data4` VARCHAR(50) DEFAULT NULL,
  `data5` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY (`billNO`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

/*Data for the table `yxrequisitions` */

/*Table structure for table `yxrequisitionsdetail` */

DROP TABLE IF EXISTS `yxrequisitionsdetail`;

CREATE TABLE `yxrequisitionsdetail` (
  `billNO` VARCHAR(20) NOT NULL,
  `billDate` DATE DEFAULT NULL,
  `serNO` INT(11) NOT NULL,
  `prodID` INT(11) DEFAULT NULL,
  `prodName` VARCHAR(50) DEFAULT NULL,
  `prodSize` VARCHAR(50) DEFAULT NULL,
  `sUnit` VARCHAR(50) DEFAULT NULL,
  `sQuantity` INT(11) DEFAULT NULL,
  `curr` VARCHAR(50) DEFAULT NULL,
  `stdPrice` DOUBLE DEFAULT NULL,
  `amount` DOUBLE DEFAULT NULL,
  `lastestCurr` VARCHAR(50) DEFAULT NULL,
  `lastestPrice` DOUBLE DEFAULT NULL,
  `lastestAmount` DOUBLE DEFAULT NULL,
  `preInDate` DATE DEFAULT NULL,
  `suggestPurDate` DATE DEFAULT NULL,
  `qtyRemain` INT(11) DEFAULT NULL,
  `itemRemark` VARCHAR(50) DEFAULT NULL,
  `fromNO` INT(11) DEFAULT NULL,
  `tranType` VARCHAR(50) DEFAULT NULL,
  `data1` VARCHAR(50) DEFAULT NULL,
  `data2` VARCHAR(50) DEFAULT NULL,
  `data3` VARCHAR(50) DEFAULT NULL,
  `data4` VARCHAR(50) DEFAULT NULL,
  `data5` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY (`billNO`,`serNO`)
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

/*Data for the table `yxrequisitionsdetail` */

/*Table structure for table `yzqsellcancel` */

DROP TABLE IF EXISTS `yzqsellcancel`;

CREATE TABLE `yzqsellcancel` (
  `billNo` VARCHAR(20) NOT NULL COMMENT '单据号码',
  `billDate` DATE NOT NULL COMMENT '单据日期',
  `custId` VARCHAR(50) NOT NULL COMMENT '客户编号',
  `custShortName` VARCHAR(50) NOT NULL COMMENT '客户简称',
  `addrId` VARCHAR(50) DEFAULT NULL COMMENT '地址编号',
  `custAddress` VARCHAR(50) DEFAULT NULL COMMENT '地址',
  `priceOfTax` VARCHAR(50) NOT NULL COMMENT '单价是否含税',
  `wareId` VARCHAR(50) NOT NULL COMMENT '仓库编号',
  `wareName` VARCHAR(50) NOT NULL COMMENT '仓库名称',
  `isDeduct` INT(11) NOT NULL COMMENT '是否重新入库',
  `salesId` VARCHAR(50) NOT NULL COMMENT '业务人员编号',
  `salesName` VARCHAR(50) NOT NULL COMMENT '业务人员',
  `departId` VARCHAR(50) NOT NULL COMMENT '部门编号',
  `departName` VARCHAR(50) NOT NULL COMMENT '所属部门',
  `maker` VARCHAR(50) NOT NULL COMMENT '制单人员',
  `permitter` VARCHAR(50) DEFAULT NULL COMMENT '复核人员',
  `remark` VARCHAR(2000) DEFAULT NULL COMMENT '备注',
  `total` DOUBLE DEFAULT NULL COMMENT '合计金额',
  `tax` DOUBLE DEFAULT NULL COMMENT '合计税额',
  `sumAmtATax` DOUBLE DEFAULT NULL COMMENT '合计含税金额',
  `sumNum` INT(11) DEFAULT NULL COMMENT '合计数量',
  `hasForeignTrade` VARCHAR(50) DEFAULT NULL COMMENT '国外贸易',
  `voucherNo` VARCHAR(50) DEFAULT NULL COMMENT '凭证编号',
  `projectId` VARCHAR(50) DEFAULT NULL COMMENT '项目编号',
  `projectName` VARCHAR(50) DEFAULT NULL COMMENT '所属项目',
  `dueTo` VARCHAR(50) DEFAULT NULL COMMENT '账款归属',
  `prepayDay` DATE DEFAULT NULL COMMENT '收款日期',
  `recvWay` VARCHAR(50) DEFAULT NULL COMMENT '收款条件',
  `gatherDelay` INT(11) DEFAULT NULL COMMENT '收款天数',
  `accMonth` DATE DEFAULT NULL COMMENT '账款月份',
  `addfield1` VARCHAR(50) DEFAULT NULL COMMENT '自定义栏1',
  `addfield2` VARCHAR(50) DEFAULT NULL COMMENT '自定义栏2',
  `checkstate` INT(11) NOT NULL COMMENT '审核状态',
  `enables` INT(11) DEFAULT NULL COMMENT '标识是否删除',
  PRIMARY KEY (`billNo`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Data for the table `yzqsellcancel` */

/*Table structure for table `yzqsellcanceldetails` */

DROP TABLE IF EXISTS `yzqsellcanceldetails`;

CREATE TABLE `yzqsellcanceldetails` (
  `billNo` VARCHAR(20) NOT NULL COMMENT '单据号码',
  `serNo` VARCHAR(20) NOT NULL COMMENT '栏号',
  `prodId` VARCHAR(20) DEFAULT NULL COMMENT '物料编号',
  `prodName` VARCHAR(50) DEFAULT NULL COMMENT '物料名称',
  `prodSize` VARCHAR(50) DEFAULT NULL COMMENT '规格型号',
  `sUnit` VARCHAR(50) DEFAULT NULL COMMENT '单位名称',
  `sQuantity` INT(11) DEFAULT NULL COMMENT '数量',
  `oldPrice` DOUBLE DEFAULT NULL COMMENT '折扣前单价',
  `discount` DOUBLE DEFAULT NULL COMMENT '折数',
  `sPrice` DOUBLE DEFAULT NULL COMMENT '单价',
  `amount` DOUBLE DEFAULT NULL COMMENT '金额',
  `taxRate` DOUBLE DEFAULT NULL COMMENT '税率',
  `taxAmt` DOUBLE DEFAULT NULL COMMENT '税额',
  `amountATax` DOUBLE DEFAULT NULL COMMENT '含税金额',
  `isGift` VARCHAR(20) DEFAULT NULL COMMENT '赠品',
  `tranType` VARCHAR(50) DEFAULT NULL COMMENT '来源单别',
  `fromNo` VARCHAR(50) DEFAULT NULL COMMENT '来源单号',
  `haveBatch` INT(11) DEFAULT NULL COMMENT '批号',
  `hasCombine` INT(11) DEFAULT NULL COMMENT '物料组合',
  `hasInv` INT(11) DEFAULT NULL COMMENT '发票明细',
  `noInvCount` INT(11) DEFAULT NULL COMMENT '未开票数量',
  `itemRemark` VARCHAR(50) DEFAULT NULL COMMENT '分录备注',
  `enables` INT(11) DEFAULT NULL COMMENT '标识是否删除',
  `safetyone` VARCHAR(50) DEFAULT NULL COMMENT '保留字段',
  `safetytwo` VARCHAR(50) DEFAULT NULL COMMENT '保留字段2',
  PRIMARY KEY (`billNo`,`serNo`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Data for the table `yzqsellcanceldetails` */

INSERT  INTO `yzqsellcanceldetails`(`billNo`,`serNo`,`prodId`,`prodName`,`prodSize`,`sUnit`,`sQuantity`,`oldPrice`,`discount`,`sPrice`,`amount`,`taxRate`,`taxAmt`,`amountATax`,`isGift`,`tranType`,`fromNo`,`haveBatch`,`hasCombine`,`hasInv`,`noInvCount`,`itemRemark`,`enables`,`safetyone`,`safetytwo`) VALUES ('001','方式','1','1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `yzqsellissueorder` */

DROP TABLE IF EXISTS `yzqsellissueorder`;

CREATE TABLE `yzqsellissueorder` (
  `billNo` VARCHAR(20) NOT NULL COMMENT '单据号码',
  `billDate` DATE NOT NULL COMMENT '单据日期',
  `hasForeignTrade` VARCHAR(50) NOT NULL COMMENT '国外贸易',
  `custId` VARCHAR(50) NOT NULL COMMENT '客户编号',
  `custShortName` VARCHAR(50) NOT NULL COMMENT '客户简称',
  `addrId` VARCHAR(50) DEFAULT NULL COMMENT '地址编号',
  `custAddress` VARCHAR(50) DEFAULT NULL COMMENT '地址',
  `priceOfTax` VARCHAR(20) NOT NULL COMMENT '单价是否含税',
  `wareId` VARCHAR(50) NOT NULL COMMENT '仓库编号',
  `wareName` VARCHAR(50) NOT NULL COMMENT '仓库名称',
  `voucherNo` VARCHAR(20) DEFAULT NULL COMMENT '凭证编号',
  `hasAutoInv` VARCHAR(50) DEFAULT NULL COMMENT '复核后是否自动生成发票',
  `salesId` VARCHAR(50) NOT NULL COMMENT '业务人员编号',
  `salesName` VARCHAR(50) NOT NULL COMMENT '业务人员',
  `departId` VARCHAR(50) NOT NULL COMMENT '部门编号',
  `departName` VARCHAR(50) NOT NULL COMMENT '所属部门',
  `maker` VARCHAR(50) NOT NULL COMMENT '制单人员',
  `permitter` VARCHAR(50) DEFAULT NULL COMMENT '复核人员',
  `projectId` VARCHAR(20) DEFAULT NULL COMMENT '项目编号',
  `projectName` VARCHAR(50) DEFAULT NULL COMMENT '所属项目',
  `sumNum` DOUBLE DEFAULT NULL COMMENT '合计数量',
  `total` DOUBLE DEFAULT NULL COMMENT '合计金额',
  `Tax` DOUBLE DEFAULT NULL COMMENT '合计税额',
  `totalTaxMoney` DOUBLE DEFAULT NULL COMMENT '合计含税金额',
  `dueTo` VARCHAR(50) DEFAULT NULL COMMENT '账款归属',
  `prepayDay` DATE DEFAULT NULL COMMENT '收款日期',
  `recvWay` VARCHAR(20) DEFAULT NULL COMMENT '收款条件',
  `gatherDelay` INT(11) DEFAULT NULL COMMENT '收款天数',
  `accMonth` DATE DEFAULT NULL COMMENT '账款月份',
  `UDef1` VARCHAR(50) DEFAULT NULL COMMENT '自定义栏1',
  `UDef2` VARCHAR(50) DEFAULT NULL COMMENT '自定义栏2',
  `remark` VARCHAR(255) DEFAULT NULL COMMENT '备注',
  `safetyone` VARCHAR(50) DEFAULT NULL COMMENT '保留字段1',
  `safetytwo` VARCHAR(50) DEFAULT NULL COMMENT '保留字段2',
  `checkstate` INT(11) NOT NULL COMMENT '审核状态',
  `enables` INT(11) DEFAULT NULL COMMENT '标识是否删除',
  PRIMARY KEY (`billNo`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Data for the table `yzqsellissueorder` */

/*Table structure for table `yzqsellissueorderdetails` */

DROP TABLE IF EXISTS `yzqsellissueorderdetails`;

CREATE TABLE `yzqsellissueorderdetails` (
  `billNo` VARCHAR(20) NOT NULL COMMENT '单据号码',
  `serNo` INT(11) NOT NULL COMMENT '栏号',
  `prodId` VARCHAR(50) NOT NULL COMMENT '物料编号',
  `prodName` VARCHAR(50) NOT NULL COMMENT '物料名称',
  `prodSize` VARCHAR(50) DEFAULT NULL COMMENT '规格型号',
  `sUnit` VARCHAR(50) NOT NULL COMMENT '单位名称',
  `sQuantity` INT(11) NOT NULL COMMENT '数量',
  `oldPrice` DOUBLE NOT NULL COMMENT '折扣前单价',
  `discount` DOUBLE NOT NULL COMMENT '折数',
  `sPrice` DOUBLE NOT NULL COMMENT '单价',
  `amount` DOUBLE NOT NULL COMMENT '金额',
  `taxRate` DOUBLE NOT NULL COMMENT '税率',
  `taxAmt` DOUBLE NOT NULL COMMENT '税额',
  `amountATax` DOUBLE NOT NULL COMMENT '含税金额',
  `isGift` VARCHAR(50) DEFAULT NULL COMMENT '赠品',
  `tranType` VARCHAR(50) DEFAULT NULL COMMENT '来源单别',
  `fromNo` VARCHAR(50) DEFAULT NULL COMMENT '来源单号',
  `haveBatch` INT(11) DEFAULT NULL COMMENT '批号',
  `hasCombine` INT(11) DEFAULT NULL COMMENT '物料组合',
  `hasInv` INT(11) DEFAULT NULL COMMENT '发票明细',
  `noInvCount` INT(11) DEFAULT NULL COMMENT '未开票数量',
  `itemRemark` VARCHAR(50) DEFAULT NULL COMMENT '分录备注',
  `enables` INT(11) DEFAULT NULL COMMENT '标识是否删除',
  `safetyone` VARCHAR(50) DEFAULT NULL COMMENT '保留字段',
  `safetytwo` VARCHAR(50) DEFAULT NULL COMMENT '保留字段',
  PRIMARY KEY (`billNo`,`serNo`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Data for the table `yzqsellissueorderdetails` */

/*Table structure for table `yzqsellshouldgatheringmain` */

DROP TABLE IF EXISTS `yzqsellshouldgatheringmain`;

CREATE TABLE `yzqsellshouldgatheringmain` (
  `costBillNo` VARCHAR(20) NOT NULL COMMENT '主键ID(单据号码)',
  `originSysId` VARCHAR(50) NOT NULL COMMENT '来源单别',
  `originNo` VARCHAR(50) NOT NULL COMMENT '来源单号',
  `billDate` DATE NOT NULL COMMENT '来源单据日期',
  `ftyId` VARCHAR(50) NOT NULL COMMENT '客户编号',
  `ftyName` VARCHAR(50) NOT NULL COMMENT '客户全称',
  `custShortName` VARCHAR(50) DEFAULT NULL COMMENT '客户简称',
  `invoiceNo` VARCHAR(50) DEFAULT NULL COMMENT '发票号码',
  `voucherNo` VARCHAR(50) DEFAULT NULL COMMENT '凭证编号',
  `memo` VARCHAR(2000) DEFAULT NULL COMMENT '备注',
  `total` DOUBLE DEFAULT NULL COMMENT '合计金额',
  `tax` DOUBLE DEFAULT NULL COMMENT '合计税额',
  `sumAmtATax` DOUBLE DEFAULT NULL COMMENT '合计含税金额',
  `personId` VARCHAR(50) NOT NULL COMMENT '业务人员编号',
  `personName` VARCHAR(50) NOT NULL COMMENT '业务人员',
  `departId` VARCHAR(50) NOT NULL COMMENT '部门编号',
  `departName` VARCHAR(50) NOT NULL COMMENT '所属部门',
  `maker` VARCHAR(50) NOT NULL COMMENT '制单人员',
  `permitter` VARCHAR(50) DEFAULT NULL COMMENT '复核人员',
  `projectId` VARCHAR(50) DEFAULT NULL COMMENT '项目编号',
  `projectName` VARCHAR(50) DEFAULT NULL COMMENT '所属项目',
  `dueTo` VARCHAR(50) DEFAULT NULL COMMENT '账款归属',
  `prepayDay` DATE DEFAULT NULL COMMENT '收款日期',
  `gatherStyle` VARCHAR(50) DEFAULT NULL COMMENT '收款条件',
  `gatherDelay` INT(11) DEFAULT NULL COMMENT '收款天数',
  `accMonth` DATE DEFAULT NULL COMMENT '账款月份',
  `UDef1` VARCHAR(50) DEFAULT NULL COMMENT '自定义栏1',
  `UDef2` VARCHAR(50) DEFAULT NULL COMMENT '自定义栏2',
  `cashPayStyleId` VARCHAR(50) DEFAULT NULL COMMENT '结算方式一',
  `visaPayStyleId` VARCHAR(50) DEFAULT NULL COMMENT '结算方式二',
  `otherPayStyleId` VARCHAR(50) DEFAULT NULL COMMENT '结算方式三',
  `cashPayStyleMoney` DOUBLE DEFAULT NULL COMMENT '金额1',
  `visaPayStyleMoney` DOUBLE DEFAULT NULL COMMENT '金额2',
  `otherPayStyleMoney` DOUBLE DEFAULT NULL COMMENT '金额3',
  `enables` INT(11) DEFAULT NULL COMMENT '标识是否删除',
  `safetyone` VARCHAR(50) DEFAULT NULL COMMENT '保留字段',
  `safetytwo` VARCHAR(50) DEFAULT NULL COMMENT '保留字段',
  `checkstate` INT(11) DEFAULT NULL COMMENT '审核状态',
  PRIMARY KEY (`costBillNo`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Data for the table `yzqsellshouldgatheringmain` */

/*Table structure for table `yzqsellshouldgatheringsub` */

DROP TABLE IF EXISTS `yzqsellshouldgatheringsub`;

CREATE TABLE `yzqsellshouldgatheringsub` (
  `costBillNo` VARCHAR(50) NOT NULL COMMENT '单据号码',
  `serNo` INT(11) NOT NULL COMMENT '栏号',
  `itemId` VARCHAR(50) NOT NULL COMMENT '编号',
  `fareClassName` VARCHAR(50) DEFAULT NULL COMMENT '名称',
  `money` DOUBLE DEFAULT NULL COMMENT '金额',
  `taxRate` DOUBLE DEFAULT NULL COMMENT '税率',
  `taxMoney` DOUBLE DEFAULT NULL COMMENT '税额',
  `accSubjectId` VARCHAR(50) DEFAULT NULL COMMENT '科目编号',
  `subjectName` VARCHAR(50) DEFAULT NULL COMMENT '科目名称',
  `demo` VARCHAR(50) DEFAULT NULL COMMENT '分录备注',
  `enables` INT(11) DEFAULT NULL COMMENT '标识是否删除',
  `safetyone` VARCHAR(50) DEFAULT NULL COMMENT '保留字段1',
  `safetytwo` VARCHAR(50) DEFAULT NULL COMMENT '保留字段2',
  PRIMARY KEY (`costBillNo`,`serNo`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Data for the table `yzqsellshouldgatheringsub` */

/*Table structure for table `zwjapportion` */

DROP TABLE IF EXISTS `zwjapportion`;

CREATE TABLE `zwjapportion` (
  `BillNo` INT(11) DEFAULT NULL COMMENT '单据号码',
  `AssignStyle` VARCHAR(50) DEFAULT NULL COMMENT '分摊方式',
  `BillDate` DATE DEFAULT NULL COMMENT '单据日期',
  `Maker` VARCHAR(50) DEFAULT NULL COMMENT '制单人员',
  `Permitter` VARCHAR(50) DEFAULT NULL COMMENT '复核人员',
  `CsOne` VARCHAR(50) DEFAULT NULL COMMENT '测试数据',
  `CsTow` VARCHAR(50) DEFAULT NULL COMMENT '测试数据',
  `CsThree` VARCHAR(50) DEFAULT NULL COMMENT '测试数据'
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Data for the table `zwjapportion` */

/*Table structure for table `zwjexpensedetail` */

DROP TABLE IF EXISTS `zwjexpensedetail`;

CREATE TABLE `zwjexpensedetail` (
  `PeeClassID` INT(11) DEFAULT NULL COMMENT '	费用编号',
  `SerNo` INT(11) DEFAULT NULL COMMENT '	栏号',
  `PareClassName` VARCHAR(50) DEFAULT NULL COMMENT '费用名称',
  `CurrID` INT(11) DEFAULT NULL COMMENT '币别ID',
  `ExchRate` DOUBLE DEFAULT NULL COMMENT '	汇率',
  `Amount` DOUBLE DEFAULT NULL COMMENT '金额',
  `CsOne` VARCHAR(50) DEFAULT NULL COMMENT '测试数据',
  `CsTow` VARCHAR(50) DEFAULT NULL COMMENT '测试数据',
  `CsThree` VARCHAR(50) DEFAULT NULL COMMENT '测试数据'
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Data for the table `zwjexpensedetail` */

/*Table structure for table `zwjpurchasereturn` */

DROP TABLE IF EXISTS `zwjpurchasereturn`;

CREATE TABLE `zwjpurchasereturn` (
  `BillNo` INT(11) DEFAULT NULL COMMENT '单据号码',
  `CustID` INT(11) DEFAULT NULL COMMENT '供应商ID',
  `BillDate` DATE DEFAULT NULL COMMENT '单据日期',
  `AddrID` INT(11) DEFAULT NULL COMMENT '供应商地址ID',
  `IsDeduct` TINYINT(1) DEFAULT NULL COMMENT '是否重新入库',
  `SaleID` INT(11) DEFAULT NULL COMMENT '采购人员ID',
  `DepartID` INT(11) DEFAULT NULL COMMENT '所属部门ID',
  `Maker` VARCHAR(50) DEFAULT NULL COMMENT '制单人员',
  `Permitter` VARCHAR(50) DEFAULT NULL COMMENT '复核人员',
  `CsOne` VARCHAR(50) DEFAULT NULL COMMENT '测试数据',
  `CsTow` VARCHAR(50) DEFAULT NULL COMMENT '测试数据',
  `CsThree` VARCHAR(50) DEFAULT NULL COMMENT '测试数据'
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Data for the table `zwjpurchasereturn` */

/*Table structure for table `zwjresultsdetail` */

DROP TABLE IF EXISTS `zwjresultsdetail`;

CREATE TABLE `zwjresultsdetail` (
  `FormNo` INT(11) DEFAULT NULL COMMENT '	采购入库编号',
  `SerNo` INT(11) DEFAULT NULL COMMENT '	栏号',
  `ProdID` VARCHAR(50) DEFAULT NULL COMMENT '	物料编号',
  `VAmount` DOUBLE DEFAULT NULL COMMENT '采购金额',
  `ProdName` VARCHAR(50) DEFAULT NULL COMMENT '物料名称',
  `ProdSize` VARCHAR(50) DEFAULT NULL COMMENT '规格型号',
  `MLAmount` DOUBLE DEFAULT NULL COMMENT '	分摊金额',
  `VQuantity` INT(11) DEFAULT NULL COMMENT '	数量',
  `Sunit` VARCHAR(50) DEFAULT NULL COMMENT '单位',
  `DetailCurrID` INT(11) DEFAULT NULL COMMENT '币别ID',
  `CsOne` VARCHAR(50) DEFAULT NULL COMMENT '测试数据',
  `CsTow` VARCHAR(50) DEFAULT NULL COMMENT '测试数据',
  `CsThree` VARCHAR(50) DEFAULT NULL COMMENT '测试数据'
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Data for the table `zwjresultsdetail` */

/*Table structure for table `zwjreturndetails` */

DROP TABLE IF EXISTS `zwjreturndetails`;

CREATE TABLE `zwjreturndetails` (
  `ProdID` INT(11) DEFAULT NULL COMMENT '物料编号',
  `SerNo` INT(11) DEFAULT NULL COMMENT '	栏号',
  `ProdName` VARCHAR(50) DEFAULT NULL COMMENT '	物料名称',
  `ProdSize` VARCHAR(50) DEFAULT NULL COMMENT '	规格型号',
  `UnitName` VARCHAR(50) DEFAULT NULL COMMENT '	单位',
  `SQuantity` INT(11) DEFAULT NULL COMMENT '	数量',
  `Sprice` DOUBLE DEFAULT NULL COMMENT '单价',
  `Amount` DOUBLE DEFAULT NULL COMMENT '金额',
  `HaveBatch` VARCHAR(50) DEFAULT NULL COMMENT '	批号',
  `ItwmRemark` VARCHAR(50) DEFAULT NULL COMMENT '	分录备注',
  `CsOne` VARCHAR(50) DEFAULT NULL COMMENT '测试数据',
  `CsTow` VARCHAR(50) DEFAULT NULL COMMENT '测试数据',
  `CsThree` VARCHAR(50) DEFAULT NULL COMMENT '测试数据'
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Data for the table `zwjreturndetails` */

/*Table structure for table `zwjwarehousewarrant` */

DROP TABLE IF EXISTS `zwjwarehousewarrant`;

CREATE TABLE `zwjwarehousewarrant` (
  `BillNo` INT(11) DEFAULT NULL COMMENT '	单据号码',
  `CustID` INT(50) DEFAULT NULL COMMENT '供应商ID',
  `SaleClassName` VARCHAR(50) DEFAULT NULL COMMENT '入库类型',
  `BillDate` DATE DEFAULT NULL COMMENT '单据日期',
  `VoucherNo` VARCHAR(50) DEFAULT NULL COMMENT '凭证编号',
  `SaleID` INT(11) DEFAULT NULL COMMENT '	入库人员ID',
  `DepartID` INT(11) DEFAULT NULL COMMENT '	所属部门ID',
  `Maker` VARCHAR(50) DEFAULT NULL COMMENT '制单人员',
  `Permitter` VARCHAR(50) DEFAULT NULL COMMENT '复核人员',
  `CsOne` VARCHAR(50) DEFAULT NULL COMMENT '	测试数据',
  `CsTow` VARCHAR(50) DEFAULT NULL COMMENT '	测试数据',
  `CsThree` VARCHAR(50) DEFAULT NULL COMMENT '	测试数据'
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Data for the table `zwjwarehousewarrant` */

/*Table structure for table `zwjwarehousingdetail` */

DROP TABLE IF EXISTS `zwjwarehousingdetail`;

CREATE TABLE `zwjwarehousingdetail` (
  `ProdID` INT(11) DEFAULT NULL COMMENT '物料编号',
  `SerNo` INT(11) DEFAULT NULL COMMENT '栏号',
  `ProdName` VARCHAR(50) DEFAULT NULL COMMENT '物料名称',
  `ProdSize` VARCHAR(50) DEFAULT NULL COMMENT '规格型号',
  `UnitName` VARCHAR(50) DEFAULT NULL COMMENT '单位',
  `SQuantity` INT(11) DEFAULT NULL COMMENT '数量',
  `Sprice` DOUBLE DEFAULT NULL COMMENT '单价',
  `Amount` DOUBLE DEFAULT NULL COMMENT '金额',
  `HaveBatch` VARCHAR(50) DEFAULT NULL COMMENT '	批号',
  `ItwmRemark` VARCHAR(50) DEFAULT NULL COMMENT '分录备注',
  `CsOne` VARCHAR(50) DEFAULT NULL COMMENT '测试数据',
  `CsTow` VARCHAR(50) DEFAULT NULL COMMENT '测试数据',
  `CsThree` VARCHAR(50) DEFAULT NULL COMMENT '测试数据'
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Data for the table `zwjwarehousingdetail` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
