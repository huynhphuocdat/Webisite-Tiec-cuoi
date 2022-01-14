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
public class ChitietdonhangPK implements Serializable {

    @Basic(optional = false)
    @NotNull
    @Column(name = "maDH")
    private int maDH;
    @Basic(optional = false)
    @NotNull
    @Column(name = "maSanh")
    private int maSanh;

    public ChitietdonhangPK() {
    }

    public ChitietdonhangPK(int maDH, int maSanh) {
        this.maDH = maDH;
        this.maSanh = maSanh;
    }

    public int getMaDH() {
        return maDH;
    }

    public void setMaDH(int maDH) {
        this.maDH = maDH;
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
        hash += (int) maDH;
        hash += (int) maSanh;
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof ChitietdonhangPK)) {
            return false;
        }
        ChitietdonhangPK other = (ChitietdonhangPK) object;
        if (this.maDH != other.maDH) {
            return false;
        }
        if (this.maSanh != other.maSanh) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.company.pojo.ChitietdonhangPK[ maDH=" + maDH + ", maSanh=" + maSanh + " ]";
    }
    
}
