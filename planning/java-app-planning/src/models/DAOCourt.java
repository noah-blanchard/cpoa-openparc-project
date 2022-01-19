/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package models;

import database.MySqlDataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.sql.DataSource;

/**
 *
 * @author matan
 */
public class DAOCourt {

    private static DataSource ds;
    private static Connection c;

    public static ResultSet findCourtDispo(int heure, int jour) {
        ResultSet rs = null;
        try {
            System.out.println(heure);
            System.out.println(jour);
            PreparedStatement ps = null;

            ds = MySqlDataSource.getDataSource();
            c = ds.getConnection();

            String sql = "SELECT * FROM court WHERE id NOT IN (SELECT id_court_id FROM reservation WHERE heure = ? AND jour = ?) AND id NOT IN(SELECT id_court_id FROM reservation WHERE heure = ? AND jour = ?) AND id NOT IN(SELECT id_court_id FROM reservation WHERE heure = ? AND jour = ?)";

            ps = c.prepareStatement(sql);
            ps.setInt(1, heure);
            ps.setInt(2, jour);
            ps.setInt(3, heure + 1);
            ps.setInt(4, jour);
            ps.setInt(5, heure - 1);
            ps.setInt(6, jour);

            rs = ps.executeQuery();

            return rs;

        } catch (SQLException ex) {
            Logger.getLogger(DAOCourt.class.getName()).log(Level.SEVERE, null, ex);
        }

        return rs;
    }

    public static boolean newReservation(ReservCourt r) {
        try {
            PreparedStatement ps = null;
            
            ds = MySqlDataSource.getDataSource();
            c = ds.getConnection();
            
            String sql = "INSERT INTO reservation(id_court_id, id_match_id, heure, minute, jour, id_joueur) VALUES(?,?,?,?,?,?)";
            
            ps = c.prepareStatement(sql);
            ps.setInt(1, r.getIdCourt());
            ps.setInt(2, -1);
            ps.setInt(3, r.getHeure());
            ps.setInt(4, r.getMinute());
            ps.setInt(5, r.getJour());
            ps.setInt(6, r.getIdJoueur());
            
            ps.executeUpdate();
            
            return true;
            
        } catch (SQLException ex) {
            Logger.getLogger(DAOCourt.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
        
       
    }

}
