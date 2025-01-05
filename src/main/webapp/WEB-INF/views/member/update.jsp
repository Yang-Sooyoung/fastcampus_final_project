<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>fastcampus</title>
  <script src="https://code.jquery.com/jquery-1.11.3.js"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
<%@include file ="../header.jsp" %>
<section class="container py-3 d-flex flex-column justify-content-center">
<h4 class="text-center mt-3 mb-4"><u>고객정보수정</u></h4>
<div class="border px-3 py-3 mb-3">
 <div class="row mb-3">
    <label for="inputEmail3" class="col-sm-3 col-form-label text-center">고객번호 : </label>
    <div class="col-sm-8">
      <input type="number" class="form-control" id="custNo" value="${member.custNo}" readonly>
    </div>
  </div>
  <div class="row mb-3">
    <label for="inputPassword3" class="col-sm-3 col-form-label text-center">고객이름 :</label>
    <div class="col-sm-8">
      <input type="text" class="form-control" id="custName" value="${member.custName}">
    </div>
  </div>
   <div class="row mb-3">
    <label for="inputPassword3" class="col-sm-3 col-form-label text-center">전화번호 :</label>
    <div class="col-sm-8">
      <input type="text" class="form-control" id="phone" value="${member.phone}">
    </div>
  </div>
   <div class="row mb-3">
    <label for="inputPassword3" class="col-sm-3 col-form-label text-center">이메일 :</label>
    <div class="col-sm-8">
      <input type="email" class="form-control" id="custEmail" value="${member.custEmail}">
    </div>
  </div>
   <div class="row mb-3">
    <label for="inputPassword3" class="col-sm-3 col-form-label text-center">고객등급(P,G,S) :</label>
    <div class="col-sm-8">
      <input type="text" class="form-control" id="grade" value="${member.grade}">
    </div>
  </div>
  <input type="hidden" value="" id="joinDate" value="${member.joinDate}"/>
  <div class="d-grid gap-2 d-md-block text-center">
	<button class="btn btn-outline-success me-3" type="button" id="update">수정</button>
	<button class="btn btn-outline-secondary" type="button" id="list">조회</button>
  </div>
 </div>
</section>
<%@include file ="../footer.jsp" %>
</body>
<script>
$(document).ready(function(){
	$("#list").on("click", function() {
		location.href="/member/list";
	});
	
	$("#update").on("click", function() {
		if($("#custName").val() == ""){
		    alert("고객이름이 입력되지 않았습니다.");
		    $("#custName").focus();
		    return false;
		} else if($("#phone").val() == ""){
		    alert("전화번호가 입력되지 않았습니다.");
		    $("#phone").focus();
		    return false;
		} else if($("#custEmail").val() == ""){
		    alert("이메일이 입력되지 않았습니다.");
		    $("#custEmail").focus();
		    return false;
		} else if($("#grade").val() == ""){
		    alert("고객등급이 입력되지 않았습니다.");
		    $("#grade").focus();
		    return false;
		}
		$.ajax({
	        type : "POST",            
	        url : "/member/update",
	        data : {cust_no: $("#custNo").val(), cust_name: $("#custName").val(), phone: $("#phone").val(), 
        	 		join_date: $("#joinDate").val(), cust_email: $("#custEmail").val(), grade: $("#grade").val()},        
	        success : function(res){ 
	            alert("수정 완료.");
	            location.href="/member/list";
	        },
	        error : function(XMLHttpRequest, textStatus, errorThrown){
	            alert("등록 실패.");
	        }
	    });
	});
});
</script>
</html>