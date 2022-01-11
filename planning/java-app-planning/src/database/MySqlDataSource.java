package database;

import java.sql.SQLException;
import com.mysql.cj.jdbc.MysqlDataSource;
// classe finale pour empêcher la création de classe fille

public final class MySqlDataSource extends MysqlDataSource {
    //L’instance unique est une variable de classe

    private static MySqlDataSource ds;
    //Constructeur privé

    private MySqlDataSource() throws SQLException {
    }
    //Méthode de classe : getter statique qui crée l’instance si besoin 

    public static MySqlDataSource getDataSource() throws SQLException {
        if (ds == null) {// on contrôle qu’il n’existe pas déjà une source de données
            ds = new MySqlDataSource();
            // on la définit avec les paramètres suivants : 
            ds.setPortNumber(3306);
            ds.setServerName("34.159.220.180");
            ds.setDatabaseName("cpoa_2022"); // à modifier
            ds.setUser("root"); // à modifier
            ds.setPassword("cpoabdd"); // à modifier numéro BIP
        } // sinon, un datasource existe déjà :
        return ds;
        /* retourne l’instance unique */
    }
    // rend le clonage impossible

    @Override
    public Object clone() throws CloneNotSupportedException {
        throw new CloneNotSupportedException();
    }
}
