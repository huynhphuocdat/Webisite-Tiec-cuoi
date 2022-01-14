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
public class ChitietthucdonPK implements Serializable {

    @Basic(optional = false)
    @NotNull
    @Column(name = "maMonAn")
    private int maMonAn;
    @Basic(optional = false)
    @NotNull
    @Column(name = "maThucDon")
    private int maThucDon;

    public ChitietthucdonPK() {
    }

    public ChitietthucdonPK(int maMonAn, int maThucDon) {
        this.maMonAn = maMonAn;
        this.maThucDon = maThucDon;
    }

    public int getMaMonAn() {
        return maMonAn;
    }

    public void setMaMonAn(int maMonAn) {
        this.maMonAn = maMonAn;
    }

    public int getMaThucDon() {
        return maThucDon;
    }

    public void setMaThucDon(int maThucDon) {
        this.maThucDon = maThucDon;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (int) maMonAn;
        hash += (int) maThucDon;
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof ChitietthucdonPK)) {
            return false;
        }
        ChitietthucdonPK other = (ChitietthucdonPK) object;
        if (this.maMonAn != other.maMonAn) {
            return false;
        }
        if (this.maThucDon != other.maThucDon) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.company.pojo.ChitietthucdonPK[ maMonAn=" + maMonAn + ", maThucDon=" + maThucDon + " ]";
    }
    
}
