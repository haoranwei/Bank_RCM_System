package com.haoranwei.service.impl;

import com.haoranwei.bean.loanApply;
import com.haoranwei.mapper.repayManageMapper;
import com.haoranwei.service.repayManageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class repayManageServiceImpl implements repayManageService {
        @Autowired
        private repayManageMapper repayManageMapper;

        @Override
        public List<loanApply> getAllLoanApplies() {
            return repayManageMapper.getAllLoanApplies();
        }

        @Override
        public loanApply getLoanApplyById(int loanId) {
            return repayManageMapper.getLoanApplyById(loanId);
        }

        @Override
        public void addLoanApply(loanApply loanApply) {
            repayManageMapper.addLoanApply(loanApply);
        }

        @Override
        public void updateLoanApply(loanApply loanApply) {
            repayManageMapper.updateLoanApply(loanApply);
        }

        @Override
        public void deleteLoanApply(int loanId) {
            repayManageMapper.deleteLoanApply(loanId);
        }

    public void setRepayManageMapper(com.haoranwei.mapper.repayManageMapper repayManageMapper) {
    }
}
