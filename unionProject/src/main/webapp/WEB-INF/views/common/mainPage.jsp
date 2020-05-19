<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="WeParty" name="title"/>  
</jsp:include>

<!-- Top Scroll Start --><a href="#" id="return-to-top" style="color:white">TOP</a>
        <!-- Top Scroll End -->

<section id="container">
	<div class="slider-area dm_cover">
        <div class="main_slider_overly"></div>
        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel" data-interval="false">
            <div class="carousel-inner" role="listbox">
                <div class="carousel-item active">
                    <div class="carousel-captions caption-1">
                        <div class="container">
                            <div class="row">
                                <div class="col-xl-10 offset-xl-1 col-lg-10 offset-lg-1  col-md-12 col-sm-12 col-12">
                                    <div class="content">

											<img alt="glow-night" style="max-height: 510px" src="${path }/resources/images/glow-night.jpg">

                                        <div class="clear"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <div class=" carousel-captions caption-2">
                        <div class="container">
                            <div class="row">
                                <div class="col-xl-10 offset-xl-1 col-lg-10 offset-lg-1  col-md-12 col-sm-12 col-12">
                                    <div class="content">

                                        <img alt="glow-night" style="max-height: 510px" src="${path }/resources/images/2019_poster.jpg">
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <div class="carousel-captions caption-3">
                        <div class="container">
                            <div class="row">
                                <div class="col-xl-10 offset-xl-1 col-lg-10 offset-lg-1  col-md-12 col-sm-12 col-12">
                                    <div class="content">

                                        <h2 data-animation="animated zoomInDown" style="max-height: 510px">welcome to night
                                            club bar</h2>
                                        <div data-animation="animated" class="slider_border"></div>

                                        <div class="clear"></div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
                <ol class="carousel-indicators">
                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"><span
                            class="number"></span></li>
                    <li data-target="#carousel-example-generic" data-slide-to="1" class=""><span class="number"></span>
                    </li>
                    <li data-target="#carousel-example-generic" data-slide-to="2" class=""><span class="number"></span>
                    </li>
                </ol>
                <div class="carousel-nevigation">
                    <a class="prev" href="#carousel-example-generic" role="button" data-slide="prev">
                       <span>PR<br>EV</span>
                    </a>
                    <a class="next" href="#carousel-example-generic" role="button" data-slide="next">
                        <span>NE<br>XT</span>
                    </a>
                </div>
            </div>
        </div>
    </div>
    
    <div class="upcoming_wrapper dm_cover">
        <div class="club_video_overlay"></div>
        <div class="container">
            <div class="row">
                <div class="col-lg-10 offset-lg-1 col-md-12 col-sm-12">
                    <div class="dmx_heading_wraper">
                        <h2>UPCOMING EVENTS</h2>
                    </div>
                </div>
                <div class="col-lg-12 col-md-12 col-sm-12">
                    <div class="upcoming_event_slider">
                        <div class="owl-carousel owl-theme">
                            <div class="item">
                                <div class="category_content_wrapper upcoming_event_content_box">
                                    <div class="category_wrapper_overlay">
                                        <h3 class="party_prcie"> $ 350 </h3>
                                        <figure>
                                            <img src="${path }/resources/images/event1.png" alt="img">
                                        </figure>
                                        <div class="category_btm_wrap">
                                            <p> 29 May 2019 </p>
                                            <h4><a href="#">Night Rockers</a></h4>
                                            <p>Mumbai, India</p>

                                        </div>
                                    </div>

                                </div>
                            </div>
                            <div class="item">
                                <div class="category_content_wrapper upcoming_event_content_box">
                                    <div class="category_wrapper_overlay">
                                        <h3 class="party_prcie"> $ 350 </h3>
                                        <figure>
                                            <img src="${path }/resources/images/event1.png" alt="img">
                                        </figure>
                                        <div class="category_btm_wrap">
                                            <p> 29 May 2019 </p>
                                            <h4><a href="#">Friday Selfie Party</a></h4>
                                            <p>Mumbai, India</p>

                                        </div>
                                    </div>

                                </div>
                            </div>
                            <div class="item">
                                <div class="category_content_wrapper upcoming_event_content_box">
                                    <div class="category_wrapper_overlay">
                                        <h3 class="party_prcie"> $ 350 </h3>
                                        <figure>
                                            <img src="${path }/resources/images/event1.png" alt="img">
                                        </figure>
                                        <div class="category_btm_wrap">
                                            <p> 29 May 2019 </p>
                                            <h4><a href="#">Dj Party with Beer</a></h4>
                                            <p>Mumbai, India</p>

                                        </div>
                                    </div>

                                </div>
                            </div>
                            <div class="item">
                                <div class="category_content_wrapper upcoming_event_content_box">
                                    <div class="category_wrapper_overlay">
                                        <h3 class="party_prcie"> $ 350 </h3>
                                        <figure>
                                            <img src="${path }/resources/images/event1.png" alt="img">
                                        </figure>
                                        <div class="category_btm_wrap">
                                            <p> 29 May 2019 </p>
                                            <h4><a href="#">Lemob Party DJ</a></h4>
                                            <p>Mumbai, India</p>

                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="hs_btn_wrapper event_btn dm_cover">
                        <ul>

                            <li> <a href="#"> more events</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <div class="dm_about_wrapper float_left">

        <div class="container">
            <div class="row">
                <div class="col-md-12 col-lg-6 col-sm-12 col-12 about_responsive_padder">

                    <div class="dm_heading_wrapper">

                        <h2>about our club</h2>
                        <div class="bars">
                            <div class="bar"></div>
                            <div class="bar"></div>
                            <div class="bar"></div>
                            <div class="bar"></div>
                            <div class="bar"></div>
                            <div class="bar"></div>
                            <div class="bar"></div>
                            <div class="bar"></div>
                            <div class="bar"></div>
                            <div class="bar"></div>
                        </div>

                    </div>
                    <div class="dm_about_text_wrapper dm_cover">
                        <p>Proin gravida nibh vel velit auctor aliq uet. Aen ean sollici tudin, the partii lorem quisbi
                            bendum auctor, nisi elit consequat ipsum, nec sagittis sem ni bh id elit. Duises sedodio sit
                            amet nibh vulputate cursus asitametmauris. Morbi accumsan ipsum velitornr aptent.
                            <br>
                            <br> taciti sociosqu ad litora torquent per conubi ra, per inceptos homhimena os. Mauris in
                            erat justo. Nullam acurna eu felis dapibus condimentum sit amet a mean augue.

                        </p>
                        <ul class="dm_about_link dm_cover">
                            <li><a href="#"><i class="fas fa-circle"></i> History Scince 1993</a></li>
                            <li><a href="#"><i class="fas fa-circle"></i> 25 Bodyguards For Security</a></li>
                            <li><a href="#"><i class="fas fa-circle"></i>Best CCTV Systems</a></li>
                            <li><a href="#"><i class="fas fa-circle"></i> Dog Security </a></li>
                        </ul>
                        <div class="hs_btn_wrapper dm_cover">
                            <ul>

                                <li> <a href="#">read more</a></li>
                            </ul>
                        </div>
                    </div>

                </div>

                <div class="col-md-12 col-lg-6 col-sm-12">
                    <div class="abt_right_img_wrapper">

                        <img src="images/abt2.png" alt="About" class="img-responsive">

                        <div class="sw_disc_img_btm">
                            <img src="images/abt1.png" alt="About" class="img-responsive">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
     <div class="gallery_wrapper portfolio_grid dm_cover">

        <div class="container">
            <div class="row">
                <div class="col-lg-10 offset-lg-1 col-md-12 col-sm-12">
                    <div class="dmx_heading_wraper">
                        <img src="images/head4.png" alt="img">
                        <h2>our gallery</h2>
                        <div class="bars bars2">
                            <div class="bar"></div>
                            <div class="bar"></div>
                            <div class="bar"></div>
                            <div class="bar"></div>
                            <div class="bar"></div>
                            <div class="bar"></div>
                            <div class="bar"></div>
                            <div class="bar"></div>
                            <div class="bar"></div>
                            <div class="bar"></div>
                        </div>

                        <p>Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis
                            <br> bibendum auctor, nisi elit consequat.</p>
                    </div>
                </div>
            </div>
        </div>
        <ul class="protfoli_filter">
            <li class="active" data-filter="*"><a href="#"> all</a></li>
            <li data-filter=".dribbble"><a href="#">images</a></li>
            <li data-filter=".behance"><a href="#">videos</a></li>

        </ul>
        <div class="row portfoli_inner pi_3">

            <!-- Items -->
            <div class="p-0 portfolio_boxes_width dribbble ux_ui">
                <div class="portfolio_item">
                    <img src="images/pic1.png" alt="">
                    <div class="portfolio_hover">

                        <div class="zoom_popup">
                            <a class="img-link" href="images/pic1.png"> <i class="flaticon-add-button"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Items -->
            <div class="p-0 portfolio_boxes_width behance">
                <div class="portfolio_item">
                    <img src="images/pic2.png" alt="">
                    <div class="portfolio_hover">

                        <div class="zoom_popup">
                            <a class="img-link" href="images/pic2.png"> <i class="flaticon-add-button"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Items -->
            <div class="p-0 portfolio_boxes_width dribbble #">
                <div class="portfolio_item">
                    <img src="images/pic3.png" alt="">
                    <div class="portfolio_hover">

                        <div class="zoom_popup">
                            <a class="img-link" href="images/pic3.png"> <i class="flaticon-add-button"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Items -->
            <div class=" p-0 portfolio_boxes_width dribbble behance #">
                <div class="portfolio_item">
                    <img src="images/pic4.png" alt="">
                    <div class="portfolio_hover">

                        <div class="zoom_popup">
                            <a class="img-link" href="images/pic4.png"> <i class="flaticon-add-button"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Items -->
            <div class="p-0 portfolio_boxes_width behance">
                <div class="portfolio_item">
                    <img src="images/pic5.png" alt="">
                    <div class="portfolio_hover">

                        <div class="zoom_popup">
                            <a class="img-link" href="images/pic5.png"> <i class="flaticon-add-button"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Items -->
            <div class=" p-0 portfolio_boxes_width dribbble behance">
                <div class="portfolio_item">
                    <img src="images/pic6.png" alt="">
                    <div class="portfolio_hover">

                        <div class="zoom_popup">
                            <a class="img-link" href="images/pic6.png"> <i class="flaticon-add-button"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Items -->
            <div class=" p-0 portfolio_boxes_width behance">
                <div class="portfolio_item">
                    <img src="images/pic7.png" alt="">
                    <div class="portfolio_hover">

                        <div class="zoom_popup">
                            <a class="img-link" href="images/pic7.png"> <i class="flaticon-add-button"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Items -->
            <div class="p-0 portfolio_boxes_width dribbble behance">
                <div class="portfolio_item">
                    <img src="images/pic8.png" alt="">
                    <div class="portfolio_hover">

                        <div class="zoom_popup">
                            <a class="img-link" href="images/pic8.png"> <i class="flaticon-add-button"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Items -->
            <div class="p-0 portfolio_boxes_width dribbble behance">
                <div class="portfolio_item">
                    <img src="images/pic2.png" alt="">
                    <div class="portfolio_hover">

                        <div class="zoom_popup">
                            <a class="img-link" href="images/pic2.png"> <i class="flaticon-add-button"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="p-0 portfolio_boxes_width dribbble behance">
                <div class="portfolio_item">
                    <img src="images/pic9.png" alt="">
                    <div class="portfolio_hover">

                        <div class="zoom_popup">
                            <a class="img-link" href="images/pic9.png"> <i class="flaticon-add-button"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
    
	<h1>Main Page</h1>
	<h1>Main Page</h1>
	<h1>Main Page</h1>
	<h1>Main Page</h1>
	<h1>Main Page</h1>
	<h1>Main Page</h1>
	<h1>Main Page</h1>
	<h1>Main Page</h1>
	<h1>Main Page</h1>
	<h1>Main Page</h1>
	<h1>Main Page</h1>
	<h1>Main Page</h1>
	
	
</section>

<jsp:include page="/WEB-INF/views/common/footer.jsp"/>