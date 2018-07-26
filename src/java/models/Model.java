/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author ignac
 */
public interface Model {
     public String getMsj();

    /**
     * Set the value of msj
     *
     * @param msj new value of msj
     */
    public void setMsj(String msj);
    
    public void llenaModelo(HttpServletRequest req) throws Exception;
    public void ActualizaModelo(HttpServletRequest req) throws Exception;
    public void EliminaModelo(HttpServletRequest req) throws Exception;
    
}
