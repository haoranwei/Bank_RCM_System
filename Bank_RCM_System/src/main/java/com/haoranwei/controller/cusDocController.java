package com.haoranwei.controller;

import com.haoranwei.bean.cusDoc;
import com.haoranwei.service.cusDocService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/cusDoc")
public class cusDocController {

    @Autowired
    private cusDocService customerService;

    @GetMapping("/list")
    public String listCustomers(Model model) {
        List<cusDoc> customers = customerService.getAllCustomers();
        model.addAttribute("customers", customers);
        return "cusDoc/list";
    }

    @GetMapping("/add")
    public String showAddForm(Model model) {
        cusDoc customer = new cusDoc();
        model.addAttribute("customer", customer);
        return "cusDoc/add";
    }

    @PostMapping("/add")
    public String addCustomer(@ModelAttribute("cusDoc") cusDoc customer) {
        customerService.addCustomer(customer);
        return "redirect:/cusDoc/list";
    }

    @GetMapping("/edit/{customerId}")
    public String showEditForm(@PathVariable("customerId") int customerId, Model model) {
        cusDoc customer = customerService.getCustomerById(customerId);
        model.addAttribute("customer", customer);
        return "cusDoc/edit";
    }

    @PostMapping("/edit")
    public String updateCustomer(@ModelAttribute("customer") cusDoc customer) {
        customerService.updateCustomer(customer);
        return "redirect:/cusDoc/list";
    }

    @GetMapping("/delete/{customerId}")
    public String deleteCustomer(@PathVariable("customerId") int customerId) {
        customerService.deleteCustomer(customerId);
        return "redirect:/cusDoc/list";
    }
}

