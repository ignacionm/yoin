/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import control.ProjectJpaController;
import javax.servlet.http.HttpServletRequest;
import persistence.Project;

/**
 *
 * @author ignac
 */
public class ProjectModel implements Model {

    @Override
    public String getMsj() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void setMsj(String msj) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void llenaModelo(HttpServletRequest req) throws Exception {
        Project project = new Project(); 
        project.setIdproject(Integer.parseInt(req.getParameter("projectID")));
        project.setName(req.getParameter("name"));
        project.setDescription(req.getParameter("description"));
        project.setParticipants(Integer.parseInt(req.getParameter("participants")));
        project.setSkills(req.getParameter("skills"));
        //pendiente agregar usuarios
        
        ProjectJpaController pp = new ProjectJpaController();
        pp.create(project);
    }

    @Override
    public void ActualizaModelo(HttpServletRequest req) throws Exception {
        Project project = new Project(); 
        project.setIdproject(Integer.parseInt(req.getParameter("projectID")));
        project.setName(req.getParameter("name"));
        project.setDescription(req.getParameter("description"));
        project.setParticipants(Integer.parseInt(req.getParameter("participants")));
        project.setSkills(req.getParameter("skills"));
        //pendiente agregar usuarios
        
        ProjectJpaController pp = new ProjectJpaController();
        pp.edit(project);
    }

    @Override
    public void EliminaModelo(HttpServletRequest req) throws Exception {
        Project project = new Project(); 
        project.setIdproject(Integer.parseInt(req.getParameter("projectID")));
        
        ProjectJpaController pp = new ProjectJpaController();
        pp.destroy(project.getIdproject());
    }
    
}
