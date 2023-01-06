<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- content에 자신의 OAuth2.0 클라이언트ID를 넣습니다. -->
<meta name ="google-signin-client_id" content="AIzaSyDBAyvfoBj784JjkNBP8K_jKpSyfzwC2JE">
<script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
<ul>
   <li onclick="kakaoLogin();">
      <a href="javascript:void(0)">
          <img width="200px" src="../img/kakaoLogin.png" alt="카카오로그인">
      </a>
   </li>
   <li onclick="kakaoLogout();">
      <a href="javascript:void(0)">
          <span>카카오 로그아웃</span>
      </a>
   </li>
</ul>
<ul>
   <li>
      <!-- 아래와같이 아이디를 꼭 써준다. -->
      <a id="naverIdLogin_loginButton" href="javascript:void(0)">
          <img width="200px" src="../img/naverLogin.png" alt="네이버로그인">
      </a>
   </li>
   <li onclick="naverLogout(); return false;">
      <a href="javascript:void(0)">
          <span>네이버 로그아웃</span>
      </a>
   </li>
</ul>




</body>



<script>

var naverLogin = new naver.LoginWithNaverId(
      {
         clientId: "73hvBJ8MG3yX2vNbVzeN", //내 애플리케이션 정보에 cliendId를 입력해줍니다.
         callbackUrl: "http://localhost:9282/naverLogin", // 내 애플리케이션 API설정의 Callback URL 을 입력해줍니다.
         isPopup: false,
         callbackHandle: true
      }
   );   

naverLogin.init();

window.addEventListener('load', function () {
   naverLogin.getLoginStatus(function (status) {
      if (status) {
         var email = naverLogin.user.getEmail(); // 필수로 설정할것을 받아와 아래처럼 조건문을 줍니다.
          
         console.log(naverLogin.user); 
          
            if( email == undefined || email == null) {
            alert("이메일은 필수정보입니다. 정보제공을 동의해주세요.");
            naverLogin.reprompt();
            return;
         }
      } else {
         console.log("callback 처리에 실패하였습니다.");
      }
   });
});


var testPopUp;
function openPopUp() {
    testPopUp= window.open("https://nid.naver.com/nidlogin.logout", "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,width=1,height=1");
}
function closePopUp(){
    testPopUp.close();
}

function naverLogout() {
   openPopUp();
   setTimeout(function() {
      closePopUp();
      }, 1000);
   
   
}






Kakao.init('38fcbbc356cdd719e19ce18e5b27584d'); //발급받은 키 중 javascript키를 사용해준다.
console.log(Kakao.isInitialized()); // sdk초기화여부판단
//카카오로그인
function kakaoLogin() {
    Kakao.Auth.login({
      success: function (response) {
        Kakao.API.request({
          url: '/v2/user/me',
          success: function (response) {
             console.log(response)
          },
          fail: function (error) {
            console.log(error)
          },
        })
      },
      fail: function (error) {
        console.log(error)
      },
    })
  }
//카카오로그아웃  
function kakaoLogout() {
    if (Kakao.Auth.getAccessToken()) {
      Kakao.API.request({
        url: '/v1/user/unlink',
        success: function (response) {
           console.log(response)
        },
        fail: function (error) {
          console.log(error)
        },
      })
      Kakao.Auth.setAccessToken(undefined)
    }
  }  
</script>
</html>