package com.haoranwei.controller;

import com.haoranwei.bean.loanApply;
import com.haoranwei.service.repayManageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/repayManage")
public class repayManageController {
    @Autowired
    private repayManageService repayManageService;

    @GetMapping("/list")
    public String list(Model model) {
        List<loanApply> loanApplies = repayManageService.getAllLoanApplies();
        model.addAttribute("loanApplies", loanApplies);
        return "repayManage/list";
    }


    @GetMapping("/edit/{loanId}")
    public String editForm(@PathVariable int loanId, Model model) {
        loanApply loanApply = repayManageService.getLoanApplyById(loanId);
        model.addAttribute("loanApply", loanApply);
        return "repayManage/edit";
    }

    @PostMapping("/edit/{loanId}")
    public String editSubmit(@PathVariable int loanId, @ModelAttribute loanApply loanApply) {
        loanApply.setLoanId(loanId);
        repayManageService.updateLoanApply(loanApply);
        return "redirect:/repayManage/list";
    }

    @GetMapping("/delete/{loanId}")
    public String delete(@PathVariable int loanId) {
        repayManageService.deleteLoanApply(loanId);
        return "redirect:/repayManage/list";
    }
}

//    @GetMapping("/add")
//    public String addForm(Model model) {
//        model.addAttribute("loanApply", new loanApply());
//        return "repayManage/form";
//    }
//
//    @PostMapping("/add")
//    public String addSubmit(@ModelAttribute loanApply loanApply) {
//        repayManageService.addLoanApply(loanApply);
//        return "redirect:/repayManage/list";
//    }
