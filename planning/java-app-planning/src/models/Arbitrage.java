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
public class Arbitrage {

    private int idMatch;
    private int idArbitre;
    private byte chaise;

    public Arbitrage(int idMatch_, int idArbitre_, byte chaise_) {
        this.idMatch = idMatch_;
        this.idArbitre = idArbitre_;
        this.chaise = chaise_;
    }

    public int getIdMatch() {
        return idMatch;
    }

    public void setIdMatch(int idMatch) {
        this.idMatch = idMatch;
    }

    public int getIdArbitre() {
        return idArbitre;
    }

    public void setIdArbitre(int idArbitre) {
        this.idArbitre = idArbitre;
    }

    public byte getChaise() {
        return chaise;
    }

    public void setChaise(byte chaise) {
        this.chaise = chaise;
    }
    
    
}
