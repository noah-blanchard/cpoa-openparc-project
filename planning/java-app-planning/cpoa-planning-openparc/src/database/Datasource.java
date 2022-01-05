package database;
import java.sql.SQLException;
import org.mariadb.jdbc.MariaDbDataSource;
// classe finale pour empêcher la création de classe fille
public final class Datasource extends MariaDbDataSource { 
  //L’instance unique est une variable de classe
  private static Datasource mds;
  //Constructeur privé
  private Datasource() throws SQLException{}
  //Méthode de classe : getter statique qui crée l’instance si besoin 
  public static Datasource getDataSource() throws SQLException {
    if (mds == null) {// on contrôle qu’il n’existe pas déjà une source de données
      mds = new Datasource();
      // on la définit avec les paramètres suivants : 
      mds.setPortNumber(3306); 
      mds.setServerName("sql11.freesqldatabase.com"); 
      mds.setDatabaseName("sql11463312"); // à modifier
      mds.setUser("sql11463312"); // à modifier
      mds.setPassword("MkD4Gv7uGD"); // à modifier numéro BIP
    } // sinon, un datasource existe déjà :
    return mds; /* retourne l’instance unique */ 
  }
  // rend le clonage impossible
  @Override
  public Object clone() throws CloneNotSupportedException {
    throw new CloneNotSupportedException(); 
  }
}
                           
