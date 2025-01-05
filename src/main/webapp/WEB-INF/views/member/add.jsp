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
<section class="container py-3 flex-column justify-content-center">
<h4 class="text-center mt-3 mb-4"><u>고객등록화면</u></h4>
<div class="border px-3 py-3 mb-3">
 <div class="row mb-3">
    <label for="inputEmail3" class="col-sm-3 col-form-label text-center">고객번호 : </label>
    <div class="col-sm-8">
      <input type="number" class="form-control" id="custNo" value="${count+1}" readonly>
    </div>
  </div>
  <div class="row mb-3">
    <label for="inputPassword3" class="col-sm-3 col-form-label text-center">고객이름 :</label>
    <div class="col-sm-8">
      <input type="text" class="form-control" id="custName">
    </div>
  </div>
   <div class="row mb-3">
    <label for="inputPassword3" class="col-sm-3 col-form-label text-center">전화번호 :</label>
    <div class="col-sm-8">
      <input type="text" class="form-control" id="phone">
    </div>
  </div>
   <div class="row mb-3">
    <label for="inputPassword3" class="col-sm-3 col-form-label text-center">이메일 :</label>
    <div class="col-sm-8">
      <input type="email" class="form-control" id="custEmail">
    </div>
  </div>
   <div class="row mb-3">
    <label for="inputPassword3" class="col-sm-3 col-form-label text-center">고객등급(P,G,S) :</label>
    <div class="col-sm-8">
      <input type="text" class="form-control" id="grade">
    </div>
  </div>
  <input type="hidden" value="" id="joinDate"/>
  <div class="d-grid gap-2 d-md-block text-center">
	<button class="btn btn-outline-success me-3" type="button" id="regist">등록</button>
	<button class="btn btn-outline-secondary" type="button" id="cancel">취소</button>
  </div>
 </div>
</section>
<%@include file ="../footer.jsp" %>
</body>
<script>
window.onload = function(){
	var td = new Date;
	var yyyy = td.getFullYear();         
	var mm = "" + (td.getMonth()+1);
	var dd = "" + td.getDate();
	if(mm.length < 2) mm = "0" + mm;
	if(dd.length < 2) dd = "0" + dd;
	var Today = yyyy.toString() + mm + dd; 
	document.getElementById("joinDate").value = Today;
}

$(document).ready(function(){
	
	$("#regist").on("click", function() {
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
	        url : "/member/write",
	        data : {cust_no: $("#custNo").val(), cust_name: $("#custName").val(), phone: $("#phone").val(), 
        	 		join_date: $("#joinDate").val(), cust_email: $("#custEmail").val(), grade: $("#grade").val()},        
	        success : function(res){ 
	            alert("등록 완료.");
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