/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import control.UserFbJpaController;
import javax.servlet.http.HttpServletRequest;
import persistence.User;

/**
 *
 * @author ignac
 */
public class UserModelFb implements Model{

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
        user.setIduser(req.getParameter("FacebookId")+"@yoin.com");
        user.setName(req.getParameter("FirstName"));
        user.setLastname(req.getParameter("lastName"));
        user.setEmail(req.getParameter("FacebookId")+"@yoin.com"); 
        user.setPass(req.getParameter("FacebookId")+"yoin"); 
        user.setGender(req.getParameter("gender")); 
        user.setBirth("dd/mm/yy");
         
        //pendiente agregar los proyectos
        
        UserFbJpaController upf = new UserFbJpaController();
        upf.create(user);
    }

    @Override
    public void ActualizaModelo(HttpServletRequest req) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void EliminaModelo(HttpServletRequest req) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
