<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<script type="text/javascript" src="${pageContext.request.contextPath }/res/js/jquery-3.3.1.min.js"></script>
<!-- <script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.js"></script> -->
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
<script type="text/javascript" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>

<script type="text/javascript">
	$(function() {
		$('#data-table-basic').DataTable({
	        ajax: {
	            "type" : "get",
	               "url" : "${pageContext.request.contextPath}/board",
	                  "dataType": "JSON"
	               },
	              columns: [
	                         { data: "board_type" },
	                         { data: "board_no" },
	                         { data: "board_title" },
	                         { data: "replycount" },
	                         { data: "user_id" },
	                         { data: "board_date" },
	                         { data: "board_hit" }
	                     ]
	          });
	});
</script>

	<!--    메뉴 소개 영역 -->
    <div class="breadcomb-area">
      <div class="container">
         <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
               <div class="breadcomb-list">
                  <div class="row">
                     <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                        <div class="breadcomb-wp">
                           <div class="breadcomb-ctn">
                              <h2>게시판</h2>
                              <p>게시판페이지 <span class="bread-ntd"></span></p>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
   
   <div class="data-table-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="data-table-list">
                        <div class="table-responsive">
                            <div id="data-table-basic_wrapper" class="dataTables_wrapper">
                            <div class="dataTables_length" id="data-table-basic_length">
                            <div id="data-table-basic_filter" class="dataTables_filter sangyup">
                            <span>분류<select><OPTION>공지사항</OPTION><OPTION>과목</OPTION><OPTION>일반</OPTION></select></span>
                            <button class="btn btn-default notika-btn-default" id="asd">등록</button>
                            </div>
                            <table id="data-table-basic" class="table table-striped dataTable"> 
                                <thead>
                                    <tr>
	                                    <th>분류</th>
	                                    <th>글번호</th>
	                                    <th>제목</th>
	                                    <th>댓글수</th>
	                                    <th>작성자</th>
	                                    <th>작성일</th>
	                                    <th>조회수</th>
                                    </tr>
                                </thead>
                                <tbody>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
    
