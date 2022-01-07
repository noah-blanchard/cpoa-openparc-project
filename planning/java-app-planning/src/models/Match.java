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
public class Match {

    private static ArrayList<Match> instances = new ArrayList<Match>();
    
    private int idMatch;
    private int idPlanning;
    private String etape;
    private int idVainqueur;
    private int idPerdant;
    private String score;
    private byte estDouble;
    private int idMatchPrec1;
    private int idMatchPrec2;
    private int idJoueur1;
    private int idJoueur2;
    private int idEquipe1;
    private int idEquipe2;

    public Match(int idMatch_, int idPlanning_, String etape_, int idVainqueur_, int idPerdant_, String score_, byte estDouble_, int idJoueur1_, int idJoueur2_, int idEquipe1_, int idEquipe2_) {
        this.idMatch = idMatch_;
        this.idPlanning = idPlanning_;
        this.etape = etape_;
        this.idVainqueur = idVainqueur_;
        this.idPerdant = idPerdant_;
        this.score = score_;
        this.estDouble = estDouble_;
        this.idJoueur1 = idJoueur1_;
        this.idJoueur2 = idJoueur2_;
        this.idEquipe1 = idEquipe1_;
        this.idEquipe2 = idEquipe2_;
        
        instances.add(this);
    }

    public int getIdMatch() {
        return idMatch;
    }

    public void setIdMatch(int idMatch) {
        this.idMatch = idMatch;
    }

    public int getIdPlanning() {
        return idPlanning;
    }

    public void setIdPlanning(int idPlanning) {
        this.idPlanning = idPlanning;
    }

    public String getEtape() {
        return etape;
    }

    public void setEtape(String etape) {
        this.etape = etape;
    }

    public int getIdVainqueur() {
        return idVainqueur;
    }

    public void setIdVainqueur(int idVainqueur) {
        this.idVainqueur = idVainqueur;
    }

    public int getIdPerdant() {
        return idPerdant;
    }

    public void setIdPerdant(int idPerdant) {
        this.idPerdant = idPerdant;
    }

    public String getScore() {
        return score;
    }

    public void setScore(String score) {
        this.score = score;
    }

    public byte getEstDouble() {
        return estDouble;
    }

    public void setEstDouble(byte estDouble) {
        this.estDouble = estDouble;
    }

    public int getIdMatchPrec1() {
        return idMatchPrec1;
    }

    public void setIdMatchPrec1(int idMatchPrec1) {
        this.idMatchPrec1 = idMatchPrec1;
    }

    public int getIdMatchPrec2() {
        return idMatchPrec2;
    }

    public void setIdMatchPrec2(int idMatchPrec2) {
        this.idMatchPrec2 = idMatchPrec2;
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

    public int getIdEquipe1() {
        return idEquipe1;
    }

    public void setIdEquipe1(int idEquipe1) {
        this.idEquipe1 = idEquipe1;
    }

    public int getIdEquipe2() {
        return idEquipe2;
    }

    public void setIdEquipe2(int idEquipe2) {
        this.idEquipe2 = idEquipe2;
    }

    @Override
    public String toString() {
        return "Match{" + "idMatch=" + idMatch + ", idPlanning=" + idPlanning + ", etape=" + etape + ", idVainqueur=" + idVainqueur + ", idPerdant=" + idPerdant + ", score=" + score + ", estDouble=" + estDouble + ", idMatchPrec1=" + idMatchPrec1 + ", idMatchPrec2=" + idMatchPrec2 + ", idJoueur1=" + idJoueur1 + ", idJoueur2=" + idJoueur2 + ", idEquipe1=" + idEquipe1 + ", idEquipe2=" + idEquipe2 + '}';
    }
    
    

}
