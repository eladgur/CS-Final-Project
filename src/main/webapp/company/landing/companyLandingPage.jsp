<%@ page import="utils.Constants" %>
<%@ page import="utils.SessionUtils" %>
<%@ page import="model.Company" %>
<%@ page import="model.Offer" %><%--
  Created by IntelliJ IDEA.
  User: eladg
  Date: 13/08/18
  Time: 13:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <% Company company = SessionUtils.getCompanyFromSession(request); %>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css"
          integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
    <link rel="stylesheet" href="./companyLandingPage.css">
</head>
<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-nav-demo"
                    aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a href="#" class="navbar-brand"><span class="glyphicon glyphicon-picture"></span> <%= company.getName() %>
            </a>
        </div>
        <div class="collapse navbar-collapse" id="bs-nav-demo">
            <ul class="nav navbar-nav">
                <li><a href="/">Home</a></li>
                <li><a href="#">About</a></li>
                <li><a href="#">Contact</a></li>
                <li><a href="./companySettingsPage.jsp">Settings</a></li>
            </ul>
        </div>
    </div>
</nav>

<div class="container">

    <div class="jumbotron">
        <h1><i class="fas fa-gift"></i></span> Your offers</h1>
        <p>click on a picture to see more details</p>
    </div>

    <%--Need to test this--%>
        <% for (Offer offer : company.getOffers()) { %>
    <div class="col-lg-4 col-sm-6">
        <div class="thumbnail">
            <img src=<%=offer.getPictureURL()%>>
        </div>
    </div>
        <% } %>
    <%--Stam template pictures--%>
    <div class="row">
        <div class="col-lg-4 col-sm-6">
            <div class="thumbnail">
                <img src="http://i.imgur.com/qK42fUu.jpg">
            </div>
        </div>
        <div class="col-lg-4 col-sm-6">
            <div class="thumbnail">
                <img src="https://images.unsplash.com/photo-1435771112039-1e5b2bcad966?dpr=2&fit=crop&fm=jpg&h=825&q=50&w=1450">
            </div>
        </div>
        <div class="col-lg-4 col-sm-6">
            <div class="thumbnail">
                <img src="https://images.unsplash.com/photo-1442406964439-e46ab8eff7c4?dpr=2&fit=crop&fm=jpg&h=825&q=50&w=1450">
            </div>
        </div>
        <div class="col-lg-4 col-sm-6">
            <div class="thumbnail">
                <img src="https://images.unsplash.com/photo-1439524970634-649c37a69e5c?ixlib=rb-0.3.5&q=80&fm=jpg&crop=entropy&w=1450&h=825&fit=crop&s=bfda9916c885869b43b70738693428d9">
            </div>
        </div>
        <div class="col-lg-4 col-sm-6">
            <div class="thumbnail">
                <img src="https://images.unsplash.com/photo-1444090542259-0af8fa96557e?dpr=2&fit=crop&fm=jpg&h=825&q=50&w=1450">
            </div>
        </div>
        <div class="col-lg-4 col-sm-6">
            <div class="thumbnail">
                <img src="https://images.unsplash.com/photo-1434543177303-ef2cc7707e0d?dpr=2&fit=crop&fm=jpg&h=825&q=50&w=1450">
            </div>
        </div>
        <div class="col-lg-4 col-sm-6">
            <div class="thumbnail">
                <img src="https://images.unsplash.com/photo-1436262513933-a0b06755c784?dpr=2&fit=crop&fm=jpg&h=825&q=50&w=1450">
            </div>
        </div>
        <div class="col-lg-4 col-sm-6">
            <div class="thumbnail">
                <img src="https://images.unsplash.com/photo-1439396087961-98bc12c21176?dpr=2&fit=crop&fm=jpg&h=825&q=50&w=1450">
            </div>
        </div>
        <div class="col-lg-4 col-sm-6">
            <div class="thumbnail">
                <img src="https://images.unsplash.com/photo-1439694458393-78ecf14da7f9?dpr=2&fit=crop&fm=jpg&h=825&q=50&w=1450">
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-2.1.4.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</body>
</html>