<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="${path }/resources/css/memberEnroll.css" />

<jsp:include page="/WEB-INF/views/common/header2.jsp">
	<jsp:param value="WeParty" name="title"/>  
</jsp:include>

<script src="${path }/resources/js/memberEnroll.js"></script>
<style>
.btn-outline-secondary {
            color: #f74646;
            background-color: transparent;
            background-image: none;
            border-color: #f74646
        }

        .btn-outline-secondary:hover {
            color: #fff;
            background-color: #f74646;
            border-color: #f74646
        }

        .btn-outline-secondary.focus,
        .btn-outline-secondary:focus {
            box-shadow: 0 0 0 .2rem rgba(247, 70, 70, .5)
        }

        .btn-outline-secondary.disabled,
        .btn-outline-secondary:disabled {
            color: #495057;
            background-color: transparent
        }

        .btn-outline-secondary:not(:disabled):not(.disabled).active,
        .btn-outline-secondary:not(:disabled):not(.disabled):active,
        .show>.btn-outline-secondary.dropdown-toggle {
            color: #fff;
            background-color: #f74646;
            border-color: #f74646;
        }

        .btn-outline-secondary:not(:disabled):not(.disabled).active:focus,
        .btn-outline-secondary:not(:disabled):not(.disabled):active:focus,
        .show>.btn-outline-secondary.dropdown-toggle:focus {
            box-shadow: 0 0 0 .2rem rgba(247, 70, 70, 0.5)
        }

        .custom-radio .custom-control-input:checked~.custom-control-label::before {
            background-color: #f74646;
            border-color: #f74646;
            box-shadow: 0 0 0 .2rem rgba(247, 70, 70, .5);
        }

        .custom-radio .custom-control-input:checked~.custom-control-label::after {
            background-image: url("data:image/svg+xml;charset=utf8,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='-4 -4 8 8'%3E%3Ccircle r='3' fill='%23fff'/%3E%3C/svg%3E")
        }

        .custom-radio .custom-control-input:disabled:checked~.custom-control-label::before {
            background-color: rgba(247, 70, 70, .5)
        }

        .form-control {
            border: 1px solid #f74646;
        }

        .form-control:focus {
            color: #495057;
            background-color: #fff;
            border-color: #f74646;
            outline: 0;
            box-shadow: 0 0 0 .2rem rgba(247, 70, 70, .25)
        }

        .form-control::-webkit-input-placeholder {
            color: #495057;
            opacity: 1
        }

        .form-control::-moz-placeholder {
            color: #495057;
            opacity: 1
        }

        .form-control:-ms-input-placeholder {
            color: #495057;
            opacity: 1
        }

        .form-control::-ms-input-placeholder {
            color: #495057;
            opacity: 1
        }

        .form-control::placeholder {
            color: #495057;
            opacity: 1
        }

        .custom-control-input {
            position: absolute;
            z-index: -1;
            opacity: 0;

        }

        .custom-control-input:checked~.custom-control-label::before {
            color: #fff;
            background-color: #f74646;
            border: 1px solid #f74646;
        }

        .custom-control-input:focus~.custom-control-label::before {
            box-shadow: 0 0 0 1px #fff, 0 0 0 .2rem rgba(247, 70, 70, .25)
        }

        .custom-control-input:active~.custom-control-label::before {
            color: #495057;
            background-color: #b3d7ff
        }

        .custom-control-input:disabled~.custom-control-label {
            color: #495057
        }

        .custom-control-input:disabled~.custom-control-label::before {
            background-color: #e9ecef
        }

        .custom-control-label {
            position: relative;
            margin-bottom: 0;
            color: #495057;
        }

</style>

        <!-- Top Scroll Start --><a href="#" id="return-to-top" style="color:white">TOP</a>
        <!-- Top Scroll End -->
