/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.company.repository;

import com.company.pojo.Sanhtiec;
import java.util.List;

/**
 *
 * @author ASUS
 */
public interface SanhTiecRepository {
    List<Sanhtiec> getProducts();
    Sanhtiec getProductById(int productId);
}
