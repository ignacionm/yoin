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
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import persistence.Request;

/**
 *
 * @author ignac
 */
public class RequestJpaController {
    private EntityManagerFactory emf=null; 
    
    public RequestJpaController(){
        emf= Persistence.createEntityManagerFactory("YoinJSPPU"); 
    }
    
    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }
    
    public void create(Request request) throws PreexistingEntityException{
        EntityManager em = null; 
        try{
            em=getEntityManager(); 
            em.getTransaction().begin();
            em.persist(request); 
            em.getTransaction().commit();
        }catch (Exception ex){
            if(findRequest(request.getIdrquest().toString()) != null){
                throw new PreexistingEntityException("Request" + request + "already exist", ex);
            }
        }finally{
            if(em!=null){
                em.close();
            }
        }      
    }
    
    public void edit(Request request) throws NonexistentEntityException, RollbackFailureException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            request = em.merge(request);
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                String id = request.getIdrquest().toString();
                if (findRequest(id) == null) {
                    throw new NonexistentEntityException("Request" + id + "not exist");
                }
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }
    
    public void destroy(int id) throws NonexistentEntityException, RollbackFailureException, Exception {
       EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            Request request;
            try {
                request = em.getReference(Request.class, id);
                request.getIdUser();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("Request" + id + "not exist", enfe);
            }
            em.remove(request);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }
    
    public List<Request> findUserEntities() {
        return findRequestEntities(true, -1, -1);
    }

    public List<Request> findUserEntities(int maxResults, int firstResult) {
        return findRequestEntities(false, maxResults, firstResult);
    }

    private List<Request> findRequestEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(Request.class));
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

    public Request findRequest(String id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(Request.class, id);
        } finally {
            em.close();
        }
    }

    public int getUserCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<Request> rt = cq.from(Request.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
    
     public List<Request> buscarRequest(){
        EntityManager em = getEntityManager();
        Request r=null;
        em.getTransaction().begin();
        Query q = em.createQuery("SELECT u FROM Request u");
        List<Request> users= q.getResultList();      
        em.getTransaction().commit();
        return users;
    }
    
}
