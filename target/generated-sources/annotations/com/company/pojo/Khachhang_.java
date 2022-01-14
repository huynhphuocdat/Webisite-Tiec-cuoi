package com.company.pojo;

import com.company.pojo.Connguoi;
import com.company.pojo.Donhang;
import com.company.pojo.Taikhoan;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2021-12-28T01:27:21")
@StaticMetamodel(Khachhang.class)
public class Khachhang_ { 

    public static volatile SingularAttribute<Khachhang, Integer> maKH;
    public static volatile CollectionAttribute<Khachhang, Donhang> donhangCollection;
    public static volatile CollectionAttribute<Khachhang, Taikhoan> taikhoanCollection;
    public static volatile SingularAttribute<Khachhang, Connguoi> connguoi;

}