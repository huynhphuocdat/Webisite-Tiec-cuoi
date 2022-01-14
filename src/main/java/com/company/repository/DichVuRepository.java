/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.company.repository;
import com.company.pojo.Dichvu;
import java.util.List;


public interface DichVuRepository {
    List<Dichvu> getProducts();
    Dichvu getProductById(int productId);
}
