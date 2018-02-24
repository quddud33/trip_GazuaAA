<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="google-signin-client_id"
	content="346120053180-l6r9r2hq1sknebtp2ukd6mtoea688dhl.apps.googleusercontent.com">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="/trip_GazuaAA/Bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="/trip_GazuaAA/Bootstrap/css/nav.css">
<link rel="stylesheet" href="/trip_GazuaAA/css/loginBox.css">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>


	<!-- 네비게이션 -->
	<%@ include file="../template/nav.jsp" %>

<div class="container">
<form action="reviewWrite.do">
<input type="text" name="title"/>
<textarea rows="10" cols="10" name="content"></textarea>
<input type="hidden" name="scope" value="5"/>
<input type="text" name="nickName"/>
<input type="hidden" name="contentID"/>
</form>
</div>

<!-- footer 시작 -->
<%@ include file="../template/footer.jsp" %>

<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="/trip_GazuaAA/js/googleLogin.js"></script>
<script src="/trip_GazuaAA/js/FBLogin.js"></script>
<script src="/trip_GazuaAA/js/login.js"></script>
</body>
</html>