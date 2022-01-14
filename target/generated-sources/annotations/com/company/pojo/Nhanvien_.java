package com.company.pojo;

import com.company.pojo.Connguoi;
import com.company.pojo.Donhang;
import com.company.pojo.Taikhoan;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2021-12-28T01:27:21")
@StaticMetamodel(Nhanvien.class)
public class Nhanvien_ { 

    public static volatile CollectionAttribute<Nhanvien, Donhang> donhangCollection;
    public static volatile CollectionAttribute<Nhanvien, Taikhoan> taikhoanCollection;
    public static volatile SingularAttribute<Nhanvien, Integer> maNV;
    public static volatile SingularAttribute<Nhanvien, Connguoi> connguoi;

}