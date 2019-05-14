<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
<head>
<title>Login V3</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png"
   href="${pageContext.request.contextPath}/res/Login_v3/images/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="${pageContext.request.contextPath}/res/Login_v3/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="${pageContext.request.contextPath}/res/Login_v3/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="${pageContext.request.contextPath}/res/Login_v3/fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="${pageContext.request.contextPath}/res/Login_v3/vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="${pageContext.request.contextPath}/res/Login_v3/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="${pageContext.request.contextPath}/res/Login_v3/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="${pageContext.request.contextPath}/res/Login_v3/vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="${pageContext.request.contextPath}/res/Login_v3/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
   href="${pageContext.request.contextPath}/res/Login_v3/css/util.css">
<link rel="stylesheet" type="text/css"
   href="${pageContext.request.contextPath}/res/Login_v3/css/main.css">
<!--===============================================================================================-->
<script type="text/javascript" src="${pageContext.request.contextPath}/res/jquery-3.3.1.min"></script>
<script type="text/javascript">
$(function() {
	$("#loginBtn").on("click", function() {
		this.submit();
	})
})
</script>
</head>
<body>

   <div class="limiter">
      <div class="container-login100"
         style="background-image: url('${pageContext.request.contextPath}/res/Login_v3/images/bg-02.jpg');">
         <div class="wrap-login100">
           <form class="login100-form validate-form" method="post" action="${pageContext.request.contextPath }/loginCheck">
               <span class="login100-form-logo"> <i
                  class="zmdi zmdi-landscape"></i>
               </span> <span class="login100-form-title p-b-34 p-t-27"> 로그인 </span>

               <div class="wrap-input100 validate-input"
                  data-validate="Enter username">
                  <input class="input100" type="text" name="user_id"
                     placeholder="Username"> <span class="focus-input100"
                     data-placeholder="&#xf207;"></span>
               </div>

               <div class="wrap-input100 validate-input"
                  data-validate="Enter password">
                  <input class="input100" type="password" name="user_pass"
                     placeholder="Password"> <span class="focus-input100"
                     data-placeholder="&#xf191;"></span>
               </div>

               <div class="contact100-form-checkbox">
                  <input class="input-checkbox100" id="ckb1" type="checkbox"
                     name="remember-me"> <label class="label-checkbox100"
                     for="ckb1"> 아이디 기억하기 </label>
               </div>

               <div class="container-login100-form-btn">
                  <button class="login100-form-btn" id="loginBtn">로그인</button>
               </div>

               <div class="text-center p-t-90">
                  <a class="txt1" data-toggle="modal" data-target="#idModal"
                     href="#"> 아이디찾기 </a>&nbsp;&nbsp;&nbsp;&nbsp; <a class="txt1"
                     data-toggle="modal" data-target="#passModal" href="#"> 비밀번호찾기
                  </a>
               </div>
            </form>
         </div>
      </div>
   </div>


   <div id="dropDownSelect1"></div>

   <div id="idModal" class="modal fade modeless">
      <div class="modal-dialog" style="width: 400px; height: 300px;">
         <div class="modal-content">
            <div class="modal-header">
               <button type="button" class="close" data-dismiss="modal"
                  aria-hidden="true">&times;</button>
               <h4 class="modal-title">아이디찾기</h4>

            </div>
            <div class="modal-body">
               <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                  <div class="data-table-list">
                     <div class="basic-tb-hd">
                        <span>이름 :</span><input id="stName" type="text" /><br /> <span>전화번호
                           :</span><input id="stPhone" type="text" />

                     </div>
                  </div>

               </div>
               <div class="modal-footer">
                  <button type="button" id="ok" class="btn btn-default"
                     data-success="modal">확인</button>
                  <button type="button" id="cancel" class="btn btn-default"
                     data-dismiss="modal">닫기</button>
               </div>
            </div>
            <!-- /.modal-content -->
         </div>
         <!-- /.modal-dialog -->
      </div>
   </div>

   <div id="passModal" class="modal fade modeless">
      <div class="modal-dialog" style="width: 400px; height: 300px;">
         <div class="modal-content">
            <div class="modal-header">
               <button type="button" class="close" data-dismiss="modal"
                  aria-hidden="true">&times;</button>
               <h4 class="modal-title">비밀번호 찾기</h4>

            </div>
            <div class="modal-body">
               <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                  <div class="data-table-list">
                     <div class="basic-tb-hd">
                        <span>이름 :</span><input id="stName" type="text" /><br /> <span>아이디
                           :</span><input id="stName" type="password" /><br /> <span>전화번호
                           :</span><input id="stPhone" type="text" />

                     </div>
                  </div>

               </div>
               <div class="modal-footer">
                  <button type="button" id="ok" class="btn btn-default"
                     data-success="modal">확인</button>
                  <button type="button" id="cancel" class="btn btn-default"
                     data-dismiss="modal">닫기</button>
               </div>
            </div>
            <!-- /.modal-content -->
         </div>
         <!-- /.modal-dialog -->
      </div>
   </div>

   <!--===============================================================================================-->
   <script
      src="${pageContext.request.contextPath}/res/Login_v3/vendor/jquery/jquery-3.2.1.min.js"></script>
   <!--===============================================================================================-->
   <script
      src="${pageContext.request.contextPath}/res/Login_v3/vendor/animsition/js/animsition.min.js"></script>
   <!--===============================================================================================-->
   <script
      src="${pageContext.request.contextPath}/res/Login_v3/vendor/bootstrap/js/popper.js"></script>
   <script
      src="${pageContext.request.contextPath}/res/Login_v3/vendor/bootstrap/js/bootstrap.min.js"></script>
   <!--===============================================================================================-->
   <script
      src="${pageContext.request.contextPath}/res/Login_v3/vendor/select2/select2.min.js"></script>
   <!--===============================================================================================-->
   <script
      src="${pageContext.request.contextPath}/res/Login_v3/vendor/daterangepicker/moment.min.js"></script>
   <script
      src="${pageContext.request.contextPath}/res/Login_v3/vendor/daterangepicker/daterangepicker.js"></script>
   <!--===============================================================================================-->
   <script
      src="${pageContext.request.contextPath}/res/Login_v3/vendor/countdowntime/countdowntime.js"></script>
   <!--===============================================================================================-->
   <script
      src="${pageContext.request.contextPath}/res/Login_v3/js/main.js"></script>

</body>
</html>