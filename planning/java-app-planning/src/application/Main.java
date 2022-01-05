/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package application;

import database.Datasource;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Locale;
import javax.sql.DataSource;

/**
 *
 * @author matan
 */
public class Main {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Connection connection = null;
        int choix;
        try {
            //      Pour MariaDB
            //DataSource ds = MonMariaDbDataSource.getDataSource();
            //      Pour Oracle
            DataSource ds = Datasource.getDataSource();
            connection = ds.getConnection();
            // TODO code application logic here
            
            System.out.println("OK");
            
            ResultSet rs;
            Statement stmt;
            
            stmt = connection.createStatement();
            rs = stmt.executeQuery("SELECT * FROM joueurs");
            
            int c = 1;
            while(rs.next()){
                
                System.out.println(rs.getString("nom") + "\n" + c++);
            }
            
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        } catch (Exception ex) {
            System.out.println(ex.getMessage());
        }
    }

}
