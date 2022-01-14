package com.company.pojo;

import com.company.pojo.Chitietthucdon;
import com.company.pojo.Sanhtiec;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2021-12-28T01:27:21")
@StaticMetamodel(Thucdon.class)
public class Thucdon_ { 

    public static volatile CollectionAttribute<Thucdon, Chitietthucdon> chitietthucdonCollection;
    public static volatile CollectionAttribute<Thucdon, Sanhtiec> sanhtiecCollection;
    public static volatile SingularAttribute<Thucdon, String> tenThucDon;
    public static volatile SingularAttribute<Thucdon, Integer> idThucDon;

}