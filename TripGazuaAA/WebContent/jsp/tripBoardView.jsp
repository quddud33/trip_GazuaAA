<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	${view.nickname }<br>
	${view.title }<br>
	${view.content }<br>
	${view.wDate }<br>

	<a href="tripBoardUpdateForm.jsp">수정하기</a>
	<a href="tripBoardDelete.do?num=${view.num }">삭제하기</a><!-- boardNum,userID -->
	<a href="tripBoardLike.do">좋아요</a><!-- boardNum -->
</body>
</html>