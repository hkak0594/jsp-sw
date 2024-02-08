<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


	
</head>

<body>

   <div class="modal-content rounded-4 shadow">
   	<form method ="post" action="./login">
      <div class="modal-header p-5 pb-4 border-bottom-0">
        <!-- <h1 class="modal-title fs-5" >Modal title</h1> -->
        <h1 class="fw-bold mb-0 fs-2">로그인</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" onclick = "location.href = 'Main.jsp'">Home</button>
      </div>

      <div class="modal-body p-5 pt-0">
        
          <div class="form-floating mb-3">
            <input type="text" class="form-control rounded-3" name="userID" placeholder="아이디를 입력하세요">

          </div>
          <div class="form-floating mb-3">
            <input type="password" class="form-control rounded-3" name="userPassword" placeholder="비밀번호를 입력하세요">
          </div>
          <button class="w-100 mb-2 btn btn-lg rounded-3 btn-primary" type="submit">로그인</button>
      </div>
          </form>
    </div>
 	<%
			String messageContent =null;
			if(session.getAttribute("messageContent") != null) {
					messageContent = (String) session.getAttribute("messageContent");
					}
			String messageType =null;
			if(session.getAttribute("messageType") != null) {
				messageType = (String) session.getAttribute("messageType");
					}
			if(messageContent != null){
	%>
	
	<div class="modal fade" id="messageModal" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="vertical-alignment-helper">
			<div class = "modal-dialog vertical-align-center">
			<div class="modal-content" <% if(messageType.equals("오류 메시지")) out.println("panel-warning"); else out.println("panel-success"); %>>
			<div class="modal-header panel-heading">
				<button type= "button" class="close" data-dismiss="modal">
					<span aria-hidden="true">&times;</span>

				</button>
				<h4 class="modal-title">
					<%= messageType %>
				</h4>
			</div>
			<div class="modal-body">
					<%= messageContent %>
			</div>
		
			<div class="modal-footer">
			
		
				<% if(messageType.equals("성공 메시지")){ %>
				<button type="button" class="btn btn-primary" data-dismiss="modal"  onclick = "location.href = 'Main.jsp'">확인</button>
				<%}else{ %>		<button type="button" class="btn btn-primary" data-dismiss="modal">확인</button><%} %>
</div>
			
			</div>
			</div>
		</div>
	</div>

	<script>
		$('#messageModal').modal("show");
	</script>
<%
	session.removeAttribute("messageContent");
	session.removeAttribute("messageType");
	}
	%>

</body>
</html>
