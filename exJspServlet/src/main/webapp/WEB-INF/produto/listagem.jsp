<%-- 
    Document   : listagem
    Created on : 02/09/2017, 21:17:19
    Author     : Karol
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../../Content/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
        <link href="../../Content/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>Lista de Produtos</title>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-5">
                    <c:forEach items="${listaProdutos}" var="p">
                        <div class="col-xs-12 col-md-3">
                            <div><c:out value="${p.id}"></c:out></div>
                            <div><c:out value="${p.nome}"></c:out></div>
                            <div><c:out value="${p.descricao}"></c:out></div>
                            <div><c:out value="${p.preco}"></c:out></div>
                        </div>
                    </c:forEach>
                    </div>
                </div>
                <script src="../../Content/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
        </body>
    </html>
