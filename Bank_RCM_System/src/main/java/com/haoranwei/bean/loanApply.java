package com.haoranwei.bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

import java.math.BigDecimal;
import java.util.Date;

//模块2：贷款申请模块
//模块6，7：还款管理和放款管理
@Data
@NoArgsConstructor
@AllArgsConstructor
public class loanApply {
    private int loanId;
    private String name;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date applyTime;

    private BigDecimal loanAmount;
    private int repayTerm;
    private BigDecimal interestRate;
    private String collateralMethod;
    private String approvalStatus;

    //还款管理和放款管理
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date repaymentTime;

    private BigDecimal repaymentAmount;
    private String repaymentMethod;
    private String repaymentStatus;
    private BigDecimal loanBalance;
    private String overdueStatus;
    private String collectionRecords;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date disbursementTime;

    private BigDecimal disbursementAmount;
    private String disbursementMethod;
    private String disbursementStatus;
}
