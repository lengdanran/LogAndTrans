package Test.Dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import Test.Db.DBUtil;
import Test.Entity.User;
import Test.Service.UserService;

public class LogInDao {
	/**
	 * @param user
	 * @return 1->成功   -1-->系统异常   0---->用户名或者密码错误
	 */
	public static int LogIn(User user) {
		int flag = 0;
//		建立数据连接工具和集合
		DBUtil dbUtil = new DBUtil();
		Connection connection = null ;
		Statement stmt = null;
		ResultSet resultSet = null;
//		加密用户对象
		User codeUser = UserService.CodingUSer(user);
		String Sql = "select * from user_info";
		try {
			connection = dbUtil.getConnection();
			stmt = connection.createStatement();
			resultSet = stmt.executeQuery(Sql);
//			对返回集进行遍历查找
			while(resultSet.next()) {
				String username = resultSet.getString("username");
				String password = resultSet.getString("password");
				if (username.equals(codeUser.getAccountString()) && password.equals(codeUser.getPasswordString())) {
					flag = 1;break;
				}
			}
		} catch (ClassNotFoundException | InstantiationException | IllegalAccessException | SQLException e) {
			// TODO Auto-generated catch block
			flag = -1;
			e.printStackTrace();
		}finally {
			dbUtil.closeAll();
		}
		return flag;
	}
}
