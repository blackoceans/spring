package ch4;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class OneServlet
 */
@WebServlet("/OneServlet")
public class OneServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OneServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		out.println("<h1>I am One Servlet</h1>");
		
		// response.sendRedirect("TwoServlet"); -- 1페이지에서 2페이지를 불러옴
		// http://localhost:8090/WebLab/TwoServlet --주소도 2페이지로 뜸
		
		//RequestDispatcher rd = request.getRequestDispatcher(TwoServlet); --2페이지를 불러옴 
		//rd.forward(request, response); 
		// http://localhost:8090/WebLab/OneServlet --주소는 1페이지

		//RequestDispatcher rd = request.getRequestDispatcher(TwoServlet); 
		//rd.include(request, response); -- 1,2페이지 다 불러옴
		// http://localhost:8090/WebLab/OneServlet	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}