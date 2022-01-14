/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.company.service.Impl;

import com.company.pojo.Loaimonan;
import com.company.repository.CategoryRepository;
import com.company.service.CategoryService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CategoryServiceImpl implements  CategoryService{
    @Autowired
    private CategoryRepository categoryRepository;

    @Override
    public List<Loaimonan> getCategories() {
        return this.categoryRepository.getCategories();
    }

    @Override
    public Loaimonan getCategoryById(int cateId) {
        return this.categoryRepository.getCategoryById(cateId);
    }
}
