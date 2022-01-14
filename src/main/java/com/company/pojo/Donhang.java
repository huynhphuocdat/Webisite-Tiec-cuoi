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
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author ASUS
 */
@Entity
@Table(name = "donhang")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Donhang.findAll", query = "SELECT d FROM Donhang d"),
    @NamedQuery(name = "Donhang.findByMaDH", query = "SELECT d FROM Donhang d WHERE d.maDH = :maDH"),
    @NamedQuery(name = "Donhang.findByNgayLapDon", query = "SELECT d FROM Donhang d WHERE d.ngayLapDon = :ngayLapDon")})
public class Donhang implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "MaDH")
    private Integer maDH;
    @Basic(optional = false)
    @NotNull
    @Column(name = "NgayLapDon")
    @Temporal(TemporalType.TIMESTAMP)
    private Date ngayLapDon;
    @JoinColumn(name = "MaKH", referencedColumnName = "maKH")
    @ManyToOne
    private Khachhang maKH;
    @JoinColumn(name = "MaNV", referencedColumnName = "maNV")
    @ManyToOne
    private Nhanvien maNV;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "donhang")
    private Collection<Chitietdonhang> chitietdonhangCollection;

    public Donhang() {
    }

    public Donhang(Integer maDH) {
        this.maDH = maDH;
    }

    public Donhang(Integer maDH, Date ngayLapDon) {
        this.maDH = maDH;
        this.ngayLapDon = ngayLapDon;
    }

    public Integer getMaDH() {
        return maDH;
    }

    public void setMaDH(Integer maDH) {
        this.maDH = maDH;
    }

    public Date getNgayLapDon() {
        return ngayLapDon;
    }

    public void setNgayLapDon(Date ngayLapDon) {
        this.ngayLapDon = ngayLapDon;
    }

    public Khachhang getMaKH() {
        return maKH;
    }

    public void setMaKH(Khachhang maKH) {
        this.maKH = maKH;
    }

    public Nhanvien getMaNV() {
        return maNV;
    }

    public void setMaNV(Nhanvien maNV) {
        this.maNV = maNV;
    }

    @XmlTransient
    public Collection<Chitietdonhang> getChitietdonhangCollection() {
        return chitietdonhangCollection;
    }

    public void setChitietdonhangCollection(Collection<Chitietdonhang> chitietdonhangCollection) {
        this.chitietdonhangCollection = chitietdonhangCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (maDH != null ? maDH.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Donhang)) {
            return false;
        }
        Donhang other = (Donhang) object;
        if ((this.maDH == null && other.maDH != null) || (this.maDH != null && !this.maDH.equals(other.maDH))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.company.pojo.Donhang[ maDH=" + maDH + " ]";
    }
    
}
