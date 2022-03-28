<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${result > 0 }">
		<script type="text/javascript">
			alert("글이 작성되었습니다..");
			location.href="adminFaqListAll";
		</script>
	</c:if >
	<c:if test="${result == 0}">
		<script type="text/javascript">
			alert("리뷰 작성에 실패하였습니다.");
			location.href="faqWriteForm";
		</script>
	</c:if>
</body>
</html>