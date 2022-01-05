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

    public int idArbitre;
    public String nom;
    public String telephone;
    public String email;
    public String pays;
    public String jugeArbitre;

    public Arbitre(int idArbitre_, String nom_, String telephone_, String email_, String pays_, String jugeArbitre_) {
        this.idArbitre = idArbitre_;
        this.nom = nom_;
        this.telephone = telephone_;
        this.email = email_;
        this.pays = pays_;
        this.jugeArbitre = jugeArbitre_;
    }
}
