<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Nhat
  Date: 7/2/2019
  Time: 4:56 PM
  Email: nhatnpa2508@gmail.com
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!doctype html>
<html class="no-js" lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1"/>
    <meta name="author" content="Theme Industry">
    <!-- description -->
    <meta name="description" content="boltex">
    <!-- keywords -->
    <meta name="keywords" content="">
    <title>Weightlifting Team</title>
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700%7CRoboto%7CJosefin+Sans:100,300,400,500"
          rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="css/bootstrap.min.css">

    <!-- <link rel="stylesheet" href="css/bootstrap3.min.css"> -->
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/slick.css">
    <link rel="stylesheet" href="css/cubeportfolio.min.css">
    <link rel="stylesheet" type="text/css" href="css/component.css"/>

</head>
<body>
<nav class="navbar navbar-expand-lg fixed-top activate-menu navbar-light bg-light">
    <a class="navbar-brand" href="/home">Weightlifting Team</a>
    <form method="post" action="/events?action=search">
        <input name="search" type="text" placeholder="Search..." size="40">&nbsp
        <input type="submit" value="Search" class="button-style">
    </form>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav ml-auto">
            <li>
                <a class="nav-link" href="/home">Home</a>
            </li>
            <li>
                <a class="nav-link" href="/home#services">Nổi Bật</a>
            </li>
            <li>
                <a class="nav-link" href="/home?action=newevent">Sắp Diễn Ra</a>
            </li>
            <li>
                <a class="nav-link" href="/home?action=oldevent">Đã Diễn Ra</a>
            </li>
            <li>
                <a class="nav-link" href="/home#contact">Liên Hệ</a>
            </li>
        </ul>
    </div>
</nav>
<div>.</div>
<div>.</div>
<div>.</div>
<!--================== Portfolio section =====================-->
<section class="grid3d vertical portfolio" id="portfolio">
    <div class="container" id="features">
        <div class="teams-heading text-center col-md-8 offset-md-2 col-sm-12 text-center">
            <h2 class="teams-heading">SỰ KIỆN SẮP DIỄN RA</h2>
        </div>
    </div>

    <div class="grid-wrap">
        <div class="grid">
            <div class="row">
                <c:forEach items='${requestScope["eventListNew"]}' var="eventNew">
                    <div class="col-sm">
                        <div class="blog-item-box">
                            <figure class="blog-item">
                                <div class="image">
                                    <img src="${eventNew.getImage()}" alt="image" style="width: 100%;height: 100%">
                                    <div>
                                        <span class="month">
                                                ${eventNew.getDayOrganize()}
                                        </span>
                                    </div>
                                </div>
                                <figcaption>
                                    <h5>${eventNew.getName_event()}"</h5>
                                    <p>${eventNew.getIntroduce()}"</p>
                                    <a href="/events?action=view&id=${eventNew.getId()}" class="read-more">Read More</a>
                                </figcaption>
                            </figure>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>

    </div><!-- /grid-wrap -->

    <div class="content gallery-content">
        <span class="loading"></span>
        <span class="icon close-content">&times;</span>
    </div>
</section>

<!--================== Contact section =====================-->

<div id="contact" class="contact">
    <div class="container">
        <div class="row">
            <div class="col-sm-6 col-md-5 offset-md-2 col-lg-6 offset-lg-0">
                <h1 class="contact-heading">Lets Get In Touch</h1>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cum illum ratione atque praesentium
                    laudantium
                    quaerat laborum consecteturLorem ipsum dolor sit amet, consectetur adipisicing elit.</p>

                <div class="row margin-15px-bottom">
                    <div class="col-sm-1 no-padding">
                        <div class="contact-icon text-blue">
                            <i class="fa fa-map-marker" aria-hidden="true"></i>
                        </div>
                    </div>
                    <div class="col-sm-11">
                        <p class="text-small">San Francisco, CA 560 Bush St &amp; 20th Ave,<br> Apt 5 San Francisco,
                            230909</p>
                    </div>
                </div>

                <div class="row margin-15px-bottom">
                    <div class="col-sm-1 no-padding">
                        <div class="contact-icon text-blue">
                            <i class="fa fa-phone" aria-hidden="true"></i>
                        </div>
                    </div>
                    <div class="col-sm-11">
                        <p class="text-small">+01 2323 7328 322<br>+01 2323 7328 322</p>
                    </div>
                </div>

                <div class="row margin-15px-bottom">
                    <div class="col-sm-1 no-padding">
                        <div class="contact-icon text-blue">
                            <i class="fa fa-globe" aria-hidden="true"></i>
                        </div>
                    </div>
                    <div class="col-sm-11 xs-margin-50px-bottom">
                        <p class="text-small">email@demo.com<br>www.demo.com</p>
                    </div>
                </div>
            </div>
            <%--            <div class="col-sm-6 col-md-5 offset-md-2 col-lg-6 offset-lg-0">
                            <!-- Starting of ajax contact form -->
                            <form class="contact__form" method="post" action="/registration?action=create">
                                <!-- Element of the ajax contact form -->
                                <div class="row">
                                    <div class="col-md-6 form-group">
                                        <input name="name" type="text" class="form-control" placeholder="Name" required>
                                    </div>
                                    <div class="col-md-6 form-group">
                                        <input name="email" type="email" class="form-control" placeholder="Email" required>
                                    </div>
                                    <div class="col-md-6 form-group">
                                        <input name="phone" type="number" class="form-control" placeholder="Phone" required>
                                    </div>
                                    <div class="col-md-6 form-group">
                                        <input name="subject" type="text" class="form-control" placeholder="Subject" required>
                                    </div>
                                    <div class="col-12 form-group">
                                        <textarea name="message" class="form-control" rows="3" placeholder="Message"
                                                  required></textarea>
                                    </div>
                                    <div class="col-12">
                                        <input name="submit" type="submit" class="button-style" value="Send Message">
                                    </div>
                                </div>
                            </form>/posts?action=createComment&id=${requestScope["posts"].getId()}
                            <!-- Ending of ajax contact form -->
                            <!-- Starting of successful form message -->
                            <div class="row">
                                <div class="col-12">
                                    <div class="alert alert-success contact__msg" style="display: none" role="alert">
                                        Your message was sent successfully.
                                    </div>
                                </div>
                            </div>
                            <!-- Ending of successful form message -->
                        </div>--%>
        </div>
    </div>
</div>
<footer class="text-center pos-re" style="padding-top: 0px;padding-bottom: 10px">
    <div class="container">
        <div class="footer__box" style="padding-top: 10px">
            <!-- Logo -->
            <a class="logo" href="#">
                <img src="img/logo-light.png" alt="logo">
            </a>
            <p>&copy; weightlifting Team</p>
        </div>
    </div>
</footer>
<script src="./js/jquery.min.js"></script>
<script src="./js/modernizr.custom.js"></script>
<script src="./js/bootstrap.min.js"></script>
<script src="./js/slick.min.js"></script>
<script src="./js/scrollreveal.min.js"></script>
<script src="./js/jquery.cubeportfolio.min.js"></script>
<script src="./js/jquery.matchHeight-min.js"></script>
<script src="./js/masonry.pkgd.min.js"></script>
<script src="./js/jquery.flexslider-min.js"></script>
<script src="./js/classie.js"></script>
<script src="./js/helper.js"></script>
<script src="./js/grid3d.js"></script>
<script src="./js/script.js"></script>
</body>
</html>

