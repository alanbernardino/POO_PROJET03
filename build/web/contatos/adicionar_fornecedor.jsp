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
        <title>Adicionar - Fornecedor</title>
    </head>
    <body>
        <h1>Fornecedor</h1>
        <h2>Adicionar</h2>
        <form action="lista_fornecedores.jsp">
            Nome:
            <br/><input type="text" name="nome"/>
            <br/>Razão Social:
            <br/><input type="text" name="razaosocial"/>
            <br/>CNPJ:
            <br/><input type="text" name="cnpj"/>
            <br/>E-mail:
            <br/><input type="text" name="email"/>
            <br/>Telefone:
            <br/><input type="text" name="telefone"/>
            <br/>Endereço:
            <br/><input type="text" name="endereco"/>
            <hr/>   
            <h2>Deseja incluir o novo contato?</h2>    
            <input type="submit" name="adicionarf" value="Sim"/>
            <input type="submit" name="adicionarf" value="Não"/>
        </form>
    </body>
</html>
