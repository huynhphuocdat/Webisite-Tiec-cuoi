/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.company.service;

import com.company.pojo.Dichvu;
import java.util.List;

/**
 *
 * @author ASUS
 */
public interface DichVuService {
    List<Dichvu> getProducts();
    Dichvu getProductById(int id);
}
