package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import classes.DeThi;
import classes.Question;
import dao.DeThiDAO;
import dao.QuestionDAO;

/**
 * Servlet implementation class NRD_getDeThi
 */
@WebServlet("/NRD_DeThi")
public class NRD_getDeThi extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NRD_getDeThi() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
    	ArrayList<DeThi> list = new ArrayList<>();
    	DeThiDAO dao = new DeThiDAO();
    	list = dao.getDeThiList();
    	if(!list.isEmpty())
    	{
    		request.setAttribute("list", list);
    	}
    	request.getRequestDispatcher("/Nguoirade.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8"); 
		request.setCharacterEncoding("UTF-8");
		DeThi dt = new DeThi();
		dt.setMaDe(request.getParameter("made"));
		dt.setNDungDe(request.getParameter("ndungde"));
		dt.setThoigian(request.getParameter("thoigian"));
		DeThiDAO dao = new DeThiDAO();
		dao.insertDeThi(dt);
		doGet(request, response);
	}

}
