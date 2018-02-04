<%@page contentType="text/html" pageEncoding="UTF-8" language="java" isErrorPage="true" import="java.io.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>:: ERRO ::</title>
    </head>
    <body>
        <h1>:: ERRO ::</h1>

        <form name="formErro" action="index.jsp">
            <table border="1" width="1" cellspacing="1" cellpadding="1">
                <tbody>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="Clique aqui para tentar novamente" /></td>
                    </tr>
                    <tr>
                        <td>Exceção:</td>
                        <td><%=exception%></td>
                    </tr>
                    <tr>
                        <td>StackTrace:</td>
                        <td><%
                            StringWriter sw = new StringWriter();
                            PrintWriter pw = new PrintWriter(sw);
                            exception.printStackTrace(pw);
                            out.println(sw);
                            pw.close();
                            sw.close();
                            %>
                        </td>
                    </tr>
                </tbody>
            </table>
            <br>
            <hr>
            <a href="index.jsp">Voltar para a página inicial</a>
        </form>
    </body>
</html>
