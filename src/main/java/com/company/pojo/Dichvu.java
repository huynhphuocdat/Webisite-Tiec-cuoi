/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.company.pojo;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author ASUS
 */
@Entity
@Table(name = "dichvu")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Dichvu.findAll", query = "SELECT d FROM Dichvu d"),
    @NamedQuery(name = "Dichvu.findByMaDV", query = "SELECT d FROM Dichvu d WHERE d.maDV = :maDV"),
    @NamedQuery(name = "Dichvu.findByTenDV", query = "SELECT d FROM Dichvu d WHERE d.tenDV = :tenDV")})
public class Dichvu implements Serializable {

    @Column(name = "gia")
    private Long gia;

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "maDV")
    private Integer maDV;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "TenDV")
    private String tenDV;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "dichvu")
    private Collection<Dichvutieccuoi> dichvutieccuoiCollection;

    public Dichvu() {
    }

    public Dichvu(Integer maDV) {
        this.maDV = maDV;
    }

    public Dichvu(Integer maDV, String tenDV) {
        this.maDV = maDV;
        this.tenDV = tenDV;
    }

    public Integer getMaDV() {
        return maDV;
    }

    public void setMaDV(Integer maDV) {
        this.maDV = maDV;
    }

    public String getTenDV() {
        return tenDV;
    }

    public void setTenDV(String tenDV) {
        this.tenDV = tenDV;
    }

    @XmlTransient
    public Collection<Dichvutieccuoi> getDichvutieccuoiCollection() {
        return dichvutieccuoiCollection;
    }

    public void setDichvutieccuoiCollection(Collection<Dichvutieccuoi> dichvutieccuoiCollection) {
        this.dichvutieccuoiCollection = dichvutieccuoiCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (maDV != null ? maDV.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Dichvu)) {
            return false;
        }
        Dichvu other = (Dichvu) object;
        if ((this.maDV == null && other.maDV != null) || (this.maDV != null && !this.maDV.equals(other.maDV))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.company.pojo.Dichvu[ maDV=" + maDV + " ]";
    }

    public Long getGia() {
        return gia;
    }

    public void setGia(Long gia) {
        this.gia = gia;
    }
    
}
