package Test.Servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Test.Dao.RegisterDao;
import Test.Entity.User;
import Test.Service.UserService;

/**
 * Servlet implementation class ResgisterServlet
 */
@WebServlet("/View/ResgisterServlet")
public class ResgisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ResgisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
//		在进行response.getWriter()之后，进行数据的传输时会发生中文的乱码，需要对不同端的字符集进行设置
//		字符集设置为utf-8
		request.setCharacterEncoding("utf-8");
		String nameString = request.getParameter("uname");
		String pwd_1 = request.getParameter("upwd_1");
		String pwd_2 = request.getParameter("upwd_2");
		User user = null;
		int flag = 0;
//		爱好数据集合
		ArrayList<String> habitStrings = new ArrayList<String>();
		if (pwd_1.equals(pwd_2)) {
			String sexString = request.getParameter("sex");
			String habitString[] = request.getParameterValues("habits");
			Collections.addAll(habitStrings,habitString);
			String addressString = request.getParameter("address");
			String educationString = request.getParameter("Education");
//			构建用户的对象实例
			user = new User(nameString, pwd_1, sexString, addressString, habitStrings, educationString);
//			进行用户的密码进行加密
			user = UserService.CodingUSer(user);
//			使用登录模型，javaBean
			flag = RegisterDao.Register(user);
			System.out.println(flag);
			if (flag > 0) {
//				注册成功，进入到登录界面
				request.getRequestDispatcher("LogInPageTest.jsp").forward(request, response);
			}else if (flag == 0) {
				request.getRequestDispatcher("RegisterPage.jsp").forward(request, response);
			}else {
//			系统异常界面
				request.getRequestDispatcher("SystemErro.jsp").forward(request, response);
			}
		}else {
//			密码不一致，跳回到注册界面
			request.getRequestDispatcher("RegisterPage.jsp").forward(request, response);
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
