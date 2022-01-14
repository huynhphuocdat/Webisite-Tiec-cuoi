/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.company.pojo;

import java.io.Serializable;
import java.util.Collection;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author ASUS
 */
@Entity
@Table(name = "sanhtiec")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Sanhtiec.findAll", query = "SELECT s FROM Sanhtiec s"),
    @NamedQuery(name = "Sanhtiec.findByMasanhtiec", query = "SELECT s FROM Sanhtiec s WHERE s.masanhtiec = :masanhtiec"),
    @NamedQuery(name = "Sanhtiec.findByTenSanh", query = "SELECT s FROM Sanhtiec s WHERE s.tenSanh = :tenSanh"),
    @NamedQuery(name = "Sanhtiec.findBySucChua", query = "SELECT s FROM Sanhtiec s WHERE s.sucChua = :sucChua"),
    @NamedQuery(name = "Sanhtiec.findByDienTich", query = "SELECT s FROM Sanhtiec s WHERE s.dienTich = :dienTich"),
    @NamedQuery(name = "Sanhtiec.findBySoBan", query = "SELECT s FROM Sanhtiec s WHERE s.soBan = :soBan"),
    @NamedQuery(name = "Sanhtiec.findByMoTa", query = "SELECT s FROM Sanhtiec s WHERE s.moTa = :moTa"),
    @NamedQuery(name = "Sanhtiec.findByNgayToChuc", query = "SELECT s FROM Sanhtiec s WHERE s.ngayToChuc = :ngayToChuc"),
    @NamedQuery(name = "Sanhtiec.findByGiaTienSang", query = "SELECT s FROM Sanhtiec s WHERE s.giaTienSang = :giaTienSang"),
    @NamedQuery(name = "Sanhtiec.findByGiaTienTrua", query = "SELECT s FROM Sanhtiec s WHERE s.giaTienTrua = :giaTienTrua"),
    @NamedQuery(name = "Sanhtiec.findByGiaTienToi", query = "SELECT s FROM Sanhtiec s WHERE s.giaTienToi = :giaTienToi"),
    @NamedQuery(name = "Sanhtiec.findByImage", query = "SELECT s FROM Sanhtiec s WHERE s.image = :image")})
public class Sanhtiec implements Serializable {

    @Column(name = "giaTienSang")
    private Long giaTienSang;
    @Column(name = "giaTienTrua")
    private Long giaTienTrua;
    @Column(name = "giaTienToi")
    private Long giaTienToi;

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "masanhtiec")
    private Integer masanhtiec;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "tenSanh")
    private String tenSanh;
    @Column(name = "sucChua")
    private Short sucChua;
    @Size(max = 45)
    @Column(name = "DienTich")
    private String dienTich;
    @Column(name = "SoBan")
    private Short soBan;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 800)
    @Column(name = "moTa")
    private String moTa;
    @Basic(optional = false)
    @NotNull
    @Column(name = "ngayToChuc")
    @Temporal(TemporalType.DATE)
    private Date ngayToChuc;
    @Size(max = 300)
    @Column(name = "image")
    private String image;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "sanhtiec")
    private Collection<Dichvutieccuoi> dichvutieccuoiCollection;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "sanhtiec")
    private Collection<Chitietdonhang> chitietdonhangCollection;
    @JoinColumn(name = "maThucDon", referencedColumnName = "idThucDon")
    @ManyToOne
    private Thucdon maThucDon;

    public Sanhtiec() {
    }

    public Sanhtiec(Integer masanhtiec) {
        this.masanhtiec = masanhtiec;
    }

    public Sanhtiec(Integer masanhtiec, String tenSanh, String moTa, Date ngayToChuc) {
        this.masanhtiec = masanhtiec;
        this.tenSanh = tenSanh;
        this.moTa = moTa;
        this.ngayToChuc = ngayToChuc;
    }

    public Integer getMasanhtiec() {
        return masanhtiec;
    }

    public void setMasanhtiec(Integer masanhtiec) {
        this.masanhtiec = masanhtiec;
    }

    public String getTenSanh() {
        return tenSanh;
    }

    public void setTenSanh(String tenSanh) {
        this.tenSanh = tenSanh;
    }

    public Short getSucChua() {
        return sucChua;
    }

    public void setSucChua(Short sucChua) {
        this.sucChua = sucChua;
    }

    public String getDienTich() {
        return dienTich;
    }

    public void setDienTich(String dienTich) {
        this.dienTich = dienTich;
    }

    public Short getSoBan() {
        return soBan;
    }

    public void setSoBan(Short soBan) {
        this.soBan = soBan;
    }

    public String getMoTa() {
        return moTa;
    }

    public void setMoTa(String moTa) {
        this.moTa = moTa;
    }

    public Date getNgayToChuc() {
        return ngayToChuc;
    }

    public void setNgayToChuc(Date ngayToChuc) {
        this.ngayToChuc = ngayToChuc;
    }


    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    @XmlTransient
    public Collection<Dichvutieccuoi> getDichvutieccuoiCollection() {
        return dichvutieccuoiCollection;
    }

    public void setDichvutieccuoiCollection(Collection<Dichvutieccuoi> dichvutieccuoiCollection) {
        this.dichvutieccuoiCollection = dichvutieccuoiCollection;
    }

    @XmlTransient
    public Collection<Chitietdonhang> getChitietdonhangCollection() {
        return chitietdonhangCollection;
    }

    public void setChitietdonhangCollection(Collection<Chitietdonhang> chitietdonhangCollection) {
        this.chitietdonhangCollection = chitietdonhangCollection;
    }

    public Thucdon getMaThucDon() {
        return maThucDon;
    }

    public void setMaThucDon(Thucdon maThucDon) {
        this.maThucDon = maThucDon;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (masanhtiec != null ? masanhtiec.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Sanhtiec)) {
            return false;
        }
        Sanhtiec other = (Sanhtiec) object;
        if ((this.masanhtiec == null && other.masanhtiec != null) || (this.masanhtiec != null && !this.masanhtiec.equals(other.masanhtiec))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.company.pojo.Sanhtiec[ masanhtiec=" + masanhtiec + " ]";
    }

    public Long getGiaTienSang() {
        return giaTienSang;
    }

    public void setGiaTienSang(Long giaTienSang) {
        this.giaTienSang = giaTienSang;
    }

    public Long getGiaTienTrua() {
        return giaTienTrua;
    }

    public void setGiaTienTrua(Long giaTienTrua) {
        this.giaTienTrua = giaTienTrua;
    }

    public Long getGiaTienToi() {
        return giaTienToi;
    }

    public void setGiaTienToi(Long giaTienToi) {
        this.giaTienToi = giaTienToi;
    }
    
}
