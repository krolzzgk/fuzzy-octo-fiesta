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
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="${pageContext.request.contextPath}/Content/js/libs/jquery/jquery.min.js" type="text/javascript"></script>
        <link href="${pageContext.request.contextPath}/Content/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>       
        <link href="${pageContext.request.contextPath}/Content/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="${pageContext.request.contextPath}/Content/css/estilo.css" rel="stylesheet" type="text/css"/>
        <title>Lista de Produtos</title>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <jsp:include page="../partials/header.html"></jsp:include>
                </div>
                <div class="row">
                     <hr class="col-xs-12">
                </div>
                <div class="row">
                <jsp:include page="../partials/menu.html"></jsp:include>
                    <div class="col-xs-12 col-md-10">
                    <c:forEach items="${listaProdutos}" var="p">
                        <div class="col-xs-12 col-md-4 info-produto">
                            <img class="img-responsive" src=<c:out value="${p.imgUrl}"></c:out>>
                            <p>${p.nome}</p>
                            <p>${p.descricao}</p>
                            <p><fmt:formatNumber value="${p.preco}" currencySymbol="R$ " type="currency"></fmt:formatNumber></p>
                            </div>
                    </c:forEach>
                </div>
            </div>
        </div>
        <script src="${pageContext.request.contextPath}/Content/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    </body>
</html>
