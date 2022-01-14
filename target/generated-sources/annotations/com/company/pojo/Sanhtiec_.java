package com.company.pojo;

import com.company.pojo.Chitietdonhang;
import com.company.pojo.Dichvutieccuoi;
import com.company.pojo.Thucdon;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2021-12-28T01:27:21")
@StaticMetamodel(Sanhtiec.class)
public class Sanhtiec_ { 

    public static volatile SingularAttribute<Sanhtiec, String> image;
    public static volatile SingularAttribute<Sanhtiec, String> tenSanh;
    public static volatile SingularAttribute<Sanhtiec, Date> ngayToChuc;
    public static volatile CollectionAttribute<Sanhtiec, Dichvutieccuoi> dichvutieccuoiCollection;
    public static volatile SingularAttribute<Sanhtiec, Integer> masanhtiec;
    public static volatile SingularAttribute<Sanhtiec, Short> sucChua;
    public static volatile SingularAttribute<Sanhtiec, Long> giaTienSang;
    public static volatile CollectionAttribute<Sanhtiec, Chitietdonhang> chitietdonhangCollection;
    public static volatile SingularAttribute<Sanhtiec, Long> giaTienTrua;
    public static volatile SingularAttribute<Sanhtiec, Thucdon> maThucDon;
    public static volatile SingularAttribute<Sanhtiec, Long> giaTienToi;
    public static volatile SingularAttribute<Sanhtiec, String> dienTich;
    public static volatile SingularAttribute<Sanhtiec, Short> soBan;
    public static volatile SingularAttribute<Sanhtiec, String> moTa;

}