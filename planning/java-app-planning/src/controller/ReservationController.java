/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.table.DefaultTableModel;
import models.DAOReservCourt;
import models.Joueur;
import models.ReservCourt;

/**
 *
 * @author matan
 */
public class ReservationController {

    public static void getReservationsByJoueur(Joueur j, DefaultTableModel model) {
        
        model.setRowCount(0);
        try {
            ResultSet rs = DAOReservCourt.getReservationsJoueur(j);

            while (rs.next()) {
                System.out.println(rs.getInt("id"));
                ReservCourt r = new ReservCourt(rs.getInt("id"), rs.getInt("id_court_id"), rs.getInt("id_match_id"), rs.getInt("id_joueur"), rs.getInt("heure"), rs.getInt("minute"), rs.getInt("jour"));
                Object[] row = {r.getIdReservation(), r.getIdCourt(), r.getHeure(), r.getJour()};
                model.addRow(row);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ReservationController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public static boolean deleteReservation(ReservCourt r){
        return DAOReservCourt.deleteReservation(r);
    }
}
