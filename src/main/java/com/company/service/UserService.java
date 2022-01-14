/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.company.service;

import com.company.pojo.Taikhoan;
import java.util.List;
import org.springframework.security.core.userdetails.UserDetailsService;


public interface UserService extends UserDetailsService {
    Taikhoan getUserById(int id);
    boolean addUser(Taikhoan user);
    List<Taikhoan> getUsers(String username);
}
