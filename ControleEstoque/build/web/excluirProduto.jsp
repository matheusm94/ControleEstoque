<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<jsp:useBean id="bean" scope="session" class= "br.com.Modelo.Cliente"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" ></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
        <title>:: ALTERAÇÃO DE CLIENTE ::</title>
    </head>

    <body>
<div class="container"> 
    
      <nav class="navbar navbar-inverse">
                <div class="container-fluid">
                  <div class="navbar-header">
                  </div>
                  <ul class="nav navbar-nav">
                    <li class="active"><a href="index.jsp">Home</a></li>
                    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Cadastros<span class="caret"></span></a>
                      <ul class="dropdown-menu">
                        <li><a href="inserircliente.jsp">Clientes</a></li>
                        <li><a href="inserirProduto.jsp">Produtos</a></li>
                        <li><a href="inserirPedido.jsp">Pedidos</a></li>
                      </ul>
                    </li>
                    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Alterações de cadastro<span class="caret"></span></a>
                      <ul class="dropdown-menu">
                        <li><a href="alterarCliente.jsp">Cliente</a></li>
                        <li><a href="alterarProduto.jsp">Produto</a></li>
                      </ul>
                    </li>
                    <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Excluir cadastro<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                          <li><a href="exluirCliente.jsp">Cliente</a></li>
                          <li><a href="excluirProduto.jsp">Produto</a></li>
                        </ul>
                      </li>
                    
                  </ul>
                </div>
              </nav>
      <table  class="table">
            <tr>
                <td width="28" height="16" bgcolor="#000000"><div align="center"><font color="#FFFFFF"><b><font size="2" face="Verdana, Arial, Helvetica, sans-serif"></font></b></font></div></td>  
                <td width="28" height="16" bgcolor="#000000"><div align="center"><font color="#FFFFFF"><b><font size="2" face="Verdana, Arial, Helvetica, sans-serif">ID</font></b></font></div></td>
                <td width="101" bgcolor="#000000"><div align="center"><font color="#FFFFFF"><b><font size="2" face="Verdana, Arial, Helvetica, sans-serif">NOME</font></b></font></div></td>
                <td width="79" bgcolor="#000000"><div align="center"><font color="#FFFFFF"><b><font size="2" face="Verdana, Arial, Helvetica, sans-serif">DESCRIÇÃO</font></b></font></div></td>
            </tr>
            <%
                ResultSet res = bean.consultar("SELECT * FROM produto");
                while (res.next()) {
            %>
            <tr>
                <td><div align="center"><%out.print("<a href='RA?id=" + res.getString("id") + "'><img src=del.gif border=0></a><p>");%></div></td>
                <td><div align="center"><font size="1" face="Verdana, Arial, Helvetica, sans-serif"><%= res.getString("id")%></font></div></td>
                <td><div align="center"><font size="1" face="Verdana, Arial, Helvetica, sans-serif"><%= res.getString("nome")%></font></div></td>
                <td><div align="center"><font size="1" face="Verdana, Arial, Helvetica, sans-serif"><%= res.getString("descircao")%></font></div></td>
                <td><div align="center"><font size="1" face="Verdana, Arial, Helvetica, sans-serif"><%= res.getString("preco")%></font></div></td>
            </tr>
            <%
                }
            %>
        </table>
        <p><a href="index.jsp">Menu</a></p>
    </body>
    </body>
</html>
