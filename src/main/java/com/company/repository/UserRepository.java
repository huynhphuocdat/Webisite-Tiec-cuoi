/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.company.repository;
import com.company.pojo.Taikhoan;
import java.util.List;


public interface UserRepository {
    Taikhoan getUserById(int userId);
    boolean addUser(Taikhoan user);
    List<Taikhoan> getUsers(String username);
}
