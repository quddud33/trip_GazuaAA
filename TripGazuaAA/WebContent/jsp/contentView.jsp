<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="google-signin-client_id"
	content="346120053180-l6r9r2hq1sknebtp2ukd6mtoea688dhl.apps.googleusercontent.com">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css" rel="stylesheet" />
<link rel="stylesheet" href="/trip_GazuaAA/Bootstrap/css/bootstrap.css">
<link rel="stylesheet" href="/trip_GazuaAA/Bootstrap/css/nav.css">
<link rel="stylesheet" href="/trip_GazuaAA/css/loginBox.css">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
<script src="https://apis.google.com/js/platform.js" async defer></script>
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" />
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="http://underscorejs.org/underscore-min.js"></script>
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<script src= "/trip_GazuaAA/js/login.js"></script>
<script src="/trip_GazuaAA/js/googleLogin.js"></script>
<script src="/trip_GazuaAA/js/FBLogin.js"></script>
<title>Insert title here</title>
<style>
table {
	margin-top: 10px;
}

.table-bordered {
	width: 90%;
	height: 50%;
}

.table-bordered th {
	text-align: center;
}

.table-bordered td {
	padding: 20px;
}

#bg {
	width: 100%;
	height: 100%;
	position: fixed;
	left: 0;
	top: 0;
	background-color: rgba(0, 0, 0, .7);
	display: none;
}


.star-input>.input, .star-input>.input>label:hover, .star-input>.input>input:focus+label,
	.star-input>.input>input:checked+label {
	display: inline-block;
	vertical-align: top;
	background: url("img/star.png") no-repeat;
}

.star-input {
	white-space: nowrap;
}

.star-input>.input {
	display: inline-block;
	width: 100px;
	background-size: 100px;
	height: 19px;
	white-space: nowrap;
	overflow: hidden;
	position: relative;
}

.star-input>.input>input {
	position: absolute;
	width: 1px;
	height: 1px;
	opacity: 0;
}

.star-input>.input.focus {
	outline: 1px dotted #ddd;
}

.star-input>.input>label {
	width: 10px;
	height: 0;
	padding: 19px 0 0 0;
	overflow: hidden;
	float: left;
	cursor: pointer;
	position: absolute;
	top: 0;
	left: 0;
}

.star-input>.input>label:hover, .star-input>.input>input:focus+label,
	.star-input>.input>input:checked+label {
	background-size: 100px;
	background-position: 0 bottom;
}

.star-input>.input>label:hover ~label {
	background-image: none;
}

.star-input>.input>label[for="p1"] {
	width: 10px;
	z-index: 10;
}

.star-input>.input>label[for="p2"] {
	width: 20px;
	z-index: 9;
}

.star-input>.input>label[for="p3"] {
	width: 30px;
	z-index: 8;
}

.star-input>.input>label[for="p4"] {
	width: 40px;
	z-index: 7;
}

.star-input>.input>label[for="p5"] {
	width: 50px;
	z-index: 6;
}

.star-input>.input>label[for="p6"] {
	width: 60px;
	z-index: 5;
}

.star-input>.input>label[for="p7"] {
	width: 70px;
	z-index: 4;
}

.star-input>.input>label[for="p8"] {
	width: 80px;
	z-index: 3;
}

.star-input>.input>label[for="p9"] {
	width: 90px;
	z-index: 2;
}

.star-input>.input>label[for="p10"] {
	width: 100px;
	z-index: 1;
}

.star-input>output {
	display: inline-block;
	width: 36px;
	text-align: right;
}

.star-input>output>b {
	font: bold 18px Helvetica, Arial, sans-serif;
	vertical-align: middle;
}

td img {
	width: 400px;
	height: 300px;
}



.table {
	width: 80%;
	margin: auto;
	text-align: center;
}

.form-control {
	margin-bottom: 10px;
}

.table>thead>tr>th {
	vertical-align: inherit;
}

.table>thead>tr>th, .table>tbody>tr>th, .table>tfoot>tr>th, .table>thead>tr>td,
	.table>tbody>tr>td, .table>tfoot>tr>td {
	vertical-align: inherit;
	padding: 0px;
}

