<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>

    <link rel="stylesheet" type="text/css" href="${path }/resources/css/searchIdPwd.css" />

<jsp:include page="/WEB-INF/views/common/header2.jsp">
	<jsp:param value="WeParty" name="title"/>  
</jsp:include>



	<section class="container">
		
		<div class="col" style="padding:0px">
			<div class="tab">
			  <button class="tablinks" onclick="openCity(event, 'searchId')" id="defaultOpen">아이디 찾기</button>
			  <button class="tablinks" onclick="openCity(event, 'searchPwd')">비밀번호 찾기</button>
			</div>
			
			<div id="searchId" class="tabcontent">
			  <br>
			  <h3 style="color: #f74646">아이디 찾기</h3>
			  <br>
			  <div>
			  	<form action="${path }/member/searchId.do" method="post" onsubmit="return fn_enroll_validate();">
			  		<input type="text" class="form-control" name="M_NAME" id="M_NAME"
							placeholder="NAME" required> <br>
						 <button type="button" class="btn btn-outline-success" style="margin-left: auto"  onclick="verify();" style="margin-bottom : 5px;">인증하기</button>
						<input type="email" class="form-control" name="M_EMAIL"id="M_EMAIL" placeholder="EMAIL" required>
						<input type="hidden" id="verifyEmail" value="2">
						<div class="booking_table_wrapper contact_top_wrapper" style="padding-top:10px">
				            <div class="tb_es_btn_wrapper" style="margin-top: 2%">
				                <button type="submit" class="submitForm">아이디 찾기</button>
				            </div>
				        </div>
			  	</form>
			  </div>
			</div>
			
			<div id="searchPwd" class="tabcontent">
			   <br>
			  <h3 style="color: #f74646; text-align: initial;">비밀번호 찾기</h3>
			  <br>
			  <div>
			  	<form action="${path }/member/searchPwd.do" method="post" onsubmit="return fn_enroll_validate();">
			  		<input type="text" class="form-control" name="M_ID" id="M_ID"
							placeholder="ID" required> <br>
						<div class="booking_table_wrapper contact_top_wrapper" style="padding-top:10px">
				            <div class="tb_es_btn_wrapper" style="margin-top: 2%">
				                <button type="submit" class="submitForm">비밀번호 찾기</button>
				            </div>
				        </div>
			  	</form>
			  </div>
			</div>
			
		</div>
	</section> 
	
	<script src="${path }/resources/js/searchIdPwd.js"></script>
	
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>