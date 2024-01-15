package com.haoranwei.service;

import com.haoranwei.bean.loanApply;

import java.util.List;

public interface repayManageService {
    List<loanApply> getAllLoanApplies();

    loanApply getLoanApplyById(int loanId);

    void addLoanApply(loanApply loanApply);

    void updateLoanApply(loanApply loanApply);

    void deleteLoanApply(int loanId);
}
