/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.company.controller;

import com.company.service.SanhTiecService;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;


    @Controller
    @ControllerAdvice
    public class SanhTiecController {
        @Autowired
        private SanhTiecService sanhTiecService;
       
        
        
        @GetMapping("/sanhtiec")
        public String ds(Model model){
            model.addAttribute("sanhtiec", this.sanhTiecService.getProducts());
            return "sanhtiec";
        }
        
        @GetMapping("sanhtiec/{SanhtiecId}")
        public String chitiet(Model model, @PathVariable(value = "SanhtiecId") int SanhtiecId){
            model.addAttribute("sanhtiec", this.sanhTiecService.getProductById(SanhtiecId));
            return "chitiet-sanhtiec";
        } 
        

        
     
}
