/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import java.util.ArrayList;

/**
 *
 * @author matan
 */
public class Joueur extends Personne {

    private static ArrayList<Joueur> instances = new ArrayList<Joueur>();
    private int classement;
    private String groupe;

    public Joueur(int idJoueur, String nom, String telephone, String email, String pays, int classement, String groupe) {
   
        super(idJoueur, nom, telephone, email, pays);
        this.classement = classement;
        this.groupe = groupe;
        instances.add(this);
    }

    public int getClassement() {
        return classement;
    }

    public void setClassement(int classement) {
        this.classement = classement;
    }

    public static ArrayList<Joueur> getInstances() {
        return instances;
    }

    public String getGroupe() {
        return groupe;
    }
    
    @Override
    public String toString() {
        return super.toString() + "classement=" + classement + '}';
    }
    
    
    
}
