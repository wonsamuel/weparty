<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${param.title }</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

    <!--Template style -->
    <link rel="stylesheet" type="text/css" href="${path }/resources/css/animate.css" />
    <%-- <link rel="stylesheet" type="text/css" href="${path }/resources/css/bootstrap.min.css" /> --%>
    <link rel="stylesheet" type="text/css" href="${path }/resources/css/fonts.css" />
    <link rel="stylesheet" type="text/css" href="${path }/resources/css/flaticon.css" />
    <link rel="stylesheet" type="text/css" href="${path }/resources/css/font-awesome.css" />
    <link rel="stylesheet" type="text/css" href="${path }/resources/css/owl.carousel.css">
    <link rel="stylesheet" type="text/css" href="${path }/resources/css/owl.theme.default.css">
    <link rel="stylesheet" type="text/css" href="${path }/resources/css/magnific-popup.css">
    <link rel="stylesheet" type="text/css" href="${path }/resources/css/player.css">
    <link rel="stylesheet" type="text/css" href="${path }/resources/css/reset.css" />
    <link rel="stylesheet" type="text/css" href="${path }/resources/css/style1.css" />
    <%-- <link rel="stylesheet" type="text/css" href="${path }/resources/css/style.css" /> --%>
    <link rel="stylesheet" type="text/css" href="${path }/resources/css/responsive.css" />
    
    <!--favicon-->
    <link rel="shortcut icon" type="image/png" href="${path }/resources/images/favicon(weparty).png" />

    
<%--     <script src="${path }/resources/js/jquery-3.3.1.min.js"></script>
    <script src="${path }/resources/js/bootstrap.min.js"></script> --%>
    <script src="${path }/resources/js/modernizr.js"></script>
    <script src="${path }/resources/js/jquery.menu-aim.js"></script>
    <script src="${path }/resources/js/imagesloaded.pkgd.min.js"></script>
    <script src="${path }/resources/js/jquery.magnific-popup.js"></script>
    <script src="${path }/resources/js/jquery.countTo.js"></script>
    <script src="${path }/resources/js/jquery.inview.min.js"></script>
    <script src="${path }/resources/js/isotope.pkgd.min.js"></script>
    <script src="${path }/resources/js/owl.carousel.js"></script>
    <script src="${path }/resources/js/jquery.downCount.js"></script>
<%--     <script src="${path }/resources/js/player.js"></script> --%>
<%--     <script src="${path }/resources/js/music.js"></script> --%>
    <script src="${path }/resources/js/custom.js"></script>
</head>
<body>

<header>
		<!--  navi wrapper Start -->
    <nav class="cd-dropdown  d-block d-sm-block d-md-block d-lg-none d-xl-none">
        <h2><a href="index.html"><img style="width: 170px; height: 60px;" src="${path }/resources/images/unionLogo(color).png" alt="img"></a></h2>
        <a href="#0" class="cd-close">Close</a>
        <ul class="cd-dropdown-content">
<!--             <li>
                <form class="cd-search">
                    <input type="search" placeholder="Search...">
                </form>
            </li> -->
            <li>
                <a href="#">About us</a>
<!--                 <ul class="cd-secondary-dropdown icon_menu is-hidden">
                    <li class="go-back"><a href="#0">Menu</a></li>
                    <li><a href="index.html">index </a></li>
                    <li><a href="index2.html">index II</a></li>
                </ul> -->
            </li>
            <li><a href="about_us.html">Events </a></li>
            <!-- <li class="has-children">
                <a href="#">pages</a>
                <ul class="cd-secondary-dropdown icon_menu is-hidden">
                    <li class="go-back"><a href="#0">Menu</a></li>
                    <li><a href="events.html">events </a></li>
                    <li><a href="event_single.html">event single</a></li>
                    <li><a href="error.html">error 404</a></li>
                    <li><a href="reservation.html">reservation</a></li>
                    <li><a href="services.html">services</a></li>
                </ul>
            </li> -->
            <!-- .has-children -->
            <li>
                <a href="#">gallery</a>
