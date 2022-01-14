/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.company.service;

import com.company.pojo.Sanhtiec;
import java.util.List;

/**
 *
 * @author ASUS
 */
public interface SanhTiecService {
    List<Sanhtiec> getProducts();
    Sanhtiec getProductById(int id);
}
