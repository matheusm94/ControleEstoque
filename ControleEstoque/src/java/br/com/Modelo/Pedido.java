/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package br.com.Modelo;

/**
 *
 * @author Matheus
 */
public class Pedido {
    private int id_cliente;
    private int id_produto;

    public Pedido(int id_cliente, int id_produto) {
        this.id_cliente = id_cliente;
        this.id_produto = id_produto;
    }
    
    public Pedido() {
        this.id_cliente = 0;
        this.id_produto = 0;
    }

    public int getId_cliente() {
        return id_cliente;
    }

    public void setId_cliente(int id_cliente) {
        this.id_cliente = id_cliente;
    }

    public int getId_produto() {
        return id_produto;
    }

    public void setId_produto(int id_produto) {
        this.id_produto = id_produto;
    }
}
