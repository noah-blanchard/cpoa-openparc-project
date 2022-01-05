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
public class Arbitre {

    private int idArbitre;
    private String nom;
    private String telephone;
    private String email;
    private String pays;
    private String jugeArbitre;

    public Arbitre(int idArbitre_, String nom_, String telephone_, String email_, String pays_, String jugeArbitre_) {
        this.idArbitre = idArbitre_;
        this.nom = nom_;
        this.telephone = telephone_;
        this.email = email_;
        this.pays = pays_;
        this.jugeArbitre = jugeArbitre_;
    }

    public int getIdArbitre() {
        return idArbitre;
    }

    public void setIdArbitre(int idArbitre) {
        this.idArbitre = idArbitre;
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

    public String getJugeArbitre() {
        return jugeArbitre;
    }

    public void setJugeArbitre(String jugeArbitre) {
        this.jugeArbitre = jugeArbitre;
    }
    
    
}