<section id="container" class="container">
        <div class="custom-control custom-radio custom-control-inline">
            <input type="radio" id="customRadioInline1" name="customRadioInline1" value="1" class="custom-control-input" checked>
            <label class="custom-control-label" for="customRadioInline1" style="color: #495057;">일반회원</label>
        </div>
        <div class="custom-control custom-radio custom-control-inline">
            <input type="radio" id="customRadioInline2" name="customRadioInline1" value="2" class="custom-control-input">
            <label class="custom-control-label" for="customRadioInline2" style="color: #495057;">파티 플래너</label>
        </div>
	<form action="${path }/member/memberEnrollEnd.do" method="post" style="margin-block-end: 0px;" 
			onsubmit="return validate();"  enctype="multipart/form-data">
        <div id="memberEnroll-container">
        <div style="margin-bottom:10px; color: #495057;">Profile Image</div>
        	<div class="image-upload flex">
	            <div id="input_container" class="col-sm" style="padding: 0px">
	                <label id="label" for="file-input">
	                    <img class="memberImg" id="memberImg" name="mProImgOri" style="width: 120px; height: 160px; margin-right: 5px;"
	                        src="${path }/resources/images/addImage.png" /><br>
	                </label>
	                <input id="file-input" class="member_imgs_input" name="upFile" type="file" />
	                <div class="delBtn-container col-sm" style="padding-bottom: 10px; margin-left: 17px;"></div>
	            </div>
			</div>
            <input type="text" class="form-control" name="mName" id="mName" placeholder="이름" required>
            <div id="userId-container">
                <input type="text" class="form-control" name="mUserId" placeholder="아이디(4글자이상)" id="mUserId" required>
                <span class="guide ok">이 아이디는 사용이 가능합니다.</span>
                <span class="guide error">이 아이디는 사용할 수 없습니다.</span>
            </div>
            <div id="userId-container">
            	<input type="password" class="form-control" placeholder="비밀번호" name="mPw" id="mPw" required>
            	<span class="guide ok">사용가능한 비밀번호 입니다.</span>
                <span class="guide error">영문자/숫자/특수문자를 포함한 8~15글자 이상 입력 바랍니다.</span>
            </div>
            <div id="userId-container">
	            <input type="password" class="form-control" placeholder="비밀번호 확인" id="mPw2" required>
	            <span class="guide ok">비밀번호가 일치합니다.</span>
	            <span class="guide error">비밀번호가 일치하지 않습니다.</span>
            </div>
            <input type="number" class="form-control" placeholder="나이" name="mAge" id="mAge" min="19" required>
            <label for="birthDate" class="form-label" style="color: #495057;">생년월일</label>
            <input class="form-control" type="date" value="" id="mBDay" name="mBDay" required>
            <input type="tel" class="form-control" name="mPhone" placeholder="전화번호(- 제외)" required>
            <div class="input-group">
                <input type="email" class="form-control" placeholder="이메일" name="mEmail" id="mEmail" required>
                
	                <span class="guide ok">사용가능한 이메일입니다.</span>
		            <span class="guide error">이미 가입이 된 이메일입니다.</span>
		       
                <div class="input-group-append">
                    <button class="btn btn-outline-secondary" type="button">인증하기</button>
                </div>
            </div>
            <select class="form-control" name="mGender" required>
                <option value="" disabled selected>성별</option>
                <option value="M">남</option>
                <option value="F">여</option>
            </select>
            <div class="form-check-inline form-check col" style="display: block;">
                <div style="margin-bottom: 10px; color: #495057;">
                    Music Genre :
                </div>
                <div style="display: flex;">
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" name="mMusic" id="music0" value="EDM">
                        <label for="music0" class="custom-control-label">EDM</label>&nbsp;
                    </div>
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" name="mMusic" id="music1" value="Trap Music">
                        <label for="music1" class="custom-control-label">Trap Music</label>&nbsp;
                    </div>
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" name="mMusic" id="music2" value="Hip Hop">
                        <label for="music2" class="custom-control-label">Hip Hop</label>&nbsp;
                    </div>
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" name="mMusic" id="music3" value="Trance">
                        <label for="music3" class="custom-control-label">Trance</label>&nbsp;
                    </div>
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" name="mMusic" id="music4" value="House">
                        <label for="music4" class="custom-control-label">House</label>&nbsp;
                    </div>
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" name="mMusic" id="music5" value="Reggaeton">
                        <label for="music5" class="custom-control-label">Reggaeton</label>&nbsp;
                    </div>
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" name="mMusic" id="music6" value="Pop">
                        <label for="music6" class="custom-control-label">Pop</label>&nbsp;
                    </div>
                </div>
            </div>
            <div style="margin-bottom: 10px; color: #495057;">
                Add Photos
            </div>
            <div class="flex">
                <!-- <div class="imgs_wrap flex member_imgs"></div> -->
                <div class="image-upload flex">
                    <div id="input_container" class="col-sm">
                        <label id="label1" for="file-input1">
                            <img class="memberImg" id="memberImg_1" name="mImgOri" style="width: 120px; height: 160px; margin-right: 5px;"
                                src="${path }/resources/images/addImage.png" /><br>
                        </label>
                        <input id="file-input1" class="member_imgs_input" name="upFile" type="file" />
                        <div class="delBtn-container col-sm" style="text-align: center"></div>
                    </div>
                    <div id="input_container" class="col-sm">
                        <label id="label2" for="file-input2">
                            <img class="memberImg" id="memberImg_2" name="mImgOri" style="width: 120px; height: 160px; margin-right: 5px;"
                                src="${path }/resources/images/addImage.png" /><br>
                        </label>
                        <input id="file-input2" class="member_imgs_input" name="upFile" type="file" />
                        <div class="delBtn-container col-sm" style="text-align: center"></div>
                    </div>
                    <div id="input_container" class="col-sm">
                        <label id="label3" for="file-input3">
                            <img class="memberImg" id="memberImg_3" name="mImgOri" style="width: 120px; height: 160px; margin-right: 5px;"
                                src="${path }/resources/images/addImage.png" /><br>
                        </label>
                        <input id="file-input3" class="member_imgs_input" name="upFile" type="file" />
                        <div class="delBtn-container col-sm" style="text-align: center"></div>
                    </div>
                    <div id="input_container" class="col-sm">
                        <label id="label4" for="file-input4">
                            <img class="memberImg" id="memberImg_4" name="mImgOri" style="width: 120px; height: 160px; margin-right: 5px;"
                                src="${path }/resources/images/addImage.png" /><br>
                        </label>
                        <input id="file-input4" class="member_imgs_input" name="upFile" type="file" />
                        <div class="delBtn-container col-sm" style="text-align: center"></div>
                    </div>
                    <div id="input_container" class="col-sm">
                        <label id="label5" for="file-input5">
                            <img class="memberImg" id="memberImg_5" name="mImgOri" style="width: 120px; height: 160px; margin-right: 5px;"
                                src="${path }/resources/images/addImage.png" /><br>
                        </label>
                        <input id="file-input5" class="member_imgs_input" name="upFile" type="file" />
                        <div class="delBtn-container col-sm" style="text-align: center"></div>
                    </div>
                    <div id="input_container" class="col-sm">
                        <label id="label6" for="file-input6">
                            <img class="memberImg" id="memberImg_6" name="mImgOri" style="width: 120px; height: 160px; margin-right: 5px;"
                                src="${path }/resources/images/addImage.png" /><br>
                        </label>
                        <input id="file-input6" class="member_imgs_input" name="upFile" type="file" />
                        <div class="delBtn-container col-sm" style="text-align: center"></div>
                    </div>
                </div>
            </div>
			<div style="text-align: center">
	            <button type="button" class="btn btn-outline-success" style="margin-right: 10px; margin-top:30px; margin-bottom: 30px"
	                onclick="location.replace('${path}')">취소</button>
	            <button type="submit" class="btn btn-outline-success" id="memberEnroll-btn" style="margin-bottom: 30px; margin-top:30px;">등록</button>
        	</div>
        </div>
	</form>
	<form action="${path }/member/partyPlannerEnrollEnd.do" method="post" 
			onsubmit="return validate();"  enctype="multipart/form-data">
		<div id="partyPlannerEnroll-container" style="display: none;">
            <div style="margin-bottom: 10px; color: #495057;">
                Add Logo
            </div>
            <div class="flex">
                <div class="image-upload flex">
	             	<div id="input_container">
	                    <label for="file-input-logo">
	                        <img style="width: 250px; height: 160px; margin-bottom: 10px;" src="${path }/resources/images/addLogo.png" />
	                    </label>
	                    <input id="file-input-logo" class="logo_img_input" name="upFile" type="file" />
	                    <div class="delBtn-container" style="text-align: center; margin-bottom: 10px"></div>
	                </div>
                </div>
            </div>
            <input type="text" class="form-control" name="ppName" placeholder="파티 플래너 명" required>
            <input type="text" class="form-control" name="ppMainMember" placeholder="대표 이름" required>
            <div id="userId-container">
                <input type="text" class="form-control" name="ppUserId" placeholder="아이디(4글자이상)" id="ppUserId" required>
                <span class="guide ok">이 아이디는 사용이 가능합니다.</span>
                <span class="guide error">이 아이디는 사용할 수 없습니다.</span>
            </div>
             <div id="userId-container">
            	<input type="password" class="form-control" placeholder="비밀번호" name="ppPw" id="ppPw" required>
            	<span class="guide ok">사용가능한 비밀번호 입니다.</span>
                <span class="guide error">영문자/숫자/특수문자를 포함한 8~15글자 이상 입력 바랍니다.</span>
            </div>
            <div id="userId-container">
            	<input type="password" class="form-control" placeholder="비밀번호 확인" id="ppPw2" required>
            	<span class="guide ok">비밀번호가 일치합니다..</span>
                <span class="guide error">비밀번호가 일치하지 않습니다.</span>
            </div>
            <input type="tel" class="form-control" name="ppPhone" placeholder="전화번호(- 제외)" required>
            <div class="input-group">
                <input type="email" class="form-control" placeholder="이메일" name="ppEmail" id="ppEmail" required>
                <span class="guide ok">사용가능한 이메일입니다.</span>
	            <span class="guide error">이미 가입이 된 이메일입니다.</span>
                <div class="input-group-append">
                    <button class="btn btn-outline-secondary" type="button">인증하기</button>
                </div>

            </div>
            <label for="startDate" class="form-label" style="color: #495057;">개설 날짜</label>
            <input class="form-control" type="date" value="" name="ppStartDate" id="ppStartDate">

            <input type="text" class="form-control" name="ppFacebook" placeholder="Facebook">
            <input type="text" class="form-control" name="ppInstagram" placeholder="Instagram">
            <input type="text" class="form-control" name="ppTwitter" placeholder="Twitter">
            <div class="form-check-inline form-check col" style="display: block;">
                <div style="margin-bottom: 10px; color: #495057;">
                    Music Genre :
                </div>
                <div style="display: flex;">
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" name="ppMusic" id="ppmusic0" value="EDM">
                        <label for="ppmusic0" class="custom-control-label">EDM</label>&nbsp;
                    </div>
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" name="ppMusic" id="ppmusic1" value="Trap Music">
                        <label for="ppmusic1" class="custom-control-label">Trap Music</label>&nbsp;
                    </div>
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" name="ppMusic" id="ppmusic2" value="Hip Hop">
                        <label for="ppmusic2" class="custom-control-label">Hip Hop</label>&nbsp;
                    </div>
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" name="ppMusic" id="ppmusic3" value="Trance">
                        <label for="ppmusic3" class="custom-control-label">Trance</label>&nbsp;
                    </div>
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" name="ppMusic" id="ppmusic4" value="House">
                        <label for="ppmusic4" class="custom-control-label">House</label>&nbsp;
                    </div>
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" name="ppMusic" id="ppmusic5" value="Reggaeton">
                        <label for="ppmusic5" class="custom-control-label">Reggaeton</label>&nbsp;
                    </div>
                    <div class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" name="ppMusic" id="ppmusic6" value="Pop">
                        <label for="ppmusic6" class="custom-control-label">Pop</label>&nbsp;
                    </div>
                </div>
            </div>
            <hr style="color:#f74646; border: 1px solid #f74646">
            <div id="addLine">
                <div class="row">
                    <div class="col-sm" style="margin-bottom: 10px; color: #495057;"> 주 인원</div>
                    <div class="col-sm"></div>
                    <div class="col" style="text-align: end;">
                        <button class="btn btn-outline-secondary addPPMember" type="button" id="addPPmember"
                            onclick="addMember(this)" data-clicked="1">인원 추가 +</button>
                    </div>
                </div>
                <div id="partyPlannerMember">
                    <div style="margin-bottom: 10px; color: #495057;">
                        Profile Image
                    </div>
                    <div class="flex">
                        <div class="image-upload flex">
	                        <div id="input_container" style="margin-top: auto; margin-bottom: auto;">
	                            <label for="file-input-pMember">
	                                <img style="width: 120px; height: 160px;" src="${path }/resources/images/addImage.png" />
	                            </label>
	                            <input id="file-input-pMember" class="plannerMember_img_input" name="upFile" type="file" />
	                            <div class="delBtn-container" style="text-align: center; margin-bottom: 10px"></div>
	                        </div>
                        </div>
                    </div>
                    <input type="text" class="form-control" id="ppMName" name="ppMName" style="margin-top: 10px;"
                        placeholder="이름" required>
                    <input type="text" class="form-control" id="ppMJob" name="ppMJob" placeholder="직책" required>
                    <input type="text" class="form-control" id="ppMInstagram" name="ppMInstagram" placeholder="Instagram" style="margin-bottom: 15px"
                        required>
                </div>
            </div>
            <div style="text-align: center">
	            <button type="button" class="btn btn-outline-success" style="margin-right: 10px; margin-top:30px; margin-bottom: 30px"
	                onclick="location.replace('${path}')">취소</button>
	            <button type="submit" class="btn btn-outline-success" id="partyPlannerEnroll-btn" style="margin-bottom: 30px; margin-top:30px;">등록</button>
        	</div>
        </div>
	</form>
	
</section>



<jsp:include page="/WEB-INF/views/common/footer.jsp"/>