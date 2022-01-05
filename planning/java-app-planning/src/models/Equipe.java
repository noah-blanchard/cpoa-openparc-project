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
public class Equipe {

    private int idEquipe;
    private int idJoueur1;
    private int idJoueur2;

    public Equipe(int idEquipe_, int idJoueur1_, int idJoueur2_) {
        this.idEquipe = idEquipe_;
        this.idJoueur1 = idJoueur1_;
        this.idJoueur2 = idJoueur2_;
    }

    public int getIdEquipe() {
        return idEquipe;
    }

    public void setIdEquipe(int idEquipe) {
        this.idEquipe = idEquipe;
    }

    public int getIdJoueur1() {
        return idJoueur1;
    }

    public void setIdJoueur1(int idJoueur1) {
        this.idJoueur1 = idJoueur1;
    }

    public int getIdJoueur2() {
        return idJoueur2;
    }

    public void setIdJoueur2(int idJoueur2) {
        this.idJoueur2 = idJoueur2;
    }

}
