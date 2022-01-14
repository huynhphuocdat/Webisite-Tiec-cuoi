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
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
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
@Table(name = "monan")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Monan.findAll", query = "SELECT m FROM Monan m"),
    @NamedQuery(name = "Monan.findByMaMonAn", query = "SELECT m FROM Monan m WHERE m.maMonAn = :maMonAn"),
    @NamedQuery(name = "Monan.findByTenMonAn", query = "SELECT m FROM Monan m WHERE m.tenMonAn = :tenMonAn"),
    @NamedQuery(name = "Monan.findByMota", query = "SELECT m FROM Monan m WHERE m.mota = :mota"),
    @NamedQuery(name = "Monan.findByImage", query = "SELECT m FROM Monan m WHERE m.image = :image")})
public class Monan implements Serializable {

    @Column(name = "gia")
    private Long gia;

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "maMonAn")
    private Integer maMonAn;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "TenMonAn")
    private String tenMonAn;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "Mota")
    private String mota;
    @Size(max = 300)
    @Column(name = "image")
    private String image;
    @JoinColumn(name = "maLoaiMonAn", referencedColumnName = "idLoaiMonAn")
    @ManyToOne
    private Loaimonan maLoaiMonAn;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "monan")
    private Collection<Chitietthucdon> chitietthucdonCollection;

    public Monan() {
    }

    public Monan(Integer maMonAn) {
        this.maMonAn = maMonAn;
    }

    public Monan(Integer maMonAn, String tenMonAn, String mota) {
        this.maMonAn = maMonAn;
        this.tenMonAn = tenMonAn;
        this.mota = mota;
    }

    public Integer getMaMonAn() {
        return maMonAn;
    }

    public void setMaMonAn(Integer maMonAn) {
        this.maMonAn = maMonAn;
    }

    public String getTenMonAn() {
        return tenMonAn;
    }

    public void setTenMonAn(String tenMonAn) {
        this.tenMonAn = tenMonAn;
    }

    public String getMota() {
        return mota;
    }

    public void setMota(String mota) {
        this.mota = mota;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public Loaimonan getMaLoaiMonAn() {
        return maLoaiMonAn;
    }

    public void setMaLoaiMonAn(Loaimonan maLoaiMonAn) {
        this.maLoaiMonAn = maLoaiMonAn;
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
        hash += (maMonAn != null ? maMonAn.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Monan)) {
            return false;
        }
        Monan other = (Monan) object;
        if ((this.maMonAn == null && other.maMonAn != null) || (this.maMonAn != null && !this.maMonAn.equals(other.maMonAn))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.company.pojo.Monan[ maMonAn=" + maMonAn + " ]";
    }

    public Long getGia() {
        return gia;
    }

    public void setGia(Long gia) {
        this.gia = gia;
    }
    
}
