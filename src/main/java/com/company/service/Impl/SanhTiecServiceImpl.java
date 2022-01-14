/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.company.service.Impl;

import com.cloudinary.Cloudinary;
import com.company.pojo.Sanhtiec;
import com.company.service.SanhTiecService;
import com.company.repository.SanhTiecRepository;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author ASUS
 */
@Service
@Transactional
public class SanhTiecServiceImpl implements SanhTiecService {

    @Autowired
    private SanhTiecRepository sanhTiecRepository;
    @Autowired
    private Cloudinary cloudinary;

    @Override
    public List<Sanhtiec> getProducts() {
        return this.sanhTiecRepository.getProducts();
    }


    @Override
    public Sanhtiec getProductById(int i) {
        return this.sanhTiecRepository.getProductById(i);
    }



}
