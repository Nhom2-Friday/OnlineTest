package controller;

import java.io.IOException;
import java.sql.Date;
import java.sql.SQLException;
import java.sql.Time;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import classes.KyThi;
import dao.KyThiDAO;



/**
 * Servlet implementation class QTKT_getKyThi
 */
@WebServlet("/QTKT_KyThi")
public class QTKT_getKyThi extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QTKT_getKyThi() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
    	ArrayList<KyThi> list = new ArrayList<>();
    	KyThiDAO dao = new KyThiDAO();
    	list = dao.getKyThiList();
    	if(!list.isEmpty())
    	{
    		request.setAttribute("list", list);
    	}
    	request.getRequestDispatcher("/NguoiQTKT.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8"); 
		request.setCharacterEncoding("UTF-8");
		String MaDe = request.getParameter("madethi");
		String MaMH = request.getParameter("mamonhoc");
		String Ngaythi = request.getParameter("ngaythi");
		String Thoigianthi = request.getParameter("time");
		String PhongThi = request.getParameter("phongthi");
		KyThi kt = new KyThi();
		kt.setMaDe(request.getParameter("madethi"));
		kt.setMaMH(request.getParameter("mamonhoc"));
		kt.setNgayThi(Date.valueOf(Ngaythi));
		kt.setThoigianthi(request.getParameter("time"));
		kt.setPhongThi(request.getParameter("phongthi"));
		KyThiDAO dao = new KyThiDAO();
		dao.insertKyThi(kt);
		doGet(request, response);
	}
}
		
		
	


