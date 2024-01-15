package com.haoranwei.controller;

import com.haoranwei.bean.loanApply;
import com.haoranwei.service.lendManageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/lendManage")
public class lendManageController {
    @Autowired
    private lendManageService lendManageService;

    /**
     * 显示所有贷款申请列表
     */
    @RequestMapping("/list")
    public String list(Model model) {
        List<loanApply> loanApplyList = lendManageService.getAllLoanApplies();
        model.addAttribute("loanApplyList", loanApplyList);
        return "lendManage/list";
    }

    /**
     * 显示编辑贷款申请页面
     */
    @RequestMapping("/edit/{loanId}")
    public String edit(@PathVariable int loanId, Model model) {
        loanApply loanApply = lendManageService.getLoanApplyById(loanId);
        model.addAttribute("loanApply", loanApply);
        return "lendManage/edit";
    }

//    /**
//     * 更新贷款申请
//     */
//    @RequestMapping("/edit/{loanId}")
//    public String update(loanApply loanApply) {
//        lendManageService.updateLoanApply(loanApply);
//        return "redirect:/lendManage/list";
//    }

    /**
     * 删除贷款申请
     */
    @RequestMapping("/delete/{loanId}")
    public String delete(@PathVariable int loanId) {
        lendManageService.deleteLoanApply(loanId);
        return "redirect:/lendManage/list";
    }
}
