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
    <title>EmpONE</title>
    <link rel="stylesheet" href="style.css">
    <script src="https://kit.fontawesome.com/34c8824d33.js" crossorigin="anonymous"></script>
</head>
<body>
    <header>
        <nav id="navbar">
            <div class="container">
                <ul>
                    <li><a href="index.html"><img height="25px" width="25px" src="img/empone.png" alt="logo representado por pontes com a palavra one"></a></li>
                    <li><a href="index.html">In�cio</a></li>
                    <li><a class="pagina-atual" href="index-contato.html">Contato</a></li>
                    <li><a href="index-sobre.html">Sobre</a></li>
                    <li><a href="#">Trabalhe conosco</a></li>
                    <li><a href="#">Suporte</a></li>    
                <ul>
            </div>
        </nav>
    </header>
    <seletion id="form-contato">
        <div class="container">
            <h1 class="cabecalho-form">Atualizando o contato...</h1>
            <p class="cabecalho-form">Estamos quase l�! Por favor, preencha o formul�rio: </p>
        <form action="ContatoServlet" method="POST">
            <div class="campos-form">
                <label for="nome">Nome: </label>
                <input type="text" name="nome" id="nome" value="${contato.nome}">
                <input type="hidden" name="id" value="${contato.id}">
            </div>
            <div class="campos-form">
                <label for="endereco">Endere�o (Estado): </label>
                <input type="text" name="endereco" id="endereco" value="${contato.endereco}">
            </div>
            <div class="campos-form">
                <label for="email">E-mail: </label>
                <input type="text" name="email" id="email" value="${contato.email}">
            </div>
            <div class="campos-form">
                <label for="descricao">Descri��o do que voc� deseja: </label>
                <textarea type="text" name="descricao" id="descricao">${contato.descricao}</textarea>
            </div>
            <button class="btn" type="submit">Enviar</button>
        </form>
        </div>
    </seletion>

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
            <li><a href="#">Pol�tica de Privacidade</a></li>
            <li><a href="#">Pol�tica de Cookies</a></li>
            <li><a href="#">Termos de uso</a></li>
        </ul>
    </footer>
</body>