package controller;

import java.io.IOException;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import classes.DeThi;
import classes.Users;
import dao.DeThiDAO;
import dao.userDAO;


/**
 * Servlet implementation class Admin_getUsersList
 */
@WebServlet("/Admin")
public class Admin_getUsersList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Admin_getUsersList() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
    	ArrayList<Users> list = new ArrayList<>();
    	userDAO dao = new userDAO();
    	list = dao.getUserList();
    	if(!list.isEmpty())
    	{
    		request.setAttribute("list", list);
    	}
    	request.getRequestDispatcher("/Admin_Thongtincanhan.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8"); 
		request.setCharacterEncoding("UTF-8");
		Users us = new Users();
		us.setUserName(request.getParameter("username"));
		us.setPssword(request.getParameter("password"));
		us.setEmail(request.getParameter("email"));
		us.setPerUser(request.getParameter("perUser"));
		userDAO dao = new userDAO();
		dao.insertUsers(us);
		doGet(request, response);
	}

}