<!--                 <ul class="cd-secondary-dropdown icon_menu is-hidden">
                    <li class="go-back"><a href="#0">Menu</a></li>
                    <li><a href="gallery_3_drid.html">gallery III</a></li>
                    <li><a href="gallery_4_grid.html">gallery IV</a></li>
                </ul> -->
            </li>
            <li>
                <a href="#">Party Planner</a>
                <!-- <ul class="cd-secondary-dropdown icon_menu is-hidden">
                    <li class="go-back"><a href="#0">Menu</a></li>
                    <li><a href="blog_single.html">blog single</a></li>
                    <li><a href="blog_category_right_sidebar.html">blog category</a></li>
                </ul> -->
            </li>
            <li><a href="contact_us.html">Lets Party</a></li>
            <li class="has-children">
                <a href="#">서원님 My Page</a>
               	<ul class="cd-secondary-dropdown icon_menu is-hidden">
                    <li class="go-back"><a href="#0">Back</a></li>
                    <li><a href="blog_single.html">My Page</a></li>
                    <li><a href="blog_category_right_sidebar.html">Chat</a></li>
                    <li><a href="blog_category_right_sidebar.html">개인정보 수정</a></li>
                    <li><a href="blog_category_right_sidebar.html">친구 목록</a></li>
                    <li><a href="blog_category_right_sidebar.html">결제 목록</a></li>
                    <li><a href="${path }/member/logout.do">로그아웃</a></li>
                </ul>
            </li>
        </ul>
        <!-- .cd-dropdown-content -->
    </nav>
    <div class="cp_navi_main_wrapper dm_cover">
        <div class="container">

            <!-- mobile menu area start -->
            <header class="mobail_menu d-block d-sm-block d-md-block d-lg-none d-xl-none">

                <div class="row">
                    <div class="col-md-6">
                        <div class="cp_logo_wrapper">
                            <a href="${path }">
                                <img style="width: 170px; height: 60px;" src="${path }/resources/images/unionLogo(color).png" alt="logo">
                            </a>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="cd-dropdown-wrapper">
                            <a class="house_toggle" href="#0">
                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
                                    version="1.1" id="Capa_1" x="0px" y="0px" viewBox="0 0 31.177 31.177"
                                    style="enable-background:new 0 0 31.177 31.177;" xml:space="preserve" width="25px"
                                    height="25px">
                                    <g>
                                        <g>
                                            <path class="menubar"
                                                d="M30.23,1.775H0.946c-0.489,0-0.887-0.398-0.887-0.888S0.457,0,0.946,0H30.23    c0.49,0,0.888,0.398,0.888,0.888S30.72,1.775,30.23,1.775z"
                                                fill="#004165" />
                                        </g>
                                        <g>
                                            <path class="menubar"
                                                d="M30.23,9.126H12.069c-0.49,0-0.888-0.398-0.888-0.888c0-0.49,0.398-0.888,0.888-0.888H30.23    c0.49,0,0.888,0.397,0.888,0.888C31.118,8.729,30.72,9.126,30.23,9.126z"
                                                fill="#004165" />
                                        </g>
                                        <g>
                                            <path class="menubar"
                                                d="M30.23,16.477H0.946c-0.489,0-0.887-0.398-0.887-0.888c0-0.49,0.398-0.888,0.887-0.888H30.23    c0.49,0,0.888,0.397,0.888,0.888C31.118,16.079,30.72,16.477,30.23,16.477z"
                                                fill="#004165" />
                                        </g>
                                        <g>
                                            <path class="menubar"
                                                d="M30.23,23.826H12.069c-0.49,0-0.888-0.396-0.888-0.887c0-0.49,0.398-0.888,0.888-0.888H30.23    c0.49,0,0.888,0.397,0.888,0.888C31.118,23.43,30.72,23.826,30.23,23.826z"
                                                fill="#004165" />
                                        </g>
                                        <g>
                                            <path class="menubar"
                                                d="M30.23,31.177H0.946c-0.489,0-0.887-0.396-0.887-0.887c0-0.49,0.398-0.888,0.887-0.888H30.23    c0.49,0,0.888,0.398,0.888,0.888C31.118,30.78,30.72,31.177,30.23,31.177z"
                                                fill="#004165" />
                                        </g>
                                    </g>
                                </svg>
                            </a>
                            <!-- .cd-dropdown -->

                        </div>
                    </div>
                </div>

            </header>

            <div class="jb_navigation_wrapper">
                <div class="mainmenu d-xl-block d-lg-block d-md-none d-sm-none d-none">
                    <ul class="main_nav_ul">
                        <li class="has-mega gc_main_navigation"><a href="#"
                                class="gc_main_navigation active_class">about us</a>
