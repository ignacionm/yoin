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
@Table(name = "project")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Project.findAll", query = "SELECT p FROM Project p")
    , @NamedQuery(name = "Project.findByIdproject", query = "SELECT p FROM Project p WHERE p.idproject = :idproject")
    , @NamedQuery(name = "Project.findByName", query = "SELECT p FROM Project p WHERE p.name = :name")
    , @NamedQuery(name = "Project.findByDescription", query = "SELECT p FROM Project p WHERE p.description = :description")
    , @NamedQuery(name = "Project.findByParticipants", query = "SELECT p FROM Project p WHERE p.participants = :participants")
    , @NamedQuery(name = "Project.findBySkills", query = "SELECT p FROM Project p WHERE p.skills = :skills")
    , @NamedQuery(name = "Project.findByUsers", query = "SELECT p FROM Project p WHERE p.users = :users")
    , @NamedQuery(name = "Project.findByAdminId", query = "SELECT p FROM Project p WHERE p.adminId = :adminId")})
public class Project implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @Column(name = "idproject")
    private Integer idproject;
    @Column(name = "name")
    private String name;
    @Column(name = "description")
    private String description;
    @Column(name = "participants")
    private Integer participants;
    @Column(name = "skills")
    private String skills;
    @Column(name = "users")
    private String users;
    @Column(name = "adminId")
    private String adminId;

    public Project() {
    }

    public Project(Integer idproject) {
        this.idproject = idproject;
    }

    public Integer getIdproject() {
        return idproject;
    }

    public void setIdproject(Integer idproject) {
        this.idproject = idproject;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Integer getParticipants() {
        return participants;
    }

    public void setParticipants(Integer participants) {
        this.participants = participants;
    }

    public String getSkills() {
        return skills;
    }

    public void setSkills(String skills) {
        this.skills = skills;
    }

    public String getUsers() {
        return users;
    }

    public void setUsers(String users) {
        this.users = users;
    }

    public String getAdminId() {
        return adminId;
    }

    public void setAdminId(String adminId) {
        this.adminId = adminId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idproject != null ? idproject.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Project)) {
            return false;
        }
        Project other = (Project) object;
        if ((this.idproject == null && other.idproject != null) || (this.idproject != null && !this.idproject.equals(other.idproject))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "persistence.Project[ idproject=" + idproject + " ]";
    }
    
}
