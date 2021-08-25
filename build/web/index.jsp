<%-- 
    Document   : index
    Created on : 25/08/2021, 18:53:13
    Author     : uliss
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculadora JSP</title>
    </head>
    <body>
        <h1>Calculadora Servlet-JSP</h1>
        <table>
            <tr>
                <td>Aluno:  </td>
                <td> Ulisses Silva de Sousa</td>
            </tr>
            <br/>
            <tr>
                <td>Matrícula:  </td>
                <td> 418441</td>
            </tr>
        </table>
        <hr/>
        <h2>Insira os números na ordem da operação desejada e clique em calcular</h2>
        <form action="Calculadora" method="post">
            <label for="n1">Primeiro número:</label><br/>
            <input type="number" name="n1" step="any" required/>
            <br/><br/>
            <label for="n2">Segundo número:</label><br/>
            <input type="number" name="n2" step="any" required/>
            <br/><br/>
            <label for="operacao">Operação:</label><br/>
            <select name="operacao">
                <option value="somar">+</option>
                <option value="subtrair">-</option>
                <option value="multiplicar">×</option>
                <option value="dividir">÷</option>
            </select>
            <br/><br/>
            <input type="submit" value="Calcular"/>
            <input type="reset" value="Resetar Valores"/>
            <br/><br/>
            
            <% 
                if (request.getAttribute("mensagem") != null) { 
            %>
            <div><strong>Resultado: <%= request.getAttribute("mensagem")%></strong></div>
            <%
                } else {
            %>
            <div><strong>Resultado: </strong></div>
            <%
                }
            %>
        </form>
    </body>
</html>
