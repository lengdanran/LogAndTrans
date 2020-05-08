package Test.Servlet;

import java.io.IOException;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Test.Entity.LogRec;

/**
 * Servlet implementation class GatherLogServlet
 */
@WebServlet("/View/GatherLogServlet")
public class GatherLogServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static ArrayList<LogRec> logRecList = new ArrayList<>();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GatherLogServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		logRecList.add(GetherLog(request));
		System.out.println("****************1");
		System.out.println(logRecList.toString());
//		在session中加入List对象
		request.getSession().setAttribute("LogRec", logRecList);
		request.getRequestDispatcher("GatherLog.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	/**
	 * -从表单中获取数据返回LogRec的对象
	 * @param request r
	 * @return LogRec
	 */
	protected LogRec GetherLog(HttpServletRequest request) {
		int id = Integer.parseInt(request.getParameter("LogID"));
		String nameString = request.getParameter("Logname");
		String addressString = request.getParameter("LogInAddress");
		int logType = Integer.parseInt(request.getParameter("type"));
		Date time = new Date();
		String ip = null;
		try {
//			获取本地的localhost和IP地址
			InetAddress inetAddress = InetAddress.getLocalHost();
//			截取IP地址字符串
			ip = inetAddress.toString().substring(inetAddress.toString().indexOf("/")+1);
		} catch (UnknownHostException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
//		返回日志的数据对象
		return new LogRec(id,time, addressString, LogRec.GATHER, nameString, ip, logType);
	}
}