<!--                             <ul class="navi_2_dropdown">
                                <li class="parent">
                                    <a href="index.html"><i class="fas fa-square"></i>index </a>
                                </li>
                                <li class="parent">
                                    <a href="index2.html"><i class="fas fa-square"></i>index II</a>
                                </li>
                            </ul> -->
                        </li>
                        <li><a href="about_us.html" class="gc_main_navigation">Events</a></li>
                        <li class="has-mega gc_main_navigation"><a href="#" class="gc_main_navigation">Gallery</a>
<!--                             <ul class="navi_2_dropdown">
                                <li class="parent">
                                    <a href="events.html"><i class="fas fa-square"></i>events </a>
                                </li>
                                <li class="parent">
                                    <a href="event_single.html"><i class="fas fa-square"></i>event single</a>
                                </li>
                                <li class="parent">
                                    <a href="error.html"><i class="fas fa-square"></i>error 404</a>
                                </li>
                                <li class="parent">
                                    <a href="reservation.html"><i class="fas fa-square"></i>reservation</a>
                                </li>
                                <li class="parent">
                                    <a href="services.html"><i class="fas fa-square"></i>services</a>
                                </li>
                            </ul> -->
                        </li>
                        <li style="position: relative;">
                            <a href="#" style="padding: 0px;"><img style="width: 229px; height: 90px;" src="${path }/resources/images/unionLogo(white).png"
                                    alt="img"></a>
                        </li>
                        <li class="has-mega gc_main_navigation"><a href="#" class="gc_main_navigation">party<br>Planner</a>
                            <!-- <ul class="navi_2_dropdown">
                                <li class="parent">
                                    <a href="gallery_3_drid.html"> <i class="fas fa-square"></i>gallery III</a>
                                </li>
                                <li class="parent">
                                    <a href="gallery_4_grid.html"> <i class="fas fa-square"></i>gallery IV</a>
                                </li>
                            </ul> -->
                        </li>

                        <li class="has-mega gc_main_navigation"><a href="#" class="gc_main_navigation">Lets<br>Party</a>
                            <!-- <ul class="navi_2_dropdown">
                                <li class="parent">
                                    <a href="blog_category.html"> <i class="fas fa-square"></i>blog category I</a>
                                </li>
                                <li class="parent">
                                    <a href="blog_categories_II.html"> <i class="fas fa-square"></i>blog category II</a>
                                </li>
                                <li class="parent">
                                    <a href="blog_single.html"> <i class="fas fa-square"></i>blog single</a>
                                </li>
                            </ul> -->
                        </li>
                        <li class="has-mega gc_main_navigation"><a href="#" class="gc_main_navigation">서원님<br>My Page</a>
                        	<ul class="navi_2_dropdown">
                                <li class="parent">
                                    <a href="blog_category.html"> <i class="fas fa-square"></i>My Page</a>
                                </li>
                                <li class="parent">
                                    <a href="blog_categories_II.html"> <i class="fas fa-square"></i>Chat</a>
                                </li>
                                <li class="parent">
                                    <a href="blog_single.html"> <i class="fas fa-square"></i>개인정보 수정</a>
                                </li>
                                <li class="parent">
                                    <a href="blog_single.html"> <i class="fas fa-square"></i>친구 목록</a>
                                </li>
                                <li class="parent">
                                    <a href="blog_single.html"> <i class="fas fa-square"></i>결제목록</a>
                                </li>
                                <li class="parent">
                                    <a href="${path }/member/logout.do"> <i class="fas fa-square"></i>로그아웃</a>
                                </li>
                            </ul>
                        </li>

                    </ul>
                </div>

            </div>
        </div>
    </div>
    <!-- navi wrapper End -->
   	</header>
		