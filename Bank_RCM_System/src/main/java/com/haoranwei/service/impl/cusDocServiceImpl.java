package com.haoranwei.service.impl;

import com.haoranwei.bean.cusDoc;
import com.haoranwei.mapper.cusDocMapper;
import com.haoranwei.service.cusDocService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service

public class cusDocServiceImpl implements cusDocService {
    @Autowired
    private cusDocMapper cusDocMapper;

    @Override
    public List<cusDoc> getAllCustomers() {
        return cusDocMapper.getAllCustomers();
    }

    @Override
    public cusDoc getCustomerById(int customerId) {
        return cusDocMapper.getCustomerById(customerId);
    }

    @Override
    public void addCustomer(cusDoc customer) {
        cusDocMapper.addCustomer(customer);
    }

    @Override
    public void updateCustomer(cusDoc customer) {
        cusDocMapper.updateCustomer(customer);
    }

    @Override
    public void deleteCustomer(int customerId) {
        cusDocMapper.deleteCustomer(customerId);
    }

    public void setCusDocMapper(com.haoranwei.mapper.cusDocMapper cusDocMapper) {
    }
}
