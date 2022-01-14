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
import javax.persistence.FetchType;
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
@Table(name = "loaimonan")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Loaimonan.findAll", query = "SELECT l FROM Loaimonan l"),
    @NamedQuery(name = "Loaimonan.findByIdLoaiMonAn", query = "SELECT l FROM Loaimonan l WHERE l.idLoaiMonAn = :idLoaiMonAn"),
    @NamedQuery(name = "Loaimonan.findByTenLoaiMonAn", query = "SELECT l FROM Loaimonan l WHERE l.tenLoaiMonAn = :tenLoaiMonAn"),
    @NamedQuery(name = "Loaimonan.findByMoTaLoaiMonAn", query = "SELECT l FROM Loaimonan l WHERE l.moTaLoaiMonAn = :moTaLoaiMonAn")})
public class Loaimonan implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idLoaiMonAn")
    private Integer idLoaiMonAn;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "tenLoaiMonAn")
    private String tenLoaiMonAn;
    @Size(max = 300)
    @Column(name = "moTaLoaiMonAn")
    private String moTaLoaiMonAn;
    @OneToMany(mappedBy = "maLoaiMonAn", fetch = FetchType.EAGER)
    private Collection<Monan> monanCollection;

    public Loaimonan() {
    }

    public Loaimonan(Integer idLoaiMonAn) {
        this.idLoaiMonAn = idLoaiMonAn;
    }

    public Loaimonan(Integer idLoaiMonAn, String tenLoaiMonAn) {
        this.idLoaiMonAn = idLoaiMonAn;
        this.tenLoaiMonAn = tenLoaiMonAn;
    }

    public Integer getIdLoaiMonAn() {
        return idLoaiMonAn;
    }

    public void setIdLoaiMonAn(Integer idLoaiMonAn) {
        this.idLoaiMonAn = idLoaiMonAn;
    }

    public String getTenLoaiMonAn() {
        return tenLoaiMonAn;
    }

    public void setTenLoaiMonAn(String tenLoaiMonAn) {
        this.tenLoaiMonAn = tenLoaiMonAn;
    }

    public String getMoTaLoaiMonAn() {
        return moTaLoaiMonAn;
    }

    public void setMoTaLoaiMonAn(String moTaLoaiMonAn) {
        this.moTaLoaiMonAn = moTaLoaiMonAn;
    }

    @XmlTransient
    public Collection<Monan> getMonanCollection() {
        return monanCollection;
    }

    public void setMonanCollection(Collection<Monan> monanCollection) {
        this.monanCollection = monanCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idLoaiMonAn != null ? idLoaiMonAn.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Loaimonan)) {
            return false;
        }
        Loaimonan other = (Loaimonan) object;
        if ((this.idLoaiMonAn == null && other.idLoaiMonAn != null) || (this.idLoaiMonAn != null && !this.idLoaiMonAn.equals(other.idLoaiMonAn))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.company.pojo.Loaimonan[ idLoaiMonAn=" + idLoaiMonAn + " ]";
    }
    
}
