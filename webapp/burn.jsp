<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<link rel="stylesheet" href="./css/bootstrap.min.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>

</head>
<style>
	.mainimg {
		display : block;
		margin : auto;
		width : 50%;
		height : 40%;
	}
table, th, td {
    border-collapse: collapse;
    border-spacing: 0;
}
td {
    display: table-cell;
    vertical-align: inherit;
}
.contextIndent_twoDepList {
    margin: 0 0 0 7px;
    line-height: 1.94;
}
ul, li {
    list-style-type: none;
}
#signature_div{
  display: flex;
  justify-content: center;
}
</style>
<body>
<div class="container">
    <header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom">
      <a href="/" class="d-flex align-items-center col-md-3 mb-2 mb-md-0 text-dark text-decoration-none">
        <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap"><use xlink:href="#bootstrap"></use></svg>
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
        <a href="login.jsp" method="Post">
        <button type="button" class="btn btn-outline-primary me-2">로그인</button>
        </a>
        <a href="index.jsp" method="Post">
        <button type="button" class="btn btn-primary">회원가입</button>
        </a>
      </div>
      <%} else{ %>
         <div class="col-md-3 text-end">
        <a href="logout.do" method="post">
        <button type="button" class="btn btn-outline-primary me-2">로그아웃</button>
        </a>
         <a href="bbs.jsp" method="Post">
            <input type="submit"  class="btn btn-primary pull-right" value="게시판 ">
        </a>
  
      </div>
      <%} %>
    </header>
  </div>
<h2 style="text-align: center;">뜨거운 물,불 조심</h2>
 
<p align="middle"><iframe width="760" height="415" src="https://www.youtube.com/embed/MM4X5J4fARs"
frameborder="0" allow="accelerometer; 
autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></p>

<p style="text-align: center;">화상 이란?<br>넓은 의미로 열에 의해 피부 세포가 파괴되거나 괴사되는 것을 말합니다.</p>

<br>
<br>
<div id="signature_div" style="font-size:10pt;float: left; width:30%;">
		<table border="0" cellpadding="1" cellspacing="1" style="font-size:10pt;width:35%;">
			<tbody>
				<tr>
					<td>
						<ul class="contextIndent_twoDepList" style="text-align: center;">
							<li style="width:318px;">
								  <img src="saveimg/burn1.PNG" alt="물에 담구는 이미지">
							</li>
						</ul>
					</td>
				</tr>
				<tr>
					<td style=""> <b style="font-weight: bold;">화상 직후</b><br>화상 부위를 찬물에 20분 이상 담가 열기를 식힌다.<br>흐르는 물로도 가능하다</td>
				</tr>
			</tbody>
		</table>
		</div>
		<div id="signature_div" style="font-size:10pt;float: left; width:30%;">
		<table border="0" cellpadding="1" cellspacing="1" style="font-size:10pt;width:35%;">
			<tbody>
				<tr>
					<td>
						<ul class="contextIndent_twoDepList" style="text-align: center;">
							<li style="width:318px;">
								<img src="saveimg/burn2.PNG" alt="금지 항목 이미지">
							</li>
						</ul>
					</td>
				</tr>
				<tr>
					<td style=""> <b style="font-weight: bold;">하지말아야할 행동</b><br>물집은 절대 터뜨리지 말고 로션, 된장, 소주, 간장 등도 절대 바르지않는다.</td>
				</tr>
			</tbody>
		</table>
		</div>
<div id="signature_div" style="font-size:10pt;float: left; width:30%;">
		<table border="0" cellpadding="1" cellspacing="1" style="font-size:10pt;width:35%;">
			<tbody>
				<tr>
					<td>
						<ul class="contextIndent_twoDepList" style="text-align: center;">
							<li style="width:318px;">
								<img src="saveimg/burn3.PNG" alt="장신구 제거">
							</li>
						</ul>
					</td>
				</tr>
				<tr>
					<td style=""><b style="font-weight: bold;">화상부위 장신구 제거</b><br>시계, 반지, 목걸이 등의 장신구는 피부가 부어오르기 전에 최대한 빨리 제거한다.</td>
				</tr>
			</tbody>
		</table>
		</div>
	
	<div id="signature_div" style="font-size:10pt;float: left; width:30%;">
		<table border="0" cellpadding="1" cellspacing="1" style="font-size:10pt;width:35%;">
			<tbody>
				<tr>
					<td>
						<ul class="contextIndent_twoDepList" style="text-align: center;">
							<li style="width:318px;">
								<img src="saveimg/burn4.PNG" alt="치료 이미지">
							</li>
						</ul>
					</td>
				</tr>
				<tr>
					<td style=""><b style="font-weight: bold;">치료하는 방법</b><br> 화상 부위에 바세린이나 화상 거즈(깨끗한 거즈)로 덮어주고 붕대로 감아준다.</td>
				</tr>
			</tbody>
		</table>
		</div>
</body>
</html>