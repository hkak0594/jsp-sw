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
<h2 style="text-align: center;">먹을때도 조심</h2>
 
<p align="middle"><iframe width="600" height="350" src="https://www.youtube.com/embed/2I5EZYyF-sE"
frameborder="0" allow="accelerometer; 
autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
<iframe width="600" height="350" src="https://www.youtube.com/embed/tqOA0TEd4Sk"
frameborder="0" allow="accelerometer; 
autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></p>

<p style="text-align: center;">하임리히법(Heimlich Maneuver) 이란?<br> 이물질로는 혈액, 음식물, 구토물 등이 있으며, 혀 또는 후두개가 이완되어 기도가 막히게 된 경우 하는 응급처치 입니다.</p>

<br>
<br>

<div id="signature_div" style="font-size:10pt;float: left; width:30%;">
		<table border="0" cellpadding="1" cellspacing="1" style="font-size:10pt;width:35%;">
			<tbody>
				<tr>
					<td>
						<ul class="contextIndent_twoDepList" style="text-align: center;">
							<li style="width:318px;">
								  <img src="saveimg/Heimlich1.PNG" alt="환자 상태 확인" style="width:250px; height:200px;">
							</li>
						</ul>
					</td>
				</tr>
				<tr>
					<td style=""> <b style="font-weight: bold;">환자 상태 확인</b><br> 환자에 상태를 확인하여 기도가 막힌것인지 다른 이유인지 확인합니다.</td>
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
								<img src="saveimg/Heimlich2.PNG" alt="어깨 두드리며 기침 유도" style="width:250px; height:200px;">
							</li>
						</ul>
					</td>
				</tr>
				<tr>
					<td style=""> <b style="font-weight: bold;">환자 기침 유도</b><br>환자가 괴로워하나 스스로 기침을 할 수 있는 상태라면, 등과 목 사이를 두드리며 기침을 유도합니다.</td>
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
							<img src="saveimg/Heimlich3.PNG" alt="하임히리법 손 위치" style="width:250px; height:200px;">
							</li>
						</ul>
					</td>
				</tr>
				<tr>
					<td style=""><b style="font-weight: bold;">하임히리법 손 위치</b><br>환자 뒤로 이동해 환자의 명치와 배꼽사이에 주먹을 올려 놓습니다.</td>
				</tr>
			</tbody>
		</table>
		</div>
		<br>
		<br>
		<br>
		<div id="signature_div" style="font-size:10pt; width:30%;float:left;">
		<table border="0" cellpadding="1" cellspacing="1" style="font-size:10pt;">
			<tbody>
				<tr>
					<td>
						<ul class="contextIndent_twoDepList" style="text-align: center;">
							<li style="width:318px;">
								<img src ="saveimg/Heimlich4.PNG" alt="하임히리법 실시자세" style="width:250px; height:200px;">
							</li>
						</ul>
					</td>
				</tr>
				<tr>
					<td style="padding-left: 5px;"><b style="font-weight: bold;">하임히리법 실시</b><br> 강하게 힘을 주면서 배를 안쪽으로 누르면서 아래에서 위로 당겨줍니다.</td>
				</tr>
			</tbody>
		</table>
		</div>
		<div id="signature_div" style="font-size:10pt;width:30%;float:left;">
		<table border="0" cellpadding="1" cellspacing="1" style="font-size:10pt;width:35%;">
			<tbody>
				<tr>
					<td>
						<ul class="contextIndent_twoDepList" style="text-align: center;">
							<li style="width:318px;">
								<img src ="saveimg/Heimlich5.PNG" alt="자세 반복" style="width:250px; height:200px;">
							</li>
						</ul>
					</td>
				</tr>
				<tr>
					<td style=""><b style="font-weight: bold;">자세 반복</b><br> 이물질이 제거되거나 119 구급대원이 도착할 때까지 자세를 반복합니다.</td>
				</tr>
			</tbody>
		</table>
		</div>
	<div id="signature_div" style="font-size:10pt;width:30%;float:left;">
		<table border="0" cellpadding="1" cellspacing="1" style="font-size:10pt;width:35%;">
			<tbody>
				<tr>
					<td>
						<ul class="contextIndent_twoDepList" style="text-align: center;">
							<li style="width:318px;">
								<img src ="saveimg/child1.PNG" alt="상태확인" style="width:250px; height:200px;">
							</li>
						</ul>
					</td>
				</tr>
				<tr>
					<td style=""><b style="font-weight: bold;">영유아 상태확인</b><br> 손가락으로 발바닥을 건드려 상태 확인 후 119신고합니다.<br><br></td>
 					</tr>
			</tbody>
		</table>
		</div>
	
		<div id="signature_div" style="font-size:10pt;width:30%;float:left;">
		<table border="0" cellpadding="1" cellspacing="1" style="font-size:10pt;width:35%;">
			<tbody>
				<tr>
					<td>
						<ul class="contextIndent_twoDepList" style="text-align: center;">
							<li style="width:318px;">
								<img src = "saveimg/Child2.PNG" alt="하임히리법 2단계" style="width:250px; height:200px;">
							</li>
						</ul>
					</td>
				</tr>
				<tr>
					<td style=""><b style="font-weight: bold;">하임히리법 자세</b><br>얼굴을 아래로 향하게 한 뒤 손 뒤꿈치로 등 압박 5회</td>
				</tr>
			</tbody>
		</table>
		</div>
		<div id="signature_div" style="font-size:10pt;width:30%;float:left;">
		<table border="0" cellpadding="1" cellspacing="1" style="font-size:10pt;width:35%;">
			<tbody>
				<tr>
					<td>
						<ul class="contextIndent_twoDepList" style="text-align: center;">
							<li style="width:318px;">
								<img src = "saveimg/child3.PNG" alt="하임히리법 3단계" style="width:250px; height:200px;">
							</li>
						</ul>
					</td>
				</tr>
				<tr>
					<td style=""><b style="font-weight: bold;">하임히리법 자세</b><br> 아래로 머리를 기울인 채 가슴 중앙을 약 4cm 깊이로 5회압박 합니다.</td>
				</tr>
			</tbody>
		</table>
		</div>
		<div id="signature_div" style="font-size:10pt;width:30%;float:left;">
		<table border="0" cellpadding="1" cellspacing="1" style="font-size:10pt;width:35%;">
			<tbody>
				<tr>
					<td>
						<ul class="contextIndent_twoDepList" style="text-align: center;">
							<li style="width:318px;">
								<img src = "saveimg/child4.PNG" alt="마지막자세" style="width:250px; height:200px;">
							</li>
						</ul>
					</td>
				</tr>
				<tr>
					<td style=""><b style="font-weight: bold;">하임히리법 마지막</b><br> 이물질이 나왔는지 확인 후 등압박과 가슴압박 반복 시행 합니다.</td>
				</tr>
			</tbody>
		</table>
		</div>

</body>


</html>