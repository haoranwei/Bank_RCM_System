package com.haoranwei.bean;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

//模块1：客户档案管理
@Data
@NoArgsConstructor
@AllArgsConstructor
public class cusDoc {
    private int customerId;
    private String name;
    private String idCard;
    private String phone;
    private String address;
    private String occupation;
    private Double income;
    private String loanRecords;
    private int creditScore;
}
