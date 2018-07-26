/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package persistence;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author ignac
 */
@Entity
@Table(name = "request")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Request.findAll", query = "SELECT r FROM Request r")
    , @NamedQuery(name = "Request.findByIdrquest", query = "SELECT r FROM Request r WHERE r.idrquest = :idrquest")
    , @NamedQuery(name = "Request.findByIdUser", query = "SELECT r FROM Request r WHERE r.idUser = :idUser")
    , @NamedQuery(name = "Request.findByIdProject", query = "SELECT r FROM Request r WHERE r.idProject = :idProject")
    , @NamedQuery(name = "Request.findByStatus", query = "SELECT r FROM Request r WHERE r.status = :status")
    , @NamedQuery(name = "Request.findByStatusUser", query = "SELECT r FROM Request r WHERE r.statusUser = :statusUser")
    , @NamedQuery(name = "Request.findByStatusProject", query = "SELECT r FROM Request r WHERE r.statusProject = :statusProject")})
public class Request implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "idrquest")
    private Integer idrquest;
    @Column(name = "idUser")
    private String idUser;
    @Column(name = "idProject")
    private String idProject;
    @Column(name = "status")
    private String status;
    @Column(name = "statusUser")
    private String statusUser;
    @Column(name = "statusProject")
    private String statusProject;

    public Request() {
    }

    public Request(Integer idrquest) {
        this.idrquest = idrquest;
    }

    public Integer getIdrquest() {
        return idrquest;
    }

    public void setIdrquest(Integer idrquest) {
        this.idrquest = idrquest;
    }

    public String getIdUser() {
        return idUser;
    }

    public void setIdUser(String idUser) {
        this.idUser = idUser;
    }

    public String getIdProject() {
        return idProject;
    }

    public void setIdProject(String idProject) {
        this.idProject = idProject;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getStatusUser() {
        return statusUser;
    }

    public void setStatusUser(String statusUser) {
        this.statusUser = statusUser;
    }

    public String getStatusProject() {
        return statusProject;
    }

    public void setStatusProject(String statusProject) {
        this.statusProject = statusProject;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idrquest != null ? idrquest.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Request)) {
            return false;
        }
        Request other = (Request) object;
        if ((this.idrquest == null && other.idrquest != null) || (this.idrquest != null && !this.idrquest.equals(other.idrquest))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "persistence.Request[ idrquest=" + idrquest + " ]";
    }
    
}
