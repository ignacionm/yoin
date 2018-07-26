/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import control.exceptions.NonexistentEntityException;
import control.exceptions.PreexistingEntityException;
import control.exceptions.RollbackFailureException;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityNotFoundException;
import javax.persistence.Persistence;
import javax.persistence.PersistenceException;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import persistence.User;

/**
 *
 * @author ignac
 */
public class UserFbJpaController {
    private EntityManagerFactory emf=null; 

    public UserFbJpaController() {
        emf= Persistence.createEntityManagerFactory("YoinJSPPU"); 
    }
    
      public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }
    
    public void create(User user) throws PreexistingEntityException, RollbackFailureException, PersistenceException,Exception{
        EntityManager em = null; 
        try{        
            em=getEntityManager(); 
            em.getTransaction().begin();
            em.persist(user); 
            em.getTransaction().commit();
        }catch (Exception ex){
            /*if(findUser(user.getIduser()) != null ){
                throw new PreexistingEntityException("User" + user + "already exist", ex);
            }
            throw ex;*/
        }finally{
            if(em!=null){
                em.close();
            }
        }      
    }
    
    public void edit(User user) throws NonexistentEntityException, RollbackFailureException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            user = em.merge(user);
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                String id = user.getIduser();
                if (findUser(id) == null) {
                    throw new NonexistentEntityException("User" + id + "not exist");
                }
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }
    
    public void destroy(String id) throws NonexistentEntityException, RollbackFailureException, Exception {
       EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            User user;
            try {
                user = em.getReference(User.class, id);
                user.getIduser();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("User" + id + "not exist", enfe);
            }
            em.remove(user);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }
    
    public List<User> findUserEntities() {
        return findUserEntities(true, -1, -1);
    }

    public List<User> findUserEntities(int maxResults, int firstResult) {
        return findUserEntities(false, maxResults, firstResult);
    }

    private List<User> findUserEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(User.class));
            Query q = em.createQuery(cq);
            if (!all) {
                q.setMaxResults(maxResults);
                q.setFirstResult(firstResult);
            }
            return q.getResultList();
        } finally {
            em.close();
        }
    }

    public User findUser(String id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(User.class, id);
        } finally {
            em.close();
        }
    }

    public int getUserCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<User> rt = cq.from(User.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
    
     public List<User> buscarUser(){
        EntityManager em = getEntityManager();
        User u=null;
        em.getTransaction().begin();
        Query q = em.createQuery("SELECT u FROM User u");
        List<User> users= q.getResultList();      
        em.getTransaction().commit();
        return users;
    }
    
}
