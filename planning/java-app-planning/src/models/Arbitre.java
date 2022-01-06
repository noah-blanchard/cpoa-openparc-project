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
public class Arbitre extends Personne{

    private String jugeArbitre;

    public Arbitre(int idArbitre_, String nom_, String telephone_, String email_, String pays_, String jugeArbitre_) {
        super(idArbitre_, nom_, telephone_, email_, pays_);
        this.jugeArbitre = jugeArbitre_;
    }
    
   public String getJugeArbitre() {
        return jugeArbitre;
    }

    public void setJugeArbitre(String jugeArbitre) {
        this.jugeArbitre = jugeArbitre;
    }
    
    
}
