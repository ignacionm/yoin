/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import control.exceptions.PreexistingEntityException;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import persistence.User;

/**
 *
 * @author lv1022
 */
public class CtrlLogin {
   
    private EntityManagerFactory emf=null; 
    private User user = new User();
    
    public CtrlLogin(){
        emf= Persistence.createEntityManagerFactory("YoinJSPPU"); 
    }
    
    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }
    
    public boolean Login(String usr, String psw){
        EntityManager em = null; 
        try{        
            em=getEntityManager(); 
            em.getTransaction().begin();
            findUser(usr);
            if(user.getIduser().equals(usr) && user.getPass().equals(psw)){
            return true;
             }
             return false;
        }catch (Exception ex){
    
            throw ex;
        }finally{
            if(em!=null){
                em.close();
            }
        }   
    }
    
    public User findUser(String id) {
        EntityManager em = getEntityManager();
        try {
            user = em.find(User.class, id);
            return user ;
                    
        } finally {
            em.close();
        }
    }
}
