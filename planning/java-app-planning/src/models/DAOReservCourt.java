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
public class DAOReservCourt {
    private static DataSource ds;
    private static Connection c;

    public static void addReservation(ReservCourt r) {
        
        PreparedStatement ps = null;
        try {

            ds = MySqlDataSource.getDataSource();
            c = ds.getConnection();

            String sql = "INSERT INTO reservation(id_court_id, id_match_id, id_joueur_id, heure, minute, jour) VALUES (?, ?, ?, ?, ?, ?)";
            
            ps = c.prepareStatement(sql);
            ps.setInt(1, r.getIdCourt());
            ps.setInt(2, r.getIdMatch());
            ps.setInt(3, r.getIdJoueur());
            ps.setInt(4, r.getHeure());
            ps.setInt(5, r.getMinute());
            ps.setInt(6, r.getJour());
            
            ps.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(DAOPlanning.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(DAOPlanning.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
