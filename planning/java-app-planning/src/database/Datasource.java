package database;

import java.sql.SQLException;
import com.mysql.cj.jdbc.MysqlDataSource;
// classe finale pour empêcher la création de classe fille

public final class Datasource extends MysqlDataSource {
    //L’instance unique est une variable de classe

    private static Datasource ds;
    //Constructeur privé

    private Datasource() throws SQLException {
    }
    //Méthode de classe : getter statique qui crée l’instance si besoin 

    public static Datasource getDataSource() throws SQLException {
        if (ds == null) {// on contrôle qu’il n’existe pas déjà une source de données
            ds = new Datasource();
            // on la définit avec les paramètres suivants : 
            ds.setPortNumber(3306);
            ds.setServerName("sql11.freesqldatabase.com");
            ds.setDatabaseName("sql11463312"); // à modifier
            ds.setUser("sql11463312"); // à modifier
            ds.setPassword("MkD4Gv7uGD"); // à modifier numéro BIP
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
