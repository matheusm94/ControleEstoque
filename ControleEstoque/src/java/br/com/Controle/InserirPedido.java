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

public class InserirPedido extends HttpServlet {

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
            int id_cliente = (Integer.parseInt(request.getParameter("id_cliente")));
            int id_produto = (Integer.parseInt(request.getParameter("id_produto")));
    

            if (id_cliente == 0) {
                response.sendRedirect("CadastroPedido.jsp?status=1b");
                id_cliente = 0;
                id_cliente = 0;
            } else if (id_produto == 0) {
                response.sendRedirect("CadastroPedido.jsp?status=1b");
                id_produto = 0;
                id_produto = 0;
            
            } else {
                Pedido pedido = new Pedido(id_cliente, id_produto);
                PedidoDAO pedidoDAO = new PedidoDAO();
                pedidoDAO.adicionaPedido(pedido);
                String url = "/CadastroPedido.jsp?status=1a";
                ServletContext sc = getServletContext();
                RequestDispatcher rd = sc.getRequestDispatcher(url);
                rd.forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
            e.getMessage();
            String url = "/CadastroPassageiro.jsp?status=1b";
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
