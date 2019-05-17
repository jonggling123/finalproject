<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
* [[개정이력(Modification Information)]]
* 수정일                 수정자      수정내용
* ----------  ---------  -----------------
* 2019. 5. 2.      AA      최초작성
* Copyright (c) 2019 by DDIT All right reserved
*
* 관리자 강의운영관리(평가정책관리) 화면
 --%>

<script type="text/javascript">
	$(function() {
		$('.col1').click(function() {
			  // reset modal if it isn't visible
			  if (!($('.modal.in').length)) {
			    $('.modal-dialog').css({
			      top: 0,
			      left: 0
			    });
			  }
			  $('#myModal').modal({
			    backdrop: false,
			    show: true
			  });

			  $('.modal-dialog').draggable({
			    handle: ".modal-header"
			  });
			});
	});
</script>
<div class="breadcomb-area">
      <div class="container">
         <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
               <div class="breadcomb-list">
                  <div class="row">
                     <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                        <div class="breadcomb-wp">
                           <div class="breadcomb-ctn">
                              <h2>강의운영관리</h2>
                              <p> <span class="bread-ntd"></span></p>
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
                            <label>Show <select name="data-table-basic_length" aria-controls="data-table-basic" class="">
                            <option value="10">10</option><option value="25">25</option><option value="50">50</option><option value="100">100</option></select>
                             entries</label>
                            <div id="data-table-basic_filter" class="dataTables_filter sangyup">
                           
                             <span>검색<select><OPTION>학기선택</OPTION><OPTION>1학기</OPTION><OPTION>2학기</OPTION></select></span>
                            <span><select><option>교과목명</option><option>C프로그래밍</option></select></span>
                            
                            <input type="search" placeholder="" aria-controls="data-table-basic" />
                            <button class="btn btn-default notika-btn-default">검색</button>
                            
                            <div>     
                               		  <select style="float:right;"><OPTION>10건씩 정렬</OPTION>20건씩 정렬<OPTION></OPTION><OPTION></OPTION></select>
                            </div>
                            
                            </div><table id="data-table-basic" class="table table-striped dataTable" role="grid" aria-describedby="data-table-basic_info">
                                <thead>
                                    <tr role="row">
                                    <th class="sorting_asc" tabindex="0" aria-controls="data-table-basic" rowspan="2" colspan="1" aria-sort="ascending" aria-label="Name: activate to sort column descending" style="width: 189px;">년도</th>
                                    <th class="sorting" tabindex="0" aria-controls="data-table-basic" rowspan="2" colspan="1" aria-label="Position: activate to sort column ascending" style="width: 292px;">학기</th>
                                    <th class="sorting" tabindex="0" aria-controls="data-table-basic" rowspan="2" colspan="1" aria-label="Office: activate to sort column ascending" style="width: 145px;">학기기간</th>
                                    <th class="sorting" tabindex="0" aria-controls="data-table-basic" rowspan="2" colspan="4" aria-label="Age: activate to sort column ascending" style="width: 52px;">상대평가 성적분포</th>
                                    </tr>
                                    
                                </thead>
                                <tbody>
                                <tr>
                                    <th></th>
                                    <th></th>
                                    <th></th>
                                    <th>A</th>
                                    <th>B</th>
                                    <th>C</th>
                                    <th>D~F</th>
                                    </tr>
                                <tr role="row" class="odd">
                                        <td class="sorting_1">2019년</td>
                                        <td>1학기</td>
                                        <td class="col1">2014-08-18~2015-03-31 23:59:59</td>
                                        <td>40%</td>
                                        <td>30%</td>
                                        <td>20%</td>
                                        <td>10%</td>
                                    </tr><tr role="row" class="even">
                                        <td class="sorting_1">2019년</td>
                                        <td>2학기</td>
                                        <td class="col1">2014-08-18~2015-03-31 23:59:59</td>
                                        <td>40%</td>
                                        <td>30%</td>
                                        <td>20%</td>
                                        <td>10%</td>
                                    </tr></tbody>
                                <tfoot>
                                    
                                </tfoot>
                            </table><div class="dataTables_info" id="data-table-basic_info" role="status" aria-live="polite">Showing 1 to 10 of 57 entries</div><div class="dataTables_paginate paging_simple_numbers" id="data-table-basic_paginate"><a class="paginate_button previous disabled" aria-controls="data-table-basic" data-dt-idx="0" tabindex="0" id="data-table-basic_previous">Previous</a><span><a class="paginate_button current" aria-controls="data-table-basic" data-dt-idx="1" tabindex="0">1</a><a class="paginate_button " aria-controls="data-table-basic" data-dt-idx="2" tabindex="0">2</a><a class="paginate_button " aria-controls="data-table-basic" data-dt-idx="3" tabindex="0">3</a><a class="paginate_button " aria-controls="data-table-basic" data-dt-idx="4" tabindex="0">4</a><a class="paginate_button " aria-controls="data-table-basic" data-dt-idx="5" tabindex="0">5</a><a class="paginate_button " aria-controls="data-table-basic" data-dt-idx="6" tabindex="0">6</a></span><a class="paginate_button next" aria-controls="data-table-basic" data-dt-idx="7" tabindex="0" id="data-table-basic_next">Next</a></div></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    
    <div id="myModal" class="modal modelss" >
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<p>평가설정</p>	
			</div>
			<div class="modal-body" >
				<div class="data-table-area">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="data-table-list">
                       
                        <div class="table-responsive">
                            <div id="data-table-basic_wrapper" class="dataTables_wrapper">
                            <div class="dataTables_length" id="data-table-basic_length">
                            <label>Show <select name="data-table-basic_length" aria-controls="data-table-basic" class="">
                            <option value="10">10</option><option value="25">25</option><option value="50">50</option><option value="100">100</option></select>
                             entries</label>
                            <div id="data-table-basic_filter" class="dataTables_filter sangyup">
                           
                             <span>검색<select><OPTION>학기선택</OPTION><OPTION>1학기</OPTION><OPTION>2학기</OPTION></select></span>
                            <span><select><option>교과목명</option><option>C프로그래밍</option></select></span>
                            
                            <input type="search" placeholder="" aria-controls="data-table-basic" />
                            <button class="btn btn-default notika-btn-default">검색</button>
                            
                            <div>     
                               		  <select style="float:right;"><OPTION>10건씩 정렬</OPTION>20건씩 정렬<OPTION></OPTION><OPTION></OPTION></select>
                            </div>
                            
                            </div><table id="data-table-basic" class="table table-striped dataTable" role="grid" aria-describedby="data-table-basic_info">
                                <thead>
                                   
                                </thead>
                                <tbody>
                                
                                <tr role="row" class="odd">
                                        <td class="sorting_1">학기구분</td>
                                        <td>1학기</td>
                                        <td class="col1">경영학부</td>
                                        <td>년도</td>
                                        <td colspan="6">2013년도 2학기</td>
                                       
                                    </tr><tr role="row" class="even">
										<td>상대평가 성적분포 설정(%)</td>
										<td>A</td>
										<td>40%</td>
										<td>B</td>
										<td>40%</td>
										<td>C</td>
										<td>40%</td>
										<td>D~F</td>
										<td>40%</td>
										<td>총</td>
										<td>100%</td>
									</tr>
									<tr>
									<td rowspan="3" colspan="11">
										실제 성적 분포는 아래의 예시와 같이 이뤄집니다.<br/>
										예시) A:30% B:40% C:20% D~F:10%<br/>
 										A:0 ~ 30% B:0 ~ 40% C:0 ~ 20% D~F:0 ~ 10%
										
									</td>
									</tr>
									</tbody>
                                <tfoot>
                                    
                                </tfoot>
                            </table><div class="dataTables_info" id="data-table-basic_info" role="status" aria-live="polite">Showing 1 to 10 of 57 entries</div><div class="dataTables_paginate paging_simple_numbers" id="data-table-basic_paginate"><a class="paginate_button previous disabled" aria-controls="data-table-basic" data-dt-idx="0" tabindex="0" id="data-table-basic_previous">Previous</a><span><a class="paginate_button current" aria-controls="data-table-basic" data-dt-idx="1" tabindex="0">1</a><a class="paginate_button " aria-controls="data-table-basic" data-dt-idx="2" tabindex="0">2</a><a class="paginate_button " aria-controls="data-table-basic" data-dt-idx="3" tabindex="0">3</a><a class="paginate_button " aria-controls="data-table-basic" data-dt-idx="4" tabindex="0">4</a><a class="paginate_button " aria-controls="data-table-basic" data-dt-idx="5" tabindex="0">5</a><a class="paginate_button " aria-controls="data-table-basic" data-dt-idx="6" tabindex="0">6</a></span><a class="paginate_button next" aria-controls="data-table-basic" data-dt-idx="7" tabindex="0" id="data-table-basic_next">Next</a></div></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
	
				
			</div>
			<div class="modal-footer">
			<button type="button" class="btn btn-primary" id ="updateBtn">저장</button>
			<button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
			</div>
		</div>
	</div>
</div>

