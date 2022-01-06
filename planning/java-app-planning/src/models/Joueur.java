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
    private static ArrayList<Joueur> jSimple = new ArrayList<Joueur>();
    private static ArrayList<Joueur> jDouble = new ArrayList<Joueur>();
    private static ArrayList<Joueur> jQualif = new ArrayList<Joueur>();

    public static Joueur findById(int idJoueur) {
        for (Joueur j : instances) {
            if (j.getId() == idJoueur) {
                return j;
            }
        }
        return null;
    }
    private int classement;
    private String groupe;

    public Joueur(int idJoueur, String nom, String telephone, String email, String pays, int classement, String groupe) {

        super(idJoueur, nom, telephone, email, pays);
        this.classement = classement;
        this.groupe = groupe;
        if (!instances.contains(this)) {
            instances.add(this);
        }
        if ((!jDouble.contains(this)) && groupe.equals("Double")) {
            jDouble.add(this);
        }
        if ((!jSimple.contains(this)) && groupe.equals("Simple")) {
            jSimple.add(this);
        }
        if ((!jQualif.contains(this)) && groupe.equals("Qualification")) {
            jQualif.add(this);
        }
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

    public static ArrayList<Joueur> getjSimple() {
        return jSimple;
    }

    public static ArrayList<Joueur> getjDouble() {
        return jDouble;
    }

    public static ArrayList<Joueur> getjQualif() {
        return jQualif;
    }

    public String getGroupe() {
        return groupe;
    }

    @Override
    public String toString() {
        return super.toString() + "classement=" + classement + ", groupe=" + groupe + "}";
    }

    @Override
    public boolean equals(Object o) {
        if (o instanceof Joueur) {
            Joueur j = (Joueur) o;
            return j.getId() == this.getId();
        } else {
            return false;
        }
    }

}
