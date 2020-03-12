package com.qst.dms.entity;

import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.net.UnknownHostException;

import com.qst.dms.util.Config;

public class SocketClient {
	
	
//	 要连接的服务端IP地址和端口
	private static String host = Config.getValue("serverIP");
	private static int port = 55533;
	
	/**
	 * @author ASUS
	 */
	
	public static String doService(matlog matchedloglist) {
		Socket socket = null;
		OutputStream outputStream = null;
		InputStream inputStream = null;
		StringBuilder sb = new StringBuilder();
		try {
			socket = new Socket(host, port);
			outputStream = socket.getOutputStream();
			
			ObjectOutputStream objectOutputStream = new ObjectOutputStream(outputStream);
			objectOutputStream.writeObject(matchedloglist);
			objectOutputStream.flush();			// 冲出到缓冲区，将所有的信息都输出，防止数据丢失
//		    通过shutdownOutput高速服务器已经发送完数据，后续只能接受数据
		    socket.shutdownOutput();
		    inputStream = socket.getInputStream();
		    byte[] bytes = new byte[1024];
		    int len;
		    
		    while ((len = inputStream.read(bytes)) != -1) {
//		      注意指定编码格式，发送方和接收方一定要统一，建议使用UTF-8
		      sb.append(new String(bytes, 0, len,"UTF-8"));
		    }
		    System.out.println("get message from server: " + sb);
		    inputStream.close();
		    outputStream.close();
		    socket.close();// 关闭连接
		} catch (UnknownHostException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return sb.toString();
	}
	public static String doService(matTran matchedTranlist) {
		Socket socket = null;
		OutputStream outputStream = null;
		InputStream inputStream = null;
		StringBuilder sb = new StringBuilder();
		try {
			socket = new Socket(host, port);
			outputStream = socket.getOutputStream();
			
			ObjectOutputStream objectOutputStream = new ObjectOutputStream(outputStream);
			objectOutputStream.writeObject(matchedTranlist);
			objectOutputStream.flush();
//		    通过shutdownOutput高速服务器已经发送完数据，后续只能接受数据
		    socket.shutdownOutput();
		    inputStream = socket.getInputStream();
		    byte[] bytes = new byte[1024];
		    int len;
		    
		    while ((len = inputStream.read(bytes)) != -1) {
//		      注意指定编码格式，发送方和接收方一定要统一，建议使用UTF-8
		      sb.append(new String(bytes, 0, len,"UTF-8"));
		    }
		    System.out.println("get message from server: " + sb);
		    inputStream.close();
		    outputStream.close();
		    socket.close();
		    
		} catch (UnknownHostException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return sb.toString();
	}
}
