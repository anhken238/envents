<%--
  Created by IntelliJ IDEA.
  User: Nhat
  Date: 7/5/2019
  Time: 5:32 AM
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
    <title>Ramayana - Free Bootstrap 4 CSS Template</title>
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
    <script src="js/checkInput.js"></script>
    <script>
        function check(input) {
            if (input.value != document.getElementById("newPassword").value) {
                input.setCustomValidity("Password must be Matching");
            } else {
                input.setCustomValidity('');
            }
        }

        function checkLong(input) {
            if (input.value.length < 6) {
                input.setCustomValidity("Input must be more than 6 character");
            } else {
                input.setCustomValidity('');
            }
        }
        function checkNewPassword(input) {
            if (input.value == document.getElementById("password").value){
                input.setCustomValidity("New password must be different old password");
            }else {
                input.setCustomValidity('');
            }
        }
    </script>
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
                        <th>Username:</th>
                        <td><a name="username" id="username">${requestScope["admin"].getUsername()}</a></td>
                    </tr>
                    <tr>
                        <th>Password:</th>
                        <td><input type="password" name="password" id="password" placeholder="enter user password"></td>
                    </tr>
                    <tr>
                        <th>New Password:</th>
                        <td><input type="password" name="newPassword" id="newPassword" placeholder="enter new password"
                                   required oninput="checkLong(this),checkNewPassword(this)"></td>
                    </tr>
                    <tr>
                        <th>Re Enter New Password:</th>
                        <td><input type="password" name="reNewPassword" id="reNewPassword"
                                   placeholder="re enter new password" oninput="check(this)"></td>
                    </tr>
                    <tr>
                        <th></th>
                        <td><input type="submit" value="Update User" class="btn btn-success"></td>
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
