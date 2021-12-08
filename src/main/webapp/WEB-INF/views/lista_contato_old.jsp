<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>  
<%@ page import="br.empone.entity.Contato" language="java"%>
<%@ page import="java.util.List" language="java"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Listar contatos</title>
</head>
<body>
<table>
<thead>
<tr>
<td>Nome</td>
<td>Endereço</td>
<td>E-mail</td>
<td>Mensagem</td>
<td>Ação</td>
</tr>
</thead>
<tbody>
<c:forEach var = "contato" items = "${contatos}">
<tr>
<td>${contato.nome}</td>
<td>${contato.endereco}</td>
<td>${contato.email}</td>
<td>${contato.descricao}</td>
<td><a href="ContatoServlet?acao=editar&id=${contato.id}">Editar</a></td>
<td><a href="ContatoServlet?acao=remover&id=${contato.id}">Remover</a></td>
</tr>
</c:forEach>
</tbody>
</table>
</body>
</html>