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
public class ReservCourt {

    private int idReservation;
    private int idCourt;
    private int idMatch;
    private int idJoueur;
    private int heure;
    private int minute;
    private int jour;

    public ReservCourt(int idReservation_, int idCourt_, int idMatch_, int idJoueur_, int heure_, int minute_, int jour_) {
        this.idReservation = idReservation_;
        this.idCourt = idCourt_;
        this.idMatch = idMatch_;
        this.idJoueur = idJoueur_;
        this.heure = heure_;
        this.minute = minute_;
        this.jour = jour_;
    }

    public int getIdReservation() {
        return idReservation;
    }

    public void setIdReservation(int idReservation) {
        this.idReservation = idReservation;
    }

    public int getIdCourt() {
        return idCourt;
    }

    public void setIdCourt(int idCourt) {
        this.idCourt = idCourt;
    }

    public int getIdMatch() {
        return idMatch;
    }

    public void setIdMatch(int idMatch) {
        this.idMatch = idMatch;
    }

    public int getIdJoueur() {
        return idJoueur;
    }

    public void setIdJoueur(int idJoueur) {
        this.idJoueur = idJoueur;
    }

    public int getHeure() {
        return heure;
    }

    public void setHeure(int heure) {
        this.heure = heure;
    }

    public int getMinute() {
        return minute;
    }

    public void setMinute(int minute) {
        this.minute = minute;
    }

    public int getJour() {
        return jour;
    }

    public void setJour(int jour) {
        this.jour = jour;
    }
    
}
