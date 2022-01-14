/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.company.pojo;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author ASUS
 */
@Entity
@Table(name = "khachhang")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Khachhang.findAll", query = "SELECT k FROM Khachhang k"),
    @NamedQuery(name = "Khachhang.findByMaKH", query = "SELECT k FROM Khachhang k WHERE k.maKH = :maKH")})
public class Khachhang implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "maKH")
    private Integer maKH;
    @JoinTable(name = "taikhoan_kh", joinColumns = {
        @JoinColumn(name = "maKH", referencedColumnName = "maKH")}, inverseJoinColumns = {
        @JoinColumn(name = "idtaikhoan", referencedColumnName = "idtaikhoan")})
    @ManyToMany
    private Collection<Taikhoan> taikhoanCollection;
    @OneToMany(mappedBy = "maKH")
    private Collection<Donhang> donhangCollection;
    @JoinColumn(name = "maKH", referencedColumnName = "people_id", insertable = false, updatable = false)
    @OneToOne(optional = false)
    private Connguoi connguoi;

    public Khachhang() {
    }

    public Khachhang(Integer maKH) {
        this.maKH = maKH;
    }

    public Integer getMaKH() {
        return maKH;
    }

    public void setMaKH(Integer maKH) {
        this.maKH = maKH;
    }

    @XmlTransient
    public Collection<Taikhoan> getTaikhoanCollection() {
        return taikhoanCollection;
    }

    public void setTaikhoanCollection(Collection<Taikhoan> taikhoanCollection) {
        this.taikhoanCollection = taikhoanCollection;
    }

    @XmlTransient
    public Collection<Donhang> getDonhangCollection() {
        return donhangCollection;
    }

    public void setDonhangCollection(Collection<Donhang> donhangCollection) {
        this.donhangCollection = donhangCollection;
    }

    public Connguoi getConnguoi() {
        return connguoi;
    }

    public void setConnguoi(Connguoi connguoi) {
        this.connguoi = connguoi;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (maKH != null ? maKH.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Khachhang)) {
            return false;
        }
        Khachhang other = (Khachhang) object;
        if ((this.maKH == null && other.maKH != null) || (this.maKH != null && !this.maKH.equals(other.maKH))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.company.pojo.Khachhang[ maKH=" + maKH + " ]";
    }
    
}
