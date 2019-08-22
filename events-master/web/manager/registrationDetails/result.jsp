<%--
  Created by IntelliJ IDEA.
  User: Hai
  Date: 7/4/2019
  Time: 2:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head><meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700" rel="stylesheet">
    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="assets/css/templatemo-style.css">
    <link rel="stylesheet" href="assets/css/owl.css">
    <style type="text/css">
        body {
            background-image: url(https://cdn.pixabay.com/photo/2017/07/31/11/44/laptop-2557576_960_720.jpg);
            height: 100%;
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
        }
    </style>
    <title>Result</title>
</head>
<body class="is-preload">
<%
    if (session.getAttribute("idAdmin") != null) {
%>
<div id="wrapper">
    <div id="main">
        <br><br><br>
        <br>
<h3 style="margin-left: 50px;">
    <%=request.getAttribute("Message")%>
</h3>
<h3><a href="/registration" type="button" class="btn btn-success" style="margin-left: 50px;">Back to Registrations list</a></h3>
    </div>
    <div id="sidebar" style="width: 350px">
        <div class="inner" style="width: 340px">
            <img src="assets/images/girl.jpg" alt="featured one" style="border-radius:90%;-moz-border-radius:90%;
            -webkit-border-radius:90%;margin-top: 18px;width:256px">
            <nav id="menu">
                <ul>
                    <li>${sessionScope['Admin']} MANAGEMENT</li>
                </ul>
                <ul>
                    <li><a href="/events">Sự kiện</a></li>
                    <li><span class="opener">Danh sách đăng ký</span>
                        <ul>
                            <li><a href="/registration">Danh sách chi tiết</a></li>
                            <li><a href="/registration?action=viewSubscriberList">Danh sách người đăng ký</a></li>
                        </ul>
                    </li>
                    <li><a href="/admins?action=view&id=${sessionScope['idAdmin']}">Quản lý tài khoản</a></li>
                    <li><a href="/logout">Logout</a></li>
                </ul>
            </nav>
            <script src="vendor/jquery/jquery.min.js"></script>
            <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
            <script src="assets/js/browser.min.js"></script>
            <script src="assets/js/breakpoints.min.js"></script>
            <script src="assets/js/transition.js"></script>
            <script src="assets/js/owl-carousel.js"></script>
            <script src="assets/js/custom.js"></script>
        </div>
    </div>
</div>
<%}%>
</body>
</html>

