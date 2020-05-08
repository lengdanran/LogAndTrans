package Test.Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Test.Dao.LogInDao;
import Test.Entity.User;
import Test.Service.iptet;

/**
 * Servlet implementation class LogInServlet
 */
@WebServlet("/View/LogInServlet")
public class LogInServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LogInServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @param PrintWriter Out 
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
//		获取session中的用户名信息，用于进行用户登录
		String nameString = request.getParameter("uname");
		String passwordString = request.getParameter("upwd");
		User user = new User(nameString, passwordString);
//		进行用户的登录，并且返回登录的结果
		int flag = LogInDao.LogIn(user);
		System.out.println(flag);
		if (flag == 1) {
			System.out.println("用户名：" + nameString + "--->登录成功！");
//			进行数据采集，形成登录日志对象
			System.out.println(iptet.getIp(request));
//			进入到主界面
			request.getRequestDispatcher("Home.jsp").forward(request, response);
		}else if (flag == 0) {
//			进入到失败界面
			System.out.println("用户名：" + nameString + "--->登录失败！");
			request.getRequestDispatcher("Failed.jsp").forward(request, response);
		}else {
			request.getRequestDispatcher("SystemErro.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
