/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.company.service;

import com.company.pojo.Monan;
import java.util.List;


public interface ProductService {
    List<Monan> getProducts(String kw, int page);
    long countProduct();
    Monan getProductById(int id);
}
