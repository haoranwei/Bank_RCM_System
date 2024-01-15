package com.haoranwei.service.impl;

import com.haoranwei.bean.loanApply;
import com.haoranwei.mapper.loanApplyMapper;
import com.haoranwei.service.loanApplyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class loanApplyServiceImpl implements loanApplyService {
    @Autowired
    private loanApplyMapper loanApplyMapper;

    @Override
    public void applyLoan(loanApply loanApply) {
        loanApplyMapper.insertLoanApply(loanApply);
    }

    public void setLoanApplyMapper(com.haoranwei.mapper.loanApplyMapper loanApplyMapper) {
    }
}
