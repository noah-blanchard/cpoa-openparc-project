/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

/**
 *
 * @author matan
 */
public class Court {

    private int idCourt;
    private byte principal;

    public Court(int idCourt_, byte principal_) {
        this.idCourt = idCourt_;
        this.principal = principal_;
    }

    public int getIdCourt() {
        return idCourt;
    }

    public void setIdCourt(int idCourt) {
        this.idCourt = idCourt;
    }

    public byte getPrincipal() {
        return principal;
    }

    public void setPrincipal(byte principal) {
        this.principal = principal;
    }
    
    
}
