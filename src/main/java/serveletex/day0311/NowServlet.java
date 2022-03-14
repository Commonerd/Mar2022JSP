package serveletex.day0311;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Now")
public class NowServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter writer = response.getWriter();
		writer.println("<html><head><title> 현재시간</title></head></html");
		writer.println("<bodty>현재시간 : ");
		writer.println(new Date());
	
	} //리스폰드에 데이터를 쓸 수 있는 객체가 만들어진다. 자바에서 제공하는 입출력스트링임(getWriter). 해당객체에 내용을 출력할 수 있는 애. 프로젝트에 접근할 수 있는 경로를 꺼내옴. 

    @Override	
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
