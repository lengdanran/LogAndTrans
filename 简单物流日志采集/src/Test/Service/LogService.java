package Test.Service;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import Test.Db.DBUtil;
import Test.Entity.LogInDataBase;
import Test.Entity.MatchedLogRec;


public class LogService {
	private static String LOG_SQLString = new String("REPLACE INTO matchedlog"
			+ "(id,name,LogInTime,LogInAddress,LogInIP ,INMatched,LogOutTime,"
			+ "LogOutAddress,LogOutIP,OutMatched)VALUES(?,?,?,?,?,?,?,?,?,?);");
	
	/**
	 * 
	 * @param matchedLogs
	 * @return flag 返回对数据库操作行数
	 */
	public static int doExeute(ArrayList<MatchedLogRec> matchedLogs) {
		Connection connection = null;
		DBUtil dbUtil = new DBUtil();
		Object [][] SQLString = LogService.getSQLString(matchedLogs);
		int flag = 0;
		try {
			connection = dbUtil.getConnection();
			connection.createStatement();
			for (int i = 0; i < SQLString.length; i++) {
//				执行SQL语句
				flag = dbUtil.executeUpdated(LOG_SQLString,SQLString[i]);
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
		return flag;
	}
	/**
	 * 
	 * @return ArrayList<LogInDataBase>
	 */
	public static ArrayList<LogInDataBase> doQuery(){
		return  LogService.loadMatchedLogRecs();
	}
	
	
	/**
	 * @从数据库中读取日志信息，以集合的形式返回
	 * @author ASUS
	 * @return->ArrayList<LogInDataBase> logList
	 */
	protected static ArrayList<LogInDataBase> loadMatchedLogRecs() {
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
	
	
//	返回二维数组用于数据的发送。
	private static Object[][] getSQLString(ArrayList<MatchedLogRec> matchedLogs) {
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
