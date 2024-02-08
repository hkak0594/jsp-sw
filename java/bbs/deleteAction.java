package bbs;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class deleteAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		HttpSession session = request.getSession();
		 String userID = (String) session.getAttribute("userID");
		 String bbsID = (String) session.getAttribute("bbsID");
		
		 int bbsID1 = 0;
	        if(request.getParameter("bbsID") !=null){
	        	bbsID1 = Integer.parseInt(request.getParameter("bbsID"));
	        }
	        if(bbsID1==0){
	        	request.getSession().setAttribute("messageType", "오류 메시지");
				request.getSession().setAttribute("messageContent", "유효하지 않습니다.");
				response.sendRedirect("bbs.jsp");
				return;
	        }
	       
	        if(!userID.equals(userID)){
	        	request.getSession().setAttribute("messageType", "오류 메시지");
				request.getSession().setAttribute("messageContent", "권한이 없습니다.");
				response.sendRedirect("bbs.jsp");
				return;
	        }      
	        else {
	            int result = new BbsDAO().delete(bbsID1);
	                if(result == -1){ // 글쓰기에 실패했을 경우
	                	request.getSession().setAttribute("messageType", "오류 메시지");
	    				request.getSession().setAttribute("messageContent", "글삭제 실패 했습니다.");
	    				response.sendRedirect("Main.jsp");
	    				return;
	    	        }      
	                else { // 글쓰기에 성공했을 경우
	                	response.sendRedirect("Main.jsp");
	                    }
	            }

}
}