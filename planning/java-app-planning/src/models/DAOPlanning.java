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
public class DAOPlanning {

    private static DataSource ds;
    private static Connection c;

    public static ResultSet getPlannings() {
        ResultSet rs = null;
        PreparedStatement ps = null;
        try {

            ds = MySqlDataSource.getDataSource();
            c = ds.getConnection();

            String sql = "SELECT * FROM planning WHERE id > 0";
            ps = c.prepareStatement(sql);
            rs = ps.executeQuery();

        } catch (SQLException ex) {
            Logger.getLogger(DAOPlanning.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(DAOPlanning.class.getName()).log(Level.SEVERE, null, ex);
        }

        return rs;
    }

    public static ResultSet getMatchs(Planning p) {
        ResultSet rs = null;
        PreparedStatement ps = null;
        try {

            ds = MySqlDataSource.getDataSource();
            c = ds.getConnection();

            String sql = "SELECT * FROM rencontre WHERE id > 0 AND id_planning_id = ?";
            ps = c.prepareStatement(sql);
            ps.setInt(1, p.getIdPlanning());
            rs = ps.executeQuery();

        } catch (SQLException ex) {
            Logger.getLogger(DAOPlanning.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(DAOPlanning.class.getName()).log(Level.SEVERE, null, ex);
        }

        return rs;
    }
}
