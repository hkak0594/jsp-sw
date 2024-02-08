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
<h2 style="text-align: center;">생명을 살리는 기적</h2>
 
<p align="middle"><iframe width="760" height="415" src="https://www.youtube.com/embed/q7J2T6MFA9g"
frameborder="0" allow="accelerometer; 
autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></p>

<p style="text-align: center;">심폐소생술(CPR) 이란?<br> 정지된 심장을 대신해 심장과 뇌에 산소가 포함된 혈액을 공급해 주는 응급처치이다</p>

<br>
<br>
<div id="signature_div" style="font-size:10pt;float: left; width:30%;">
		<table border="0" cellpadding="1" cellspacing="1" style="font-size:10pt;width:35%;">
			<tbody>
				<tr>
					<td>
						<ul class="contextIndent_twoDepList" style="text-align: center;">
							<li style="width:318px;">
								  <img src="saveimg/CPR1.png" alt="어깨살짝두드리며 의식확인 이미지">
							</li>
						</ul>
					</td>
				</tr>
				<tr>
					<td style=""> <b style="font-weight: bold;">환자의 반응 확인</b><br> 어깨를 가볍게 두드리며 “여보세요, 괜찮으세요?”를 외치면서 환자의 반응을 확인합니다.</td>
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
								<img src="saveimg/CPR2.png" alt="환자반응 없을시 지목하여 119신고요청 이미지">
							</li>
						</ul>
					</td>
				</tr>
				<tr>
					<td style=""> <b style="font-weight: bold;">119 신고</b><br> 환자의 의식(반응)이 없으면 구체적으로 사람을 지목하여 119 신고를 요청하고, 자동심장충격기를 가져오도록 부탁합니다.</td>
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
								<img src="saveimg/CPR3.png" alt="10초내로 환자 얼굴,가슴등 관찰로 호흡확인 이미지">
							</li>
						</ul>
					</td>
				</tr>
				<tr>
					<td style=""><b style="font-weight: bold;">호흡확인</b><br> 환자의 얼굴과 가슴을 10초 이내로 관찰하여 호흡이 있는지를 확인합니다.<br> 호흡이 없거나 비정상적이라면 즉시 심폐소생술을 준비합니다.</td>
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
								<img src ="saveimg/CPR4.png" alt="가슴압박점찾은후 압박 30회실시 이미지">
							</li>
						</ul>
					</td>
				</tr>
				<tr>
					<td style="padding-left: 5px;"><b style="font-weight: bold;">가슴압박 30회 시행</b><br> 깍지를 낀 두 손의 손바닥으로 <br>환자의 가슴 압박점을 찾아 30회 가슴압박을 실시합니다. <br>※ 압박깊이: 5cm, 압박속도: 분당 100~120회</td>
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
								<img src ="saveimg/CPR5.png" alt="인공호흡위해 머리젖히고 턱들어 기도확보 이미지">
							</li>
						</ul>
					</td>
				</tr>
				<tr>
					<td style=""><b style="font-weight: bold;">기도 개방</b><br> 인공호흡을 위해, 환자의 머리를 젖히고, 턱을 들어 올려서 환자의 기도를 개방합니다.</td>
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
								<img src ="saveimg/CPR6.png" alt="코막고 입맞댄후 인공호흡 2회시행 하는 이미지">
							</li>
						</ul>
					</td>
				</tr>
				<tr>
					<td style=""><b style="font-weight: bold;">인공호흡 2회 시행</b><br> 환자의 코를 막은 다음 구조자의 입을 환자의 입에 착시킨 후, 환자의 가슴이 올라올 정도로 1초 동안 숨을 불어 넣습니다.</td>
				</tr>
			</tbody>
		</table>
		<br>
		<br>
		<br>
		</div>
		<div id="signature_div" style="font-size:10pt;width:30%;float:left;">
		<table border="0" cellpadding="1" cellspacing="1" style="font-size:10pt;width:35%;">
			<tbody>
				<tr>
					<td>
						<ul class="contextIndent_twoDepList" style="text-align: center;">
							<li style="width:318px;">
								<img src = "saveimg/CPR7.png" alt="119올때까지 가슴압박,인공호흡 계속 반복 이미지">
							</li>
						</ul>
					</td>
				</tr>
				<tr>
					<td style=""><b style="font-weight: bold;">가슴압박과 인공호흡의 반복</b><br> 30회의 가슴압박과 2회의 인공호흡을 119구급대원이 도착할 때까지 반복해서 시행합니다.</td>
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
								<img src = "saveimg/CPR8.png" alt="호흡회복 후 안정자세만드는 이미지">
							</li>
						</ul>
					</td>
				</tr>
				<tr>
					<td style=""><b style="font-weight: bold;">회복자세</b><br> 환자의 호흡이 회복되었으면 환자를 옆으로 돌려 눕혀 기도가 막히는 것을 예방합니다.</td>
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
								<img src = "saveimg/CPR9.png" alt="가슴압박점 설명하는 이미지">
							</li>
						</ul>
					</td>
				</tr>
				<tr>
					<td style=""><b style="font-weight: bold;">가슴압박 위치</b><br> 성인과 소아 심정지 환자에서 가슴압박의 위치는 가슴뼈의 아래쪽 1/2입니다.</td>
				</tr>
			</tbody>
		</table>
		</div>
</body>
</html>