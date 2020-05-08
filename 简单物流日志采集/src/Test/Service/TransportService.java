package Test.Service;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import Test.Db.DBUtil;
import Test.Entity.MatchedTransport;
import Test.Entity.TransInDataBase;


public class TransportService {
	private static String TRANS_SQLString = new String("REPLACE INTO matchedtrans"
			+ "(id,receiver,Address,sendTime,transTime,signTime,handler,Matched)VALUES(?,?,?,?,?,?,?,?);");
	/**
	 * 
	 * @param matchedTrans
	 * @return 返回对数据库操作行数
	 */
	public static int doExeute(ArrayList<MatchedTransport> matchedTrans) {
		Connection connection = null;
		DBUtil dbUtil = new DBUtil();
		Object [][] SQLString = TransportService.getSQLString(matchedTrans);
		int flag = 0;
		try {
			connection = dbUtil.getConnection();
			connection.createStatement();
			for (int i = 0; i < SQLString.length; i++) {
//				执行SQL语句
				flag = dbUtil.executeUpdated(TRANS_SQLString,SQLString[i]);
			}
		} catch (ClassNotFoundException | InstantiationException | IllegalAccessException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			dbUtil.closeAll();
		}
		return flag;
	}
	/**
	 * 
	 * @return  ArrayList<TransInDataBase>
	 */
	public static ArrayList<TransInDataBase> doQuery(){
		return TransportService.loadMatchedTransRecs();
	}
	
	/**
	 * @从数据库中下载匹配的物流数据
	 * @return ArrayList<TransInDataBase>
	 */
	protected static ArrayList<TransInDataBase> loadMatchedTransRecs(){
		Connection connection = null;
		ResultSet rsResultset = null;
		Statement statement = null;
		ArrayList<TransInDataBase>  transList = new ArrayList<TransInDataBase>();
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
				transList.add(transInDataBase);
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
		return transList;
	}
	
	
	/**
	 * @author ASUS 得到预处理的SQL语句的二维数组
	 * @param matchedTrans
	 * @return SQLString
	 */
	private static Object[][] getSQLString(ArrayList<MatchedTransport> matchedTrans) {
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
}
