/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.company.repository.Impl;



import com.company.pojo.Sanhtiec;
import com.company.repository.SanhTiecRepository;
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

/**
 *
 * @author ASUS
 */
@Repository
public class SanhTiecRepositoryImpl implements SanhTiecRepository {
    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    

    @Override
    public List<Sanhtiec> getProducts() {
        Session session = this.sessionFactory.getObject().getCurrentSession();  
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Sanhtiec> query = builder.createQuery(Sanhtiec.class);
	
	Root root = query.from(Sanhtiec.class);
        query = query.select(root);
        query = query.orderBy(builder.asc(root.get("masanhtiec")));
	Query q = session.createQuery(query);
	return q.getResultList();
    }


    @Override
    public Sanhtiec getProductById(int id) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
            return session.get(Sanhtiec.class, id);
    }

}

