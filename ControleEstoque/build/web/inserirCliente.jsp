<%-- 
    Document   : inserirCliente
    Created on : 03/02/2018, 00:59:18
    Author     : Matheus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="bean" scope="session" class= "br.com.Modelo.Cliente"/>
<jsp:setProperty name="bean" property="nome"/>
<jsp:setProperty name="bean" property="email"/>
<jsp:setProperty name="bean" property="telefone"/>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" ></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <title>Cliente</title>
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

      
       <%
          String status = request.getParameter("status");

          if (status != null && status.equals("1a")) {
              out.println("<h3>Registro inserido</h3>");
          } else if (status != null && status.equals("1b")) {
              out.println("<h3>Falha no Cadastro</h3>");
          }
      %>
      
      <form name="formInserir" method="POST" action="IC">
        
        <div class="row">  
          <div class="col-sm-8">
              <label for="nome">Nome</label>
              <input type="text" name ="nome" class="form-control" placeholder="Nome" required/>
           </div>   
        </div>  
          <br>

        <div class="row">  
          <div class="col-sm-8">
              <label for="email">Email</label>
              <input type="text" name ="email" class="form-control" required/>
           </div>   
         </div> 
          <br>
      
        <div class="row">  
          <div class="col-sm-2">
              <label for="telefone">Telefone</label>
              <input type="text" name ="telefone" class="form-control" placeholder="ex.: (11)2222-2222" required/>
           </div>   
         </div> 
          
          <br>
          <br>
          <input type="submit" class = "btn btn-primary" value ="Cadastrar"/>
          
      </form>    

</div>
    </body>
</html>
