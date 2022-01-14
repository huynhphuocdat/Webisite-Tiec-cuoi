/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.company.controller;


import com.company.pojo.Cart;
import com.company.service.CategoryService;
import com.company.service.ProductService;
import com.company.utils.Utils;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@ControllerAdvice
public class HomeController {

    @Autowired
    private ProductService productService;
    
    @Autowired
    private CategoryService categoryService;
        
        @ModelAttribute
        public void commnAttrs(Model model, HttpSession session){
            model.addAttribute("loaimonan", this.categoryService.getCategories());
            model.addAttribute("cartCounter", Utils.countCart((Map<Integer, Cart>) session.getAttribute("cart")));
            model.addAttribute("currentUser", session.getAttribute("currentUser"));
        }  
   

    @GetMapping("/")
     public String index(){
       return "index";
    } 
      
    

}
