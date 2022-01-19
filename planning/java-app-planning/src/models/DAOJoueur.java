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
public class DAOJoueur {

    private static DataSource ds;
    private static Connection c;

    public static ResultSet getJoueurs() {
        ResultSet rs = null;
        PreparedStatement ps = null;
        try {

            ds = MySqlDataSource.getDataSource();
            c = ds.getConnection();

            String sql = "SELECT * FROM joueur ORDER BY groupe";
            ps = c.prepareStatement(sql);
            rs = ps.executeQuery();

        } catch (SQLException ex) {
            Logger.getLogger(DAOJoueur.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(DAOJoueur.class.getName()).log(Level.SEVERE, null, ex);
        }

        return rs;
    }

    public static boolean loginJoueur(String nom, String tel) {
        try {
            ResultSet rs = null;
            PreparedStatement ps = null;
            ds = MySqlDataSource.getDataSource();
            c = ds.getConnection();

            String sql = "SELECT * FROM joueur WHERE nom = ? and telephone = ?";

            ps = c.prepareStatement(sql);
            ps.setString(1, nom);
            ps.setString(2, tel);
            rs = ps.executeQuery();
    

            while (rs.next()) {
                Joueur j = new Joueur(rs.getInt("id"), rs.getString("nom"), rs.getString("telephone"), rs.getString("email"), rs.getString("pays"), rs.getInt("classement"), rs.getString("groupe"));
                Joueur.setLoggedUser(j);
                System.out.println(j);
                return true;
            }

        } catch (SQLException ex) {

            Logger.getLogger(DAOJoueur.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
        return false;
    }
}
