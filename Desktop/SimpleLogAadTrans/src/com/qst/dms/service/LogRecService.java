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
import com.qst.dms.entity.LogInDataBase;
import com.qst.dms.entity.LogRec;
import com.qst.dms.entity.MatchedLogRec;

//日志业务类
public class LogRecService {
	// 日志数据采集
	public LogRec inputLog() {
		LogRec log = null;
		// 建立一个从键盘接收数据的扫描器
		@SuppressWarnings("resource")
		Scanner scanner = new Scanner(System.in);
		try {
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
			System.out.println("请输入 登录用户名：");
			// 接收键盘输入的字符串信息
			String user = scanner.next();
			// 提示用户输入主机IP
			System.out.println("请输入 主机IP:");
			// 接收键盘输入的字符串信息
			String ip = scanner.next();
			// 提示用户输入登录状态、登出状态
			System.out.println("请输入登录状态:1是登录，0是登出");
			int logType = scanner.nextInt();
			// 创建日志对象
			log = new LogRec(id, nowDate, address, type, user, ip, logType);
		} catch (Exception e) {
			System.out.println("采集的日志信息不合法");
		}
		// 返回日志对象
		return log;
	}

	// 日志信息输出
	public void showLog(LogRec... logRecs) {
		for (LogRec e : logRecs) {
			if (e != null) {
				System.out.println(e.toString());
			}
		}
	}
//	for-each:	for(元素类型    元素名  ： 遍历对象){
//					方法体		
//				}

//	 匹配日志信息输出，可变参数
//	在调用可变参数的方法时候：编译器为该参数隐含的构建一个数组，在方法体中以数组的形式进行访问
	public void showMatchLog(MatchedLogRec... matchLogs) {
		for (MatchedLogRec e : matchLogs) {
			if (e != null) {
				System.out.println(e.toString());
			}
		}
	}

//	 匹配日志信息输出,参数是集合
	public void showMatchLog(ArrayList<MatchedLogRec> matchLogs) {
		for (MatchedLogRec e : matchLogs) {
			if (e != null) {
				System.out.println(e.toString());
			}
		}
	}

	
	/**
	 * @author ASUS
	 *  创建一个文件保存方法 利用对象的序列化
	 * @param matchedLogs
	 */
	public void saveMatchedLog(ArrayList<MatchedLogRec> matchedLogs) {
		File file = null;//创建文件
		FileOutputStream fileOutputStream = null;//创建文件输出流
		MyObjectOutputStream objectOutputStream = null;//创建自己对象输入流
		try {
			file = new File("MatchLogs.txt");			//实例化各个流
			fileOutputStream = new FileOutputStream(file,true);
			objectOutputStream = new MyObjectOutputStream(fileOutputStream);
//			matchedLogs的所有对象依次写入文件
			for (MatchedLogRec matchedLogRec : matchedLogs) {
//				writeObject((Object)matchedLogRec)在写入对象时要写入Object的类型
//				防止在后面进行反序列化的时候出现java.lang.ClassCastException的类型强制转换异常
				objectOutputStream.writeObject((Object)matchedLogRec);
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				if (fileOutputStream!=null) {//关闭各个流
					fileOutputStream.close();
					objectOutputStream.close();
					System.out.println("日志数据记录成功！");
				}
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	/**
	 * @author ASUS
	 *  创建一个读取文件中对象方法 利用对象的反序列化
	 *  return matchedLogRecs
	 * @return
	 */
	public ArrayList<MatchedLogRec> readMatchedLog() {
		File file = null;
		FileInputStream fileInputStream = null;
		MyObjectInputStream objectInputStream = null;//使用自己定义的输入流
//		构建一个集合用于信息的返回
		ArrayList<MatchedLogRec> matchedLogRecs = new ArrayList<MatchedLogRec>();
		try {
			file = new File("MatchLogs.txt");
			fileInputStream = new FileInputStream(file);
			objectInputStream = new MyObjectInputStream(fileInputStream);
//			存在对象的时候进行读取
			while(fileInputStream.available() > 0) {
				matchedLogRecs.add((MatchedLogRec) objectInputStream.readObject());
			}
		} catch (IOException | ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				if (fileInputStream != null) {//关闭流
					fileInputStream.close();
					objectInputStream.close();
					System.out.println("日志数据读取成功！");
				}
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return matchedLogRecs;
	}
	/**
	 * @发送日志信息到数据库中
	 * @param SQLString
	 */
	public void sendMatchedLog(Object [][] SQLString) {
		Connection connection = null;
		@SuppressWarnings("unused")
		Statement statement = null;
		DBUtil dbUtil = new DBUtil();
		try {
			connection = dbUtil.getConnection();
			statement = connection.createStatement();
//			String sql = new String(						//初始的SQL语句
//					"INSERT INTO matchedlog(id,name,LogInTime,LogInAddress,LogInIP ,INMatched,LogOutTime,LogOutAddress,LogOutIP,OutMatched)VALUES(?,?,?,?,?,?,?,?,?,?);");
			String sql = new String("REPLACE INTO matchedlog(id,name,LogInTime,LogInAddress,LogInIP ,INMatched,LogOutTime,LogOutAddress,LogOutIP,OutMatched)VALUES(?,?,?,?,?,?,?,?,?,?);");
			//			循环发送数据到数据库中。。
			for (int i = 0; i < SQLString.length; i++) {
//				执行SQL语句
				dbUtil.executeUpdated(sql,SQLString[i]);
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
	}
	public int MaxIdInDB() {
		int id = 2019001;
		Connection connection = null;
		ResultSet rsResultset = null;
		Statement statement = null;
		DBUtil dbUtil = new DBUtil();
		try {
			connection = dbUtil.getConnection();
			statement = connection.createStatement();
			rsResultset = statement.executeQuery("select Max(id) from matchedlog");
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
	 * @从数据库中读取日志信息，以集合的形式返回
	 * @author ASUS
	 * @return->ArrayList<LogInDataBase> logList
	 */
	public ArrayList<LogInDataBase> loadMatchedLogRecs() {
		Connection connection = null;
		ResultSet rsResultset = null;
		Statement statement = null;
		ArrayList<LogInDataBase>  logList = new ArrayList<LogInDataBase>();
		DBUtil dbUtil = new DBUtil();
//		构建返回集
		try {
			connection = dbUtil.getConnection();
			statement = connection.createStatement();
			rsResultset = statement.executeQuery("select * from matchedlog");
			while(rsResultset.next()) {
				LogInDataBase logInDataBase = new LogInDataBase();
				logInDataBase.setId(rsResultset.getString("id"));
				logInDataBase.setName(rsResultset.getString("name"));
				logInDataBase.setLogInTime(rsResultset.getString("LogInTime"));
				logInDataBase.setLogInAddress(rsResultset.getString("LogInAddress"));
				logInDataBase.setLogInIP(rsResultset.getString("LogInIP"));
				logInDataBase.setINMatched(rsResultset.getString("INMatched"));
				logInDataBase.setLogOutTime(rsResultset.getString("LogOutTime"));
				logInDataBase.setLogOutAddress(rsResultset.getString("LogOutAddress"));
				logInDataBase.setLogOutIP(rsResultset.getString("LogOutIP"));
				logInDataBase.setOutMatched(rsResultset.getString("OutMatched"));
				logList.add(logInDataBase);
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
	public Object[][] getTableFromDataBase(ArrayList<LogInDataBase> logList){
//		System.out.println(logList);
		Object [][] rowData = new Object[logList.size()][10];
		for (int i = 0; i < rowData.length; i++) {
			for (int j = 0; j < rowData[i].length; j++) {
				switch (j) {
					case 0:rowData[i][j] = logList.get(i).getId();break;
					case 1:rowData[i][j] = logList.get(i).getName();break;
					case 2:rowData[i][j] = logList.get(i).getLogInTime();break;
					case 3:rowData[i][j] = logList.get(i).getLogInAddress();break;
					case 4:rowData[i][j] = logList.get(i).getLogInIP();break;
					case 5:rowData[i][j] = logList.get(i).getINMatched();break;
					case 6:rowData[i][j] = logList.get(i).getLogOutTime();break;
					case 7:rowData[i][j] = logList.get(i).getLogOutAddress();break;
					case 8:rowData[i][j] = logList.get(i).getLogOutIP();break;
					case 9:rowData[i][j] = logList.get(i).getOutMatched();break;
					default:break;
				}
			}
		}
		return rowData;
	}
	
	
	
	
//	返回一个二维数组 用于数据的显示
	public Object[][] getTable(ArrayList<MatchedLogRec> matchedLogs) {
//		String[] columnNames = {"日志ID","用户名", "登录时间", "登录地点","登录IP","是否匹配","登出时间","登出地点", "登出IP", "是否匹配"};
		System.out.println(matchedLogs);
		Object [][] rowData = new Object[matchedLogs.size()][10];
		for (int i = 0; i < rowData.length; i++) {
//			rowData[i] = {matchedLogs.get(i).getLogin().getId()};
			for (int j = 0; j < rowData[i].length; j++) {
//				rowData[i][j] = matchedLogs.get(i).getLogin().getId();
				switch (j) {
					case 0:rowData[i][j] = matchedLogs.get(i).getLogin().getId();break;
					case 1:rowData[i][j] = matchedLogs.get(i).getLogin().getUser();break;
					case 2:rowData[i][j] = matchedLogs.get(i).getLogin().getTimeF();break;
					case 3:rowData[i][j] = matchedLogs.get(i).getLogin().getAddress();break;
					case 4:rowData[i][j] = matchedLogs.get(i).getLogin().getIp();break;
					case 5:rowData[i][j] = matchedLogs.get(i).getLogin().getTypeF();break;
					case 6:rowData[i][j] = matchedLogs.get(i).getLogout().getTimeF();break;
					case 7:rowData[i][j] = matchedLogs.get(i).getLogout().getAddress();break;
					case 8:rowData[i][j] = matchedLogs.get(i).getLogout().getIp();break;
					case 9:rowData[i][j] = matchedLogs.get(i).getLogout().getTypeF();break;
					default:break;
				}
			}
		}
		return rowData;
	}
//	返回二维数组用于数据的发送。
	public Object[][] getSQLString(ArrayList<MatchedLogRec> matchedLogs) {
		Object [][] SQLString = new Object[matchedLogs.size()][10];
		for (int i = 0; i < SQLString.length; i++) {
//			rowData[i] = {matchedLogs.get(i).getLogin().getId()};
			for (int j = 0; j < SQLString[i].length; j++) {
//				rowData[i][j] = matchedLogs.get(i).getLogin().getId();
				switch (j) {
					case 0:SQLString[i][j] = matchedLogs.get(i).getLogin().getId();break;
					case 1:SQLString[i][j] = matchedLogs.get(i).getLogin().getUser();break;
					case 2:SQLString[i][j] = matchedLogs.get(i).getLogin().getTimeF();break;
					case 3:SQLString[i][j] = matchedLogs.get(i).getLogin().getAddress();break;
					case 4:SQLString[i][j] = matchedLogs.get(i).getLogin().getIp();break;
					case 5:SQLString[i][j] = matchedLogs.get(i).getLogin().getTypeF();break;
					case 6:SQLString[i][j] = matchedLogs.get(i).getLogout().getTimeF();break;
					case 7:SQLString[i][j] = matchedLogs.get(i).getLogout().getAddress();break;
					case 8:SQLString[i][j] = matchedLogs.get(i).getLogout().getIp();break;
					case 9:SQLString[i][j] = matchedLogs.get(i).getLogout().getTypeF();break;
					default:break;
				}
			}
		}
		return SQLString;
	}
}