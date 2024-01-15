package com.haoranwei.mapper;

import com.haoranwei.bean.loanApply;

import java.util.List;

public interface repayManageMapper {
    List<loanApply> getAllLoanApplies();

    loanApply getLoanApplyById(int loanId);

    void addLoanApply(loanApply loanApply);

    void updateLoanApply(loanApply loanApply);

    void deleteLoanApply(int loanId);
}
