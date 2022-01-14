/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.company.controller;


import com.company.pojo.Dichvu;
import com.company.service.DichVuService;
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
public class DichVuController {
        @Autowired
        private DichVuService dichVuService;
       
        
        
        @GetMapping("/dichvu")
        public String dv(Model model){
            model.addAttribute("dichvu", this.dichVuService.getProducts());
            return "dichvu";
        }
        
 
}
