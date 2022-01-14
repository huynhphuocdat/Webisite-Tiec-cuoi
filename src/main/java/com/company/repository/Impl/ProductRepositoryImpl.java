/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.company.repository.Impl;

//import com.company.pojo.OrderDetail;
import com.company.pojo.Monan;
import com.company.repository.ProductRepository;
import java.util.List;
import org.hibernate.query.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


@Repository
@Transactional
public class ProductRepositoryImpl implements ProductRepository {
    @Autowired
    private LocalSessionFactoryBean sessionFactory;
    
    
    @Override
    public List<Monan> getProducts(String kw, int page) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Monan> query = builder.createQuery(Monan.class);
        Root root = query.from(Monan.class);
        query = query.select(root);
        
        if (kw != null) {
            Predicate p = builder.like(root.get("tenMonAn").as(String.class), 
                    String.format("%%%s%%", kw));
            query = query.where(p);
        }
        
        query = query.orderBy(builder.asc(root.get("maMonAn")));
        
        Query q = session.createQuery(query);
        
        int max = 20;
        q.setMaxResults(max);
        q.setFirstResult((page - 1) * max);
        
        return q.getResultList();
    }


    @Override
    public long countProduct() {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        Query q = session.createQuery("Select Count(*) From Monan");
        
        return Long.parseLong(q.getSingleResult().toString());
    }

    @Override
    public Monan getProductById(int id) {
        Session session = this.sessionFactory.getObject().getCurrentSession();
        return session.get(Monan.class, id);
    }


}
