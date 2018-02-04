package br.com.Controle;

import br.com.Modelo.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class InserirProduto extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            HttpSession session = request.getSession(true);
            //se for uma nova sessão, reescreve a URL do cliente
            if (session.isNew()) {
                //obtem a URL
                String incomingURL = request.getRequestURL().toString();
                //codifica a URL e adiciona o ID da sessão do cliente
                String URLwithID = response.encodeURL(incomingURL);
                //devolve o cabeçalho para o cliente
                response.setHeader("Custom-newURL", URLwithID);
            }
            int id = (Integer.parseInt(request.getParameter("ID")));
            String nome = request.getParameter("nome");
            String descricao = request.getParameter("descricao");
            float preco = (Float.parseFloat(request.getParameter("preco")));

            if ((nome == null || nome.isEmpty()) && (nome == null || nome.isEmpty())) {
                response.sendRedirect("CadastroProduto.jsp?status=1b");
                nome = "";
                nome = "";
            } else if (descricao == null || descricao.isEmpty()) {
                response.sendRedirect("CadastroProduto.jsp?status=1b");
                descricao = "";
                descricao = "";
            } else if (preco == 0 || descricao.isEmpty()) {
                response.sendRedirect("CadastroProduto.jsp?status=1b");
                preco = 0;
                preco = 0;
            } else {
                Produto produto = new Produto(id, nome, descricao, preco);
                ProdutoDAO produtoDAO = new ProdutoDAO();
                produtoDAO.adicionaProduto(produto);
                String url = "/=CadastroProduto.jsp?status=1a";
                ServletContext sc = getServletContext();
                RequestDispatcher rd = sc.getRequestDispatcher(url);
                rd.forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
            e.getMessage();
            String url = "/CadastroProduto.jsp?status=1b";
            ServletContext sc = getServletContext();
            RequestDispatcher rd = sc.getRequestDispatcher(url);
            rd.forward(request, response);
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
