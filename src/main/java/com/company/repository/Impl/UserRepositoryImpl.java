/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.company.repository.Impl;

import com.company.pojo.Taikhoan;
import com.company.repository.UserRepository;
import java.util.List;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


@Repository
@Transactional
public class UserRepositoryImpl implements UserRepository {
    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    

    @Override
    public Taikhoan getUserById(int id) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        
        return session.get(Taikhoan.class, id);
    }
    
    @Override
    public boolean addUser(Taikhoan user) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        try {
            session.save(user);
            
            return true;
        } catch (HibernateException ex) {
            System.err.println(ex.getMessage());
        }
        
        return false;
    }

    @Override
    public List<Taikhoan> getUsers(String username) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Taikhoan> query = builder.createQuery(Taikhoan.class);
        Root root = query.from(Taikhoan.class);
        query = query.select(root);
        
        if (!username.isEmpty()) {
            Predicate p = builder.equal(root.get("username").as(String.class), username.trim());
            query = query.where(p);
        }
        
        Query q = session.createQuery(query);
        return q.getResultList();
    }
    
}
