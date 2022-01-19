/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.table.DefaultTableModel;
import models.DAOJoueur;
import models.Joueur;

/**
 *
 * @author matan
 */
public class JoueurController {
    
    public static boolean login(String nom, String telephone){
        return DAOJoueur.loginJoueur(nom, telephone);
    }
    
    public static void getJoueurs(){
        try {
            ResultSet joueurs = DAOJoueur.getJoueurs();
            while(joueurs.next()){
                Joueur j = new Joueur(joueurs.getInt("id"), joueurs.getString("nom"), joueurs.getString("telephone"), joueurs.getString("email"), joueurs.getString("pays"), joueurs.getInt("classement"), joueurs.getString("groupe"));
            }
        } catch (SQLException ex) {
            Logger.getLogger(JoueurController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public static void addTableRows(DefaultTableModel model){
        if(Joueur.getInstances().isEmpty())
            JoueurController.getJoueurs();
        
        ArrayList<Joueur> joueurs = Joueur.getInstances();
        for(Joueur j : joueurs){
            Object[] row = {j.getId(), j.getNom(), j.getTelephone(), j.getEmail(), j.getPays(), j.getClassement(), j.getGroupe()};
            model.addRow(row);
        }
    }
}
