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
<script type="text/javascript" src="${pageContext.request.contextPath}/res/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
$(function() {
	$("#loginBtn").on("click", function() {
		var form = $(this).closest("form");
		$(form).submit();
	})
	
	$("#findIdBtn").on("click", function(event) {
// 		event.preventDefault();
// 		let inputs = $(".findIdForm").find(":input");
// 		let sendData = {};
// 		$(inputs).each(function(index, input){
// 			let prop = $(input).attr("name");
// 			let value = $(input).val();
// 			sendData[prop]=value;
// 		});
// 		console.log(sendData);
// 		let jsonData = JSON.stringify(sendData);
// 		console.log(jsonData);
// 		$.ajax({
// 			url : "${pageContext.request.contextPath }/findId",
// 			method : "post",
// 			data : jsonData,
// 			contentType:"application/json;charset=UTF-8",
// 			dataType : "json", // request header(Accept), response header(Content-Type)
// 			success : function(resp) {
// 				let boardList = resp.dataList;
// 				let pagingHTML = resp.pagingHTML;
// 				let trTags = [];
// 				$(boardList).each(function(idx, board){
// 					let tr = $("<tr>")
// 									.append(
// 										$("<td>").text(board.rnum)		
// 										,$("<td>").text(board.bo_no)		
// 										,$("<td>").append(
// 													$("<a>").text(board.bo_title)
// 															.attr("href", "${pageContext.request.contextPath }/board/boardView.do?what="+board.bo_no)
// 												 )
// 										,$("<td>").text(board.bo_writer)		 
// 										,$("<td>").text(board.bo_date)		 
// 										,$("<td>").text(board.bo_hit)		 
// 									);
// 					trTags.push(tr);
// 				});
// 				$("#listBody").html(trTags);
// 				$('#pagingArea').html(resp.pagingHTML);
// 			},
// 			error : function(errorResp) {
// 				console.log(errorResp.status);
// 			}
// 		});
// 		return false;
	})
	
})
</script>
<style>
	body .findIdForm {
	  display: none;
	}
	body .findPassForm {
	  display: none;
	}
</style>
</head>
<body>

   <div class="limiter">
      <div class="container-login100"
         style="background-image: url('${pageContext.request.contextPath}/res/Login_v3/images/bg-02.jpg');">
         <div class="wrap-login100 loginForm">
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
                  <a class="txt1 findId active"  href="#"> 아이디찾기 </a>&nbsp;&nbsp;&nbsp;&nbsp;
                  <a class="txt1 findPass"  href="#"> 비밀번호찾기  </a>
               </div>
            </form>
         </div>
         
         <!-- 아이디찾기 폼 -->
         <div class="wrap-login100 findIdForm">
<!--            <form class="login100-form validate-form"  -->
<%--            method="post" action="${pageContext.request.contextPath }/findId" --%>
<!--            > -->
               <span class="login100-form-logo"> <i
                  class="zmdi zmdi-landscape"></i>
               </span> <span class="login100-form-title p-b-34 p-t-27"> 아이디찾기 </span>

               <div class="wrap-input100 validate-input"
                  data-validate="Enter username">
                  <input class="input100" type="text" name="user_name"
                     placeholder="이름"> <span class="focus-input100"
                     data-placeholder="&#xf207;"></span>
               </div>

               <div class="wrap-input100 validate-input"
                  data-validate="Enter password">
                  <input class="input100" type="password" name="user_hp"
                     placeholder="전화번호"> <span class="focus-input100"
                     data-placeholder="&#xf191;"></span>
               </div>

               <div class="container-login100-form-btn">
                  <button class="login100-form-btn" id="findIdBtn" data-toggle="modal" data-target="#idModal" >확인</button>
                  <label class="label-checkbox100" for="ckb20" style="display: none;"></label>
               </div>

               <div class="text-center p-t-90">
                  <a class="txt1 login"  href="#"> 로그인 </a>&nbsp;&nbsp;&nbsp;&nbsp; 
                  <a class="txt1 findPass"  href="#"> 비밀번호찾기</a>
               </div>
<!--             </form> -->
         </div>
         
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

			<!-- 비밀번호찾기 폼 -->
         <div class="wrap-login100 findPassForm">
           <form class="login100-form validate-form" method="post" action="${pageContext.request.contextPath }/findPass">
               <span class="login100-form-logo"> <i
                  class="zmdi zmdi-landscape"></i>
               </span> <span class="login100-form-title p-b-34 p-t-27"> 비밀번호 찾기 </span>

               <div class="wrap-input100 validate-input"
                  data-validate="Enter username">
                  <input class="input100" type="text" name="user_id"
                     placeholder="아이디"> <span class="focus-input100"
                     data-placeholder="&#xf207;"></span>
               </div>

               <div class="wrap-input100 validate-input"
                  data-validate="Enter password">
                  <input class="input100" type="password" name="user_pass"
                     placeholder="핸드폰번호"> <span class="focus-input100"
                     data-placeholder="&#xf191;"></span>
               </div>

               <div class="container-login100-form-btn">
                  <button class="login100-form-btn" id="findPassBtn">확인</button>
                  <label class="label-checkbox100" for="ckb20" style="display: none;"></label>
               </div>

               <div class="text-center p-t-90">
                  <a class="txt1 findId active"  href="#"> 아이디찾기 </a>&nbsp;&nbsp;&nbsp;&nbsp;
                  <a class="txt1 login"  href="#"> 로그인 </a>&nbsp;&nbsp;&nbsp;&nbsp; 
               </div>
            </form>
         </div>
      </div>
   </div>

	<script type="text/javascript">
	$('.text-center .txt1').click(function(){
	    if ($(this).hasClass('findId')) {
	        $('.text-center .txt1').removeClass('active');
	        $(this).addClass('active');
	        $('.loginForm').hide();
	        $('.findPassForm').hide();
	        $('.findIdForm').show();
	    }
	    if ($(this).hasClass('findPass')) {
	        $('.text-center .txt1').removeClass('active');
	        $(this).addClass('active');
	        $('.loginForm').hide();
	        $('.findIdForm').hide();
	        $('.findPassForm').show();
	    }
	    if ($(this).hasClass('login')) {
	        $('.text-center .txt1').removeClass('active');
	        $(this).addClass('active');
	        $('.findIdForm').hide();
	        $('.findPassForm').hide();
	        $('.loginForm').show();
	    }
	});
	$('.container .bg').mousemove(function(e){
	    var amountMovedX = (e.pageX * -1 / 30);
	    var amountMovedY = (e.pageY * -1 / 9);
	    $(this).css('background-position', amountMovedX + 'px ' + amountMovedY + 'px');
	});
	</script>

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