package com.qst.dms.service;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.Scanner;

import com.qst.dms.db.DBUtil;
import com.qst.dms.dos.MyObjectInputStream;
import com.qst.dms.dos.MyObjectOutputStream;
import com.qst.dms.entity.DataBase;
import com.qst.dms.entity.MatchedTransport;
import com.qst.dms.entity.TransInDataBase;
import com.qst.dms.entity.Transport;

public class TransportService {
	// 物流数据采集
	public Transport inputTransport() {
		Transport trans = null;

		// 建立一个从键盘接收数据的扫描器
		@SuppressWarnings("resource")
		Scanner scanner = new Scanner(System.in);
		try{
			// 提示用户输入ID标识
			System.out.println("请输入ID标识：");
			// 接收键盘输入的整数
			int id = scanner.nextInt();
			// 获取当前系统时间
			Date nowDate = new Date();
			// 提示用户输入地址
			System.out.println("请输入地址：");
			// 接收键盘输入的字符串信息
			String address = scanner.next();
			// 数据状态是“采集”
			int type = DataBase.GATHER;

			// 提示用户输入登录用户名
			System.out.println("请输入货物经手人：");
			// 接收键盘输入的字符串信息
			String handler = scanner.next();
			// 提示用户输入主机IP
			System.out.println("请输入 收货人:");
			// 接收键盘输入的字符串信息
			String reciver = scanner.next();
			// 提示用于输入物流状态
			System.out.println("请输入物流状态：1发货中，2送货中，3已签收");
			// 接收物流状态
			int transportType = scanner.nextInt();
			// 创建物流信息对象
			trans = new Transport(id, nowDate, address, type, handler, reciver,
					transportType);
		} catch (Exception e) {
			System.out.println("采集的日志信息不合法");
		}
		// 返回物流对象
		return trans;
	}

	// 物流信息输出
	public void showTransport(Transport... transports) {
		for (Transport e : transports) {
			if (e != null) {
				System.out.println(e.toString());
			}
		}
	}

	// 匹配的物流信息输出，可变参数
	public void showMatchTransport(MatchedTransport... matchTrans) {
		for (MatchedTransport e : matchTrans) {
			if (e != null) {
				System.out.println(e.toString());
			}
		}
	}
	// 匹配的物流信息输出，参数是集合
	public void showMatchTransport(ArrayList<MatchedTransport> matchTrans) {
		for (MatchedTransport e : matchTrans) {
			if (e != null) {
				System.out.println(e.toString());
			}
		}
	}
	
