package com.company.pojo;

import com.company.pojo.Khachhang;
import com.company.pojo.Nhanvien;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2021-12-28T01:27:21")
@StaticMetamodel(Taikhoan.class)
public class Taikhoan_ { 

    public static volatile SingularAttribute<Taikhoan, String> lastName;
    public static volatile SingularAttribute<Taikhoan, String> firstName;
    public static volatile SingularAttribute<Taikhoan, String> password;
    public static volatile CollectionAttribute<Taikhoan, Nhanvien> nhanvienCollection;
    public static volatile CollectionAttribute<Taikhoan, Khachhang> khachhangCollection;
    public static volatile SingularAttribute<Taikhoan, String> avatar;
    public static volatile SingularAttribute<Taikhoan, String> userRole;
    public static volatile SingularAttribute<Taikhoan, String> email;
    public static volatile SingularAttribute<Taikhoan, Integer> idtaikhoan;
    public static volatile SingularAttribute<Taikhoan, String> username;

}