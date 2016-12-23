package controller;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Paths;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class UpfileController
 */
@WebServlet("/upfile.html")
@MultipartConfig
public class UpfileController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpfileController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/Themtepcauhoi.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//upload file
		ByteArrayOutputStream buffer = new ByteArrayOutputStream();
		Part filePart = req.getPart("upfile"); 
	    String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString(); 
	    InputStream fileContent = filePart.getInputStream();
		byte[] block = new byte[4*1204];
		while(true){
			int n = fileContent.read(block);
			if(n <= 0) break; // hết dữ liệu
			buffer.write(block, 0, n);
		}
		fileContent.close();
		System.out.println(req.getServletContext().getRealPath("/pdf")
        										+ File.separator + fileName);
		buffer.writeTo(new FileOutputStream(req.getServletContext().getRealPath("/pdf")
        										+ File.separator + fileName));
	}

}
