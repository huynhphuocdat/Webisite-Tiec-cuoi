/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.company.pojo;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author ASUS
 */
@Entity
@Table(name = "chitietthucdon")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Chitietthucdon.findAll", query = "SELECT c FROM Chitietthucdon c"),
    @NamedQuery(name = "Chitietthucdon.findByMaMonAn", query = "SELECT c FROM Chitietthucdon c WHERE c.chitietthucdonPK.maMonAn = :maMonAn"),
    @NamedQuery(name = "Chitietthucdon.findByMaThucDon", query = "SELECT c FROM Chitietthucdon c WHERE c.chitietthucdonPK.maThucDon = :maThucDon"),
    @NamedQuery(name = "Chitietthucdon.findByThuTuMonAn", query = "SELECT c FROM Chitietthucdon c WHERE c.thuTuMonAn = :thuTuMonAn")})
public class Chitietthucdon implements Serializable {

    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected ChitietthucdonPK chitietthucdonPK;
    @Basic(optional = false)
    @NotNull
    @Column(name = "ThuTuMonAn")
    private int thuTuMonAn;
    @JoinColumn(name = "maMonAn", referencedColumnName = "maMonAn", insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private Monan monan;
    @JoinColumn(name = "maThucDon", referencedColumnName = "idThucDon", insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private Thucdon thucdon;

    public Chitietthucdon() {
    }

    public Chitietthucdon(ChitietthucdonPK chitietthucdonPK) {
        this.chitietthucdonPK = chitietthucdonPK;
    }

    public Chitietthucdon(ChitietthucdonPK chitietthucdonPK, int thuTuMonAn) {
        this.chitietthucdonPK = chitietthucdonPK;
        this.thuTuMonAn = thuTuMonAn;
    }

    public Chitietthucdon(int maMonAn, int maThucDon) {
        this.chitietthucdonPK = new ChitietthucdonPK(maMonAn, maThucDon);
    }

    public ChitietthucdonPK getChitietthucdonPK() {
        return chitietthucdonPK;
    }

    public void setChitietthucdonPK(ChitietthucdonPK chitietthucdonPK) {
        this.chitietthucdonPK = chitietthucdonPK;
    }

    public int getThuTuMonAn() {
        return thuTuMonAn;
    }

    public void setThuTuMonAn(int thuTuMonAn) {
        this.thuTuMonAn = thuTuMonAn;
    }

    public Monan getMonan() {
        return monan;
    }

    public void setMonan(Monan monan) {
        this.monan = monan;
    }

    public Thucdon getThucdon() {
        return thucdon;
    }

    public void setThucdon(Thucdon thucdon) {
        this.thucdon = thucdon;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (chitietthucdonPK != null ? chitietthucdonPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Chitietthucdon)) {
            return false;
        }
        Chitietthucdon other = (Chitietthucdon) object;
        if ((this.chitietthucdonPK == null && other.chitietthucdonPK != null) || (this.chitietthucdonPK != null && !this.chitietthucdonPK.equals(other.chitietthucdonPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.company.pojo.Chitietthucdon[ chitietthucdonPK=" + chitietthucdonPK + " ]";
    }
    
}
