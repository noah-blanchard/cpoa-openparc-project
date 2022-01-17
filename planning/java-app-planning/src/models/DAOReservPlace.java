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
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.sql.DataSource;

/**
 *
 * @author matan
 */
public class DAOReservPlace {

    private static DataSource ds;
    private static Connection c;

    public static void clearReservPlace() {

        PreparedStatement ps = null;
        ResultSet rs = null;

        try {

            String sql = "DELETE FROM reserv_place WHERE rencontre_id != -1";

            ds = MySqlDataSource.getDataSource();
            c = ds.getConnection();
            
            ps = c.prepareStatement(sql);
            ps.executeUpdate();
            
            
        } catch (SQLException ex) {
            Logger.getLogger(DAOReservPlace.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

}
