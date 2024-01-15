package com.haoranwei.service;

import com.haoranwei.bean.loanApply;

import java.util.List;

public interface lendManageService {
    List<loanApply> getAllLoanApplies();

    void addLoanApply(loanApply loanApply);

    loanApply getLoanApplyById(int loanId);

    void updateLoanApply(loanApply loanApply);

    void deleteLoanApply(int loanId);
}
