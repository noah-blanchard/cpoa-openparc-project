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
import javax.sql.DataSource;

/**
 *
 * @author matan
 */
public class DAORamasseurs {
    private static DataSource ds;
    private static Connection c;
    
    public static ArrayList<Integer> getEquipesRamasseurs(){
        ArrayList<Integer> equipesRamasseurs = new ArrayList<Integer>();
        PreparedStatement ps = null;
        ResultSet rs = null;
        try{
            
            ds = MySqlDataSource.getDataSource();
            c = ds.getConnection();
            
            String sql = "SELECT id_equipe_ramasseurs FROM ramasseur GROUP BY id_equipe_ramasseurs";
            ps = c.prepareStatement(sql);
            rs = ps.executeQuery();
            
            while(rs.next()){
                        
                equipesRamasseurs.add(rs.getInt(1));
            }
            System.out.println(equipesRamasseurs);
            
        }catch(SQLException ex){
            
        }
        
        return equipesRamasseurs;
    }
    
}
