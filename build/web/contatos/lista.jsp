<%-- 
    Document   : lista
    Created on : 26/03/2019, 21:38:38
    Author     : marcos
--%>

<%@page import="br.com.fatecpg.cadastro.Clientes"%>
<%@page import="br.com.fatecpg.cadastro.BD"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<% // operaçoes CRUD %>

<%
    if(request.getParameter("adicionar")!=null){
        if(request.getParameter("adicionar").equals("Sim")){
            Clientes c = new Clientes();
            c.setNome(request.getParameter("nome"));
            c.setRg(request.getParameter("rg"));
            c.setCpf(request.getParameter("cpf"));
            c.setEmail(request.getParameter("email"));
            c.setTelefone(request.getParameter("telefone"));
            c.setEndereco(request.getParameter("endereco"));
            BD.getClientes().add(c);
        }
        response.sendRedirect(request.getRequestURI());
    }
%>
         
         <%
             if(request.getParameter("excluirCliente")!=null){
                 int id = Integer.parseInt(request.getParameter("id"));
                 BD.getClientes().remove(id);
                 response.sendRedirect(request.getRequestURI()); 
             }
         %>
       
         <%
            if(request.getParameter("alterarCliente")!=null){
                int id = Integer.parseInt(request.getParameter("id"));
                Clientes c = new Clientes();
                c.setNome(request.getParameter("nomeCliente"));
                c.setCpf(request.getParameter("cpf"));
                c.setRg(request.getParameter("rg"));
                c.setEmail(request.getParameter("emailCliente"));
                c.setTelefone(request.getParameter("telefoneCliente"));
                c.setEndereco(request.getParameter("enderecoCliente"));
                BD.getClientes().set(id, c);
                response.sendRedirect(request.getRequestURI());
            }   
         %>
         
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>lista</title>
    </head>
    <body>
       <b>Menu: <a href="../index.jsp"">HOME</a> |
        <a href="lista.jsp">CLIENTES</a> |
        <a href="lista_fornecedores.jsp">FORNECEDORES</a>
        <h2>Clientes Cadastrados</h2>
        <table border="1">
            <tr><th>ID</th>
            <th>Nome</th>
            <th>Rg</th>
            <th>Email</th>
            <th>Telefone</th>
            <th>Endereço</th>
            <th>Comandos</th>
            </tr> 
            <%
                for (Clientes c: BD.getClientes()){
                    int id = BD.getClientes().indexOf(c); 
                
                 
             %>
             <tr>
                 <td><%=id%></td>
                 <td><%=c.getNome()%></td>
                 <td><%=c.getRg()%></td>
                 <td><%=c.getEmail()%></td>
                 <td><%=c.getTelefone()%></td>
                 <td><%=c.getEndereco()%></td>
                 <td>
                     <a href="alterar.jsp?id=<%=id%>">Alterar</a>
                     <a href="excluir.jsp?id=<%=id%>">Excluir</a>   
                      </td>
             </tr>
            
            
            <%}%>
        </table>
        <a href="adicionar.jsp"><button>Adicionar Cliente</button></a>
        
        
        
        
        
           
        </table
      
        
        