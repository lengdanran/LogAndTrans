package com.qst.dms.entity;

import java.io.InputStream;
import java.io.ObjectInputStream;
//import java.io.ObjectInputStream;
import java.io.OutputStream;
import java.net.ServerSocket;
import java.net.Socket;
import java.util.ArrayList;

import com.qst.dms.service.LogRecService;
import com.qst.dms.service.TransportService;

public class SocketServer {
	 public static void main(String[] args) throws Exception {
//		     监听指定的端口
		    int port = 55533;
		    @SuppressWarnings("resource")
			ServerSocket server = new ServerSocket(port);
//			 创建一个日志业务类
			LogRecService logService = new LogRecService();
//			创建一个物流业务类
			TransportService tranService = new TransportService();
//			 日志数据匹配集合
			ArrayList<MatchedLogRec> matchedLogs = new ArrayList<MatchedLogRec>();
//			 物流数据匹配集合
			ArrayList<MatchedTransport> matchedTrans = new ArrayList<MatchedTransport>();
//		     server将一直等待连接的到来
			
		    while(true) {
		    	System.out.println("server将一直等待连接的到来");
			    Socket socket = server.accept();
//			     建立好连接后，从socket中获取输入流，并建立缓冲区进行读取
			    InputStream inputStream = socket.getInputStream();
			    ObjectInputStream objectInputStream = new ObjectInputStream(inputStream);
//			    读取输入流中的套接字信息
			    Object object = objectInputStream.readObject();
//			    输入流中的是日志信息
			    if (object instanceof matlog) {
			    	matlog matchedMatlog = (matlog)object;
//			    	进行发送操作
			    	matchedLogs = matchedMatlog.getMatchedLogRecs();
			    	logService.sendMatchedLog(logService.getSQLString(matchedLogs));
				}else if (object instanceof matTran){// 输入流中的信息为物流信息
					matTran matchedTran = (matTran)object;// 造型
//					进行发送操作
					matchedTrans = matchedTran.getMatchedTransports();
					tranService.sendMatchedTrans(tranService.getSQLString(matchedTrans));
				}
//			    向客户端发送信息
			    OutputStream outputStream = socket.getOutputStream();
			    outputStream.write("数据发送成功！".getBytes("UTF-8"));
//			        关闭流
			    inputStream.close();
			    outputStream.close();
		    }
		  }
}
