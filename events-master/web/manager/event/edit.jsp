<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    <title>Edit a post</title>
</head>
<body class="is-preload">
<%
    if (session.getAttribute("idAdmin") != null) {
%>
<div id="wrapper">
    <div id="main">
        <br><br><br>
        <p>
            <c:if test='${requestScope["message"] != null}'>
                <span class="message">${requestScope["message"]}</span>
            </c:if>
        </p>

        <form method="post">
            <fieldset>
                <legend style="margin-left: 50px"><h2 style="color:brown">EDIT POST</h2>
                </legend>
                <table style="margin-left: 50px; width: auto">
                    <tr>
                        <th>Event name</th>
                        <td><input type="text" name="eventName" id="eventName" size="50"
                                   value="${requestScope["event"].getName_event()}"></td>
                    </tr>
                    <tr>
                        <th>Image</th>
                        <td><input type="text" name="image" id="image" size="50"
                                   value="${requestScope["event"].getImage()}"></td>
                    </tr>
                    <tr>
                        <th>Image note</th>
                        <td><input type="text" name="imageNote" id="imageNote" size="50"
                                   value="${requestScope["event"].getImage_note()}"></td>
                    </tr>
                    <tr>
                        <th>Place</th>
                        <td><input type="text" name="place" id="place" size="50"
                                   value="${requestScope["event"].getPlace()}"></td>
                    </tr>
                    <tr>
                        <th>Day Organize</th>
                        <td>
                            <input type="date" name="dayOrganize" id="dayOrganize" value="${requestScope["event"].getDay_organize()}">
                        </td>
                    </tr>
                    <tr>
                        <th>Organizer</th>
                        <td><input type="text" name="organizer" id="organizer" size="50"
                                   value="${requestScope["event"].getOrganizer()}"></td>
                    </tr>
                    <tr>
                        <th>Introduce</th>
                        <td><textarea rows="4" cols="100" name="introduce" id="introduce">
                            ${requestScope["event"].getIntroduce()}
                        </textarea></td>
                    </tr>
                    <tr>
                        <th>Detailed Program</th>
                        <td><textarea rows="4" cols="100" name="detailedProgram" id="detailedProgram">
                            ${requestScope["event"].getDetailed_program()}
                        </textarea></td>
                    </tr>
                    <tr>
                        <th>Category</th>
                        <td><input type="text" name="category" id="category" size="50"
                                   value="${requestScope["event"].getCategory()}"></td>
                    </tr>
                    <tr>
                        <th></th>
                        <td>
                            <input type="submit" value="Edit a post" class="btn btn-success" >
                            <a href="/events" class="btn btn-success">Cancel</a>
                        </td>
                    </tr>
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