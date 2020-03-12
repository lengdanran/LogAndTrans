package com.qst.dms.service;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.qst.dms.db.DBUtil;
import com.qst.dms.dos.MyObjectInputStream;
import com.qst.dms.dos.MyObjectOutputStream;
import com.qst.dms.entity.User;


/**
 * @用户基本服务
 * @在本地存取用户信息从数据库中获取和插入用户信息
 * @author ASUS
 *
 */
public class UserServise {
	
	

	public UserServise(){
	}
	
	
	 
		/**
		 * Encodes a string 2 MD5
		 * MD5加密
		 * @param str String to encode
		 * @return CodePassword
		 */
		public String CodePassword(String str) {
			if (str == null || str.length() == 0) {
				throw new IllegalArgumentException("String to encript cannot be null or zero length");
			}
			StringBuffer hexString = new StringBuffer();
			try {
				MessageDigest md = MessageDigest.getInstance("MD5");
				md.update(str.getBytes());
				byte[] hash = md.digest();
				for (int i = 0; i < hash.length; i++) {
					if ((0xff & hash[i]) < 0x10) {
						hexString.append("0" + Integer.toHexString((0xFF & hash[i])));
					} else {
						hexString.append(Integer.toHexString(0xFF & hash[i]));
					}
				}
			} catch (NoSuchAlgorithmException e) {
				e.printStackTrace();
			}
			return hexString.toString();
		}
	 
	
	/**
	 * @author ASUS
	 * @将用户的信息写入到本地的文件中
	 * @param user
	 */
	public void saveUserData(User user) {
		File file = null;//创建文件
		FileOutputStream fileOutputStream = null;//创建文件输出流
		MyObjectOutputStream objectOutputStream = null;//创建自己对象输入流
		try {
			file = new File("UserData.txt");			//o 实例化各个流
			fileOutputStream = new FileOutputStream(file,true);
			objectOutputStream = new MyObjectOutputStream(fileOutputStream);
//			将新用户的信息写入到本地的文件中
			objectOutputStream.writeObject((Object)user);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
//				关闭各个流
				if (fileOutputStream!=null) {
					fileOutputStream.close();
					objectOutputStream.close();
					System.out.println("注册成功！");
				}
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	/**
	 * @author ASUS
	 * @param user
	 */
	public void sendUserDataToDatabase(User user) {
		@SuppressWarnings("unused")
		Connection connection = null;
		DBUtil dbUtil = new DBUtil();
		try {
			connection = dbUtil.getConnection();
//			执行插入用户信息的初始SQL语句
			String sql = new String(
					"REPLACE INTO user_info(username,password,sex,habits,address,education)VALUES(?,?,?,?,?,?);");
			Object cString[] = { user.getAccountString(), user.getPasswordString(), user.getSexString(),
					user.getHabitStrings().toString(), user.getAddressString(), user.getEducationString() };
//			预处理SQL语句
			dbUtil.executeUpdated(sql, cString);
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
	 * @author ASUS
	 * @return ArrayList<User> userList  
	 */
	public ArrayList<User> readUserDataInDatabase() {
		Connection connection = null;
		ResultSet rsResultset = null;
		Statement statement = null;
		DBUtil dbUtil = new DBUtil();
//		构建集合用于信息的返回
		ArrayList<User> userList = new ArrayList<User>();
		ArrayList<String> habitStrings = new ArrayList<String>();
		try {
//			取得与数据库的连接
			connection = dbUtil.getConnection();
			statement = connection.createStatement();
//			构建返回集，返回数据库中所有的用户信息，并且存在集合中返回
			rsResultset = statement.executeQuery("select * from user_info");
			while(rsResultset.next()) {
				String username = rsResultset.getString("username");
				String password = rsResultset.getString("password");
				String sex = rsResultset.getString("sex");
				String habits = rsResultset.getString("habits");
				String address = rsResultset.getString("address");
				habitStrings.add(habits);
				String education = rsResultset.getString("education");
				userList.add(new User(username, password, sex, address, habitStrings, education));
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
		return userList;
	}
	public ArrayList<User> readUserData() {
		File file = null;
		FileInputStream fileInputStream = null;
		MyObjectInputStream objectInputStream = null;//使用自己定义的输入流
//		构建一个集合用于信息的返回
		ArrayList<User> userList = new ArrayList<User>();
		try {
			file = new File("UserData.txt");
			fileInputStream = new FileInputStream(file);
			objectInputStream = new MyObjectInputStream(fileInputStream);
//			存在对象的时候进行读取
			while(fileInputStream.available() > 0) {
				userList.add((User)objectInputStream.readObject());
			}
		} catch (IOException | ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				if (fileInputStream != null) {//@ 关闭流
					fileInputStream.close();
					objectInputStream.close();
					System.out.println("用户信息读取成功！");
				}
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return userList;
	}
	
	
}
