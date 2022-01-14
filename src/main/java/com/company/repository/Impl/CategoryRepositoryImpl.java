/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.company.repository.Impl;

import com.company.pojo.Loaimonan;
import com.company.repository.CategoryRepository;
import java.util.List;
import javax.persistence.Query;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


@Repository
@Transactional
public class CategoryRepositoryImpl implements CategoryRepository {
    @Autowired
    private LocalSessionFactoryBean sessionFactory;

    @Override
    public List<Loaimonan> getCategories() {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        Query q = session.createQuery("From Loaimonan");
        return q.getResultList();
    }

    @Override
    public Loaimonan getCategoryById(int cateId) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        return session.get(Loaimonan.class, cateId);
    }
    
}
