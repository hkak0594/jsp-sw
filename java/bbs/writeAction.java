package bbs;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class writeAction extends HttpServlet{
private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		HttpSession session = request.getSession();
		 String userID = (String) session.getAttribute("userID");
		String bbsTitle = request.getParameter("bbsTitle");
		String bbsContent = request.getParameter("bbsContent");
		if(userID == null || userID.equals("")|| bbsTitle == null || bbsTitle.equals("") || bbsContent == null || bbsContent.equals("")) {
					request.getSession().setAttribute("messageType", "오류 메시지");
					request.getSession().setAttribute("messageContent", "모든 내용을 입력하세요.");
					response.sendRedirect("write.jsp");
					return;
				}
		int result = new BbsDAO().write(userID, bbsTitle, bbsContent);
		if(result == -1) {
			request.getSession().setAttribute("messageType", "에러 메시지");
			request.getSession().setAttribute("messageContent", "글쓰기에 실패 하셨습니다.");
			response.sendRedirect("write.jsp");
			return;
		} else { // 글쓰기에 성공했을 경우
            PrintWriter script = response.getWriter();
        	request.getSession().setAttribute("messageType", "성공 메시지");
			request.getSession().setAttribute("messageContent", "글쓰기에 성공 하셨습니다.");
			request.getSession().setAttribute("script", script);
			response.sendRedirect("bbs.jsp");
			return;
            }
}
}