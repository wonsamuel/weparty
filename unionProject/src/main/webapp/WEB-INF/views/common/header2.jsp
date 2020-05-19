<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WeParty</title>

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
    
    <link rel="stylesheet" type="text/css" href="${path }/resources/css/searchIdPwd.css" />
    
    <!--favicon-->
    <link rel="shortcut icon" type="image/png" href="${path }/resources/images/favicon(weparty).png" />
    
     <!-- kakao login SDK -->
    <script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
    
    <!-- google login lib -->
    <script src="https://apis.google.com/js/platform.js?onload=init" async defer></script>
    	<meta name="google-signin-scope" content="profile email">
    	<meta name="google-signin-client_id" content="453308839651-k2k6atnk9feilh13k0qcm8rkbu73s700">
    	<script src="https://apis.google.com/js/api:client.js"></script>
    
     <%-- <script src="${path }/resources/js/jquery-3.3.1.min.js"></script> --%>
    <script src="${path }/resources/js/bootstrap.min.js"></script>
   <script src="${path }/resources/js/modernizr.js"></script>
    <script src="${path }/resources/js/jquery.menu-aim.js"></script>
    <script src="${path }/resources/js/imagesloaded.pkgd.min.js"></script>
    <script src="${path }/resources/js/jquery.magnific-popup.js"></script>
    <script src="${path }/resources/js/jquery.countTo.js"></script>
    <script src="${path }/resources/js/jquery.inview.min.js"></script>
    <script src="${path }/resources/js/isotope.pkgd.min.js"></script>
    <script src="${path }/resources/js/owl.carousel.js"></script>
    <script src="${path }/resources/js/jquery.downCount.js"></script>
    <%-- <script src="${path }/resources/js/player.js"></script> --%>
    <%-- <script src="${path }/resources/js/music.js"></script> --%>
    <%-- <script src="${path }/resources/js/custom.js"></script> --%>
    <script src="${path }/resources/js/header2.js"></script>
    
    <style>
	    .page-header {
		    background-image: url("${path }/resources/images/DJ-banner2.jpg");
		    background-repeat: no-repeat;
		    background-position: center center;
		    background-size: cover;
		    max-height: 999px;
		    overflow: hidden;
		    position: relative;
		    width: 100%;
		    z-index: 1;
		    display: flex;
		    align-items: center;
		    justify-content: center;
		}
    </style>
</head>
<body>
	
		<section class="container">
		 <nav class="navbar navbar-expand-lg fixed-top navbar-transparent " color-on-scroll="300" style="position: absolute">
		 	<div class="container" style="background: transparent">
		 		 <div class="navbar-translate">
		 		 	<a class="navbar-brand" href="${path }" rel="tooltip" title="UnionProject" data-placement="bottom" target="_self">
		 		 		<img id="nav-logo" alt="logo" src="${path }/resources/images/fullLogo(white)2.png"></a>
		 		 </div>
		 		 <div class="navbar justify-content-end" id="navigation">
		 		 	<ul class="navbar-nav">
		 		 		<li class="nav-item">
						 	<div class="col-md-12 col-lg-12">
				                <div class="domex_news_field">
				                    <div class="domex_newsletter_field">
				                        <button type="button" data-toggle="modal" data-target="#loginModal">Login/Register</button>
				                    </div>
				                </div>
				            </div>
		 		 		</li>
		 		 	</ul>
		 		 </div>
		 	</div>
		 </nav>
		         <div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
            aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Login/Register</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true" style="color:#f74646;">&times;</span>
                        </button>
                    </div>
                    <form action="${path }/member/memberLogin.do" method="post">
                        <div class="modal-body">
                            <input type="text" class="form-control" name="userId" placeholder="USERID" required>
                            <br />
                            <input type="password" class="form-control" name="password" placeholder="PASSWORD" required>
                            <br>
                            <img src="${path }/resources/images/kakaologin.png" width="222px" height="49px" alt="카카오계정 로그인" onclick="login();"  style="cursor: pointer;">
                            <div class="g-signin2" data-onsuccess="onSignIn" data-width="222" data-height="49" data-longtitle="true"></div>
                            <div class="custom-control custom-checkbox">
                                <input type="checkbox" class="custom-control-input" id="save-id">
                                <label style="vertical-align: middle" class="custom-control-label" for="save-id">아아디 저장</label>
                                <button type="submit" class="btn btn-outline-success" id="login-btn">로그인</button>
                            </div>
                        </div>
                    </form>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-outline-success" style="margin-left: auto"  onclick="location.replace('${path}/member/searchIdPwd.do')">아이디/비밀번호 찾기</button>
                        <button type="button" class="btn btn-outline-success" style="margin-right: auto" onclick="location.replace('${path}/')">회원가입</button>
                    </div>
                </div>
            </div>
        </div>
        
		<div class="page-header page-header-xs" data-parallax="true" style="height: 250px;"></div>
	</section>
	
	<script>
	
  //-----   kakao login  ------//
		Kakao.init("3e1bbf2408df0aeb1a3842902a3c1b61");
		function login(){
			  
			  Kakao.Auth.loginForm({
				  
				  
	                 success: function(authObj) {
	                    Kakao.API.request({
	                         url: '/v2/user/me',
	                         success: function(res) {
	                          console.log(res);
	                          
	                          var userId = res.id;       //유저의 카카오톡 고유 id
	                          var userEmail = res.kakao_account.email;   //유저의 이메일
 	                          var gender =  res.kakao_account.gender; //성별
	                          var profileImg = res.properties.profile_image;
	                          var nickname = res.properties.nickname;
	                          /* var ageRange = res.kakao_account.age_range; */ 
	                          var memberLevel = $("input[name='customRadioInline1']:checked").val();
								/* console.log(USERID+typeof(USERID)); */
	                          	console.log(userEmail);
	                          	console.log(gender);
	                          Kakao.Auth.logout();
                    				location.replace("${path}/member/simpleLogin.do?userEmail="+userEmail+"&customRadioInline1="+memberLevel+
                    									"&gender="+gender+"&profileImg="+profileImg+"&userId="+userId+"&nickname="+nickname);
                         
	                         },
	                         fail: function(error) {
	                          alert(JSON.stringify(error));
	                          return false;
	                         }
	                        });
	                    
	                 },
	                 fail: function(err) {
	                   alert(JSON.stringify(err));
                        return false;

	                 }
	              });
		  }	
		
		//google login
		function onSignIn(googleUser) {
        // Useful data for your client-side scripts:
        	console.log(googleUser.getBasicProfile());
        	/* console.log(googleUser); */
        var userId= googleUser.getBasicProfile().getId(); // Don't send this directly to your server!
        var nickname=googleUser.getBasicProfile().getName();
        var userEmail= googleUser.getBasicProfile().getEmail();
        var profileImg = googleUser.getBasicProfile().getImageUrl(); 
        var memberLevel = $("input[name='customRadioInline1']:checked").val();
        var auth2 = gapi.auth2.getAuthInstance();
    	  auth2.signOut().then(function(){
    		  console.log("User signed out.");
    	  });
    	  auth2.disconnect();	
    	  location.replace("${path}/member/simpleLogin.do?userEmail="+userEmail+"&customRadioInline1="+memberLevel+
    			  			"&userId="+userId+"&profileImg="+profileImg);
      }
		
    </script>
