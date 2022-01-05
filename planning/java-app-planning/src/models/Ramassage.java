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
public class Ramassage {

    private int idMatch;
    private int idEquipeRamasseur;

    public Ramassage(int idMatch_, int idEquipeRamasseur_) {
        this.idMatch = idMatch_;
        this.idEquipeRamasseur = idEquipeRamasseur_;
    }

    public int getIdMatch() {
        return idMatch;
    }

    public void setIdMatch(int idMatch) {
        this.idMatch = idMatch;
    }

    public int getIdEquipeRamasseur() {
        return idEquipeRamasseur;
    }

    public void setIdEquipeRamasseur(int idEquipeRamasseur) {
        this.idEquipeRamasseur = idEquipeRamasseur;
    }
    
    
}
