package Test.Servlet;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Test.Dao.SaveDataToDBDao;
import Test.Entity.Matched;

/**
 * Servlet implementation class SaveServlet
 */
@WebServlet("/View/SaveServlet")
public class SaveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SaveServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		Save_Data(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	/**
	 * 
	 * @param request
	 * @param response
	 * @throws IOException 
	 * @throws ServletException 
	 */
	@SuppressWarnings("unchecked")
	protected void Save_Data(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		设置中文编码，防止中文乱码
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		ArrayList<? extends Matched> matcheds = (ArrayList<? extends Matched>) request.getSession().getAttribute("Matched");
		int falg = SaveDataToDBDao.SaveToDB(matcheds);
		System.out.println("成功的操作了："+falg);
//		request.getRequestDispatcher("Main.jsp").forward(request, response);
		request.getRequestDispatcher("Home.jsp").forward(request, response);
	}
}
