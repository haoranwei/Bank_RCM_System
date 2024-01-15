package com.haoranwei.service.impl;

import com.haoranwei.bean.loanApply;
import com.haoranwei.mapper.lendManageMapper;
import com.haoranwei.service.lendManageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class lendManageServiceImpl implements lendManageService {
    @Autowired
    private lendManageMapper lendManageMapper;

    @Override
    public List<loanApply> getAllLoanApplies() {
        return lendManageMapper.getAllLoanApplies();
    }

    @Override
    public void addLoanApply(loanApply loanApply) {
        lendManageMapper.addLoanApply(loanApply);
    }

    @Override
    public loanApply getLoanApplyById(int loanId) {
        return lendManageMapper.getLoanApplyById(loanId);
    }

    @Override
    public void updateLoanApply(loanApply loanApply) {
        lendManageMapper.updateLoanApply(loanApply);
    }

    @Override
    public void deleteLoanApply(int loanId) {
        lendManageMapper.deleteLoanApply(loanId);
    }

    public void setLendManageMapper(com.haoranwei.mapper.lendManageMapper lendManageMapper) {
    }
}
