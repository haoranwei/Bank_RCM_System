package com.haoranwei.mapper;

import com.haoranwei.bean.cusDoc;

import java.util.List;

public interface cusDocMapper {
    List<cusDoc> getAllCustomers();

    cusDoc getCustomerById(int customerId);

    void addCustomer(cusDoc customer);

    void updateCustomer(cusDoc customer);

    void deleteCustomer(int customerId);
}
