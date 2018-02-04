package br.com.Modelo;

import java.sql.*;

public class ProdutoDAO {

    private final Connection connection;
    private ResultSet rs;

    public ProdutoDAO() throws SQLException {
        this.connection = DAO.getConnection();
    }

    public void adicionaProduto(Produto produto) {
        String sql = "INSERT INTO produto (nome, descricao, preco) VALUES (?, ?, ?)";
        try {
            //id tem auto incremento
            PreparedStatement stmt = connection.prepareStatement(sql);
            stmt.setString(1, null);
            stmt.setString(2, produto.getNome());
            stmt.setString(3, produto.getDescricao());
            stmt.setFloat(4, produto.getPreco());
            stmt.execute();
            stmt.close();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }
    
    public void alteraProduto(Produto produto) {
        String sql = "UPDATE produto SET nome =?, descricao = ?, preco =? WHERE ID = ?";
        try {
            PreparedStatement stmt = connection.prepareStatement(sql);
            stmt.setString(1, produto.getNome());
            stmt.setString(2, produto.getDescricao());
            stmt.setFloat(3, produto.getPreco());
            stmt.setString(4, produto.getId()+"");
            stmt.execute();
            stmt.close();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }
    
public void excluiProduto(Produto produto) {
        String sql = "DELETE FROM produto WHERE ID = ?";
        try {
            PreparedStatement stmt = connection.prepareStatement(sql);
            stmt.setString(1, produto.getId()+"");
            stmt.execute();
            stmt.close();

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }
   
}
