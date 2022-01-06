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
public class Ramasseur extends Personne {
    private int idEquipeRamasseur;

    public Ramasseur(int idRamasseur_, String nom_, String telephone_, String email_, String pays_, int idEquipeRamasseur_) {
        super(idRamasseur_, nom_, telephone_, email_, pays_);
        this.idEquipeRamasseur = idEquipeRamasseur_;
    }

    public int getIdEquipeRamasseur() {
        return idEquipeRamasseur;
    }

    public void setIdEquipeRamasseur(int idEquipeRamasseur) {
        this.idEquipeRamasseur = idEquipeRamasseur;
    }
    
    
}
