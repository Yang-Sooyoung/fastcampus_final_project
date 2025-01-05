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
<%@include file ="./header.jsp" %>
<section class="container py-3 flex-column flex-wrap justify-content-center">
	<h4 class="text-center mt-3"><u>도서 고객 및 대여관리 프로그램</u></h4>
	<div class="justify-content-center mb-1">프로그램 작성순서</div>
	<ol class="justify-content-center mb-1 mb-3" type="1">
		<li>고객정보 테이블을 생성한다.</li>
		<li>대여정보 테이블을 생성한다.</li>
		<li>고객정보, 대여정보 테이블에 제시된 데이터를 생성한다.</li>
		<li>고객정보 입력 화면 프로그램을 작성한다.</li>
		<li>고객정보 조회 프로그램을 작성한다.</li>
		<li>고객대여리스트를 조회하는 프로그램을 작성한다.</li> 
		<li>고객별 대여금액을 조회하는 프로그램을 작성한다.</li>
	</ol>
</section>
<%@include file ="./footer.jsp" %>
</body>
</html>