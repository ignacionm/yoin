/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import control.CtrlLogin;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author lv1022
 */
public class LoginModel implements Model {
    String msj,usuario,contra;
    CtrlLogin login = new CtrlLogin();
     private boolean vLogin=false; 
    public String getUsuario(){
        return this.usuario;
    }
    
    @Override
    public String getMsj() {
        return msj;
    }

    @Override
    public void setMsj(String msj) {
        this.msj = msj;
    }

    @Override
    public void llenaModelo(HttpServletRequest req) throws Exception {
        usuario = req.getParameter("userID");
        contra = req.getParameter("pass");        
    }
     public void llenaModeloFB(String user, String pass) throws Exception {
        usuario = user;
        contra = pass;        
    }
    
    public boolean Login(){
        return login.Login(usuario, contra);
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

