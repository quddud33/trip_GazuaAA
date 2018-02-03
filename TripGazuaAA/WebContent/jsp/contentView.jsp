<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
.star-input>.input,
.star-input>.input>label:hover,
.star-input>.input>input:focus+label,
.star-input>.input>input:checked+label{
    display: inline-block;
    vertical-align: top;
  	background: url("image/star.png") no-repeat;
}
.star-input{
    white-space: nowrap;
}
.star-input>.input{
    display:inline-block;
    width: 100px;
    background-size: 100px;
    height: 19px;
    white-space: nowrap;
    overflow: hidden;
    position: relative;
}
.star-input>.input>input{
    position: absolute;
    width: 1px;
    height: 1px;
    opacity: 0;
}
.star-input>.input.focus{
    outline: 1px dotted #ddd;
}
.star-input>.input>label{
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
.star-input>.input>label:hover,
.star-input>.input>input:focus+label,
.star-input>.input>input:checked+label{
    background-size: 100px;
    background-position: 0 bottom;
}
.star-input>.input>label:hover~label{
    background-image: none;
}
.star-input>.input>label[for="p1"]{ 
    width: 10px;
    z-index: 10;
}
.star-input>.input>label[for="p2"]{ 
    width: 20px;
    z-index: 9;
}
.star-input>.input>label[for="p3"]{ 
    width: 30px;
    z-index: 8;
}
.star-input>.input>label[for="p4"]{ 
    width: 40px;
    z-index: 7;
}
.star-input>.input>label[for="p5"]{ 
    width: 50px;
    z-index: 6;
}
.star-input>.input>label[for="p6"]{ 
    width: 60px;
    z-index: 5;
}
.star-input>.input>label[for="p7"]{ 
    width: 70px;
    z-index: 4;
}
.star-input>.input>label[for="p8"]{ 
    width: 80px;
    z-index: 3;
}
.star-input>.input>label[for="p9"]{ 
    width: 90px;
    z-index: 2;
}
.star-input>.input>label[for="p10"]{ 
    width: 100px;
    z-index: 1;
}
.star-input>output{
    display: inline-block;
    width: 36px;
    text-align: right;
}
.star-input>output>b{
    font:bold 18px Helvetica, Arial, sans-serif;
    vertical-align: middle;
}

</style>
</head>
<body>
	<a href="chat.jsp">채팅방</a><!--userID,nickName-->
	<a href="serviceCenter.jsp">서비스 센터</a><!--userID,nickName-->
	<a href="locationView.jsp">지도/컨텐츠 리스트</a>
	<a href="myPage.jsp">마이페이지</a><!--로그인 시에만 보이게 처리(userID,nickName)-->
	<a href="#">로그인</a><!--javascript써서 로그인폼 띄우기-->
	<a href="createUserForm.jsp">회원가입</a>
	<a href="reservationView.do?contentID=<%=request.getParameter("contentid")%>&contentTypeID=<%=request.getParameter("contenttypeid")%>&price=<%=request.getParameter("price")%>">예약하기</a>
	<a href="reviewList.jsp">리뷰 더보기</a><!-- contentID -->
	<!--<a href="logout.do">로그아웃</a> 로그인시 태그 생성하게 처리-->
<c:set var='param' value='<%=request.getParameter("contenttypeid") %>'/>
	<c:choose>
		<c:when test="${param.contenttypeid == '32' }">
			<table border="1">
				<tr>
					<th>방이름</th>
					<th>방크기</th>
					<th>방개수</th>
					<th>기본인원수</th>
					<th>최대인원수</th>
					<th>비수기주중최소</th>
					<th>비수기주말최소</th>
					<th>성수기주중최소</th>
					<th>성수기주말최소</th>
					<th>사진1</th>
					<th>사진2</th>
				</tr>
				<c:forEach var="detail" items="${detail}">
					<tr>
						<td>${detail.roomtitle }</td>
						<td>${detail.roomsize1 }</td>
						<td>${detail.roomcount }</td>
						<td>${detail.roombasecount }</td>
						<td>${detail.roommaxcount }</td>
						<td>${detail.roomoffseasonminfee1 }</td>
						<td>${detail.roomoffseasonminfee2 }</td>
						<td>${detail.roompeakseasonminfee1 }</td>
						<td>${detail.roompeakseasonminfee2 }</td>
						<td><img alt="방사진이에요" src="${detail.roomimg1 }"></td>
						<td><img alt="방사진2에요" src="${detail.roomimg2 }"></td>
					</tr>
				</c:forEach>
			</table>
		</c:when>
		<c:when test="${param.contenttypeid == '12' }">
			<table border="1">
				<tr>
					<th>제목</th>
					<th>내용</th>
				</tr>
				<c:forEach var="detail" items="${detail}">
					<tr>
						<td>${detail.infoname }</td>
						<td>${detail.infotext }</td>
					</tr>
				</c:forEach>
			</table>
		</c:when>
		<c:when test="${param.contenttypeid == '15' }">
			<table border="1">
				<tr>
					<th>행사명</th>
					<th>내용</th>
					<th>주소</th>
					<th>시작일</th>
					<th>종료일</th>
					<th>사진</th>
				</tr>
				<c:forEach var="commonInfo" items="${commonInfo}">
					<tr>
						<td>${commonInfo.title }</td>
						<td>${commonInfo.overview }</td>
						<td>${commonInfo.addr1 }, ${test.addr2 }</td>
						<td>${commonInfo.firstimage }</td>
					</tr>
				</c:forEach>
			</table>
		</c:when>
		<c:when test="${param.contenttypeid == '28' }">
			<table border="1">
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
	<c:if test="${user ne null }" >
	<form action="reviewWrite.do">
				<textarea rows="5" cols="30" name="content"></textarea>
				<input type="submit" value="입력">
				<input type="hidden" name="contentID" value="<%=request.getParameter("contentid")%>">
				<input type="hidden" name="contentTypeID" value="${param.contenttypeid }">
				<input type="hidden" name="userID" value="${user.userID }">
				<input type="hidden" name="nickname" value="${user.nickname }">
				<span class="star-input">
				  <span class="input">
				    <input type="radio" name="score" id="p1" value="1"><label for="p1">1</label>
				    <input type="radio" name="score" id="p2" value="2"><label for="p2">2</label>
				    <input type="radio" name="score" id="p3" value="3"><label for="p3">3</label>
				    <input type="radio" name="score" id="p4" value="4"><label for="p4">4</label>
				    <input type="radio" name="score" id="p5" value="5"><label for="p5">5</label>
				    <input type="radio" name="score" id="p6" value="6"><label for="p6">6</label>
				    <input type="radio" name="score" id="p7" value="7"><label for="p7">7</label>
				    <input type="radio" name="score" id="p8" value="8"><label for="p8">8</label>
				    <input type="radio" name="score" id="p9" value="9"><label for="p9">9</label>
				    <input type="radio" name="score" id="p10" value="10"><label for="p10">10</label>
				  </span>
				  <output for="star-input"><b>0</b>점</output>
				</span>
		</form>
		</c:if>
			<table border="1">
				<c:forEach items="${reviewL }" var="reviewL">
				<tr>
					<th>${reviewL.nickname }</th>			
					<th>${reviewL.content }</th>			
					<th>${reviewL.score }</th>
					<th>${reviewL.likeCount }</th>
					<th>${reviewL.userID  }</th>
					<c:if test="${user.userid eq reviewL.userID }">
					<th>
					<a href="reviewDelete.do?num=${reviewL.num }&content=${reviewL.content}&contenttypeid=${param.contenttypeid }&contentid=<%=request.getParameter("contentid")%>">삭제</a>
					<a href="reviewUpdateForm.do?num=${reviewL.num }&content=${reviewL.content}&contenttypeid=${param.contenttypeid }&contentid=<%=request.getParameter("contentid")%>">수정</a>
					</th>
					</c:if>
					<c:if test="${user ne null}">
					<th><button onclick="location.href='likeSum.do?likeCount=${reviewL.likeCount }&num=${reviewL.num }&content=${reviewL.content}&contenttypeid=${param.contenttypeid }&contentid=<%=request.getParameter("contentid")%>'">좋아요</button></th>
					<th><button onclick="location.href='likeMinus.do?likeCount=${reviewL.likeCount }&num=${reviewL.num }&content=${reviewL.content}&contenttypeid=${param.contenttypeid }&contentid=<%=request.getParameter("contentid")%>'">좋아요취소</button></th>
					</c:if>
				</tr>	
				</c:forEach>
			</table>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
//star rating
var starRating = function(){
  var $star = $(".star-input"),
      $result = $star.find("output>b");
  $(document)
    .on("focusin", ".star-input>.input", function(){
    $(this).addClass("focus");
  })
    .on("focusout", ".star-input>.input", function(){
    var $this = $(this);
    setTimeout(function(){
      if($this.find(":focus").length === 0){
        $this.removeClass("focus");
      }
    }, 100);
  })
    .on("change", ".star-input :radio", function(){
    $result.text($(this).next().text());
  })
    .on("mouseover", ".star-input label", function(){
    $result.text($(this).text());
  })
    .on("mouseleave", ".star-input>.input", function(){
    var $checked = $star.find(":checked");
    if($checked.length === 0){
      $result.text("0");
    } else {
      $result.text($checked.next().text());
    }
  });
};
starRating();
</script>
</body>
</html>