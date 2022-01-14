/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.company.controller;

import com.company.pojo.Cart;
import com.company.pojo.Loaimonan;
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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
/**
 *
 * @author ASUS
 */
        
    @Controller
    @ControllerAdvice
    public class ProductController {
        @Autowired
        private ProductService productService;
        @Autowired
        private CategoryService categoryService;
        

    @GetMapping("/monan")
     public String monan(Model model, @RequestParam(required = false) Map<String, String> params){
        String kw = params.getOrDefault("kw", null);
        int page = Integer.parseInt(params.getOrDefault("page", "1")); 
         
        String cateId = params.get("CateId");
        if(cateId == null){
            model.addAttribute("monan", this.productService.getProducts(kw, page));
        } else{
            Loaimonan c = this.categoryService.getCategoryById(Integer.parseInt(cateId));
            model.addAttribute("monan", c.getMonanCollection());
        }
         
        model.addAttribute("productCounter", this.productService.countProduct());
        
        
        return "monan";
    }
     
    @GetMapping("/monan/{MonanId}")
    public String chitietmonan(Model model, @PathVariable(value = "MonanId") int MonanId){
            model.addAttribute("monan", this.productService.getProductById(MonanId));
            return "chitiet-monan";
    }
}
