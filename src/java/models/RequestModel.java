/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import control.RequestJpaController;
import control.UserJpaController;
import javax.servlet.http.HttpServletRequest;
import persistence.Request;
/**
 *
 * @author ignac
 */
public class RequestModel implements Model{

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
        Request request = new Request(); 
        request.setIdrquest(Integer.parseInt(req.getParameter("idrequest")));
        request.setIdUser(req.getParameter("idUser"));
        request.setIdProject(req.getParameter("idProject")); 
        request.setStatus("status");
        request.setStatusProject("statusProject");
        request.setStatusUser("statusUser");
        
        RequestJpaController rp = new RequestJpaController();
        rp.create(request);
    }

    @Override
    public void ActualizaModelo(HttpServletRequest req) throws Exception {
        Request request = new Request(); 
        request.setIdrquest(Integer.parseInt(req.getParameter("idrequest")));
        request.setIdUser(req.getParameter("idUser"));
        request.setIdProject(req.getParameter("idProject")); 
        request.setStatus("status");
        request.setStatusProject("statusProject");
        request.setStatusUser("statusUser");
        
        RequestJpaController rp = new RequestJpaController();
        rp.edit(request);
    }

    @Override
    public void EliminaModelo(HttpServletRequest req) throws Exception {
        Request request = new Request(); 
        request.setIdrquest(Integer.parseInt(req.getParameter("idrequest")));
        
        RequestJpaController rp = new RequestJpaController();
        rp.destroy(request.getIdrquest());
    }
    
}
