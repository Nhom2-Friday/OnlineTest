package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import classes.Question;
import dao.QuestionDAO;

/**
 * Servlet implementation class QLNHCH_getQuestion
 */
@WebServlet("/QLNHCH_Question")
public class QLNHCH_getQuestion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QLNHCH_getQuestion() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
    	ArrayList<Question> list = new ArrayList<>();
    	QuestionDAO dao = new QuestionDAO();
    	list = dao.getQuestionList();
    	if(!list.isEmpty())
    	{
    		request.setAttribute("list", list);
    	}
    	request.getRequestDispatcher("/Quantri_NHDT.jsp").forward(request, response);
	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8"); 
		request.setCharacterEncoding("UTF-8");
		Question ch = new Question();
		ch.setqID(request.getParameter("macauhoi"));
		ch.setMaMH(request.getParameter("mamonhoc"));
		ch.setMaCD(request.getParameter("machuyende"));
		ch.setNDCauhoi(request.getParameter("ndch"));
		ch.setLuaChonA(request.getParameter("luachonA"));
		ch.setLuaChonB(request.getParameter("luachonB"));
		ch.setLuaChonC(request.getParameter("luachonC"));
		ch.setLuaChonD(request.getParameter("luachonD"));
		ch.setDapAn(request.getParameter("dapan"));
		QuestionDAO dao = new QuestionDAO();
		dao.insertCauHoi(ch);
		doGet(request, response);
	}

}
