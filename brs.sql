SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cusdoc
-- ----------------------------
DROP TABLE IF EXISTS `cusdoc`;
CREATE TABLE `cusdoc`  (
  `customerId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `idCard` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `address` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `occupation` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `income` double NULL DEFAULT NULL,
  `loanRecords` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `creditScore` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`customerId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of cusdoc
-- ----------------------------
INSERT INTO `cusdoc` VALUES (1, 'Tom', '10001', '83838888', 'HUEL', 'Engineer', 8000, '0', 720);
INSERT INTO `cusdoc` VALUES (2, 'Jerry', '10002', '83838889', 'HUEL ', 'Teacher', 9000, '0', 715);

-- ----------------------------
-- Table structure for loanapply
-- ----------------------------
DROP TABLE IF EXISTS `loanapply`;
CREATE TABLE `loanapply`  (
  `loanId` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `applyTime` date NULL DEFAULT NULL,
  `loanAmount` decimal(10, 2) NULL DEFAULT NULL,
  `repayTerm` int(11) NULL DEFAULT NULL,
  `interestRate` decimal(5, 2) NULL DEFAULT NULL,
  `collateralMethod` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `approvalStatus` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `repaymentTime` date NULL DEFAULT NULL,
  `repaymentAmount` decimal(10, 2) NULL DEFAULT NULL,
  `repaymentMethod` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `repaymentStatus` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `loanBalance` decimal(10, 2) NULL DEFAULT NULL,
  `overdueStatus` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `collectionRecords` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL,
  `disbursementTime` date NULL DEFAULT NULL,
  `disbursementAmount` decimal(10, 2) NULL DEFAULT NULL,
  `disbursementMethod` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `disbursementStatus` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`loanId`) USING BTREE
) ENGINE = MyISAM CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of loanapply
-- ----------------------------
INSERT INTO `loanapply` VALUES (1, 'Tom', '2024-01-01', 1000.00, 10, 10.00, '个人信用担保', '申请中', NULL, 1000.00, '1', '1', NULL, '1', '1', NULL, NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
