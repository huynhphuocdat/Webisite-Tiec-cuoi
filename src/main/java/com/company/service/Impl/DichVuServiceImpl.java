/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.company.service.Impl;

import com.cloudinary.Cloudinary;
import com.company.pojo.Dichvu;
import com.company.service.DichVuService;
import com.company.repository.DichVuRepository;
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
public class DichVuServiceImpl implements DichVuService{
    @Autowired
    private DichVuRepository dichVuRepository;
    @Autowired
    private Cloudinary cloudinary;
    
     @Override
    public List<Dichvu> getProducts() {
        return this.dichVuRepository.getProducts();
    }


    @Override
    public Dichvu getProductById(int i) {
        return this.dichVuRepository.getProductById(i);
    }

    
}
