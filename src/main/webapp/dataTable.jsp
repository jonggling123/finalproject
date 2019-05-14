<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>

<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">

</head>
<script type="text/javascript">

//검색 조건 커스터마이징
$.fn.dataTable.ext.search.push(
	    function( settings, data, dataIndex ) {
	        var selectId = $('#ids').val();
	        var id = data[1]; // use data for the age column
	 		
        	//작동 하는 조건
	        if (
	        	selectId=="전체" || selectId==id
	        ){
	            return true;
	        }
	        
	        return false;
	    }
	);
	
$(document).ready(function() {
	//비동기 데이터 처리 및 동적 태그 생성(userVo 참고)
    var table = $('#example').DataTable({
        ajax: {
         "type" : "get",
            "url" : "${pageContext.request.contextPath}/dataTable/list",
               "dataType": "JSON"
            },
           columns: [
        	   		  { data: "checkbox" },
                      { data: "user_id" },
                      { data: "user_name" },
                      { data: "user_pass" },
                      { data: "button" }
                  ]
       });
	
	//검색 조건 태그 추가
	var select = $('<select>').prop('id', "ids").append(
				$('<option>').text("전체")
				, $('<option>').text("b001")
				, $('<option>').text("c001")
				, $('<option>').text("d001")
			);
	var button = $('<button>').prop('type', "button")
				.prop('id', "searchBtn").text("검색");
	$('#example_filter').prepend(select).append(button);
     
    
	//최상단 체크박스 클릭 시 모든 체크박스 선택
    $('#head').on('click', 'input', function() {
    	console.log($(this));
    	var checked = $(this).prop('checked');
    	if(checked==true){
			$('.checkbox').prop('checked', true);
    	}else{
			$('.checkbox').prop('checked', false);    		
    	}
    	
	});
    
    
    //버튼 or 체크박스 클릭 시 해당 tr의 데이터 수집
    packaging = function(){
    	var tds = $(this).parent().siblings();
    	var dataArr = new Array($(tds).length);
    	
    	console.log($(tds[0]).text());
    	var zero = "";
    	if($(tds[0]).text()==""){
    		zero = $(tds[0]).find('input').attr('name');
    	}else{
    		zero = $(tds[0]).text();
    	}
    	
    	$.each(tds, function(idx, value){
    		if(idx==0){
    			dataArr[idx] = zero
    		}else{
    			dataArr[idx] = $(value).text();
    		}
    	});
    	
    	alert(dataArr);
    }
    
	
    //검색 keyup 이벤트 삭제
    $('[type=search]').off();
    
    //이벤트 처리(검색 조건)
    $('#searchBtn').on('click', function() {
    	//위에서 삭제한 검색 이벤트 재설정
    	$.fn.dataTable.ext.search.push(
   		    function( settings, data, dataIndex ) {
   		        var searchWord = $('[type=search]').val();
   		        
   		        var id = data[1]; // use data for the age column
   		        var name = data[2];
   		        var pass = data[3];
   		 		
   	        	//작동 하는 조건
   		        if (
   		        	searchWord=="" || searchWord==id
   		        	|| searchWord==name || searchWord==pass
   		        ){
   		            return true;
   		        }
   		        
   		        return false;
   		    }
    	);
        table.draw();
    });
    
    
    
    //데이터 테이블 이벤트 처리(버튼, 체크박스)
    $('#dataBody').on('click', 'button', packaging);
    $('#dataBody').on('click', 'input', packaging);
    
} );
</script>
<body>
<!-- 	데이터를 뿌려줄 테이블 -->
	<table id="example" class="display" style="width:100%">
        <thead id="head">
            <tr>
            	<th><input type="checkbox" id="checkAll" /></th>
                <th>user_id</th>
                <th>user_name</th>
                <th>user_pass</th>
                <th>button</th>
            </tr>
        </thead>
        <tbody id="dataBody">
        </tbody>
    </table>
</body>
</html>