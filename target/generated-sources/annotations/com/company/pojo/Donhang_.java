package com.company.pojo;

import com.company.pojo.Chitietdonhang;
import com.company.pojo.Khachhang;
import com.company.pojo.Nhanvien;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2021-12-28T01:27:21")
@StaticMetamodel(Donhang.class)
public class Donhang_ { 

    public static volatile SingularAttribute<Donhang, Khachhang> maKH;
    public static volatile CollectionAttribute<Donhang, Chitietdonhang> chitietdonhangCollection;
    public static volatile SingularAttribute<Donhang, Integer> maDH;
    public static volatile SingularAttribute<Donhang, Date> ngayLapDon;
    public static volatile SingularAttribute<Donhang, Nhanvien> maNV;

}