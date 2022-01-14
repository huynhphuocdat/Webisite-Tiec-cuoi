/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.company.repository.Impl;

import com.company.pojo.Dichvu;
import com.company.repository.DichVuRepository;
import java.util.List;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;



@Repository
public class DichVuRepositoryImpl implements DichVuRepository{
    @Autowired
    private LocalSessionFactoryBean sessionFactory;

    @Override
    public List<Dichvu> getProducts() {
        Session session = this.sessionFactory.getObject().getCurrentSession();  
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Dichvu> query = builder.createQuery(Dichvu.class);
	
	Root root = query.from(Dichvu.class);
        query = query.select(root);
	Query q = session.createQuery(query);
        

	return q.getResultList();
    }

    @Override
    public Dichvu getProductById(int productId) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
            return session.get(Dichvu.class, productId);
    }
    
}
