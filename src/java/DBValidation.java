
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DBValidation {

    private Connection con;
    private PreparedStatement prSt;
    private ResultSet rs;

    public DBValidation() {

    

        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/clothman", "root", "");
            System.out.println("Connected....");
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(DBValidation.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void addUsr(String usr, String mail, String pass) {

        String query = "insert into users(username,email,password) values(?,?,?);";

        try {

            prSt = con.prepareStatement(query);
            prSt.setString(1, usr);
            prSt.setString(2, mail);
            prSt.setString(3, pass);

            prSt.executeUpdate();

            prSt.close();

        } catch (SQLException ex) {
            Logger.getLogger(DBValidation.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public boolean validation(String name, String pass) {

        boolean res = true;
        String query = "select * from users where username= ? and password= ? ;";
        try {

            prSt = con.prepareStatement(query);

            prSt.setString(1, name);
            prSt.setString(2, pass);

            rs = prSt.executeQuery();

            if (!rs.next()) {
                res = false;
            }

            rs.close();
            prSt.close();


        } catch (SQLException ex) {
            Logger.getLogger(DBValidation.class
                    .getName()).log(Level.SEVERE, null, ex);
        }

        return res;

    }

    public boolean checkUsr(String usr, String email) {

        boolean res = false;

        try {

            String query1 = "Select * from users where username = ?";
            prSt = con.prepareStatement(query1);
            prSt.setString(1, usr);
            rs = prSt.executeQuery();

            if (rs.next()) {

                res = true;
            }

            String query2 = "Select * from users where email = ?";
            prSt = con.prepareStatement(query2);
            prSt.setString(1, email);
            rs = prSt.executeQuery();

            if (rs.next()) {

                res = true;

            }

            rs.close();
            prSt.close();


        } catch (SQLException ex) {
            Logger.getLogger(DBValidation.class
                    .getName()).log(Level.SEVERE, null, ex);
        }

        return res;

    }

    public int getID(String usr) {

        String query = "select id from users where username = ?";
        int res = 0;
        try {

            prSt = con.prepareStatement(query);
            prSt.setString(1, usr);
            rs = prSt.executeQuery();

            rs.next();
            res = rs.getInt("id");

            rs.close();
            prSt.close();


        } catch (SQLException ex) {
            Logger.getLogger(DBValidation.class.getName()).log(Level.SEVERE, null, ex);
        }

        return res;
    }

    public void addItem(int user_id, int item_id, String size) {

        String query = "select item_id from basket where item_id = ? and user_id = ? and size = ?";
        boolean isIn = false;
        try {
            prSt = con.prepareStatement(query);
            prSt.setInt(1, item_id);
            prSt.setInt(2, user_id);
            prSt.setString(3, size);
            rs = prSt.executeQuery();

            if(rs.next()) {
                isIn = true;
                System.out.println(isIn);
            }

            rs.close();
            prSt.close();


        } catch (SQLException ex) {
            Logger.getLogger(DBValidation.class.getName()).log(Level.SEVERE, null, ex);
        }

        String query1 = "select price,weight from items where id = ?";
        double price = 0;
        double weight = 0;
        try {
            prSt = con.prepareStatement(query1);
            prSt.setInt(1, item_id);

            rs = prSt.executeQuery();

            while (rs.next()) {
                price = rs.getDouble(1);
                weight = rs.getDouble(2);
            }

            rs.close();
            prSt.close();


        } catch (SQLException ex) {
            Logger.getLogger(DBValidation.class.getName()).log(Level.SEVERE, null, ex);
        }
        if(isIn) {

            String query2 = "update basket set quantity = quantity + 1 , price = price + ? , weight = weight + ? where item_id = ?";

            try {

                prSt = con.prepareStatement(query2);
                prSt.setDouble(1, price);
                prSt.setDouble(2, weight);
                prSt.setInt(3, item_id);

                prSt.executeUpdate();

                prSt.close();


            } catch (SQLException ex) {
                Logger.getLogger(DBValidation.class.getName()).log(Level.SEVERE, null, ex);
            }

        } else {

            String query2 = "insert into basket(user_id,item_id,quantity,size,price,weight) values(?,?,?,?,?,?)";

            try {

                int quantity = 1;
                prSt = con.prepareStatement(query2);
                prSt.setInt(1, user_id);
                prSt.setInt(2, item_id);
                prSt.setInt(3, quantity);
                prSt.setString(4, size);
                prSt.setDouble(5, price);
                prSt.setDouble(6, weight);

                prSt.executeUpdate();

                prSt.close();


            } catch (SQLException ex) {
                Logger.getLogger(DBValidation.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

    }

    public void updateItem(int item_id, int basket_id, double price, String size, int user_id, int quantity, double weight) {

        String query1 = "select price,weight from items where id = ?";
        double prc = 0;
        double wght = 0;

        try {
            prSt = con.prepareStatement(query1);
            prSt.setInt(1, item_id);

            rs = prSt.executeQuery();

            while (rs.next()) {
                prc = rs.getDouble(1);
                wght = rs.getDouble(2);
            }

            rs.close();
            prSt.close();


        } catch (SQLException ex) {
            Logger.getLogger(DBValidation.class.getName()).log(Level.SEVERE, null, ex);
        }

        String query3 = "update basket set price = ?,size = ?,quantity = ?,weight = ? where id = ?  and user_id = ?";

        try {

            prSt = con.prepareStatement(query3);
            
            prSt.setDouble(1, quantity * prc);
            prSt.setString(2, size);
            prSt.setInt(3, quantity);
            prSt.setDouble(4, quantity * wght);
            prSt.setInt(5, basket_id);
            prSt.setInt(6, user_id);

            prSt.executeUpdate();

            prSt.close();


        } catch (SQLException ex) {
            Logger.getLogger(DBValidation.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public void removeItem(int id, int user_id) {

        String query = "delete from basket where id = ? and user_id = ?";

        try {

            prSt = con.prepareStatement(query);
            prSt.setInt(1, id);
            prSt.setInt(2, user_id);

            prSt.executeUpdate();


        } catch (SQLException ex) {
            Logger.getLogger(DBValidation.class.getName()).log(Level.SEVERE, null, ex);
        }

    }
    
    public boolean validatePurchase(String email,String pass){
        
        String query = "Select * from users where email = ? and password = ?";
        boolean isValid = false;
        
        try {
            prSt = con.prepareStatement(query);
            prSt.setString(1, email);
            prSt.setString(2, pass);
            
            rs = prSt.executeQuery();
            
            if(rs.next()){
                isValid = true;
            }
            
            rs.close();
            prSt.close();
            
        } catch (SQLException ex) {
            Logger.getLogger(DBValidation.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return isValid;
    }
    
    public void clearItems(int id){
        
        String query = "delete from basket where user_id = ?";
        
        try {
            prSt = con.prepareStatement(query);
            prSt.setInt(1, id);
            prSt.executeUpdate();
            
            prSt.close();
            
        } catch (SQLException ex) {
            Logger.getLogger(DBValidation.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    }

}
