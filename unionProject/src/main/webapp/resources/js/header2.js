/**
 * 
 */


/*----------My JS--------------*/
	
//-----   kakao login  ------//
	 document.addEventListener("DOMContentLoaded", function () {

            // @details 카카오톡 Developer API 사이트에서 발급받은 JavaScript Key
            Kakao.init("3e1bbf2408df0aeb1a3842902a3c1b61");

            // @breif 카카오 로그인 버튼을 생성합니다.
            Kakao.Auth.createLoginButton({
                container: "#kakao-login-btn"
                , success: function (authObj) {
                	
                	
                     console.log( authObj );

                    Kakao.API.request({
                        url: "/v1/user/me"
                        , success: function (res) {
                            // console.log( res );

//                            // @breif 아이디
//                            document.getElementById("kakaoIdentity").innerHTML = res.id;
//
//                            // @breif 닉네임
//                            document.getElementById("kakaoNickName").innerHTML = res.properties.nickname;
//
//                            // @breif 프로필 이미지
//                            document.getElementById("kakaoProfileImg").src = res.properties.profile_image;
//
//                            // @breif 썸네일 이미지
//                            document.getElementById("kakaoThumbnailImg").src = res.properties.thumbnail_image;

                        }, fail: function (error) {
                            alert(JSON.stringify(error));
                        }
                    });
                }, fail: function (error) {
                    alert(JSON.stringify(error));
                }
            });
        });
	 
	 
	 // google login
	 function onSuccess(googleUser) {
	      console.log('Logged in as: ' + googleUser.getBasicProfile().getName());
	    }
	    function onFailure(error) {
	      console.log(error);
	    }
	    function init() {
	      gapi.signin2.render('g-signin2', {
	        'scope': 'profile email',
	        'longtitle': true,
	        'onsuccess': onSuccess,
	        'onfailure': onFailure
	      });
	    }