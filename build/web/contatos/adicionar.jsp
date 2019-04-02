<%-- 
    Document   : index
    Created on : 26/03/2019, 21:38:38
    Author     : marcos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Alan -->
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Adicionar - Cliente</title>
    </head>
    <body>
        <h1>Cliente</h1>
        <h2>Adicionar</h2>
        <form action="lista.jsp">
            Nome:
            <br/><input type="text" name="nome"/>
            <br/>Rg:
            <br/><input type="text" name="rg"/>
            <br/>CPF:
            <br/><input type="text" name="cpf"/>
            <br/>E-mail:
            <br/><input type="text" name="email"/>
            <br/>Telefone:
            <br/><input type="text" name="telefone"/>
            <br/>Endereço:
            <br/><input type="text" name="endereco"/>
            <hr/>   
            <h2>Deseja incluir o novo contato?</h2>    
            <input type="submit" name="adicionar" value="Sim"/>
            <input type="submit" name="adicionar" value="Não"/>
        </form>
    </body>
</html>
