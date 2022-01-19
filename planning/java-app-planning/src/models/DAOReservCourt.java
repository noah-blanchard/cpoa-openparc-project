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
import java.util.Collections;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.sql.DataSource;
import tools.ReservationComparator;

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

            String sql = "INSERT INTO reservation(id, id_court_id, id_match_id, id_joueur, heure, minute, jour) VALUES (?, ?, ?, ?, ?, ?, ?)";

            ps = c.prepareStatement(sql);
            ps.setInt(1, r.getIdReservation());
            ps.setInt(2, r.getIdCourt());
            ps.setInt(3, r.getIdMatch());
            ps.setInt(4, r.getIdJoueur());
            ps.setInt(5, r.getHeure());
            ps.setInt(6, r.getMinute());
            ps.setInt(7, r.getJour());

            ps.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(DAOPlanning.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(DAOPlanning.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static boolean deleteReservation(ReservCourt r) {
        try {
            PreparedStatement ps = null;
            ds = MySqlDataSource.getDataSource();
            c = ds.getConnection();
            
            String sql = "DELETE FROM reservation WHERE id = ?";
            ps = c.prepareStatement(sql);
            
            ps.setInt(1, r.getIdReservation());
            ps.executeUpdate();
            
            
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(DAOReservCourt.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }

    public static ResultSet getReservationsJoueur(Joueur j) {
        ResultSet rs = null;
        try {

            PreparedStatement ps = null;
            ds = MySqlDataSource.getDataSource();
            c = ds.getConnection();

            String sql = "SELECT * FROM reservation WHERE id_joueur = ? ORDER BY jour, heure asc";

            ps = c.prepareStatement(sql);
            ps.setInt(1, j.getId());

            rs = ps.executeQuery();

        } catch (SQLException ex) {
            Logger.getLogger(DAOReservCourt.class.getName()).log(Level.SEVERE, null, ex);
        }

        return rs;

    }

    public static void clearReservation(int planning) {
        try {
            PreparedStatement ps = null;
            ds = MySqlDataSource.getDataSource();
            c = ds.getConnection();

            for (Match m : Match.getMatchByPlanning(planning)) {
                ps = c.prepareStatement("DELETE FROM reservation WHERE id_match_id = ?");
                ps.setInt(1, m.getIdMatch());
                ps.executeUpdate();
            }

        } catch (SQLException ex) {
            Logger.getLogger(DAOMatchs.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static void getReservationByMatchId(int matchId) {
        try {
            PreparedStatement ps = null;
            ResultSet rs = null;
            ds = MySqlDataSource.getDataSource();
            c = ds.getConnection();

            String sql = "SELECT * FROM reservation WHERE id_match_id = ?";

            ps = c.prepareStatement(sql);
            ps.setInt(1, matchId);

            rs = ps.executeQuery();

            while (rs.next()) {
                ReservCourt reserv = new ReservCourt(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getInt(7), rs.getInt(4), rs.getInt(5), rs.getInt(6));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAOReservCourt.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static void getReservations() {
        try {
            PreparedStatement ps = null;
            ResultSet rs = null;
            ds = MySqlDataSource.getDataSource();
            c = ds.getConnection();

            String sql = "SELECT * FROM reservation";

            ps = c.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                ReservCourt reserv = new ReservCourt(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getInt(7), rs.getInt(4), rs.getInt(5), rs.getInt(6));
            }

            Collections.sort(ReservCourt.getReservations(), new ReservationComparator());
            System.out.println(ReservCourt.getReservations());
        } catch (SQLException ex) {
            Logger.getLogger(DAOReservCourt.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
