<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>
	function funReply(){	
		$("span[name='board_sub_title']").text('답변');
		$("button[name='display_reply']").css("display", "none")
	}	
	
	
	$(function(){
		$("button[name='x']").on("click", function(){
			$("span[name='board_sub_title']").text('수정');
			$("button[name='display_reply']").css("display", "")
		})
		
		$("button[name='getPostBotton']").on("click", function(){
			var postNo = $(this).val();

			$.ajax({
				url : "/mir9/board/json/getPostData/"+postNo,
				method : "GET",
				dataType : "JSON",	
				headers : {
					"Accept" : "application/json",
					"Content-Type" : "application/json"	 						
				} ,
				success : function(JSONData, status){
					
					var display : '';
					display = 
					
					$("#getPostTitle").val(JSONData.postTitle);
					$("#getThombnailName").val(JSONData.postThombnail);
					$("#getPostName").val(JSONData.postFile);
					CKEDITOR.instances.editor1.setData(JSONData.postContents);
				}
				
			})
			
			var memberNo = $(this).find('input').val();
			
			$.ajax({
				url : "/mir9/board/json/getMemberData2/"+memberNo,
				method : "GET",
				dataType : "JSON",	
				headers : {
					"Accept" : "application/json",
					"Content-Type" : "application/json"	 						
				} ,
				success : function(JSONData, status){
					
					$("#postGetName").val(JSONData.lastName+JSONData.firstName);
					$("#postGetPhone").val(JSONData.phone);
					$("#postGetEmail").val(JSONData.email);
					
				}
				
			})
			
			$.ajax({
				url : "/mir9/board/json/postViewCount/"+postNo,
				method : "GET",
				dataType : "JSON",	
				headers : {
					"Accept" : "application/json",
					"Content-Type" : "application/json"	 						
				} ,
				success : function(JSONData, status){
					
				}
				
			})
			
			
		})
	})
			
	
</script>

<div class="modal fade" id="modalContent4" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog">
        <div class="modal-content">
            <form name="getPostForm" method="post" enctype="multipart/form-data">
            
            <div class="modal-header">
                <button type="button" name="x" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                <h4 class="modal-title" id="myModalLabelPortfolio">게시물 관리</h4>
            </div>
            <div class="modal-body">

            <h4><p class="text-light-blue"><i class="fa fa-fw fa-info-circle"></i> 글 <span name="board_sub_title">수정</span></p></h4>
            <table class="table table-bordered">
            <tbody><tr>
                <td class="menu">작성자</td>
                <td align="left"><input type="text" name="name" id="postGetName" class="form-control input-sm"></td>
            </tr>
            <c:if test="${board2.option.optionAddinfo eq 'y'}">
            <tr>
                <td class="menu">휴대전화</td>
                <td align="left"><input type="text" name="phone" id="postGetPhone" class="form-control input-sm" style="width:50%;"></td>
            </tr>
            <tr>
                <td class="menu">이메일</td>
                <td align="left"><input type="text" name="email" id="postGetEmail" class="form-control input-sm" style="width:50%;"></td>
            </tr>
            </c:if>
            <tr>
                <td class="menu">제목</td>
                <td align="left">
                <span style="float:left;width:80%;"><input type="text" name="postTitle" id="getPostTitle" class="form-control input-sm"></span>
                <c:if test="${board2.option.optionNotice eq 'y'}">
	                <span>&nbsp;&nbsp;
	                	<input type="checkbox" name="titleNotice" value="y">공지사항
	                </span>
	            </c:if>
                </td>
            </tr>
			<tr>
                 <td class="menu">내용</td>
                 <td align="left">
                 	<textarea name="postContents" id="editor1" rows="10" cols="80" style="visibility: hidden; display: none;"></textarea>
                 	<script type="text/javascript">
					 CKEDITOR.replace('editor1'
					                , {filebrowserUploadUrl:'/mir9/board/imageUpload'}
					 );
					</script>	                 	
                 </td>
            </tr>
            <c:if test="${board2.option.optionSecret eq 'y'}">
	            <td class="menu">비밀글</td>
	            <td align="left">
	                <span>&nbsp;&nbsp;
	                	<input type="checkbox" name="is_secret" value="y"></span>
	                </td>
	            <tr>
            </c:if>            
            <tr>
                <td class="menu">썸네일 파일</td>
                <td align="left">
                <input type="file" name="ThombnailName" id="getThombnailName" class="form-control input-sm" style="width:80%; display:inline;">
            
                <span id="display_thumbnail">
                	<button type="button" onclick="winOpen('?tpf=common/image_view&amp;file_name=product/'+$('#code').val()+'_1');" class="btn btn-success btn-xs">보기</button>
                	<button type="button" onclick="confirmIframeDelete('?tpf=common/image_delete&amp;file_name=product/'+$('#code').val()+'_1&amp;table=product&amp;code='+$('#code').val());" class="btn btn-danger btn-xs">삭제</button>
                </span>
            
                </td>
            </tr>
            <tr>
                <td class="menu">파일</td>
                <td align="left">
                <p>
                    <span id="file_list"></span>
                </p>

                <p style="padding-top:10px; float:left; width:100%;">
                    <button type="button" class="btn btn-primary btn-xs" onclick="addFile();"><span class="glyphicon glyphicon-plus"></span> 파일추가</button><br>
                </p>
                    <div id="list_file"><input type="file" name="postName" id="getPostFile" class="form-control input-sm" style="width:100%; display:inline; margin-bottom:10px;"></div>
                </td>
            </tr>
            </tbody>
            </table>
            <c:if test="${board2.option.optionComment eq 'y'}">
			<div id="displayMemo" style="">
            	<h4>
            		<p class="text-light-blue"><i class="fa fa-fw fa-info-circle"></i> 댓글 관리</p>
            	</h4>
            	<span id="memo_list">
            		<table class="table table-bordered">
            			<tbody>
            			<tr>  
            				<td class="menu" style="width:80px;">글쓴이</td>  
            				<td class="menu">내용</td>  
            				<td class="menu" style="width:60px;">등록일</td>  
            				<td class="menu" style="width:50px;">명령</td>
            			</tr>
            			<tr>  
            				<td>asd</td>  
            				<td align="left">asd</td>  
            				<td>2022-03-31 18:26</td>  
            				<td><button type="button" class="btn btn-danger btn-xs" onclick="deleteMemo(69,23);">삭제</button></td>
            			</tr>
            			</tbody>
            		</table>
            	</span>
            </div>
            </c:if>

            </div>
            <div class="modal-footer">
            <button type="button" onclick="" class="btn btn-primary">확인</button>&nbsp;&nbsp;&nbsp;
            <c:if test="${board2.option.optionAnswer eq 'y'}">
            	<button type="button" onclick="funReply()" name="display_reply" style="" class="btn btn-danger">답변 페이지로 전환</button>
            </c:if>
            </div>
            <input type="hidden" value="${board.boardNo}" name="boardNo">
        </form></div>
    </div>
</div>