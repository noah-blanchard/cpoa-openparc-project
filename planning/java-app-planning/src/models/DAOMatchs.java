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

        String sql = "INSERT INTO `bdd_cpoa_2022`.`matchs`"
                + "(`id`,"
                + "`id_planning_id`,"
                + "`id_vainqueur_id`,"
                + "`id_perdant_id`,"
                + "`id_joueur1`,"
                + "`id_joueur2`,"
                + "`id_equipe1`,"
                + "`id_equipe2`,"
                + "`etape`,"
                + "`score`,"
                + "`est_double`)"
                + "VALUES"
                +"(?, ?, ?, ?, ?, ?, ?, ?, ?, ? , ?)";

        for (Match m : matchs) {
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

            ps = c.prepareStatement("DELETE FROM matchs WHERE id_planning_id = ?");
            ps.setInt(1, planning);
            ps.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAOMatchs.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
