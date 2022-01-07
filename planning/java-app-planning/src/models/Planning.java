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
public class Planning {
    
    private static ArrayList<Planning> plannings = new ArrayList<Planning>();

    private int idPlanning;
    private int nombreMatchs;
    private int nombreJoueurs;
    private int nombreQualifiés;
    private String nomPlanning;
    private ArrayList<Match> matchs = new ArrayList<Match>();
    private ArrayList<Match> newMatchs = new ArrayList<Match>();

    public Planning(int idPlanning_, int nombreMatchs_, int nombreJoueurs_, int nombreQualifiés_, String nomPlanning_) {
        this.idPlanning = idPlanning_;
        this.nombreMatchs = nombreMatchs_;
        this.nombreJoueurs = nombreJoueurs_;
        this.nombreQualifiés = nombreQualifiés_;
        this.nomPlanning = nomPlanning_;
        plannings.add(this);
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

    public static ArrayList<Planning> getPlannings() {
        return plannings;
    }

    public static void setPlannings(ArrayList<Planning> plannings) {
        Planning.plannings = plannings;
    }

    public ArrayList<Match> getMatchs() {
        return matchs;
    }

    public void setMatchs(ArrayList<Match> matchs) {
        this.matchs = matchs;
    }

    public void addMatch(Match m){
        this.matchs.add(m);
    }
    
    @Override
    public String toString() {
        return "Planning{" + "idPlanning=" + idPlanning + ", nombreMatchs=" + nombreMatchs + ", nombreJoueurs=" + nombreJoueurs + ", nombreQualifi\u00e9s=" + nombreQualifiés + ", nomPlanning=" + nomPlanning + ", matchs=" + matchs + '}';
    }

    public void addNewMatch(Match m) {
        this.newMatchs.add(m);
    }

    public ArrayList<Match> getNewMatchs() {
        return newMatchs;
    }
    
    
    
    
        
    
}
