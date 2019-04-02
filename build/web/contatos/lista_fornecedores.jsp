<%-- 
    Document   : lista
    Created on : 26/03/2019, 21:38:38
    Author     : marcos
--%>

<%@page import="br.com.fatecpg.cadastro.BDF"%>
<%@page import="br.com.fatecpg.cadastro.Fornecedores"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    if(request.getParameter("adicionarf")!=null){
        if(request.getParameter("adicionarf").equals("Sim")){
            Fornecedores c = new Fornecedores();
            c.setNome(request.getParameter("nome"));
            c.setRazaosocial(request.getParameter("razaosocial"));
            c.setCnpj(request.getParameter("cnpj"));
            c.setEmail(request.getParameter("email"));
            c.setTelefone(request.getParameter("telefone"));
            c.setEndereco(request.getParameter("endereco"));
            BDF.getFornecedores().add(c);
        }
        response.sendRedirect(request.getRequestURI());
    }
%>


<% // operaçoes CRUD %>
         <%
             if(request.getParameter("excluirFornecedor")!=null){
                 int id = Integer.parseInt(request.getParameter("id"));
                 BDF.getFornecedores().remove(id);
                 response.sendRedirect(request.getRequestURI()); 
             }
         %>
         
        
         <%
            if(request.getParameter("alterarFornecedor") !=null){
                 int id = Integer.parseInt(request.getParameter("id"));
                 Fornecedores f = new Fornecedores();
                 f.setNome(request.getParameter("nomeFornecedor"));
                 f.setRazaosocial(request.getParameter("razaoSocial"));
                 f.setCnpj(request.getParameter("cnpj"));
                 f.setEmail(request.getParameter("emailFornecedor"));
                 f.setTelefone(request.getParameter("telefoneFornecedor"));
                 f.setEndereco(request.getParameter("enderecoFornecedor"));
                 BDF.getFornecedores().set(id, f);
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
        <b>Menu: <a href="../index.jsp">HOME</a> |  
        <a href="lista.jsp">CLIENTES</a> |
        <a href="lista_fornecedores.jsp">FORNECEDORES</a>
        
       
           <h2>Fornecedores Cadastrados</h2>
            <table border="1">
            <tr><th>ID</th>
            <th>Nome</th>
            <th>Razão Social</th>
            <th>Cnpj</th>
            <th>Email</th>
            <th>Telefone</th>
            <th>Endereço</th>
            <th>Comandos</th>
            </tr> 
         
            <%
                for (Fornecedores c: BDF.getFornecedores()){
                    int id = BDF.getFornecedores().indexOf(c); 
                
                 
             %>
             <tr>
                 <td><%=id%></td>
                 <td><%=c.getNome()%></td>
                 <td><%=c.getRazaosocial()%></td>
                 <td><%=c.getCnpj()%></td>
                 <td><%=c.getEmail()%></td>
                 <td><%=c.getTelefone()%></td>
                 <td><%=c.getEndereco()%></td>
                 <td>
                     <a href="alterar_fornecedor.jsp?id=<%=id%>">Alterar</a>
                     <a href="excluir_fornecedor.jsp?id=<%=id%>">Excluir</a>   
                 </td>
             </tr>
            
            
            <%}%>
        </table>
         <a href="adicionar_fornecedor.jsp"><button>Adicionar Fornecedor</button></a>
      
        
        