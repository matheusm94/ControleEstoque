package br.com.Modelo;

import java.sql.*;

public class ClienteDAO {

    private final Connection connection;
    private ResultSet rs;

    public ClienteDAO() throws SQLException {
        this.connection = DAO.getConnection();
    }

    public void adicionaCliente(Cliente cliente) {
        String sql = "INSERT INTO cliente (nome, email, telefone) VALUES (?, ?, ?)";
        try {
            PreparedStatement stmt = connection.prepareStatement(sql);
            //id tem auto incremento
            stmt.setString(1, cliente.getNome());
            stmt.setString(2, cliente.getEmail());
            stmt.setString(3, cliente.getTelefone());
            stmt.execute();
            stmt.close();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }
    
    public void alteraCliente(Cliente cliente) {
        String sql = "UPDATE cliente SET nome =?, email = ?, telefone =? WHERE ID = ?";
        try {
            PreparedStatement stmt = connection.prepareStatement(sql);
            stmt.setString(1, cliente.getNome());
            stmt.setString(2, cliente.getEmail());
            stmt.setString(3, cliente.getTelefone());
            stmt.setString(4, cliente.getId()+"");
            stmt.execute();
            stmt.close();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }
    
public void excluiCliente(Cliente cliente) {
        String sql = "DELETE FROM cliente WHERE ID = ?";
        try {
            PreparedStatement stmt = connection.prepareStatement(sql);
            stmt.setString(1, cliente.getId()+"");
            stmt.execute();
            stmt.close();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }
   
}
