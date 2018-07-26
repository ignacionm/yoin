/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import control.UserFbJpaController;
import control.UserJpaController;
import javax.servlet.http.HttpServletRequest;
import persistence.User;

/**
 *
 * @author ignac
 */
public class UserModel implements Model{

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
        User user = new User(); 
        user.setIduser(req.getParameter("email"));
        user.setName(req.getParameter("name"));
        user.setLastname(req.getParameter("lastname"));
        user.setEmail(req.getParameter("email")); 
        user.setPass(req.getParameter("pass")); 
        user.setGender(req.getParameter("gender")); 
        user.setBirth(req.getParameter("birth"));
        //pendiente agregar los proyectos
        
        UserJpaController up = new UserJpaController();
        up.create(user);
    }

    @Override
    public void ActualizaModelo(HttpServletRequest req) throws Exception {
        UserJpaController up = new UserJpaController();
        String id = req.getParameter("email");
        User user  = up.findUser(id);
        user.setArea(req.getParameter("area"));
        user.setSkills(req.getParameter("skills")); 
        user.setDescription(req.getParameter("description")); 
        up.edit(user);
    }

    @Override
    public void EliminaModelo(HttpServletRequest req) throws Exception {
        User user = new User(); 
        user.setIduser(req.getParameter("userID"));
        
        UserJpaController up = new UserJpaController();
        up.destroy(user.getIduser());
    }
    
}
