/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.company.pojo;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author ASUS
 */
@Entity
@Table(name = "dichvutieccuoi")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Dichvutieccuoi.findAll", query = "SELECT d FROM Dichvutieccuoi d"),
    @NamedQuery(name = "Dichvutieccuoi.findByMaDV", query = "SELECT d FROM Dichvutieccuoi d WHERE d.dichvutieccuoiPK.maDV = :maDV"),
    @NamedQuery(name = "Dichvutieccuoi.findByMaSanh", query = "SELECT d FROM Dichvutieccuoi d WHERE d.dichvutieccuoiPK.maSanh = :maSanh"),
    @NamedQuery(name = "Dichvutieccuoi.findByTenGoiDV", query = "SELECT d FROM Dichvutieccuoi d WHERE d.tenGoiDV = :tenGoiDV")})
public class Dichvutieccuoi implements Serializable {

    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected DichvutieccuoiPK dichvutieccuoiPK;
    @Size(max = 45)
    @Column(name = "TenGoiDV")
    private String tenGoiDV;
    @JoinColumn(name = "maDV", referencedColumnName = "maDV", insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private Dichvu dichvu;
    @JoinColumn(name = "maSanh", referencedColumnName = "masanhtiec", insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private Sanhtiec sanhtiec;

    public Dichvutieccuoi() {
    }

    public Dichvutieccuoi(DichvutieccuoiPK dichvutieccuoiPK) {
        this.dichvutieccuoiPK = dichvutieccuoiPK;
    }

    public Dichvutieccuoi(int maDV, int maSanh) {
        this.dichvutieccuoiPK = new DichvutieccuoiPK(maDV, maSanh);
    }

    public DichvutieccuoiPK getDichvutieccuoiPK() {
        return dichvutieccuoiPK;
    }

    public void setDichvutieccuoiPK(DichvutieccuoiPK dichvutieccuoiPK) {
        this.dichvutieccuoiPK = dichvutieccuoiPK;
    }

    public String getTenGoiDV() {
        return tenGoiDV;
    }

    public void setTenGoiDV(String tenGoiDV) {
        this.tenGoiDV = tenGoiDV;
    }

    public Dichvu getDichvu() {
        return dichvu;
    }

    public void setDichvu(Dichvu dichvu) {
        this.dichvu = dichvu;
    }

    public Sanhtiec getSanhtiec() {
        return sanhtiec;
    }

    public void setSanhtiec(Sanhtiec sanhtiec) {
        this.sanhtiec = sanhtiec;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (dichvutieccuoiPK != null ? dichvutieccuoiPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Dichvutieccuoi)) {
            return false;
        }
        Dichvutieccuoi other = (Dichvutieccuoi) object;
        if ((this.dichvutieccuoiPK == null && other.dichvutieccuoiPK != null) || (this.dichvutieccuoiPK != null && !this.dichvutieccuoiPK.equals(other.dichvutieccuoiPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.company.pojo.Dichvutieccuoi[ dichvutieccuoiPK=" + dichvutieccuoiPK + " ]";
    }
    
}
