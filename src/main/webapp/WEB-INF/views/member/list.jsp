<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>fastcampus</title>
  <script src="https://code.jquery.com/jquery-1.11.3.js"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<style>
.aStyle {
    color: rgba(var(13,110,253),var(--bs-link-opacity,1));
    text-decoration: underline;
     cursor: pointer;
}
</style>
<body>
<%@include file ="../header.jsp" %>
<section class="container py-3 flex-column flex-wrap justify-content-center">
<h4 class="text-center mt-3 mb-4"><u>고객목록조회/수정</u></h4>
 <table class="table table-bordered mb-3 text-center">
  <thead>
    <tr>
      <th scope="col">고객번호</th>
      <th scope="col">고객이름</th>
      <th scope="col">전화번호</th>
      <th scope="col">가입일자</th>
      <th scope="col">이메일</th>
      <th scope="col">고객등급</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach var="member" items="${list}">
    <tr>
      <%-- <td id="custNo"><a href="/member/update?cust_no=${member.custNo}&cust_name=${member.custName}&phone=${member.custNo}&join_date=${member.joinDate}&grade=${member.grade}">
      					${member.custNo}</a></td> --%>
   	  <td id="custNo"><a href="/member/read?custNo=${member.custNo}">${member.custNo}</a></td>
      <td id="custName">${member.custName}</td>
      <td id="phone">${member.phone}</td>
      <td id="joinDate">${member.joinDate}</td>
      <td id="custEmail">${member.custEmail}</td>
      <td id="grade"> 
	      <c:choose>
	      	<c:when test="${member.grade eq 'P'}">Platinum</c:when>
	      	<c:when test="${member.grade eq 'G'}">Gold</c:when>
	      	<c:when test="${member.grade eq 'S'}">Silver</c:when>
	      	<c:otherwise>Undefined</c:otherwise>
	      </c:choose>
      </td>
    </tr>
    </c:forEach>
  </tbody>
</table>
</section>
<%@include file ="../footer.jsp" %>
</body>
<script>
$(document).ready(function(){		// main()
	/* $("#custNo").on("click", function() {
		$.ajax({
		    type : "GET",            
		    url : "/member/update",  
		    data : {cust_no: $("#custNo").text(), cust_name: $("#custName").text(), phone: $("#phone").text(), 
					join_date: $("#joinDate").text(), cust_email: $("#custEmail").text(), grade: $.trim($("#grade").text())},          
		    success : function(res){
		    	location.href="/member/update";
		    },
		    error : function(XMLHttpRequest, textStatus, errorThrown){
		        alert("등록 실패.")
		    }
		}); 
	}); */
});
</script>
</html>