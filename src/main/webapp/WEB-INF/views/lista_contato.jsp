<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html>
<head lang="ptbr">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Bem vindo a EmpONE">
    <meta name="key-words" content="empone, one, engenharia">
    <link rel="stylesheet" href="style.css">
    <title>EmpONE</title>
    <script src="https://kit.fontawesome.com/34c8824d33.js" crossorigin="anonymous"></script>
</head>
<body>
    <header>
        <nav id="navbar">
            <div class="container">
                <ul>
                    <li><a href="index.html"><img height="25px" width="25px" src="img/empone.png" alt="logo representado por pontes com a palavra one"></a></li>
                    <li><a href="index.html">Início</a></li>
                    <li><a class="pagina-atual" href="index-contato.html">Contato</a></li>
                    <li><a href="index-sobre.html">Sobre</a></li>
                    <li><a href="index-contato.html">Trabalhe conosco</a></li>
                    <li><a href="index-contato.html">Suporte</a></li>    
                <ul>
            </div>
        </nav>
    </header>
    <section id="lista-contato">
        <div class="container">
            <h1 class="cabecalho-lista-contato">Lista de contatos</h1>
        <table class="tabela-contato">
<thead>
<tr>
<td>Nome</td>
<td>Endereço</td>
<td>E-mail</td>
<td>Mensagem</td>
<td colspan="2" id="tabela-contato-acao">Ação</td>
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
        </div>
    </section>

    <section id="caracteristicas">
        <div class="container">
            <div class="box bg-claro">
                <i class="fas fa-envelope"></i>
                <h2>E-mails</h2>
                <p>emponeeng1@empone.com.br</p>
                <p>emponeeng2@empone.com.br</p>
                <p>emponeeng3@empone.com.br</p>
            </div>
            <div class="box bg-principal">
                <i class="fab fa-facebook"></i>
                <i class="fab fa-instagram"></i>
                <i class="fab fa-twitter"></i>
                <h2>Redes sociais</h2>
                <p>Facebook: empone/facebook.com</p>
                <p>Instagram: @empone</p>
                <p>Twitter: @empone</p>
            </div>
            <div class="box bg-claro">
                <i class="fas fa-phone-alt"></i>
                <h2>Telefones/Whatsapp</h2>
                <p>(07) 4190-0461</p>
                <p>(07) 5994-7016</p>
                <p>(07) 8174-6357</p>
            </div>
        </div>
    </section>
    <footer class="roda-pe">
        <h3>Copyright &copy; 2021 EmpONE Inc. Todos os direitos reservados.</h3>
        <ul> 
            <li><a href="#">Política de Privacidade</a></li>
            <li><a href="#">Política de Cookies</a></li>
            <li><a href="#">Termos de uso</a></li>
        </ul>
    </footer>
</body>