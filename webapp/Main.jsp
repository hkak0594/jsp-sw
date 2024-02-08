<%@page import="user.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<link rel="stylesheet" href="./css/bootstrap.min.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>

</head>
<body>
<style>
	.mainimg {
		display : block;
		margin : auto;
		width : 30em;
		height : 20em;
	
		}
		.mainimg2 {
		margin-top : 1em;
		margin-left : 10em;
		}
		h5{
		margin-left : 7.5em;
		}
		
		.img-thumbnail{
		width : 15em;
		height : 15em;
		}
		.mainimg3 {
		margin-top : 1em;
		margin-left : 10em;
		}
		.toph5 {
		margin-top : 4em;
		}
		.row {
		margin-left : 9.5em;
		margin-right : 8em;}
		.img{
			width : 5em;
		height : 5em;
		}
		.card{
  display: flex;
		}
			img { display: block; margin: 0px auto; }
</style>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>

<div class="container">
    <header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom">
      <a href="#" class="d-flex align-items-center col-md-3 mb-2 mb-md-0 text-dark text-decoration-none">
      </a>

      <ul class="nav col-12 col-md-auto mb-4 justify-content-center mb-md-0">
        <li><a href="Main.jsp" class="nav-link px-4 link-secondary">Home</a></li>
        <li><a href="CPR.jsp" class="nav-link px-4 link-dark">CPR</a></li>
        <li><a href="stampede.jsp" class="nav-link px-4 link-dark">압사</a></li>
        <li><a href="blocked.jsp" class="nav-link px-4 link-dark">기도막힘</a></li>
        <li><a href="burn.jsp" class="nav-link px-4 link-dark">화상</a></li>
      </ul>
<%

    String userID = null; // 로그인이 된 사람들은 로그인정보를 담을 수 있도록한다
    if (request.getSession().getAttribute("userID") != null)
    {
        userID = (String)session.getAttribute("userID");
    }
%>

<%if (userID == null){ %>
         <div class="col-md-3 text-end">
        <a href="login.jsp" method="post">
        <button type="button" class="btn btn-outline-primary me-2">로그인</button></a>
        <a href="index.jsp" method="post">
        <button type="button" class="btn btn-primary">회원가입</button></a>
      </div>
      <%} else{ %>
       <div class="col-md-3 text-end">
        <a href="logout.do" method="post">
        <button type="button" class="btn btn-outline-primary me-2">로그아웃</button> </a>
         <a href="bbs.jsp" method="Post">
            <input type="submit"  class="btn btn-primary pull-right" value="게시판 ">
        </a>
      </div>
      <%} %>
    </header>
  </div>
  
 <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
    integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
    crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
    integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
    crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
    integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
    crossorigin="anonymous"></script>
  <script>
    $('.carousel').carousel({
      interval: 2000 //기본 5초
 
    })
  </script>
<div class="container" >
  <div id="demo" class="carousel slide" data-ride="carousel">
    <div class="carousel-inner" display= "flex">
      <!-- 슬라이드 쇼 -->
      <div class="carousel-item active" >
        <!--가로-->
        <img class="d-block" 
         src="saveimg/1.png"
          alt="First slide"
          style="text-align:center;"
          width="277px">
      
      </div>
      <div class="carousel-item">
         <img class="d-block" 
         src="saveimg/2.jpg"
          alt="Second slide"
          width="250px">
      </div>
      <div class="carousel-item">
        <img class="d-block"
          src="saveimg/3.jpg"
          alt="Third slide"
          width="250px">
      </div>
    
    <!-- / 슬라이드 쇼 끝 -->

    <!-- 왼쪽 오른쪽 화살표 버튼 -->
    <a class="carousel-control-prev" href="#demo" data-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <!-- <span>Previous</span> -->
    </a>
    <a class="carousel-control-next" href="#demo" data-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <!-- <span>Next</span> -->
    </a>
    <!-- / 화살표 버튼 끝 -->
    
    <!-- 인디케이터 -->
    <ul class="carousel-indicators">
      <li data-target="#demo" data-slide-to="0" class="active"></li> <!--0번부터시작-->
      <li data-target="#demo" data-slide-to="1"></li>
      <li data-target="#demo" data-slide-to="2"></li>
    </ul>
    <!-- 인디케이터 끝 -->
  </div>
 
 </div>
 <br><br>
  <h5 class="toph5 mb-4  border-bottom">생활 안전</h5>


<div class="row featurette">
      <div class="col-md-7">
        <h2 class="featurette-heading fw-normal lh-1">여러분들이 있어 행복합니다. <span class="text-muted"></span></h2>
        <p class="lead">국민의 행복을 위해 애쓰시는 여러분들이 있어<br>안전한 대한민국에서 행복하게 살고 있습니다.<br>감사합니다.</p>
      </div>
      <div class="col-md-5">
        <img src="saveimg/119.jpg">

      </div>
    </div>

		<footer class="py-3 my-4">
<hr>
    <p class="text-center text-muted">© 202144061 김현우 사이트</p>
  </footer>
</body>
</html>