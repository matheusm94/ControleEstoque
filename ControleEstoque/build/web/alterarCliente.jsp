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
                          <li><a href="excluirCliente.jsp">Cliente</a></li>
                          <li><a href="excluirProduto.jsp">Produto</a></li>
                        </ul>
                      </li>
                    <li><a href="corrida.jsp">Corridas</a></li>
                  </ul>
                </div>
              </nav>
    
         <div class="row">  
        <form id="form1" name="form1" method="post" action="alterarCliente.jsp">
             <div class="col-sm-4">
            Consultar: Id: 
            <input type="text" name="id" id="id" class="form-control" />
            <br>
            <input type="submit" name="consulta" id="consulta" value="Consultar" class = "btn btn-primary" />
             </div>
        </form>
         </div>

        <%
            if (request.getParameter("consulta") != null) {
                ResultSet res = bean.consultar("SELECT * FROM cliente WHERE id = " + request.getParameter("id"));

                if (res.next()) {
        %>
        <form id="form2" name="form2" method="post" action="AtualizarCliente">
            <p>Alterar Cliente</p>
            <p>Id: <%= res.getString("id")%>
                <input type="hidden" name="id" id="id" value="<%= res.getString("id")%>" />
                <input type="hidden" name="nome" id="id" value="<%= res.getString("nome")%>" />
                <input type="hidden" name="email" id="id" value="<%= res.getString("email")%>" />
                <input type="hidden" name="telefone" id="id" value="<%= res.getString("telefone")%>" />
            </p>
            <p> Nome:
                <input type="text" name="nome" value="<%= res.getString("nome")%>" />
                <br />
                <br />
            </p>
            <p>
                Segundo Nome:
                <input type="text" name="email" value="<%= res.getString("email")%>" />
                <br />
                <br />
            </p>
            <p>
                Telefone
                <input type="text" name="telefone" value="<%= res.getString("telefone")%>" />
                <br />
                <br />
            </p>
                <br>
                    <br>
            <p>
                <input type="submit" name="button" id="button" value="Alterar" />
            </p>
        </form>
        <%
                } else {
                    out.print("Nenhum registro");
                }
            }
        %>

        <p>&nbsp;</p>
        <p>&nbsp;</p>
    
        </p>
</div>        
    </body>
</html>
