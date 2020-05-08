package Test.Dao;

import java.sql.SQLException;


import Test.Db.DBUtil;
import Test.Entity.User;

public class RegisterDao {
	public static int Register(User user) {
		int flag = 0;
		DBUtil dbUtil = new DBUtil();
		String preparedSql = new String(
				"REPLACE INTO user_info(username,password,sex,habits,address,education)VALUES(?,?,?,?,?,?);");
		Object param[] = {
				user.getAccountString(), user.getPasswordString(), 
				user.getSexString(),user.getHabitStrings().toString(), 
				user.getAddressString(), user.getEducationString()
		};
		try {
			dbUtil.getConnection();
			System.out.println("*************");
			System.out.println(user.getHabitStrings().toString());
			flag = dbUtil.executeUpdated(preparedSql, param);
			System.out.println("+++++++++++++++");
		} catch (ClassNotFoundException | InstantiationException | IllegalAccessException | SQLException e) {
			// TODO Auto-generated catch block
			flag = -1;
			e.printStackTrace();
		}
		finally {
			dbUtil.closeAll();
		}
		return flag;
	}
}
