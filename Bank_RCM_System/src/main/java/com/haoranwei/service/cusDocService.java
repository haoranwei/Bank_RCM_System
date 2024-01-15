package com.haoranwei.service;

import com.haoranwei.bean.cusDoc;

import java.util.List;

public interface cusDocService {
    List<cusDoc> getAllCustomers();

    cusDoc getCustomerById(int customerId);

    void addCustomer(cusDoc customer);

    void updateCustomer(cusDoc customer);

    void deleteCustomer(int customerId);
}


