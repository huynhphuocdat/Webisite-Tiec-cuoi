package com.company.pojo;

import com.company.pojo.Chitietthucdon;
import com.company.pojo.Loaimonan;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2021-12-28T01:27:21")
@StaticMetamodel(Monan.class)
public class Monan_ { 

    public static volatile SingularAttribute<Monan, String> image;
    public static volatile CollectionAttribute<Monan, Chitietthucdon> chitietthucdonCollection;
    public static volatile SingularAttribute<Monan, Integer> maMonAn;
    public static volatile SingularAttribute<Monan, Loaimonan> maLoaiMonAn;
    public static volatile SingularAttribute<Monan, String> mota;
    public static volatile SingularAttribute<Monan, Long> gia;
    public static volatile SingularAttribute<Monan, String> tenMonAn;

}