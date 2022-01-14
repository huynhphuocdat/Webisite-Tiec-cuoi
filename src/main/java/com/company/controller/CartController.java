/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.company.controller;

import com.company.pojo.Cart;
import com.company.utils.Utils;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CartController {
    @GetMapping("/giohang")
    public String cart(Model model, HttpSession session){
        Map<Integer, Cart> cart = (Map<Integer, Cart>) session.getAttribute("cart");
        if(cart != null)
            model.addAttribute("giohang", cart.values());
        else
            model.addAttribute("giohang", null);
        
        model.addAttribute("cartStats", Utils.cartStats(cart));
        return "giohang";
    }
}
