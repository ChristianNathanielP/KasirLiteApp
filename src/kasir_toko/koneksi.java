
package kasir_toko;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLClientInfoException;


public class koneksi {
    private static Connection koneksi;
    
    public static Connection getKoneksi(){
        if (koneksi == null){
            try {
                String url = "jdbc:mysql://localhost:3306/penjualan";
                String user = "root";
                String password = "";
                DriverManager.registerDriver(new com.mysql.jdbc.Driver());
                koneksi = DriverManager.getConnection(url, user, password);
                System.out.println("Berhasil");
            } catch (Exception e) {
                System.out.println("Erorr");
            }
        }
        return koneksi;
    }
    public static void main(String args[]){
        getKoneksi();
    }
}
