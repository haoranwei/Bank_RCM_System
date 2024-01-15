package com.haoranwei.mapper;

import com.haoranwei.bean.loanApply;

import java.util.List;

public interface lendManageMapper {
    List<loanApply> getAllLoanApplies();

    void addLoanApply(loanApply loanApply);

    loanApply getLoanApplyById(int loanId);

    void updateLoanApply(loanApply loanApply);

    void deleteLoanApply(int loanId);
}
