/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
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
@WebServlet(name = "FacebookServlet", urlPatterns = {"/FacebookServlet"})
public class FacebookServlet extends HttpServlet {

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
            Redirige("index.jsp",request,response,"modelo", null);
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
            } catch (Exception ex) {
                Redirige("errorJSP.jsp",request,response,"modelo",null);              
            }           
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
