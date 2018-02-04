package br.com.Modelo;

import java.sql.*;

public class PedidoDAO {

    private final Connection connection;
    private ResultSet rs;

    public PedidoDAO() throws SQLException {
        this.connection = DAO.getConnection();
    }

    public void adicionaPedido(Pedido pedido) {
        String sql = "INSERT INTO pedido (id_cliente, id_produto) VALUES (?, ?)";
        try {
            PreparedStatement stmt = connection.prepareStatement(sql);
            stmt.setInt(1, pedido.getId_cliente());
            stmt.setInt(2, pedido.getId_produto());
            stmt.execute();
            stmt.close();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }
    
    public void alteraPedido(Pedido pedido) {
        String sql = "UPDATE pedido SET id_produto= ?  WHERE id_cliente = ?";
        try {
            PreparedStatement stmt = connection.prepareStatement(sql);
            stmt.setInt(1, pedido.getId_produto());
            stmt.setString(4, pedido.getId_cliente()+"");
            stmt.execute();
            stmt.close();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }
    
public void excluiPedido(Pedido pedido) {
        String sql = "DELETE FROM pedido WHERE id_produto = ?";
        try {
            PreparedStatement stmt = connection.prepareStatement(sql);
            stmt.setString(1, pedido.getId_produto()+"");
            stmt.execute();
            stmt.close();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }
   
}
