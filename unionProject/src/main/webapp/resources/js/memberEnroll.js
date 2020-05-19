

//아이디 채크
		$(function(){
			$("#mUserId").keyup(function(){
				const input = $(this);
				const id = $(this).val();
				var memberLevel=$("input[name='customRadioInline1']:checked").val();
				if(id.trim().length>4) {
					$.ajax({
						url:"/weparty/member/checkId",
						data:{mUserId:id, customRadioInline1:memberLevel},
						success:function(data){
							console.log(data);
							console.log(input.siblings())
							if(!data) {
								input.next().hide()
								input.next().next().show()
//								$(".guide.ok").hide();
//								$(".guide.error").show();
							}else{
/*								$(".guide.ok").show();
								$(".guide.error").hide();*/
								input.next().show()
								input.next().next().hide()
							}
						}
					});
				} else {
					input.siblings($(".guide")).hide();
					return;
				}
			})
		})
		
		$(function(){
			$("#ppUserId").keyup(function(){
				const input = $(this);
				const id = $(this).val();
				var memberLevel=$("input[name='customRadioInline1']:checked").val();
				if(id.trim().length>4) {
					$.ajax({
						url:"/weparty/member/checkId",
						data:{mUserId:id, customRadioInline1:memberLevel},
						success:function(data){
							console.log(data);
							if(!data) {
								input.next().hide()
								input.next().next().show()
							}else{
								input.next().show()
								input.next().next().hide()
							}
						}
					});
				} else {
					input.siblings($(".guide")).hide();
					return;
				}
			})
		})

		
//비밀번호 정규식
	var passwordRules = /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,15}$/;
		
		$(function(){
			$("#mPw").keyup(function(){
				const input = $(this);
				input.siblings($(".guide")).hide();
				if(passwordRules.test($("#mPw").val())){
					input.next().show()
					input.next().next().hide()
				}else {
					input.next().hide()
					input.next().next().show()
				}
			});
		});
		
		$(function(){
			$("#ppPw").keyup(function(){
				const input = $(this);
				input.siblings($(".guide")).hide();
				if(passwordRules.test($("#ppPw").val())){
					input.next().show()
					input.next().next().hide()
				}else {
					input.next().hide()
					input.next().next().show()
				}
			});
		});
		
//비밀번호 확인
		$(function(){
			$("#mPw2").keyup(function(){
				const input = $(this);
				input.siblings($(".guide")).hide();
				if($("#mPw").val()==$("#mPw2").val()){
					input.next().show()
					input.next().next().hide()
				}else {
					input.next().hide()
					input.next().next().show()
				}
			});
		});
		
		$(function(){
			$("#ppPw2").keyup(function(){
				const input = $(this);
				input.siblings($(".guide")).hide();
				if($("#ppPw").val()==$("#ppPw2").val()){
					input.next().show()
					input.next().next().hide()
				}else {
					input.next().hide()
					input.next().next().show()
				}
			});
		});


