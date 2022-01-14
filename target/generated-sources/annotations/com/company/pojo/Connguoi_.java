package com.company.pojo;

import com.company.pojo.Khachhang;
import com.company.pojo.Nhanvien;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2021-12-28T01:27:21")
@StaticMetamodel(Connguoi.class)
public class Connguoi_ { 

    public static volatile SingularAttribute<Connguoi, Khachhang> khachhang;
    public static volatile SingularAttribute<Connguoi, String> diaChi;
    public static volatile SingularAttribute<Connguoi, String> sdt;
    public static volatile SingularAttribute<Connguoi, Integer> peopleId;
    public static volatile SingularAttribute<Connguoi, Nhanvien> nhanvien;
    public static volatile SingularAttribute<Connguoi, Date> ngaySinh;
    public static volatile SingularAttribute<Connguoi, String> hoTen;
    public static volatile SingularAttribute<Connguoi, String> gioiTinh;
    public static volatile SingularAttribute<Connguoi, String> email;

}