/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.company.pojo;

import com.fasterxml.jackson.annotation.JsonIgnore;
import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author ASUS
 */
@Entity
@Table(name = "taikhoan")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Taikhoan.findAll", query = "SELECT t FROM Taikhoan t"),
    @NamedQuery(name = "Taikhoan.findByIdtaikhoan", query = "SELECT t FROM Taikhoan t WHERE t.idtaikhoan = :idtaikhoan"),
    @NamedQuery(name = "Taikhoan.findByUsername", query = "SELECT t FROM Taikhoan t WHERE t.username = :username"),
    @NamedQuery(name = "Taikhoan.findByPassword", query = "SELECT t FROM Taikhoan t WHERE t.password = :password"),
    @NamedQuery(name = "Taikhoan.findByAvatar", query = "SELECT t FROM Taikhoan t WHERE t.avatar = :avatar")})
public class Taikhoan implements Serializable {

    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "first_name")
    private String firstName;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "last_name")
    private String lastName;

    // @Pattern(regexp="[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?", message="Invalid email")//if the field contains email address consider using this annotation to enforce field validation
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "email")
    private String email;
    private static String ADMIN = "ROLE_ADMIN";
    private static String USER = "ROLE_USER";

    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 10)
    @Column(name = "user_role")
    private String userRole;

    private static long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idtaikhoan")
    private Integer idtaikhoan;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "username")
    private String username;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "password")
    private String password;
    @Size(max = 300)
    @Column(name = "avatar")
    private String avatar;
    @ManyToMany(mappedBy = "taikhoanCollection")
    private Collection<Nhanvien> nhanvienCollection;
    @ManyToMany(mappedBy = "taikhoanCollection")
    private Collection<Khachhang> khachhangCollection;
    
    @Transient
    @JsonIgnore
    private MultipartFile file;
    
    @Transient
    @JsonIgnore
    private String confirmPassword;

    public Taikhoan() {
    }

    public Taikhoan(Integer idtaikhoan) {
        this.idtaikhoan = idtaikhoan;
    }

    public Taikhoan(Integer idtaikhoan, String username, String password) {
        this.idtaikhoan = idtaikhoan;
        this.username = username;
        this.password = password;
    }

    public Integer getIdtaikhoan() {
        return idtaikhoan;
    }

    public void setIdtaikhoan(Integer idtaikhoan) {
        this.idtaikhoan = idtaikhoan;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    @XmlTransient
    public Collection<Nhanvien> getNhanvienCollection() {
        return nhanvienCollection;
    }

    public void setNhanvienCollection(Collection<Nhanvien> nhanvienCollection) {
        this.nhanvienCollection = nhanvienCollection;
    }

    @XmlTransient
    public Collection<Khachhang> getKhachhangCollection() {
        return khachhangCollection;
    }

    public void setKhachhangCollection(Collection<Khachhang> khachhangCollection) {
        this.khachhangCollection = khachhangCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (getIdtaikhoan() != null ? getIdtaikhoan().hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Taikhoan)) {
            return false;
        }
        Taikhoan other = (Taikhoan) object;
        if ((this.getIdtaikhoan() == null && other.getIdtaikhoan() != null) || (this.getIdtaikhoan() != null && !this.idtaikhoan.equals(other.idtaikhoan))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.company.pojo.Taikhoan[ idtaikhoan=" + getIdtaikhoan() + " ]";
    }

    public String getUserRole() {
        return userRole;
    }

    public void setUserRole(String userRole) {
        this.userRole = userRole;
    }

    /**
     * @return the ADMIN
     */
    public static String getADMIN() {
        return ADMIN;
    }

    /**
     * @param aADMIN the ADMIN to set
     */
    public static void setADMIN(String aADMIN) {
        ADMIN = aADMIN;
    }

    /**
     * @return the USER
     */
    public static String getUSER() {
        return USER;
    }

    /**
     * @param aUSER the USER to set
     */
    public static void setUSER(String aUSER) {
        USER = aUSER;
    }

    /**
     * @return the serialVersionUID
     */
    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    /**
     * @param aSerialVersionUID the serialVersionUID to set
     */
    public static void setSerialVersionUID(long aSerialVersionUID) {
        serialVersionUID = aSerialVersionUID;
    }

    /**
     * @return the file
     */
    public MultipartFile getFile() {
        return file;
    }

    /**
     * @param file the file to set
     */
    public void setFile(MultipartFile file) {
        this.file = file;
    }

    /**
     * @return the confirmPassword
     */
    public String getConfirmPassword() {
        return confirmPassword;
    }

    /**
     * @param confirmPassword the confirmPassword to set
     */
    public void setConfirmPassword(String confirmPassword) {
        this.confirmPassword = confirmPassword;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }
    
}