	/**
	 * @author ASUS
	 *  创建一个文件保存方法 利用对象的序列化
	 * @param matchTrans
	 */
	public void saveMacthedTransport(ArrayList<MatchedTransport> matchTrans) {
		File file = new File("MatchedTransports.txt");
		FileOutputStream fileOutputStream = null;
		MyObjectOutputStream objectOutputStream = null;//利用自己的输出流进行文件的写入。。
		try {
			fileOutputStream = new FileOutputStream(file,true);//允许追加内容。
			objectOutputStream = new MyObjectOutputStream(fileOutputStream);
//			对对象进行逐个的序列化、写入文件中
			for (MatchedTransport matchedTransport : matchTrans) {
				objectOutputStream.writeObject((Object)matchedTransport);
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				if (fileOutputStream != null) {//关闭流。
					fileOutputStream.close();
					objectOutputStream.close();
					System.out.println("物流数据记录成功！");
				}
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	/**
	 * @author ASUS
	 *   读取文件中的对象
	 * @return matchedTransports;
	 */
	public ArrayList<MatchedTransport>  readMatchedTransports() {
		File file = new File("MatchedTransports.txt");
		FileInputStream fileInputStream = null;
		MyObjectInputStream objectInputStream = null;
		ArrayList<MatchedTransport> matchedTransports = new ArrayList<MatchedTransport>();
		try {
			fileInputStream = new FileInputStream(file);
			objectInputStream = new MyObjectInputStream(fileInputStream);
			//逐个将文件中的对象信息进行读取、并且存在集合中。
			while (fileInputStream.available() > 0) {
				matchedTransports.add((MatchedTransport)objectInputStream.readObject());
			}
		} catch (IOException | ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				if (fileInputStream!=null) {//关闭流。
					fileInputStream.close();
					objectInputStream.close();
					System.out.println("物流数据读取成功！");
				}
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return matchedTransports;
	}
	
	
	public int MaxInDB() {
		int id = 2019001;
		Connection connection = null;
		ResultSet rsResultset = null;
		Statement statement = null;
		DBUtil dbUtil = new DBUtil();
		try {
			connection = dbUtil.getConnection();
			statement = connection.createStatement();
			rsResultset = statement.executeQuery("select Max(id) from matchedtrans");
			while(rsResultset.next()) {
				id = rsResultset.getInt(1);
			}
		} catch (SQLException | ClassNotFoundException | InstantiationException | IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return id;
	}
	/**
	 * @param SQLString
	 */
	public void sendMatchedTrans(Object [][] SQLString) {
		Connection connection = null;
		ResultSet rsResultset = null;
		Statement statement = null;
		DBUtil dbUtil = new DBUtil();
		try {
			connection = dbUtil.getConnection();
			statement = connection.createStatement();
//			String[] columnNames = {"ID标识","收货人","地址","发货时间","送货时间","签收时间","货物经手人","是否匹配"};
//			初始的SQL语句，选择ID为主键，用REPLACE 来控制数据库中没有重复的数据
			String sql = new String("REPLACE INTO matchedtrans(id,receiver,Address,sendTime,transTime,signTime,handler,Matched)VALUES(?,?,?,?,?,?,?,?);");
//			循环发送数据到数据库中。。
			for (int i = 0; i < SQLString.length; i++) {
				dbUtil.executeUpdated(sql,SQLString[i]);
			}
//			构建返回集
			rsResultset = statement.executeQuery("select * from matchedtrans");
			while(rsResultset.next()) {
//				System.out.println(rsResultset.getString("name"));
				String username = rsResultset.getString("id");
				String password = rsResultset.getString("receiver");
				String sex = rsResultset.getString("Address");
				System.out.println("id:"+username+"\treceiver:"+password+"\tAddress:"+sex);
				
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InstantiationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			dbUtil.closeAll();
		}
	}
	/**
	 * @从数据库中下载匹配的物流数据
	 * @return ArrayList<TransInDataBase>
	 */
	public ArrayList<TransInDataBase> loadMatchedTransRecs(){
		Connection connection = null;
		ResultSet rsResultset = null;
		Statement statement = null;
		ArrayList<TransInDataBase>  logList = new ArrayList<TransInDataBase>();
		DBUtil dbUtil = new DBUtil();
//		构建返回集
		try {
			connection = dbUtil.getConnection();
			statement = connection.createStatement();
			rsResultset = statement.executeQuery("select * from matchedtrans");
			while(rsResultset.next()) {
//				依次读取物流信息
				TransInDataBase transInDataBase = new TransInDataBase();
				transInDataBase.setId(rsResultset.getString("id"));
				transInDataBase.setReceiver(rsResultset.getString("receiver"));
				transInDataBase.setAddress(rsResultset.getString("Address"));
				transInDataBase.setSendTime(rsResultset.getString("sendTime"));
				transInDataBase.setTransTime(rsResultset.getString("transTime"));
				transInDataBase.setSignTime(rsResultset.getString("signTime"));
				transInDataBase.setHandler(rsResultset.getString("handler"));
				transInDataBase.setMatched(rsResultset.getString("Matched"));
//				添加到返回集合中
				logList.add(transInDataBase);
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InstantiationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
//			关闭所有的连接
			dbUtil.closeAll();
		}
		return logList;
	}
	
	
	public Object[][] getTableFromDataBase(ArrayList<TransInDataBase> logList){
//		System.out.println(logList);
		Object [][] rowData = new Object[logList.size()][8];
		for (int i = 0; i < rowData.length; i++) {
			for (int j = 0; j < rowData[i].length; j++) {
				switch (j) {
					case 0:rowData[i][j] = logList.get(i).getId();break;
					case 1:rowData[i][j] = logList.get(i).getReceiver();break;
					case 2:rowData[i][j] = logList.get(i).getAddress();break;
					case 3:rowData[i][j] = logList.get(i).getSendTime();break;
					case 4:rowData[i][j] = logList.get(i).getTransTime();break;
					case 5:rowData[i][j] = logList.get(i).getSignTime();break;
					case 6:rowData[i][j] = logList.get(i).getHandler();break;
					case 7:rowData[i][j] = logList.get(i).getMatched();break;
					default:break;
				}
			}
		}
		return rowData;
	}
	/**
	 * @author ASUS 得到预处理的SQL语句的二维数组
	 * @param matchedTrans
	 * @return
	 */
	public Object[][] getSQLString(ArrayList<MatchedTransport> matchedTrans) {
//		String[] columnNames = {"ID标识","收货人","地址","发货时间","送货时间","签收时间","货物经手人","是否匹配"};
//		System.out.println(matchedTrans);
		Object [][] SQLString = new Object[matchedTrans.size()][8];
		for (int i = 0; i < SQLString.length; i++) {
			for (int j = 0; j < SQLString[i].length; j++) {
				switch (j) {
					case 0:SQLString[i][j] = matchedTrans.get(i).getSend().getId();break;
					case 1:SQLString[i][j] = matchedTrans.get(i).getReceive().getReciver();break;
					case 2:SQLString[i][j] = matchedTrans.get(i).getReceive().getAddress();break;
					case 3:SQLString[i][j] = matchedTrans.get(i).getSend().getTimeF();break;
					case 4:SQLString[i][j] = matchedTrans.get(i).getTrans().getTimeF();break;
					case 5:SQLString[i][j] = matchedTrans.get(i).getReceive().getTimeF();break;
					case 6:SQLString[i][j] = matchedTrans.get(i).getReceive().getHandler();break;
					case 7:SQLString[i][j] = matchedTrans.get(i).getReceive().getTypeF();break;
					default:break;
				}
			}
		}
		return SQLString;
	}

	/**
	 * @返回表格的数组
	 * @param matchedTrans
	 * @return
	 */
	public Object[][] getTable(ArrayList<MatchedTransport> matchedTrans) {
//		String[] columnNames = {"ID标识","收货人","地址","发货时间","送货时间","签收时间","货物经手人","是否匹配"};
		System.out.println(matchedTrans);
		Object [][] rowData = new Object[matchedTrans.size()][8];
		for (int i = 0; i < rowData.length; i++) {
			for (int j = 0; j < rowData[i].length; j++) {
				switch (j) {
					case 0:rowData[i][j] = matchedTrans.get(i).getSend().getId();break;
					case 1:rowData[i][j] = matchedTrans.get(i).getReceive().getReciver();break;
					case 2:rowData[i][j] = matchedTrans.get(i).getReceive().getAddress();break;
					case 3:rowData[i][j] = matchedTrans.get(i).getSend().getTimeF();break;
					case 4:rowData[i][j] = matchedTrans.get(i).getTrans().getTimeF();break;
					case 5:rowData[i][j] = matchedTrans.get(i).getReceive().getTimeF();break;
					case 6:rowData[i][j] = matchedTrans.get(i).getReceive().getHandler();break;
					case 7:rowData[i][j] = matchedTrans.get(i).getReceive().getTypeF();break;
					default:break;
				}
			}
		}
		return rowData;
	}
}



