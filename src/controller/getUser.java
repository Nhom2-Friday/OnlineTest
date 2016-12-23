package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import classes.Users;
import dao.userDAO;

/**
 * Servlet implementation class getUser
 */
@WebServlet("/Login")
public class getUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public getUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		if (session.getAttribute("userName") != null){
			response.sendRedirect("Trangchu");
		}
		else
			request.getRequestDispatcher("DangNhap.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userName = request.getParameter("username");
		String pssword = request.getParameter("password");
		Users user = userDAO.getUser(userName,pssword);
		HttpSession session = request.getSession();
		System.out.println(user.getPerUser());	
		switch(user.getPerUser()){
		case "adm":	
			session.setAttribute("role", "adm");
			response.sendRedirect("Admin");
			break;
		case "nrd":
			session.setAttribute("role", "nrd");
			response.sendRedirect("NRD_DeThi");
			break;
		case "qtkt":
			session.setAttribute("role", "qtkt");
			response.sendRedirect("QTKT_KyThi");
			break;
		case "qlnhch":
			session.setAttribute("role","qlnhch");
			response.sendRedirect("QLNHCH_Question");
			break;
			default:
				break;
		}
	}

}
