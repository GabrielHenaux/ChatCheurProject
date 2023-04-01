import java.sql.*;

public class Main {

    public static void main(String[] args){
        System.out.println("Project ChatCheur Tie un bon la famille");

        // Information d'acc�s � la base de donn�es
        String url = "jdbc:mysql://localhost:3306/ChatCheur";
        String login = "root";
        String passwd = "";
        Connection cn =null;
        Statement st =null;
        ResultSet rs =null;
        try {

            // Etape 1 : Chargement du driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            // Etape 2 : récupération de la connexion
            cn = DriverManager.getConnection(url, login, passwd);
            // Etape 3 : Création d'un statement
            st = cn.createStatement();
            // Etape 4 : exécution requête
            String sql = "";
            String sql2 = "cheto";
            rs = st.executeQuery(sql);

            // Etape 5 : (parcours Resultset)

            while (rs.next()) {
                System.out.println("output");
            }


        }  catch (SQLException | ClassNotFoundException e) {

            e.printStackTrace();
        }



    }
}
