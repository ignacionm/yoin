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
import java.util.Properties;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityNotFoundException;
import javax.persistence.Persistence;
import javax.persistence.Query;
import persistence.Project;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;



/**
 *
 * @author ignac
 */
public class ProjectJpaController {
     private EntityManagerFactory emf=null; 
    
    public ProjectJpaController(){
        Properties pros = new Properties();
        emf= Persistence.createEntityManagerFactory("YoinJSPPU"); 
    }
    
    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }
    
    public void create(Project project) throws PreexistingEntityException{
        EntityManager em = null; 
        try{
            em=getEntityManager(); 
            em.getTransaction().begin();
            em.persist(project); 
            em.getTransaction().commit();
        }catch (Exception ex){
            if(findProject(project.getIdproject().toString()) != null){
                throw new PreexistingEntityException("Project" + project + "already exist", ex);
            }
        }finally{
            if(em!=null){
                em.close();
            }
        }      
    }
    
    public void edit(Project project) throws NonexistentEntityException, RollbackFailureException, Exception {
        EntityManager em = null;
        try {
            em = getEntityManager();
            em.getTransaction().begin();
            project = em.merge(project);
            em.getTransaction().commit();
        } catch (Exception ex) {
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                String id = project.getIdproject().toString();
                if (findProject(id) == null) {
                    throw new NonexistentEntityException("Project" + id + "not exist");
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
            Project project;
            try {
                project = em.getReference(Project.class, id);
                project.getIdproject();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("Project" + id + "not exist", enfe);
            }
            em.remove(project);
            em.getTransaction().commit();
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }
    
    public List<Project> findProjectEntities() {
        return findProjectEntities(true, -1, -1);
    }

    public List<Project> findProjectEntities(int maxResults, int firstResult) {
        return findProjectEntities(false, maxResults, firstResult);
    }

    private List<Project> findProjectEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(Project.class));
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

    public Project findProject(String id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(Project.class, id);
        } finally {
            em.close();
        }
    }

    public int getProjectCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<Project> rt = cq.from(Project.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
    
     public List<Project> buscarProject(){
        EntityManager em = getEntityManager();
        Project p=null;
        em.getTransaction().begin();
        Query q = em.createQuery("SELECT p FROM Project p");
        List<Project> projects= q.getResultList();      
        em.getTransaction().commit();
        return projects;
    }
}
