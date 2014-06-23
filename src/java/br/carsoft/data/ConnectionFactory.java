package br.carsoft.data;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLDataException;
import java.sql.SQLException;

public class ConnectionFactory {

    public static Connection getConnection() throws SQLException {
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            System.out.println("Conectado ao Banco!");
            return DriverManager.getConnection("jdbc:sqlserver://localhost:1433;databaseName=db_carsoft;user=root;password=vertrigo");
        } catch (ClassNotFoundException e) {
            System.out.println("ERRO");
            throw new SQLDataException(e.getMessage());

        }
    }
}
