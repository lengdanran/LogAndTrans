package Test.Servlet;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Test.Entity.MatchedTransport;
import Test.Entity.Transport;
import Test.gather.TransportAnalyse;

/**
 * Servlet implementation class matchTheTransServlet
 */
@WebServlet("/View/matchTheTransServlet")
public class matchTheTransServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private static ArrayList<MatchedTransport> MatchedTrans = new ArrayList<MatchedTransport>(); 
    /**
     * @see HttpServlet#HttpServlet()
     */
    public matchTheTransServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		Match_Trans(request, response);
//		request.getRequestDispatcher("ShowMatchedTrans.jsp").forward(request, response);
		request.getRequestDispatcher("MatchTran.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	/**
	 * 该方法实现了将采集的数据进行分析，并且将匹配的物流数据集合写入到seesion中
	 * @throws UnsupportedEncodingException 
	 * @see HttpServlet#Match_Trans(HttpServletRequest request, HttpServletResponse response)
	 */
	@SuppressWarnings("unchecked")
	protected void Match_Trans(HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		ArrayList<Transport> Trans = (ArrayList<Transport>) request.getSession().getAttribute("TransRecord");
		TransportAnalyse transportAnalyse = new TransportAnalyse(Trans);
		transportAnalyse.doFilter();
		MatchedTrans = transportAnalyse.matchData();
		System.out.println(MatchedTrans);
		request.getSession().setAttribute("MatchedTrans", MatchedTrans);
	}
}
