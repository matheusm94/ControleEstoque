package br.com.Modelo;
import java.sql.*;

public class DAO {

    private static final String BANCODEDADOS = "estoque";
    private static final String URL = "jdbc:mysql://localhost/" + BANCODEDADOS;
    private static final String USUARIO = "root";
    private static final String SENHA = "root";
    private static final String DRIVER = "com.mysql.jdbc.Driver";

    public static Connection getConnection() throws SQLException{
	try{
            Class.forName(DRIVER);
            System.out.println("");
            System.out.println(" -- CONEXÃO COM O BANCO DE DADOS CRIADA COM SUCESSO --");
            System.out.println("");

            return DriverManager.getConnection(URL, USUARIO, SENHA);
	
        } catch (ClassNotFoundException e){
            e.printStackTrace();
            System.out.println(e.getMessage());
            throw new SQLException(e.getMessage());
	}

    }
    
}
