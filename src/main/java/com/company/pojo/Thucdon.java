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
@Table(name = "thucdon")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Thucdon.findAll", query = "SELECT t FROM Thucdon t"),
    @NamedQuery(name = "Thucdon.findByIdThucDon", query = "SELECT t FROM Thucdon t WHERE t.idThucDon = :idThucDon"),
    @NamedQuery(name = "Thucdon.findByTenThucDon", query = "SELECT t FROM Thucdon t WHERE t.tenThucDon = :tenThucDon")})
public class Thucdon implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idThucDon")
    private Integer idThucDon;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "tenThucDon")
    private String tenThucDon;
    @OneToMany(mappedBy = "maThucDon")
    private Collection<Sanhtiec> sanhtiecCollection;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "thucdon")
    private Collection<Chitietthucdon> chitietthucdonCollection;

    public Thucdon() {
    }

    public Thucdon(Integer idThucDon) {
        this.idThucDon = idThucDon;
    }

    public Thucdon(Integer idThucDon, String tenThucDon) {
        this.idThucDon = idThucDon;
        this.tenThucDon = tenThucDon;
    }

    public Integer getIdThucDon() {
        return idThucDon;
    }

    public void setIdThucDon(Integer idThucDon) {
        this.idThucDon = idThucDon;
    }

    public String getTenThucDon() {
        return tenThucDon;
    }

    public void setTenThucDon(String tenThucDon) {
        this.tenThucDon = tenThucDon;
    }

    @XmlTransient
    public Collection<Sanhtiec> getSanhtiecCollection() {
        return sanhtiecCollection;
    }

    public void setSanhtiecCollection(Collection<Sanhtiec> sanhtiecCollection) {
        this.sanhtiecCollection = sanhtiecCollection;
    }

    @XmlTransient
    public Collection<Chitietthucdon> getChitietthucdonCollection() {
        return chitietthucdonCollection;
    }

    public void setChitietthucdonCollection(Collection<Chitietthucdon> chitietthucdonCollection) {
        this.chitietthucdonCollection = chitietthucdonCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idThucDon != null ? idThucDon.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Thucdon)) {
            return false;
        }
        Thucdon other = (Thucdon) object;
        if ((this.idThucDon == null && other.idThucDon != null) || (this.idThucDon != null && !this.idThucDon.equals(other.idThucDon))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.company.pojo.Thucdon[ idThucDon=" + idThucDon + " ]";
    }
    
}
