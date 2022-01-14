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
@Table(name = "chitietdonhang")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Chitietdonhang.findAll", query = "SELECT c FROM Chitietdonhang c"),
    @NamedQuery(name = "Chitietdonhang.findByMaDH", query = "SELECT c FROM Chitietdonhang c WHERE c.chitietdonhangPK.maDH = :maDH"),
    @NamedQuery(name = "Chitietdonhang.findByMaSanh", query = "SELECT c FROM Chitietdonhang c WHERE c.chitietdonhangPK.maSanh = :maSanh"),
    @NamedQuery(name = "Chitietdonhang.findByGiaTien", query = "SELECT c FROM Chitietdonhang c WHERE c.giaTien = :giaTien"),
    @NamedQuery(name = "Chitietdonhang.findBySoLuong", query = "SELECT c FROM Chitietdonhang c WHERE c.soLuong = :soLuong"),
    @NamedQuery(name = "Chitietdonhang.findByGiamGia", query = "SELECT c FROM Chitietdonhang c WHERE c.giamGia = :giamGia")})
public class Chitietdonhang implements Serializable {

    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected ChitietdonhangPK chitietdonhangPK;
    @Basic(optional = false)
    @NotNull
    @Column(name = "GiaTien")
    private float giaTien;
    @Basic(optional = false)
    @NotNull
    @Column(name = "soLuong")
    private int soLuong;
    @Column(name = "giamGia")
    private Long giamGia;
    @JoinColumn(name = "maDH", referencedColumnName = "MaDH", insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private Donhang donhang;
    @JoinColumn(name = "maSanh", referencedColumnName = "masanhtiec", insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private Sanhtiec sanhtiec;

    public Chitietdonhang() {
    }

    public Chitietdonhang(ChitietdonhangPK chitietdonhangPK) {
        this.chitietdonhangPK = chitietdonhangPK;
    }

    public Chitietdonhang(ChitietdonhangPK chitietdonhangPK, float giaTien, int soLuong) {
        this.chitietdonhangPK = chitietdonhangPK;
        this.giaTien = giaTien;
        this.soLuong = soLuong;
    }

    public Chitietdonhang(int maDH, int maSanh) {
        this.chitietdonhangPK = new ChitietdonhangPK(maDH, maSanh);
    }

    public ChitietdonhangPK getChitietdonhangPK() {
        return chitietdonhangPK;
    }

    public void setChitietdonhangPK(ChitietdonhangPK chitietdonhangPK) {
        this.chitietdonhangPK = chitietdonhangPK;
    }

    public float getGiaTien() {
        return giaTien;
    }

    public void setGiaTien(float giaTien) {
        this.giaTien = giaTien;
    }

    public int getSoLuong() {
        return soLuong;
    }

    public void setSoLuong(int soLuong) {
        this.soLuong = soLuong;
    }

    public Long getGiamGia() {
        return giamGia;
    }

    public void setGiamGia(Long giamGia) {
        this.giamGia = giamGia;
    }

    public Donhang getDonhang() {
        return donhang;
    }

    public void setDonhang(Donhang donhang) {
        this.donhang = donhang;
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
        hash += (chitietdonhangPK != null ? chitietdonhangPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Chitietdonhang)) {
            return false;
        }
        Chitietdonhang other = (Chitietdonhang) object;
        if ((this.chitietdonhangPK == null && other.chitietdonhangPK != null) || (this.chitietdonhangPK != null && !this.chitietdonhangPK.equals(other.chitietdonhangPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.company.pojo.Chitietdonhang[ chitietdonhangPK=" + chitietdonhangPK + " ]";
    }
    
}