.btn-custom {
	background-color: hsl(145, 62%, 68%) !important;
	background-repeat: repeat-x;
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr="#cdf3dd",
		endColorstr="#7adfa4");
	background-image: -khtml-gradient(linear, left top, left bottom, from(#cdf3dd),
		to(#7adfa4));
	background-image: -moz-linear-gradient(top, #cdf3dd, #7adfa4);
	background-image: -ms-linear-gradient(top, #cdf3dd, #7adfa4);
	background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #cdf3dd),
		color-stop(100%, #7adfa4));
	background-image: -webkit-linear-gradient(top, #cdf3dd, #7adfa4);
	background-image: -o-linear-gradient(top, #cdf3dd, #7adfa4);
	background-image: linear-gradient(#cdf3dd, #7adfa4);
	border-color: #7adfa4 #7adfa4 hsl(145, 62%, 63%);
	color: #333 !important;
	text-shadow: 0 1px 1px rgba(255, 255, 255, 0.33);
	-webkit-font-smoothing: antialiased;
}

.review {
	width: 80%;
	border: 2px solid #424242;
	position: relative;
	margin: 30px auto 40px auto;
	padding: 5px;
}

.reviewHeader {
	border-bottom: 2px solid #424242;
	position: relative;
	width: 100%;
	float: left;
	line-height: 34px;
	text-align: center;
	padding-bottom: 5px;
}

.reviewWriter {
	float: left;
	height: 34px;
	padding: 0 15px;
	border-right: 2px solid #424242;
}

.reviewScore {
	float: left;
	height: 34px;
	border-right: 2px solid #424242;
	padding: 0 15px;
}

.starScore {
	background-image: url("img/star.png");
	background-repeat: no-repeat;
	background-position: bottom;
	width: 100px;
	height: 19px;
	background-size: 100px;
	position: relative;
	margin: 7.5px auto;
}

.userScore {
	background-image: url("img/star.png");
	background-repeat: no-repeat;
	background-size: 100px;
	position: absolute;
	height: 19px;
	right: 0;
}

.reviewWriteDate {
	float: left;
	height: 34px;
	border-right: 2px solid #424242;
	padding: 0 20px;
}

.reviewLike {
	position: absolute;
	top: 0;
	right: 0;
	height: 34px;
}

.reviewMDForm {
	height: 34px;
	position: absolute;
	right: 90px;
	top: -2px;
}

.reviewMDForm a {
    display: inline-block;
    border: 1px solid #424242;
}

.reviewContent {
	clear: both;
	padding: 5px;
	width: 75%;
}

.contentTitleBox{
 	width: 100%;
 	text-align: center;
 	margin-bottom: 20px;
}

.contentTitle {
	font-size: 36px;
	font-weight: 400;
}

textarea {
	resize: none;
}

</style>
</head>
<body>

	<!-- 네비게이션 -->
	<%@ include file="../template/nav.jsp"%>



	<!-- 	<a href="chat.jsp">채팅방</a>userID,nickName -->
	<!-- 	<a href="serviceCenter.jsp">서비스 센터</a>userID,nickName -->
	<!-- 	<a href="locationView.jsp">지도/컨텐츠 리스트</a> -->
	<!-- 	<a href="myPage.jsp">마이페이지</a>로그인 시에만 보이게 처리(userID,nickName) -->
	<!-- 	<a href="#">로그인</a>javascript써서 로그인폼 띄우기 -->
	<!-- 	<a href="createUserForm.jsp">회원가입</a> -->
	<%-- 	<%if(request.getParameter("contenttypeid").equals("32")) {%> --%>
	<%-- 	<a href="reservationView.do?contentID=<%=request.getParameter("contentid")%>&contentTypeID=<%=request.getParameter("contenttypeid")%>&price=price">예약하기</a> --%>
	<%-- 	<%} else {%> --%>
	<%-- 	<a href="wish.do?contentID=<%=request.getParameter("contentid")%>&contentTypeID=<%=request.getParameter("contenttypeid")%>">찜하기</a> --%>
	<%-- 	<%} %> --%>
	<!-- 	<a href="reviewList.jsp">리뷰 더보기</a>contentID -->
	<!--<a href="logout.do">로그아웃</a> 로그인시 태그 생성하게 처리-->
	<c:set var='param' value='<%=request.getParameter("contenttypeid")%>' />
	<c:choose>
		<c:when test="${param.contenttypeid == '32' }">
			<div class="container">
				<c:forEach var="commonInfo"  items="${commonInfo}">
					<c:set var="title" value="${commonInfo.title }"/>
				</c:forEach>
			
				<div class="contentTitleBox"><p class="contentTitle">${title}</p></div>
			
				<form action="reservation.do" id="reservationForm">
					<input type="hidden" name="userID" value="${user.userID }" /> <input
						type="hidden" name="contentID"
						value="<%=request.getParameter("contentid")%>" /> <input
						type="hidden" name="contentTypeID"
						value="<%=request.getParameter("contenttypeid")%>" />
						<input type="hidden"
						name="name" value="${title}">
					<div id="myCarousel" class="carousel slide" data-ride="carousel"
						style="width: 90%; margin: auto;">

						<!--페이지-->
						<div class="carousel-inner">
							<div class="item active">
								<img src="https://pbs.twimg.com/media/DR-TdFPUIAEYnKd.jpg"
									style="width: 100%; height: 400px;" alt="First slide">
								<div class="container">
									<div class="carousel-caption"></div>
								</div>
							</div>
							<c:forEach var="detail" items="${detail}">
								<div class="item">
									<img src="${detail.roomimg1 }"
										style="width: 100%; height: 400px;" data-src=""
										alt="사진없음">
									<div class="container">
										<div class="carousel-caption">
											<h1>${detail.roomtitle }</h1>
											<p>${detail.roomimg1alt }</p>
											<p>${detail.roomsize1 }평</p>
										</div>
									</div>
								</div>
							</c:forEach>
						</div>
						<!--이전, 다음 버튼-->
						<a class="left carousel-control" href="#myCarousel"
							data-slide="prev"><span
							class="glyphicon glyphicon-chevron-left"></span></a> <a
							class="right carousel-control" href="#myCarousel"
							data-slide="next"><span
							class="glyphicon glyphicon-chevron-right"></span></a>
					</div>
					
					
					
					<table border="1" class="table-bordered"
						style="width: 90%; margin: auto;">
						<thead>
							<tr>
								<th>객실명</th>
								<th>성인</th>
								<th>아동</th>
								<th>숙박기간</th>
								<th>가격</th>
								<th>위치</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><select name="roomName" id="roomName"
									class="form-control">

										<c:forEach var="detail" items="${detail}">
											<option selected>${detail.roomtitle }</option>
										</c:forEach>

								</select></td>
								<td><select id="adult" name="adult" class="form-control">

										<%
											for (int i = 0; i < 10; i++) {
												if(i == 1) {
													%>
														<option value="<%=i%>" selected><%=i%>명
														</option>
													<% 
												} else {
										%>
										<option value="<%=i%>"><%=i%>명
										</option>
										<%}
											}
										%>

								</select></td>
								<td><select id="kid" name="kid" class="form-control">

										<%
											for (int i = 0; i < 10; i++) {
												if(i == 1) {
													%>
														<option value="<%=i%>" selected><%=i%>명
														</option>
													<% 
												} else {
										%>
										<option value="<%=i%>"><%=i%>명
										</option>
										<%}
											}
										%>

								</select>
									
								</td>
								<td>체크인 :<input class="form-control input-xs" type="text"
									id="datepicker1" name="startDate" > 체크아웃 :<input
									class="form-control input-xs" type="text" id="datepicker2"
									name="endDate">
									<input type="hidden" name="datePrice" value="<%=request.getParameter("price")%>"/>
								</td>
								<td><input class="form-control" type="text" id="price"
									name="price" value="0" readonly /></td>
								<td>
								<!-- 지도를 표시할 div 입니다 -->
									<div id="map" style="width: 200px; height: 200px;"></div>
								</td>	
	
							</tr>
						</tbody>
						<tfoot>
							<tr>
								<td colspan="6" style="text-align: right">
									<button class="btn btn-info btn-lg btn-custom reservation">예약하기</button>
								</td>
							</tr>
						</tfoot>
					</table>
				</form>
			</div>
		</c:when>
		<c:when test="${param.contenttypeid == '12' }">
						<table border="2" class="table table-boarded" >
							<tr style="text-align: center;">
								<th style="text-align: center;">제목</th>
								<th style="text-align: center;">내용</th>
								<th style="text-align: center;">사진</th>
							</tr>
							<c:forEach var="detail" items="${detail}">
								<tr>
									<td>${detail.infoname }</td>
									<td>${detail.infotext }</td>
									<c:if test="${imgInfo.originimgurl eq null }">
										<td><img src = "/trip_GazuaAA/img/no.png"></td>
									</c:if>
									<c:if test="${imgInfo.originimgurl ne null }">
									<td><img src="${imgInfo.originimgurl}"> </td>
									</c:if>
								</tr>
							</c:forEach>
						</table>
		</c:when>
		<c:when test="${param.contenttypeid == '15' }">
			<div class="text-center" style=" height : 300px ; position: relative; float:right; margin: auto auto 10px auto; text-align: center; left:-50%">
				<c:forEach var="commonInfo" items="${commonInfo}">
					<img src="${commonInfo.firstimage }"
						style="width: 450px; height: 300px; float:left; margin-right: 15px; display: inline-block; position:relative; left:50%" alt="${commonInfo.title }">
					<div id="map" style="width: 300px; height: 300px; float:left; display: inline-block; postion:relative; left:50%"></div>
				</c:forEach>
			</div>
			<c:forEach var="commonInfo" items="${commonInfo }">
			<div style="margin-top: 26%;margin-left: 20%; position: relative; width:750px;">
				<h3 style="padding-top: 15px;">${commonInfo.title }</h3> <!-- 축제제목 -->
				<strong>${commonInfo.overview }</strong> <!-- 행사내용 -->
				</br>
				</br>
				<p style="font-size:14px; display:inline-block">${commonInfo.addr1 }<!-- 주소 -->
				${commonInfo.addr2 }</p><!-- 상세주소 -->
			</div>
			<button class="btn btn-custom" style="display: block;margin: auto;margin-right: 25%;margin-top: -40px; margin-bottom: 25px; position: relative;" onclick="location.href='festvalWish.do?name=${commonInfo.title}&userID=${user.userID}&contentID=${commonInfo.contentid }&contentTypeID=15'">찜하기</button>
			</c:forEach>
		</c:when>
		<c:when test="${param.contenttypeid == '28' }">
			<table border="1" class="table table-boarded">
				<tr>
					<th>됨?</th>
				</tr>
				<c:forEach var="commonInfo" items="${commonInfo}">
					<tr>
						<td>${commonInfo.title }</td>
					</tr>
				</c:forEach>
			</table>
		</c:when>
		<c:otherwise>
			<br>
			안되요
		</c:otherwise>
	</c:choose>
	<c:if test="${user ne null }">
		<form action="reviewWrite.do" id="reviewWriteForm"
			style="text-align: right; width: 80%; margin: auto; margin-top: 10px;">
				<input type="hidden" name="name" value="${title}">
			<textarea rows="5" cols="30" name="content" class="form-control"
				placeholder="리뷰를 남겨주세요" id="reviewContent"></textarea>
			<input type="submit" value="입력" class="btn btn-defalut btn-custom"
				style="text-align: center;" id="reviewWriteBtn"> 
				<input type="hidden"
				name="contentID" value="<%=request.getParameter("contentid")%>">
			<input type="hidden" name="contentTypeID"
				value="${param.contenttypeid }">
				<input type="hidden" name="userID" value="${user.userID }">
				<input type="hidden" name="nickname" value="${user.nickname }">
				<span class="star-input">
				<span class="input">
				<input type="radio" name="score" value="0" checked/>
				<input	type="radio" name="score" id="p1" value="1">
				<label for="p1">1</label>
				<input type="radio" name="score" id="p2" value="2">
				<label	for="p2">2</label>
				<input type="radio" name="score" id="p3" value="3">
				<label for="p3">3</label>
				<input type="radio" name="score" id="p4" value="4">
				<label for="p4">4</label>
				<input type="radio" name="score" id="p5" value="5">
				<label for="p5">5</label>
				<input type="radio" name="score" id="p6" value="6">
				<label for="p6">6</label>
				<input type="radio" name="score" id="p7" value="7">
				<label for="p7">7</label>
				<input type="radio"	name="score" id="p8" value="8">
				<label for="p8">8</label>
				<input type="radio" name="score" id="p9" value="9">
				<label for="p9">9</label>
				<input type="radio" name="score" id="p10" value="10">
				<label for="p10">10</label>
			</span>
				<output for="star-input"> <b>0</b>점</output>
			</span>
		</form>
	</c:if>
		<div class="reviewForm">
			<c:forEach items="${reviewL }" var="reviewL">
				<div class="review">
					<div class="reviewHeader">
						<div class="reviewWriter"><i class="fa fa-user"></i> ${reviewL.nickname }</div>
						<div class="reviewScore">
							<div class="starScore">
								<div class="userScore" style="width: ${10 - reviewL.score}0px; background-position: -${reviewL.score}0px 0;"></div>
							</div>
						</div>
<%-- 						${reviewL.score }점 --%>
						<div class="reviewWriteDate">${reviewL.writeDate }</div>
						<div class="reviewLike">
							<c:if test="${!empty user}">
								<c:choose>
									<c:when test="${'1' eq reviewL.like }">
										<button class="btn" onclick="location.href='likeMinus.do?likeCount=${reviewL.likeCount }&num=${reviewL.num }&content=${reviewL.content}&contenttypeid=${param.contenttypeid }&contentid=<%=request.getParameter("contentid")%>'">
											좋아요취소
										</button>
									</c:when>
									<c:otherwise>
										<button class="btn" onclick="location.href='likeSum.do?likeCount=${reviewL.likeCount }&num=${reviewL.num }&content=${reviewL.content}&contenttypeid=${param.contenttypeid }&contentid=<%=request.getParameter("contentid")%>'">
											좋아요
										</button>
									</c:otherwise>
								</c:choose>
							</c:if>
						</div>
						<div class="reviewMDForm">
							<c:if test="${user.userID eq reviewL.userID}">
								<a class="btn" href="reviewDelete.do?num=${reviewL.num }&content=${reviewL.content}&contenttypeid=${param.contenttypeid }&contentid=<%=request.getParameter("contentid")%>">삭제</a>
								<a href="#" class="reviewUpdateBefore btn">수정</a>
								<a href="#" class="reviewUpdateAfter btn" style="display: none">수정</a>
								<a href="#" class="reviewUpdateCancel btn" style="display: none">취소</a>
							</c:if>
						</div>
					</div>
					<form action="reviewUpdate.do" class="reviewUpdate">
						<div class="reviewContent">
							<p>${reviewL.content }</p>
							<textarea name="content" style="display: none;">${reviewL.content }</textarea>
						</div>
						<input type="hidden" name="contentID" value="<%=request.getParameter("contentid")%>"></input>
						<input type="hidden" name="contentTypeID" value="${param.contenttypeid }"></input>
						<input type="hidden" name="num" value="${reviewL.num }"></input>
					</form>
				</div>
				</c:forEach>
			</div>

	<!-- footer 시작 -->
	<%@ include file="../template/footer.jsp"%>
	
	<c:if test="${login ne null }">
		<%session.invalidate(); %>
		<script>
			$("#bg").css("display", "block");
			$("#loginBox").on("click", function(e) { //상세정보를 보여주는 박스 클릭이벤트
				e.stopPropagation(); //부모로의 이벤트 전파를 중지시킴 (이걸 하지 않을시 박스를 클릭했는데 뒷배경의 이벤트까지
			});//click end          															//함께 발생하는일이 일어나게됨.
			$("#bg").on("click", function() { //뒷배경 박스 클릭이벤트
				$("#bg").css("display", "none"); //상세정보 창을 안보이게 변경
			});//click end
		</script>
	</c:if>
	
	<!-- footer 시작 -->
	<%@ include file="../template/footer.jsp"%>

<script
        src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=70d78e61bdb96cf13e612f9908e948d0"></script>
	<script>
	
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new daum.maps.LatLng(${mapy}, ${mapx}), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

var map = new daum.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

// 마커가 표시될 위치입니다 
var markerPosition  = new daum.maps.LatLng(${mapy}, ${mapx}); 

// 마커를 생성합니다
var marker = new daum.maps.Marker({
    position: markerPosition
});

// 마커가 지도 위에 표시되도록 설정합니다
marker.setMap(map);

// 아래 코드는 지도 위의 마커를 제거하는 코드입니다
// marker.setMap(null);  

	
		//star rating
		var starRating = function() {
			var $star = $(".star-input"), $result = $star.find("output>b");
			$(document).on("focusin", ".star-input>.input", function() {
				$(this).addClass("focus");
			}).on("focusout", ".star-input>.input", function() {
				var $this = $(this);
				setTimeout(function() {
					if ($this.find(":focus").length === 0) {
						$this.removeClass("focus");
					}
				}, 100);
			}).on("change", ".star-input :radio", function() {
				$result.text($(this).next().text());
			}).on("mouseover", ".star-input label", function() {
				$result.text($(this).text());
			}).on("mouseleave", ".star-input>.input", function() {
				var $checked = $star.find(":checked");
				if ($checked.length === 0) {
					$result.text("0");
				} else {
					$result.text($checked.next().text());
				}
			});
		};
		starRating();

		$(".login").on("click", function() {
			$("#bg").css("display", "block");
		});

		$("#loginBox").on("click", function(e) { //상세정보를 보여주는 박스 클릭이벤트
			e.stopPropagation(); //부모로의 이벤트 전파를 중지시킴 (이걸 하지 않을시 박스를 클릭했는데 뒷배경의 이벤트까지
		});//click end                                                                                  //함께 발생하는일이 일어나게됨.
		$("#bg").on("click", function() { //뒷배경 박스 클릭이벤트
			$("#bg").css("display", "none"); //상세정보 창을 안보이게 변경
		});//click end
		
		
		   
	    var minDate = new Date;
	    var lodDate;
	    var adult = 1;
	    var kid = 1;
	    <%if(request.getParameter("price") != null && request.getParameter("price").length() != 0) {%>
	    	var price = <%=request.getParameter("price").replaceAll(",", "")%>;
	    <%}%>
	    
	    function calDateRange(val1, val2)
	    {
	        var FORMAT = "-";
	        // FORMAT을 포함한 길이 체크

	        if (val1.length != 10 || val2.length != 10)
	            return null;

	        // FORMAT이 있는지 체크
	        if (val1.indexOf(FORMAT) < 0 || val2.indexOf(FORMAT) < 0)
	            return null;

	        // 년도, 월, 일로 분리
	        var start_dt = val1.split(FORMAT);
	        var end_dt = val2.split(FORMAT);

	        // 월 - 1(자바스크립트는 월이 0부터 시작하기 때문에...)
	        // Number()를 이용하여 08, 09월을 10진수로 인식하게 함.
	        start_dt[1] = (Number(start_dt[1]) - 1) + "";
	        end_dt[1] = (Number(end_dt[1]) - 1) + "";

	        var from_dt = new Date(start_dt[0], start_dt[1], start_dt[2]);
	        var to_dt = new Date(end_dt[0], end_dt[1], end_dt[2]);

	        return (to_dt.getTime() - from_dt.getTime()) / 1000 / 60 / 60 / 24;
	    }


	    $("#datepicker1").datepicker({
	        dateFormat: 'yy-mm-dd',
	        prevText: '이전 달',
	        nextText: '다음 달',
	        monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	        monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	        dayNames: ['일', '월', '화', '수', '목', '금', '토'],
	        dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
	        dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
	        showMonthAfterYear: true,
	        yearSuffix: '년',
	        minDate : minDate,
	        onClose: function(selectedDate) {
	            $("#datepicker2").datepicker( "option", "minDate", selectedDate );
	           lodDate = calDateRange($("#datepicker1").val(), $("#datepicker2").val());
				$("#price").val(((price * adult) + price * kid * 0.5) * lodDate);
	        }
	    });
	    
	    $("#datepicker2").datepicker({
	        dateFormat: 'yy-mm-dd',
	        prevText: '이전 달',
	        nextText: '다음 달',
	        monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	        monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
	        dayNames: ['일', '월', '화', '수', '목', '금', '토'],
	        dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
	        dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
	        showMonthAfterYear: true,
	        yearSuffix: '년',
	        onClose: function(selectedDate) {
	            $("#datepicker1").datepicker( "option", "maxDate", selectedDate );
	           lodDate = calDateRange($("#datepicker1").val(), $("#datepicker2").val());
	           $("#price").val(((price * adult) + price * kid * 0.5) * lodDate);
	        }
	    });
	    
	    $("select").change(function(){
	       adult = $("#adult").val();
	       kid = $("#kid").val();
	       lodDate = calDateRange($("#datepicker1").val(), $("#datepicker2").val());
			$("#price").val(((price * adult) + (price * kid * 0.5)) * lodDate);
	    });
		
		$('.reservation').click(function(e) {
			e.preventDefault();

		    <c:if test="${empty user}">
				$("#bg").css("display", "block");
		    </c:if>
		    <c:if test="${!empty user}">
			    if($('#datepicker1').val().length < 1) {
			    	alert('체크인 날짜를 정해주세요.');
			    } else if($('#datepicker2').val().length < 1) {
			    	alert('체크아웃 날짜를 정해주세요.');
			    } else {
			    	$('#reservationForm').submit();
			    }
		    </c:if>
		});
		
		$('#reviewWriteBtn').click(function(e) {
			e.preventDefault();
			if($('#reviewContent').val().length < 1) {
				alert('리뷰를 입력해주세요.');
			} else { $('#reviewWriteForm').submit(); }
		});
		
		$('.reviewUpdateBefore').click(function(e){
			e.preventDefault();
			$(this).css('display', 'none');
			$(this).siblings('.reviewUpdateAfter').css('display', 'inline-block');
			$(this).siblings('.reviewUpdateCancel').css('display', 'inline-block');
			var $reviewUpdateTextarea = $(this).parent().parent().siblings('.reviewUpdate').find('textarea');
			var $reviewUpdateContent = $(this).parent().parent().siblings('.reviewUpdate').find('.reviewContent');
	        $reviewUpdateTextarea
	        	.css({'display' : 'block', 'width' : $reviewUpdateContent.css('width'), 'height' : $reviewUpdateContent.css('height')});
			$reviewUpdateContent.find('p').css('display', 'none');
		});

		$('.reviewUpdateAfter').click(function(e){
			e.preventDefault();
			$(this).css('display', 'none');
			$(this).siblings('.reviewUpdateCancel').css('display', 'none');
			$(this).siblings('.reviewUpdateBefore').css('display', 'inline-block');
			$(this).parent().parent().siblings('.reviewUpdate').submit();
		});
		
		$('.reviewUpdateCancel').click(function(e){
			e.preventDefault();
			$(this).css('display', 'none');
			$(this).siblings('.reviewUpdateBefore').css('display', 'inline-block');
			$(this).siblings('.reviewUpdateAfter').css('display', 'none');

			$(this).parent().parent().siblings('.reviewUpdate').find('.reviewContent p').css('display', 'block');
			var $reviewUpdateTextarea = $(this).parent().parent().siblings('.reviewUpdate').find('textarea').css('display', 'none');
		});
		
	</script>
</body>
</html>