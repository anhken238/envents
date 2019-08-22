<%--
  Created by IntelliJ IDEA.
  User: Nhat
  Date: 7/2/2019
  Time: 5:17 PM
  Email: nhatnpa2508@gmail.com 
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700" rel="stylesheet">
        <title>Admin profile</title>
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
</head>
<body class="is-preload">
<div id="wrapper">
    <div id="main">
        <br><br><br>
        <form method="post">
        <fieldset>
            <legend style="margin-left: 50px"><h2 style="color:brown">INFORMATION</h2></legend>
            <table style="margin-left: 50px; width: auto">
                <tr>
                    <th>ID:</th>
                    <td>${requestScope["admin"].getId()}</td>
                </tr>
                <tr>
                    <th>Username:</th>
                    <td>${requestScope["admin"].getUsername()}</td>
                </tr>
                <tr>
                    <th>Birthday:</th>
                    <td>${requestScope["admin"].getDayOfBirth()}</td>
                </tr>
                <tr>
                    <th>Phone Number:</th>
                    <td>${requestScope["admin"].getPhone()}</td>
                </tr>
                <tr>
                    <th>Email:</th>
                    <td>${requestScope["admin"].getEmail()}</td>
                </tr>
                <tr>
                    <th>Address</th>
                    <td>${requestScope["admin"].getAddress()}</td>
                </tr>
                <tr>
                    <th>Create Date</th>
                    <td>${requestScope["admin"].getCreate_date()}</td>
                </tr>
                <tr>
                    <th>Last edited date</th>
                    <td>${requestScope["admin"].getLast_edited_date()}</td>
                </tr>
            </table>
            <br>
            <a href="/admins?action=changePassword&id=${sessionScope['idAdmin']}" class="btn btn-success" style="margin-left: 50px;">Change Password</a>
            <a href="/admins?action=edit&id=${sessionScope['idAdmin']}" class="btn btn-success" style="margin-left: 50px;">Edit Information</a>
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
            <!-- Featured Posts -->
            <!-- Scripts -->
            <!-- Bootstrap core JavaScript -->
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
</body>
</html>
