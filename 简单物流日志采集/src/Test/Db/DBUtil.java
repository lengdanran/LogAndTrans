package Test.Db;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Test.Config.DataBaseConfig;
/**
 * @数据库操作的工具类
 * @author ASUSurl = jdbc:mysql://localhost:3306/yy_test?useUnicode=true&characterEncoding=UTF-8
 *
 */
public class DBUtil {
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	/**
	 *  得到数据库连接
	 * @return Connection
	 * @throws ClassNotFoundException
	 * @throws SQLException
	 * @throws InstantiationException
	 * @throws IllegalAccessException
	 */
	public Connection getConnection() throws ClassNotFoundException, SQLException 
	,InstantiationException,IllegalAccessException{
//		通过Config获取数据库配置信息
		String driver = DataBaseConfig.getValue("driver");
		String url = DataBaseConfig.getValue("url");
		String user = DataBaseConfig.getValue("user");
		String pwd = DataBaseConfig.getValue("password");
		try {
//			指定驱动程序
			System.out.println(driver);
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.println("数据库驱动加载成功");
//			建立数据库连接
			con = DriverManager.getConnection(url, user, pwd);
			return con;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
//			连接异常则抛出异常
			e.printStackTrace();
			throw new SQLException("驱动器错误或者失败！");
		}
		
	}
	/**
	 *  //c执行SQL语句，可以进行查询
	 * @param preparedSql
	 * @param param
	 * @return
	 */
	public ResultSet executeQuery(String preparedSql,Object[] param) {
//		处理SQL，执行SQL
		try {
			pstmt = con.prepareStatement(preparedSql);
			if (param != null) {
				for (int i = 0; i < param.length; i++) {
//					为预编译sql设置参数
					pstmt.setObject(i+1, param[i]);
				}
			}
//			执行SQL语句
			rs = pstmt.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return rs;
	}
	/**
	 * @执行SQL语句，进行增删改查的操作
	 * @param preparedSql----->预处理的SQL的语句
	 * @param param
	 * @return 操作的行数
	 */
	public int executeUpdated(String preparedSql,Object[] param) {
		int num = 0;
		try {
			pstmt = con.prepareStatement(preparedSql);
			if (param!=null) {
				for (int i = 0; i < param.length; i++) {
//					为预编译sql设置参数
					pstmt.setObject(i+1, param[i]);
				}
				num = pstmt.executeUpdate();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return num;
	}
	
	
	
	/**
	 * @关闭所有的连接
	 */
	
	public void closeAll() {
		if (rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if (pstmt != null) {
			try {
				pstmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if (con != null) {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	
	
	
}
