package Test.Servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Test.Entity.Transport;

/**
 * Servlet implementation class GatherTransServlet
 */
@WebServlet("/View/GatherTransServlet")
public class GatherTransServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private static ArrayList<Transport> Trans = new ArrayList<Transport>();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GatherTransServlet() {
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
		Trans.add(GatherTrans(request, response));
		request.getSession().setAttribute("TransRecord", Trans);
//		request.getRequestDispatcher("Transremind.jsp").forward(request, response);
		request.getRequestDispatcher("GatherTran.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	/**
	 * @return 用采集的数据进行构造的 Transport
	 * @see HttpServlet#GatherTrans(HttpServletRequest request, HttpServletResponse response)
	 */
	protected Transport GatherTrans(HttpServletRequest request, HttpServletResponse response) {
		int id = Integer.parseInt(request.getParameter("TransID"));
		Date time = new Date();
		String address = request.getParameter("Destination");
		String handler = request.getParameter("Handler");
		String reciver = request.getParameter("Receiver");
		int transportType = Integer.parseInt(request.getParameter("type"));
		return new Transport(id, time, address, Transport.GATHER, handler, reciver, transportType);
	}
}
