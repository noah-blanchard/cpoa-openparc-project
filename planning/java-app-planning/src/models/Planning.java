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
public class Planning {

    private int idPlanning;
    private int nombreMatchs;
    private int nombreJoueurs;
    private int nombreQualifiés;
    private String nomPlanning;

    public Planning(int idPlanning_, int nombreMatchs_, int nombreJoueurs_, int nombreQualifiés_, String nomPlanning_) {
        this.idPlanning = idPlanning_;
        this.nombreMatchs = nombreMatchs_;
        this.nombreJoueurs = nombreJoueurs_;
        this.nombreQualifiés = nombreQualifiés_;
        this.nomPlanning = nomPlanning_;
    }

    public int getIdPlanning() {
        return idPlanning;
    }

    public void setIdPlanning(int idPlanning) {
        this.idPlanning = idPlanning;
    }

    public int getNombreMatchs() {
        return nombreMatchs;
    }

    public void setNombreMatchs(int nombreMatchs) {
        this.nombreMatchs = nombreMatchs;
    }

    public int getNombreJoueurs() {
        return nombreJoueurs;
    }

    public void setNombreJoueurs(int nombreJoueurs) {
        this.nombreJoueurs = nombreJoueurs;
    }

    public int getNombreQualifiés() {
        return nombreQualifiés;
    }

    public void setNombreQualifiés(int nombreQualifiés) {
        this.nombreQualifiés = nombreQualifiés;
    }

    public String getNomPlanning() {
        return nomPlanning;
    }

    public void setNomPlanning(String nomPlanning) {
        this.nomPlanning = nomPlanning;
    }
    
    
}
