/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.company.pojo;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author ASUS
 */
@Entity
@Table(name = "connguoi")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Connguoi.findAll", query = "SELECT c FROM Connguoi c"),
    @NamedQuery(name = "Connguoi.findByPeopleId", query = "SELECT c FROM Connguoi c WHERE c.peopleId = :peopleId"),
    @NamedQuery(name = "Connguoi.findByHoTen", query = "SELECT c FROM Connguoi c WHERE c.hoTen = :hoTen"),
    @NamedQuery(name = "Connguoi.findByNgaySinh", query = "SELECT c FROM Connguoi c WHERE c.ngaySinh = :ngaySinh"),
    @NamedQuery(name = "Connguoi.findByGioiTinh", query = "SELECT c FROM Connguoi c WHERE c.gioiTinh = :gioiTinh"),
    @NamedQuery(name = "Connguoi.findByDiaChi", query = "SELECT c FROM Connguoi c WHERE c.diaChi = :diaChi"),
    @NamedQuery(name = "Connguoi.findBySdt", query = "SELECT c FROM Connguoi c WHERE c.sdt = :sdt"),
    @NamedQuery(name = "Connguoi.findByEmail", query = "SELECT c FROM Connguoi c WHERE c.email = :email")})
public class Connguoi implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "people_id")
    private Integer peopleId;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "ho_ten")
    private String hoTen;
    @Basic(optional = false)
    @NotNull
    @Column(name = "ngay_sinh")
    @Temporal(TemporalType.DATE)
    private Date ngaySinh;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "gioi_tinh")
    private String gioiTinh;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 200)
    @Column(name = "dia_chi")
    private String diaChi;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 11)
    @Column(name = "sdt")
    private String sdt;
    // @Pattern(regexp="[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?", message="Invalid email")//if the field contains email address consider using this annotation to enforce field validation
    @Size(max = 50)
    @Column(name = "email")
    private String email;
    @OneToOne(cascade = CascadeType.ALL, mappedBy = "connguoi")
    private Khachhang khachhang;
    @OneToOne(cascade = CascadeType.ALL, mappedBy = "connguoi")
    private Nhanvien nhanvien;

    public Connguoi() {
    }

    public Connguoi(Integer peopleId) {
        this.peopleId = peopleId;
    }

    public Connguoi(Integer peopleId, String hoTen, Date ngaySinh, String gioiTinh, String diaChi, String sdt) {
        this.peopleId = peopleId;
        this.hoTen = hoTen;
        this.ngaySinh = ngaySinh;
        this.gioiTinh = gioiTinh;
        this.diaChi = diaChi;
        this.sdt = sdt;
    }

    public Integer getPeopleId() {
        return peopleId;
    }

    public void setPeopleId(Integer peopleId) {
        this.peopleId = peopleId;
    }

    public String getHoTen() {
        return hoTen;
    }

    public void setHoTen(String hoTen) {
        this.hoTen = hoTen;
    }

    public Date getNgaySinh() {
        return ngaySinh;
    }

    public void setNgaySinh(Date ngaySinh) {
        this.ngaySinh = ngaySinh;
    }

    public String getGioiTinh() {
        return gioiTinh;
    }

    public void setGioiTinh(String gioiTinh) {
        this.gioiTinh = gioiTinh;
    }

    public String getDiaChi() {
        return diaChi;
    }

    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }

    public String getSdt() {
        return sdt;
    }

    public void setSdt(String sdt) {
        this.sdt = sdt;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Khachhang getKhachhang() {
        return khachhang;
    }

    public void setKhachhang(Khachhang khachhang) {
        this.khachhang = khachhang;
    }

    public Nhanvien getNhanvien() {
        return nhanvien;
    }

    public void setNhanvien(Nhanvien nhanvien) {
        this.nhanvien = nhanvien;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (peopleId != null ? peopleId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Connguoi)) {
            return false;
        }
        Connguoi other = (Connguoi) object;
        if ((this.peopleId == null && other.peopleId != null) || (this.peopleId != null && !this.peopleId.equals(other.peopleId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.company.pojo.Connguoi[ peopleId=" + peopleId + " ]";
    }
    
}
