/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.company.utils;

import com.company.pojo.Cart;
import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author ASUS
 */
public class Utils {
    public static int countCart( Map<Integer, Cart> cart){
        int quantity = 0;
        
        if(cart != null)
            for(Cart c: cart.values())
                quantity += c.getQuantity();
        return quantity;
    }
    
    public static Map<String, String> cartStats(Map<Integer, Cart> cart){
        Long sum = 0l;
        int quantity = 0;
        
        if(cart != null)
            for(Cart c: cart.values()){
                quantity += c.getQuantity();
                sum += c.getQuantity() * c.getPrice();
            }
        
        Map<String, String> kq = new HashMap<>();
        kq.put("counter", String.valueOf(quantity));
        kq.put("amount", String.valueOf(sum));
        
        return kq;
    }
}
