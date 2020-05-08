package Test.Servlet;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Test.Entity.LogRec;
import Test.Entity.MatchedLogRec;
import Test.gather.LogRecAnalyse;

/**
 * Servlet implementation class matchTheLogServlet
 */
@WebServlet("/View/matchTheLogServlet")
public class matchTheLogServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static ArrayList<LogRec> logRecList = new ArrayList<LogRec>();
	private static ArrayList<MatchedLogRec> MatchedLogRecList = new ArrayList<MatchedLogRec>();
    
	/**
     * @see HttpServlet#HttpServlet()
     */
    public matchTheLogServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		Match_Log(request, response);
//		request.getRequestDispatcher("ShowMatchedLogs.jsp").forward(request, response);
		request.getRequestDispatcher("MatchLog.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	/**
	 * 该方法实现了将采集的数据进行分析，并且将匹配的日志数据集合写入到seesion中
	 * @throws UnsupportedEncodingException 
	 * @see HttpServlet#Match_Log(HttpServletRequest request, HttpServletResponse response)
	 */
	@SuppressWarnings("unchecked")
	protected void Match_Log(HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
		response.setCharacterEncoding("utf-8");
		request.setCharacterEncoding("utf-8");
		logRecList = (ArrayList<LogRec>) request.getSession().getAttribute("LogRec");
		System.out.println(logRecList);
		LogRecAnalyse logRecAnalyse = new LogRecAnalyse(logRecList);
		logRecAnalyse.doFilter();
		MatchedLogRecList = logRecAnalyse.matchData();
		System.out.println(MatchedLogRecList);
		request.getSession().setAttribute("MatchLogs", MatchedLogRecList);
	}
}
