/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import control.UserFbJpaController;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import models.LoginModel;
import models.Model;
import models.ProjectModel;
import models.RequestModel;
import models.UserModel;
import models.UserModelFb;

/**
 *
 * @author ignac
 */
public class YoinServlet extends HttpServlet {

   /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }
    
    private void Redirige(String pagina, HttpServletRequest request,HttpServletResponse response, String nombreModelo, Model modelo) throws ServletException, IOException{
        RequestDispatcher rd = request.getRequestDispatcher(pagina);
        request.setAttribute(nombreModelo, modelo);
        rd.forward(request, response);    
    }
   

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String accion = request.getParameter("accion");
        
        if(accion.equals("logout")){
            request.getSession().invalidate();
            Redirige("logout.jsp",request,response,"modelo", null);
        }   
    }

      /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        try {
            String accion = request.getParameter("accion");
        if(accion.equals("addUser")){
            UserModel um = new UserModel();
            try {
                um.llenaModelo(request);
                 Redirige("index.jsp",request,response,"modelo",null);
            } catch (Exception ex) {
                Redirige("errorJSP.jsp",request,response,"modelo",null);
            }
        }
         if(accion.equals("addUserFB")){
            UserModelFb umf = new UserModelFb();
            String id = (request.getParameter("FacebookId")+"@yoin.com");
            String pass = (request.getParameter("FacebookId")+"yoin");
            LoginModel login = new LoginModel();
            try {       
                umf.llenaModelo(request); 
                login.llenaModeloFB(id, pass);
                boolean Login = login.Login();
                request.getSession().setAttribute("usuario",login.getUsuario());
                Redirige("matchmaking.jsp",request,response,"modelo",null);  
                if(!Login){
                    login.setMsj("Datos incorrectos");
                    Redirige("index.jsp",request,response,"modelo",login);
                }
                else{   
                     
                } 
            } catch (Exception ex) {
                    Redirige("errorJSP.jsp",request,response,"modelo",null);              
            }           
        }
         if(accion.equals("redirigefb")){
             
         }
        if(accion.equals("editUser")){
            UserModel um = new UserModel();
            try {
                um.ActualizaModelo(request);
                Redirige("myinfo.jsp",request,response,"modelo",null);
            } catch (Exception ex) {
                Redirige("errorJSP.jsp",request,response,"modelo",null);
            }
        }
        if(accion.equals("eliminarUsuario")){
            UserModel pm = new UserModel();
            try {
                pm.EliminaModelo(request);
                 Redirige("videocentroEliminar.jsp",request,response,"modelo",null);
            } catch (Exception ex) {
                Redirige("error.jsp",request,response,"modelo",null);
            }
        }
         if(accion.equals("agregarProyecto")){
            ProjectModel pm = new ProjectModel();
            try {
                pm.llenaModelo(request);
                /*Pendiente*/ Redirige("videocentroAgregar.jsp",request,response,"modelo",null);
            } catch (Exception ex) {
                Redirige("error.jsp",request,response,"modelo",null);
            }
        }
         
         if(accion.equals("actualizarProyecto")){
            ProjectModel pm = new ProjectModel();
            try {
                pm.ActualizaModelo(request);
                /*Pendiente*/ Redirige("videocentroActualizar.jsp",request,response,"modelo",null);
            } catch (Exception ex) {
                Redirige("error.jsp",request,response,"modelo",null);
            }
        }
         if(accion.equals("eliminarProyecto")){
            ProjectModel pm = new ProjectModel();
            try {
                pm.EliminaModelo(request);
                /*Pendiente*/ Redirige("videocentroEliminar.jsp",request,response,"modelo",null);
            } catch (Exception ex) {
                Redirige("error.jsp",request,response,"modelo",null);
            }
        }
         if(accion.equals("solicitud")){
           RequestModel rm = new RequestModel();
            try {
                rm.llenaModelo(request);
                 /*Pendiente*/Redirige("videocentroInventariar.jsp",request,response,"modelo",null);
            } catch (Exception ex) {
                Redirige("error.jsp",request,response,"modelo",null);
            }
        }
        if(accion.equals("actualizarSolicitud")){
           RequestModel rm = new RequestModel();
            try {
                rm.ActualizaModelo(request);
                 /*Pendiente*/Redirige("videocentroInventariar.jsp",request,response,"modelo",null);
            } catch (Exception ex) {
                Redirige("error.jsp",request,response,"modelo",null);
            }
        } 
        if(accion.equals("login")){
            LoginModel login = new LoginModel();
            try {
                login.llenaModelo(request);
                boolean Login = login.Login();
                if(!Login){
                    login.setMsj("Datos incorrectos");
                    Redirige("index.jsp",request,response,"modelo",login);
                }
                else{   
                    request.getSession().setAttribute("usuario",login.getUsuario());
                    Redirige("matchmaking.jsp",request,response,"modelo",null);
                    
                }    
            } catch (Exception ex) {
                Redirige("errorJSP.jsp",request,response,"modelo",null);
            }    
        // Redirige("errorJSP.jsp",request,response,"modelo",null);  
        }
        } finally {            
            
        }
    }
    
    

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
