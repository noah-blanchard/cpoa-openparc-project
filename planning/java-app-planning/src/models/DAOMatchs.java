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
public class DAOMatchs {

    private static DataSource ds;
    private static Connection c;

    public static void putMatchList(ArrayList<Match> matchs) {
        PreparedStatement ps = null;
        
        

        String sql = "INSERT INTO `cpoa_2022`.`rencontre`"
                + "(`id`,"
                + "`id_planning_id`,"
                + "`id_vainqueur`,"
                + "`id_perdant`,"
                + "`id_joueur1`,"
                + "`id_joueur2`,"
                + "`id_equipe1`,"
                + "`id_equipe2`,"
                + "`etape`,"
                + "`score`,"
                + "`est_double`, `id_equipe_ramasseurs`, `id_equipe_ramasseurs2`, `reservations`)"
                + "VALUES"
                +"(?, ?, ?, ?, ?, ?, ?, ?, ?, ? , ?, ?, ?, ?)";

        for (Match m : matchs) {
            System.out.println(m);
            /*sql = sql + "( " + m.getIdMatch() + ","
                    + m.getIdPlanning() + ","
                    + m.getIdVainqueur()+ ","
                    + m.getIdPerdant() + ","
                    + m.getIdJoueur1() + ","
                    + m.getIdJoueur2() + ","
                    + m.getIdEquipe1() + ","
                    + m.getIdEquipe2() + ","
                    + m.getEtape() + ","
                    + m.getScore() + ","
                    + m.getEstDouble() + "), ";
            
        }*/

            try {
                ds = MySqlDataSource.getDataSource();
                c = ds.getConnection();

                ps = c.prepareStatement(sql);
                ps.setInt(1, m.getIdMatch());
                ps.setInt(2, m.getIdPlanning());
                ps.setInt(3, m.getIdVainqueur());
                ps.setInt(4, m.getIdPerdant());
                ps.setInt(5, m.getIdJoueur1());
                ps.setInt(6, m.getIdJoueur2());
                ps.setInt(7, m.getIdEquipe1());
                ps.setInt(8, m.getIdEquipe2());
                ps.setString(9, m.getEtape());
                ps.setString(10, m.getScore());
                ps.setInt(11, m.getEstDouble());
                ps.setInt(12, m.getIdEquipeRamasseurs());
                ps.setInt(13, m.getIdEquipeRamasseurs2());
                ps.setInt(14, m.getIdReservation());
                

                ps.executeUpdate();
            } catch (SQLException ex) {
                Logger.getLogger(DAOMatchs.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    public static void clearMatchs(int planning) {
        try {
            PreparedStatement ps = null;
            ds = MySqlDataSource.getDataSource();
            c = ds.getConnection();

            
            ps = c.prepareStatement("DELETE FROM rencontre WHERE id_planning_id = ?");
            ps.setInt(1, planning);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAOMatchs.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public static boolean updateMatch(Match m){
        try {
            PreparedStatement ps = null;
            ds = MySqlDataSource.getDataSource();
            c = ds.getConnection();

            System.out.println(m.getScore().getClass());
            
            ps = c.prepareStatement("UPDATE rencontre SET score = ?, id_vainqueur = ? WHERE id = ?");
            ps.setString(1, m.getScore()); ps.setInt(2, m.getIdVainqueur()); ps.setInt(3, m.getIdMatch());
            ps.executeUpdate();
            
            return true;
            
        } catch (SQLException ex) {
            Logger.getLogger(DAOMatchs.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
        
        
    }
}
