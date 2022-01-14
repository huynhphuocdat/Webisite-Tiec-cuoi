/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.company.pojo;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.validation.constraints.NotNull;

/**
 *
 * @author ASUS
 */
@Embeddable
public class DichvutieccuoiPK implements Serializable {

    @Basic(optional = false)
    @NotNull
    @Column(name = "maDV")
    private int maDV;
    @Basic(optional = false)
    @NotNull
    @Column(name = "maSanh")
    private int maSanh;

    public DichvutieccuoiPK() {
    }

    public DichvutieccuoiPK(int maDV, int maSanh) {
        this.maDV = maDV;
        this.maSanh = maSanh;
    }

    public int getMaDV() {
        return maDV;
    }

    public void setMaDV(int maDV) {
        this.maDV = maDV;
    }

    public int getMaSanh() {
        return maSanh;
    }

    public void setMaSanh(int maSanh) {
        this.maSanh = maSanh;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (int) maDV;
        hash += (int) maSanh;
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof DichvutieccuoiPK)) {
            return false;
        }
        DichvutieccuoiPK other = (DichvutieccuoiPK) object;
        if (this.maDV != other.maDV) {
            return false;
        }
        if (this.maSanh != other.maSanh) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.company.pojo.DichvutieccuoiPK[ maDV=" + maDV + ", maSanh=" + maSanh + " ]";
    }
    
}