//이매일 중복 확인
		var regExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;

		$(function(){
			$("#mEmail").keyup(function(){
				const input = $(this);
				const email = $(this).val();
				var memberLevel=$("input[name='customRadioInline1']:checked").val();
				if(regExp.test($(this).val())) {
					$.ajax({
						url:"/weparty/member/checkEmail",
						data:{mEmail:email, customRadioInline1:memberLevel},
						success:function(data){
							
							if(!data) {
								input.siblings('.guide.ok').hide();
								input.siblings(".guide.error").show();

							}else{
								input.siblings('.guide.ok').show();
								input.siblings(".guide.error").hide();
							}
						}
					});
				} else {
					input.siblings('.guide').hide();
					return;
				}
			})
		})
		
		$(function(){
			$("#ppEmail").keyup(function(){
				const input = $(this);
				const email = $(this).val();
				var memberLevel=$("input[name='customRadioInline1']:checked").val();
				if(regExp.test($(this).val())) {
					$.ajax({
						url:"/weparty/member/checkEmail",
						data:{mEmail:email, customRadioInline1:memberLevel},
						success:function(data){
							
							if(!data) {
								input.siblings('.guide.ok').hide();
								input.siblings(".guide.error").show();

							}else{
								input.siblings('.guide.ok').show();
								input.siblings(".guide.error").hide();
							}
						}
					});
				} else {
					input.siblings('.guide').hide();
					return;
				}
			})
		})

	
	

		
		
		

        // ===== Scroll to Top ==== //
        $(window).scroll(function() {
            if ($(this).scrollTop() >= 100) {
                $('#return-to-top').fadeIn(200);
            } else {
                $('#return-to-top').fadeOut(200);
            }
        });
        $('#return-to-top').on('click', function() {
            $('body,html').animate({scrollTop: 0}, 500);
        });



        //인원 추가 시 폼 추가 //
        function addMember(e) {
        	console.log($(e).parent().parent().next());
//        	console.log($(e).parent().parent().next());
        	var index = e.dataset.clicked;
        	index++;
        	var num = index;
        	
            e.dataset.clicked++;
            
            console.log("I've been clicked", e.dataset.clicked);
            
            if (+e.dataset.clicked === 11 && $("#addPPmember1").attr("data-clicked", "11")) {
              // unbind the event
              e.onclick = null;
              $("#addMember1").onclick = null;
              alert("주 인원은 10명까지만 등록 가능합니다.")
              return;
            } 
        	
            var div_here = $(e).parent().parent().next();
            var partyPlannerMember = $("<div>").attr("id", "partyPlannerMember").css("border-top","1px solid rgba(247, 70, 70)").css("padding-top", "15px");
            var profileImg = $("<div>").addClass("col-sm").css("margin-bottom", "10px").css("color", "#495057").html("Profile Image");
            var btn_container = $("<div>").addClass("col-sm").css("text-align","end");
            var addBtn = $("<button>").addClass("btn").addClass("btn-outline-secondary").addClass("addPPMember").html("인원 추가 +").attr({
            	type: "button",
            	id: "addPPmember1",
            	onclick: "addMember1(this)",
            	"data-clicked": index
            })
            
            var delBtn = $("<button>").addClass("btn").addClass("btn-outline-secondary").html("인원 삭제 -").attr({
            	type: "button",
            	id: "delPPmember1",
            	onclick: "delMember1(this)"
            })
            var flex = $("<div>").addClass("flex");

            var img_upload = $("<div>").addClass("image-upload").addClass("flex");
            var input_container = $("<div>").addClass("input_container").css("margin-top", "auto").css("margin-bottom", "auto");
            var label = $("<label>").attr({
                for: "file-input-pMember"+num
            });
            var img = $("<img>").css("width", "120px").css("height", "160px").attr("src", "/weparty/resources/images/addImage.png");

            var file_input = $("<input>").addClass("plannerMember_img_input"+num).css("display","none").attr({
                id: "file-input-pMember"+num,
                type: "file",
                name: "upFile"
            });
          //이벤트 처리
            file_input.change(imgChange);
            
            var imgDel_container = $("<div>").addClass("delBtn-container").css("text-align", "center").css("margin-bottom","10px");

            var input_name = $("<input>").addClass("form-control").css("margin-top", "10px").attr({
                type: "text",
                name: "ppMName",
                placeholder: "이름",
                required: "true"
            })

            var input_job = $("<input>").addClass("form-control").attr({
                type: "text",
                name: "ppMJob",
                placeholder: "직책",
                required: "true"
            })

            var input_instagram = $("<input>").addClass("form-control").css("margin-bottom", "15px").attr({
                type: "text",
                name: "ppMInstagram",
                placeholder: "Instagram",
                required: "true"
            })

            label.append(img);
            input_container.append(label).append(file_input).append(imgDel_container);
            img_upload.append(input_container);
            flex.append(img_upload);
            btn_container.append(addBtn).append(delBtn);
            var newMember = partyPlannerMember.append(btn_container).append(profileImg).append(flex).append(input_name).append(input_job).append(input_instagram);
            div_here.append(newMember);
            
            var last =  $("#addPPmember").parent().parent().parent().children(":last-child").children(":last-child").children(":first-child").find($("#addPPmember1")).data("clicked");
            console.log(last);
            
            return;
        }
        
        function addIndex(e){
        	var div = $("#partyPlannerMember");
        	var count = div.length;
        	console.log(count);
        	$(".addPPMember").attr("data-clicked", count);
        }
        
        function addMember1(e) {
        	console.log($(e).parent().parent().next());
//        	console.log($(e).parent().parent().next());
        	var index = e.dataset.clicked;
        	index++;
            e.dataset.clicked++;
            
            var num = index;
            
            console.log("I've been clicked", e.dataset.clicked);
            
            if (+e.dataset.clicked === 11 && $("#addPPmember1").attr("data-clicked", "11")) {
              // unbind the event
              e.onclick = null;
              $("#addPPMember1").onclick = null;
              alert("주 인원은 10명까지만 등록 가능합니다.")
              return;
            } 
            
            var div_here = $(e).parent().parent();
            var partyPlannerMember = $("<div>").attr("id", "partyPlannerMember").css("border-top","1px solid rgba(247, 70, 70)").css("padding-top", "15px");
            var profileImg = $("<div>").addClass("col-sm").css("margin-bottom", "10px").css("color", "#495057").html("Profile Image");
            var btn_container = $("<div>").addClass("col-sm").css("text-align","end");
            var addBtn = $("<button>").addClass("btn").addClass("btn-outline-secondary").addClass("addPPMember").html("인원 추가 +").attr({
            	type: "button",
            	id: "addPPmember1",
            	onclick: "addMember1(this)",
            	"data-clicked": index
            })
            var delBtn = $("<button>").addClass("btn").addClass("btn-outline-secondary").html("인원 삭제 -").attr({
            	type: "button",
            	id: "delPPmember1",
            	onclick: "delMember1(this)"
            })
            var flex = $("<div>").addClass("flex");

            var img_upload = $("<div>").addClass("image-upload").addClass("flex");
            var input_container = $("<div>").addClass("input_container").css("margin-top", "auto").css("margin-bottom", "auto");
            var label = $("<label>").attr({
                for: "file-input-pMember"+num
            });
            var img = $("<img>").css("width", "120px").css("height", "160px").attr("src", "/weparty/resources/images/addImage.png");

            var file_input = $("<input>").addClass("plannerMember_img_input"+num).css("display","none").attr({
                id: "file-input-pMember"+num,
                type: "file",
                name: "upFile"
            });
            
            //이벤트 처리
            file_input.change(imgChange);
            
            var imgDel_container = $("<div>").addClass("delBtn-container").css("text-align", "center").css("margin-bottom","10px");

            var input_name = $("<input>").addClass("form-control").css("margin-top", "10px").attr({
                type: "text",
                name: "ppMName",
                placeholder: "이름",
                required: "true"
            })

            var input_job = $("<input>").addClass("form-control").attr({
                type: "text",
                name: "ppMJob",
                placeholder: "직책",
                required: "true"
            })

            var input_instagram = $("<input>").addClass("form-control").css("margin-bottom", "15px").attr({
                type: "text",
                name: "ppMInstagram",
                placeholder: "Instagram",
                required: "true"
            })

            label.append(img);
            input_container.append(label).append(file_input).append(imgDel_container);
            img_upload.append(input_container);
            flex.append(img_upload);
            btn_container.append(addBtn).append(delBtn);
            var newMember = partyPlannerMember.append(btn_container).append(profileImg).append(flex).append(input_name).append(input_job).append(input_instagram);
            div_here.append(newMember);
            
            return;
        }
        
        //인원 상세 정보 삭제
        function delMember1(e){
        	console.log($(e).parent().parent());
        	$(e).parent().parent().remove();
        	e.dataset.clicked-1;
        }
       
        //멤버 또는 파티 플래너 선택 시 폼이 바뀌는 기능//
        $(function () {
            $("#customRadioInline1").on("click", function () {
                $("#memberEnroll-container").show();
                $("#partyPlannerEnroll-container").hide();
            })
        })

        $(function () {
            $("#customRadioInline2").on("click", function () {
                $("#memberEnroll-container").hide();
                $("#partyPlannerEnroll-container").show();
            })
        })

        // //img preview
        // var sel_files = [];

        // $(document).ready(function () {
        //     $(".form-control-file").on("change", handleImgsFilesSelect)
        // });
        // function handleImgsFilesSelect(e) {
        //     var files = e.target.files;
        //     var filesArr = Array.prototype.slice.call(files);
        //     filesArr.forEach(function (f) {
        //         if (!f.type.match("image.*")) {
        //             alert("확장자는 이미지 확장자만 가능합니다.");
        //             return;
        //         }
        //         sel_files.push(f);

        //         var reader = new FileReader();

        //         reader.onload = function (e) {
        //             var img_html = "<img src=\"" + e.target.result + "\" width='50' height='40'/>";
        //             $(".imgs_wrap").append(img_html);
        //         }
        //         reader.readAsDataURL(f);
        //     })
        // }

        // image 추가 시 input hide....아직은 안됨...위에 로고와 프로필 이미지 따로 움직여야함...지금 하나에서 추가하면 둘다 이미치 추가됨//
        $(function(){
        	$(".member_imgs_input").change(function () {
        		var target=$(this);
	            if (this.files && this.files[0]) {
	                var reader = new FileReader();
	                reader.onload = function (e) {
	                	
	                    $(target).prev().children("img").attr("src", e.target.result);
	                    var delBtn1 = $("<button>").addClass("btn").addClass("btn-outline-success").addClass("delBtn").html("삭제").attr({
	                        type: "button",
	                    	id: "delBtn1",
	                        onclick: "delImg(this)",
	                        value: "삭제",
	                    });
	                    
	                    if($(target).next().find("button").length==0){

	                    	$(target).next().append(delBtn1);
	                    }
	                }
	                reader.readAsDataURL(this.files[0]);
	            }
        	});
        });
        
        //$(function(){
        	function imgChange(e){
        		//console.log(event.target);
        		var target=$(event.target);
        		//console.log(target);
	            if (this.files && this.files[0]) {
	                var reader = new FileReader();
	                reader.onload = function (e) {
	                	
	                    $(target).prev().children("img").attr("src", e.target.result);
	                    var delBtn1 = $("<button>").addClass("btn").addClass("btn-outline-success").addClass("delBtn").html("삭제").attr({
	                        type: "button",
	                    	id: "delBtn1",
	                        onclick: "delImg(this)",
	                        value: "삭제",
	                    });
	                    
	                    if($(target).next().find("button").length==0){

	                    	$(target).next().append(delBtn1);
	                    }
	                }
	                reader.readAsDataURL(this.files[0]);
	            }
        	}
    
        	$(function(){
        	$(".logo_img_input").change(function () {
        		var target=$(this);
	            if (this.files && this.files[0]) {
	                var reader = new FileReader();
	                reader.onload = function (e) {
	                	
	                    $(target).prev().children("img").attr("src", e.target.result);
	                    var delBtn1 = $("<button>").addClass("btn").addClass("btn-outline-success").addClass("delBtn").html("삭제").attr({
	                        type: "button",
	                    	id: "delBtn1",
	                        onclick: "delImg(this)",
	                        value: "삭제",
	                    });
	                    
	                    if($(target).next().find("button").length==0){

	                    	$(target).next().append(delBtn1);
	                    }
	                }
	                reader.readAsDataURL(this.files[0]);
	            }
        	});
        });
        
        $(function(){
        	$(".plannerMember_img_input").change(function () {
        		var target=$(this);
	            if (this.files && this.files[0]) {
	                var reader = new FileReader();
	                reader.onload = function (e) {
	                	
	                    $(target).prev().children("img").attr("src", e.target.result);
	                    var delBtn1 = $("<button>").addClass("btn").addClass("btn-outline-success").addClass("delBtn").html("삭제").attr({
	                        type: "button",
	                    	id: "delBtn1",
	                        onclick: "delImg(this)",
	                        value: "삭제",
	                    });
	                    
	                    if($(target).next().find("button").length==0){

	                    	$(target).next().append(delBtn1);
	                    }
	                }
	                reader.readAsDataURL(this.files[0]);
	            }
        	});
        }); 
        
        $(function(){
        	$(".plannerMember_img_input1").change(function () {
        		var target=$(this);
	            if (this.files && this.files[0]) {
	                var reader = new FileReader();
	                reader.onload = function (e) {
	                	
	                    $(target).prev().children("img").attr("src", e.target.result);
	                    var delBtn1 = $("<button>").addClass("btn").addClass("btn-outline-success").addClass("delBtn").html("삭제").attr({
	                        type: "button",
	                    	id: "delBtn1",
	                        onclick: "delImg(this)",
	                        value: "삭제",
	                    });
	                    
	                    if($(target).next().find("button").length==0){

	                    	$(target).next().append(delBtn1);
	                    }
	                }
	                reader.readAsDataURL(this.files[0]);
	            }
        	});
        }); 
        
        $(function(){
        	$(".plannerMember_img_input2").change(function () {
        		alert("이거 되?");
        		var target=$(this);
        		console.log(target);
	            if (this.files && this.files[0]) {
	                var reader = new FileReader();
	                reader.onload = function (e) {
	                	
	                    $(target).prev().children("img").attr("src", e.target.result);
	                    var delBtn1 = $("<button>").addClass("btn").addClass("btn-outline-success").addClass("delBtn").html("삭제").attr({
	                        type: "button",
	                    	id: "delBtn1",
	                        onclick: "delImg(this)",
	                        value: "삭제",
	                    });
	                    
	                    if($(target).next().find("button").length==0){

	                    	$(target).next().append(delBtn1);
	                    }
	                }
	                reader.readAsDataURL(this.files[0]);
	            }
        	});
        }); 
        
        $(function(){
        	$(".plannerMember_img_input3").change(function () {
        		var target=$(this);
	            if (this.files && this.files[0]) {
	                var reader = new FileReader();
	                reader.onload = function (e) {
	                	
	                    $(target).prev().children("img").attr("src", e.target.result);
	                    var delBtn1 = $("<button>").addClass("btn").addClass("btn-outline-success").addClass("delBtn").html("삭제").attr({
	                        type: "button",
	                    	id: "delBtn1",
	                        onclick: "delImg(this)",
	                        value: "삭제",
	                    });
	                    
	                    if($(target).next().find("button").length==0){

	                    	$(target).next().append(delBtn1);
	                    }
	                }
	                reader.readAsDataURL(this.files[0]);
	            }
        	});
        });
        
        $(function(){
        	$(".plannerMember_img_input4").change(function () {
        		var target=$(this);
	            if (this.files && this.files[0]) {
	                var reader = new FileReader();
	                reader.onload = function (e) {
	                	
	                    $(target).prev().children("img").attr("src", e.target.result);
	                    var delBtn1 = $("<button>").addClass("btn").addClass("btn-outline-success").addClass("delBtn").html("삭제").attr({
	                        type: "button",
	                    	id: "delBtn1",
	                        onclick: "delImg(this)",
	                        value: "삭제",
	                    });
	                    
	                    if($(target).next().find("button").length==0){

	                    	$(target).next().append(delBtn1);
	                    }
	                }
	                reader.readAsDataURL(this.files[0]);
	            }
        	});
        }); 
        
        $(function(){
        	$(".plannerMember_img_input5").change(function () {
        		var target=$(this);
	            if (this.files && this.files[0]) {
	                var reader = new FileReader();
	                reader.onload = function (e) {
	                	
	                    $(target).prev().children("img").attr("src", e.target.result);
	                    var delBtn1 = $("<button>").addClass("btn").addClass("btn-outline-success").addClass("delBtn").html("삭제").attr({
	                        type: "button",
	                    	id: "delBtn1",
	                        onclick: "delImg(this)",
	                        value: "삭제",
	                    });
	                    
	                    if($(target).next().find("button").length==0){

	                    	$(target).next().append(delBtn1);
	                    }
	                }
	                reader.readAsDataURL(this.files[0]);
	            }
        	});
        }); 
        
        $(function(){
        	$(".plannerMember_img_input6").change(function () {
        		var target=$(this);
	            if (this.files && this.files[0]) {
	                var reader = new FileReader();
	                reader.onload = function (e) {
	                	
	                    $(target).prev().children("img").attr("src", e.target.result);
	                    var delBtn1 = $("<button>").addClass("btn").addClass("btn-outline-success").addClass("delBtn").html("삭제").attr({
	                        type: "button",
	                    	id: "delBtn1",
	                        onclick: "delImg(this)",
	                        value: "삭제",
	                    });
	                    
	                    if($(target).next().find("button").length==0){

	                    	$(target).next().append(delBtn1);
	                    }
	                }
	                reader.readAsDataURL(this.files[0]);
	            }
        	});
        }); 
        
        //삭제버튼 클릭 시 미리보기 없어짐
        function delImg(e) {
            console.log(e);
            console.log($(e).prev());
            $(e).parent().prev().prev().children("img").attr("src", "/weparty/resources/images/addImage.png");
            $(e).remove();
        }


        // $("#file-input").change(function () {
        //     if (this.files && this.files[0]) {
        //         var reader = new FileReader();
        //         reader.onload = function (e) {
        //             var img_html = "<img src=\"" + e.target.result + "\" width='120' height='149.8'/>";
        //             // var img_html = "<div style='background-image: url(" + e.target.result + ");'></div>";
        //             $(".imgs_wrap").append(img_html);
        //             $(this).parent().hide();

        //         }
        //         reader.readAsDataURL(this.files[0]);
        //     }
        // });

        // $("#file-input").change(function () {
        //     if (this.files && this.files[0]) {
        //         var reader = new FileReader();
        //         reader.onload = function (e) {
        //             var img_html = "<img src=\"" + e.target.result + "\" width='120' height='149.8'/>";
        //             // var img_html = "<div style='background-image: url(" + e.target.result + ");'></div>";
        //             $(".imgs_wrap").append(img_html);
        //             $(this).parent().hide();

        //         }
        //         reader.readAsDataURL(this.files[0]);
        //     }
        // });

