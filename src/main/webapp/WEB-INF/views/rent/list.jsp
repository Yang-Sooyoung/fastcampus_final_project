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
<body>
<%@include file ="../header.jsp" %>
<section class="container py-3 flex-column flex-wrap justify-content-center">
 <h4 class="text-center mt-3 mb-4"><u>고객대여리스트</u></h4>
 <table class="table table-bordered mb-3 text-center">
  <thead>
    <tr>
      <th scope="col">고객번호</th>
      <th scope="col">대여번호</th>
      <th scope="col">도서코드</th>
      <th scope="col">대여금액</th>
      <th scope="col">대여일자</th>
    </tr>
  </thead>
  <tbody>
   <c:forEach var="rent" items="${list}">
    <tr>
      <td>${rent.custNo}</td>
      <td>${rent.rentNo}</td>
      <td>${rent.bookCode}</td>
      <td>${rent.rentPrice}</td>
      <td>${rent.rentDate}</td>
    </tr>
    </c:forEach>
  </tbody>
</table>
</section>
<%@include file ="../footer.jsp" %>
</body>
</html>