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
		
		<div id="searchPwd">
			   <br>
			  <h3 style="color: #f74646">~님</h3>
			  <h5 style="color: #f74646">새 비밀번호를 입력해주세요.</h5>
			  <br>
			  <div>
			  	<form action="${path }/member/changePwd.do" method="post" onsubmit="return fn_enroll_validate();">
			  		<input type="hidden" name="password" id="password" value=""  readonly><br/>
					<input type="password" class="form-control" name="password_new" id="password_new" placeholder="신규 비밀번호" required>
					<input type="password" class="form-control" id="password_chk" placeholder="비밀번호 확인" required><br>
					<br>
					<div class="booking_table_wrapper contact_top_wrapper" style="padding-top:10px">
			            <div class="tb_es_btn_wrapper" style="margin-top: 2%">
			                <button type="submit" class="submitForm">비밀번호 변경</button>
			            </div>
			        </div>
			  	</form>
			  </div>
			</div>
	</section>	

	<script src="${path }/resources/js/searchIdPwd.js"></script>
	
<jsp:include page="/WEB-INF/views/common/footer.jsp"/>