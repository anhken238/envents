<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Nhat
  Date: 7/4/2019
  Time: 4:49 PM
  Email: nhatnpa2508@gmail.com
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
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

        table td {
            padding-bottom: 1px;
            padding-top: 1px;
        }
    </style>
    <title>List Admin</title>
</head>
<body class="is-preload">
<%
    if (session.getAttribute("idAdmin") != null) {
%>
<div id="wrapper">
    <div id="main">
        <br><br><br>
        <form method="post">
            <fieldset>
                <legend style="margin-left: 50px"><h2 style="color:brown">ADMIN TEAM</h2>
                </legend>
                <table style="margin-left: 50px; width: auto">
                    <tr>
                        <th>STT</th>
                        <th>Full Name</th>
                        <th>Date of Birth</th>
                        <th>Phone Number</th>
                        <th>Email</th>
                        <th>Address</th>
                        <th>Create Date</th>
                        <th>Last Edit Date</th>
                        <th>EDIT</th>
                    </tr>
                    <c:forEach items='${requestScope["admins"]}' var="admin">
                        <tr>
                            <td><a>${admin.getId()}</a></td>
                            <td>${admin.getFullName()}</td>
                            <td>${admin.getDayOfBirth()}</td>
                            <td>${admin.getPhone()}</td>
                            <td>${admin.getEmail()}</td>
                            <td>${admin.getAddress()}</td>
                            <td>${admin.getCreate_date()}</td>
                            <td>${admin.getLast_edited_date()}</td>
                            <td><a href="/admins?action=edit&id=${admin.getId()}">Info </a>|<a
                                    href="/admins?action=changePassword&id=${admin.getId()}"> Password</a></td>
                        </tr>
                    </c:forEach>
                </table>
            </fieldset>
        </form>
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
