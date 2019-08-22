<%@ page import="java.text.SimpleDateFormat" %>
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
                <a class="nav-link" href="#services">Nổi Bật</a>
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


<!--================ Showcase section ===================-->
<div id="showcase">
    <div class="container showcase">
        <div class="full-width text-center showcase-caption mt-30">
            <h4>We Are #4</h4>
            <h1>Weightlifting Team</h1>
            <p>A single place to share, curate and discover visual that tells a story.</p>
            <div class="showcase-button">
                <a href="#features" class="button-style showcase-btn">
                    Sự Kiện Sắp Diễn Ra
                </a>
                <a href="#services" class="button-style showcase-btn">
                    Sự Kiện Nổi Bật
                </a>
                <a href="#blog" class="button-style showcase-btn">
                    Sự Kiện Đã Diễn Ra
                </a>
            </div>
        </div>
    </div>
</div>
<%--EDIT NEW EVENT *************************************************--%>
<section class="grid3d vertical portfolio" id="portfolio">
    <div class="container" id="features">
        <div class="teams-heading text-center col-md-8 offset-md-2 col-sm-12 text-center">
            <h2 class="teams-heading"><a href="/home?action=newevent" style="">SỰ KIỆN SẮP DIỄN RA</a></h2>
            <p class="heading_space">Các sự kiện sắp diễn ra trong thời gian tới
            </p>
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

<!--================== Team section =====================-->
<%--EDIT POPULATE EVENT *************************************************--%>
<div class="features-section-2">
    <div class="container-fluid" id="services">
        <div class="row">
            <div class="col-sm features-section-2-col-1 hover-effect" <%--style="background-image: url("${requestScope["populateEvent"].getImage}"--%>>
                <img class="" style="width:100%; height: 100%;" src="${requestScope["populateEvent"].getImage()}"
                     alt="img01"/>
            </div>
            <div class="col-sm features-section-2-col-2 ">
                <div class="features-section-2-col-2__content">
                    <h2>
                        <a href="/events?action=view&id=${requestScope["populateEvent"].getId()}">
                            ${requestScope["populateEvent"].getName_event()}
                        </a>
                    </h2>
                    <p>
                        ${requestScope["populateEvent"].getIntroduce()}
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>

<!--================== Blog section =====================-->
<div id="blog" class="blog">
    <div class="container">
        <h2 align="center" class="teams-heading"><a href="/home?action=oldevent">SỰ KIỆN ĐÃ DIỄN RA</a></h2>
        <br>
        <div class="row">
            <c:forEach items='${requestScope["eventListOld"]}' var="eventOld">
                <div class="col-sm">
                    <div class="blog-item-box">
                        <figure class="blog-item">
                            <div class="image">
                                <img src="${eventOld.getImage()}" alt="image" style="width: 100%;height: 100%">
                                <div>
                                    <span class="month">
                                            ${eventOld.getDayOrganize()}
                                    </span>
                                </div>
                            </div>
                            <figcaption>
                                <h5>${eventOld.getName_event()}"</h5>
                                <p>${eventOld.getIntroduce()}"</p>
                                <a href="/events?action=view&id=${eventOld.getId()}" class="read-more">Read More</a>
                            </figcaption>
                        </figure>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</div>

<!--================== Contact section =====================-->

<div id="contact" class="contact">
    <div class="container">
        <div class="row">
            <div class="col-sm-6 col-md-5 offset-md-2 col-lg-6 offset-lg-0">
                <h1 class="contact-heading">We Are #4</h1>
                <p>
                    A single place to share, curate and discover visual that tells a story.<br>
                    A single place to share, curate and discover visual that tells a story.
                </p>

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

