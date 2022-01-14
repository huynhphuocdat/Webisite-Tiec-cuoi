/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.company.service;

import com.company.pojo.Loaimonan;
import java.util.List;


public interface CategoryService {
    List<Loaimonan> getCategories();
    Loaimonan getCategoryById(int cateId);
}
