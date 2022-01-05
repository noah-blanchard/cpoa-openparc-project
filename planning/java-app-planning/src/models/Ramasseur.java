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
public class Ramasseur {

    private int idRamasseur;
    private String nom;
    private String telephone;
    private String email;
    private String pays;
    private int idEquipeRamasseur;

    public Ramasseur(int idRamasseur_, String nom_, String telephone_, String email_, String pays_, int idEquipeRamasseur_) {
        this.idRamasseur = idRamasseur_;
        this.nom = nom_;
        this.telephone = telephone_;
        this.email = email_;
        this.pays = pays_;
        this.idEquipeRamasseur = idEquipeRamasseur_;
    }

    public int getIdRamasseur() {
        return idRamasseur;
    }

    public void setIdRamasseur(int idRamasseur) {
        this.idRamasseur = idRamasseur;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPays() {
        return pays;
    }

    public void setPays(String pays) {
        this.pays = pays;
    }

    public int getIdEquipeRamasseur() {
        return idEquipeRamasseur;
    }

    public void setIdEquipeRamasseur(int idEquipeRamasseur) {
        this.idEquipeRamasseur = idEquipeRamasseur;
    }
    
    
}
