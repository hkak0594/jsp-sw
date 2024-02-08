<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="bbs.BbsDAO" %>
<%@ page import="bbs.Bbs" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1" >  <!-- 반응형 웹에 사용하는 메타태그 -->
<link rel="stylesheet" href="css/bootstrap.css"> <!-- 참조  -->
<title>JSP 게시판 웹 사이트</title>
<style type = "text/css">
    a, a:hover
    {
        color: #000000;
        text-decoration: none;
    }
</style>
</head>
<body>
<%
    String userID = null; // 로그인이 된 사람들은 로그인정보를 담을 수 있도록한다
    if (session.getAttribute("userID") != null)
    {
        userID = (String)session.getAttribute("userID");
    }
    int pageNumber = 1; // 기본페이지 기본적으로 페이지 1부터 시작하므로
    if (request.getParameter("pageNumber") != null)
    {
        pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
    }
%>
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


    if (request.getSession().getAttribute("userID") != null)
    {
        userID = (String)session.getAttribute("userID");
    }
%>

<%if (userID == null){ %>
      <div class="col-md-3 text-end">
        <a href="login.jsp" method="post">
        <button type="button" class="btn btn-outline-primary me-2">로그인</button> </a>
        <a href="index.jsp" method="post">
        <button type="button" class="btn btn-primary">회원가입</button></a>
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
  
    <div class="container">
        <div class="row">
            <table class="table table-striped" style="text-align:center; border:1px solid #dddddd">
                <thead>
                    <tr>
                        <th style="background-color:#eeeeee; text-align:center;">번호</th>
                        <th style="background-color:#eeeeee; text-align:center;">제목</th>
                        <th style="background-color:#eeeeee; text-align:center;">작성자</th>
                        <th style="background-color:#eeeeee; text-align:center;">작성일</th>
                    </tr>
                </thead>
                <tbody>
                <%
                    BbsDAO bbsDAO = new BbsDAO();
                    ArrayList<Bbs> list = bbsDAO.getList(pageNumber);
                    for(int i = 0; i < list.size(); i++)
                    {
                %>
                
                    <tr>
                        <td><%=list.get(i).getBbsID() %></td>
                        <td><a href="view.jsp?bbsID=<%=list.get(i).getBbsID()%>"><%=list.get(i).getBbsTitle().replaceAll(" ","&nbsp;").replaceAll("<","&lt;").replaceAll(">","&gt;").replaceAll("\n", "<br>")%></a></td>
                        <td><%=list.get(i).getUserID() %></td>
                        <td><%=list.get(i).getBbsDate().substring(0,11) + list.get(i).getBbsDate().substring(11, 13) + "시" 
                        + list.get(i).getBbsDate().substring(14,16) + "분" %></td>
                    </tr>
                <%
                    }
                %>
                </tbody>
            </table>
            <%
                if(pageNumber != 1) {
            %>
                <a href="bbs.jsp?pageNumber=<%=pageNumber - 1 %>" class="btn btn-success btn-arrow-left">이전</a>
                <br>
            <%
                } if (bbsDAO.nextPage(pageNumber + 1)) {
            %>
                <a href="bbs.jsp?pageNumber=<%=pageNumber + 1 %>" class="btn btn-success btn-arrow-left">다음</a>
              <br>
            <%
                }
            %>
          
             <a href="write.jsp" method="Post">
                  <input type="submit"  class="btn btn-primary pull-right" value="글쓰기">
                 
        </a>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="js/bootstrap.js"></script>
</body>
</html>

