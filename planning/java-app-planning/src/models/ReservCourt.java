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
public class ReservCourt {

    public static ReservCourt findReserv(int idMatch) {
        for(ReservCourt r : reservations){
            if(r.getIdMatch() == idMatch){
                return r;
            }
        }
        return null;
    }
    
    public static ReservCourt getReservCourtById(int id){
        for(ReservCourt r : reservations) {
            if(r.getIdReservation() == id){
                return r;
            }
        }
        return null;
    }

    private int idReservation;
    private int idCourt;
    private int idMatch;
    private int idJoueur;
    private int heure;
    private int minute;
    private int jour;

    private static ArrayList<ReservCourt> reservations = new ArrayList<ReservCourt>();
    
    public ReservCourt(int idReservation_, int idCourt_, int idMatch_, int idJoueur_, int heure_, int minute_, int jour_) {
        this.idReservation = idReservation_;
        this.idCourt = idCourt_;
        this.idMatch = idMatch_;
        this.idJoueur = idJoueur_;
        this.heure = heure_;
        this.minute = minute_;
        this.jour = jour_;
        
        reservations.add(this);
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

    public static ArrayList<ReservCourt> getReservations(){
        return reservations;
    }
    
    @Override
    public String toString() {
        return "ReservCourt{" + "idReservation=" + idReservation + ", idCourt=" + idCourt + ", idMatch=" + idMatch + ", idJoueur=" + idJoueur + ", heure=" + heure + ", minute=" + minute + ", jour=" + jour + '}';
    }
    
    
    
}
