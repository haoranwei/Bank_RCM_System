package com.haoranwei.controller;

import com.haoranwei.bean.loanApply;
import com.haoranwei.service.loanApplyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/loanApply")
public class loanApplyController{
    @Autowired
    private loanApplyService loanApplyService;

    @GetMapping("/apply")
    public String showApplyForm(Model model) {
        model.addAttribute("loanApply", new loanApply());
        return "loanApply/applyLoan";
    }

    @PostMapping("/apply")
    public String submitApplyForm(loanApply loanApply) {
        loanApplyService.applyLoan(loanApply);
        return "loanApply/success";
    }

    @GetMapping("/success")
    public String showSuccessPage() {
        return "loanApply/success";
    }
}
