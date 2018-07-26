/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package conexion;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

/**
 *
 * @author ignac
 */
public class Conexion {
    private static Conexion conexion; 
    private EntityManagerFactory factory;

    private Conexion() {
        factory = Persistence.createEntityManagerFactory("YoinJSPPU");
    }
    
    public static Conexion getConexion(){
        if(conexion==null){
            conexion = new Conexion(); 
        }
        return conexion;
    }

    public EntityManagerFactory getFactory() {
        return factory;
    }
    
    
    
}
