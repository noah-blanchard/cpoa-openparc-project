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
import models.Court;
import models.DAOCourt;
import models.Joueur;
import models.ReservCourt;

/**
 *
 * @author matan
 */
public class CourtController {
    public static void getCourtsLibres(int jour, int heure, DefaultTableModel model){
        
        model.setRowCount(0);
        
        try {
            ResultSet rs = DAOCourt.findCourtDispo(heure, jour);
            
            while(rs.next()){
                Court c = new Court(rs.getInt("id"), rs.getByte("principal"));
                Object[] row = {c.getIdCourt(), heure};
                model.addRow(row);
            }
        } catch (SQLException ex) {
            Logger.getLogger(CourtController.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
    }
    
    public static boolean newReservation(int c, int j, int h){
        ReservCourt newReserv = new ReservCourt(-1, c, -1, Joueur.getLoggedUser().getId(), h, 0, j);
        return DAOCourt.newReservation(newReserv);
    }
}
