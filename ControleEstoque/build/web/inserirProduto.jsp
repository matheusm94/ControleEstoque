<%-- 
    Document   : inserirProduto
    Created on : 03/02/2018, 00:59:28
    Author     : Matheus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean id="bean" scope="session" class= "br.com.Modelo.Produto"/>
<jsp:setProperty name="bean" property="nome"/>
<jsp:setProperty name="bean" property="descricao"/>
<jsp:setProperty name="bean" property="preco"/>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" ></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <title>Produto</title>
    </head>
    <body>
<div class="container">
            <nav class="navbar navbar-inverse">
                <div class="container-fluid">
                  <div class="navbar-header">
                  </div>
                  <ul class="nav navbar-nav">
                    <li class="active"><a href="index.jsp">Home</a></li>
                    <li class="dropdown"><a class="drodown-toggle" data-toggle="dropdown" href="#">Cadastros<span class="caret"></span></a>
                      <ul class="dropdown-menu">
                        <li><a href="inserirCliente.jsp">Clientes</a></li>
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
        
    
              
              <form name="form" method="post" action="IP">
               
                <div class="row">  
                  <div class="col-sm-8">
                      <label for="nome">Nome</label>
                      <input type="text" name ="nome" class="form-control" placeholder="Nome" required/>
                   </div>   
                </div>  
                  <br>
        
                <div class="row">  
                  <div class="col-sm-8">
                      <label for="descricao">Descrição do produto</label>
                      <input type="text" name ="descricao" class="form-control" required/>
                   </div>   
                 </div> 
                  <br>
              
                <div class="row">  
                  <div class="col-sm-2">
                      <label for="preco">Preço</label>
                      <input type="text" name ="preco" class="form-control" placeholder="ex.: 50.0" required/>
                   </div>   
                 </div> 
                  
                  <br>
                  <br>
                  <input type="submit" class = "btn btn-primary" value ="Cadastrar"/>
                  
              </form>    
        
        </div>
    </body>
</html>
