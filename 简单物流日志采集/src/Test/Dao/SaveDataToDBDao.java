package Test.Dao;

import java.util.ArrayList;


import Test.Entity.Matched;
import Test.Entity.MatchedLogRec;
import Test.Entity.MatchedTransport;
import Test.Service.LogService;
import Test.Service.TransportService;

public class SaveDataToDBDao {
	
	/**
	 * ArrayList<? extends Matched> Matcheds
	 * @param Matcheds
	 * @return 对数据库的数据操作的行数、-2：代表参数为null
	 */
	@SuppressWarnings("unchecked")
	public static int SaveToDB(ArrayList<? extends Matched> Matcheds) {
		int flag = 0;
		if (Matcheds == null) {
			System.out.println("SaveToDB(ArrayList<? extends Matched> Matcheds)没有初始化，值为null!!");
			flag  = -2;
		}else {
			if (Matcheds.get(0).getMATHED_TYPE() == Matched.MATHED_LOGS) {// Logs
				flag = LogService.doExeute((ArrayList<MatchedLogRec>) Matcheds);
			} else if (Matcheds.get(0).getMATHED_TYPE() == Matched.MATHED_TRANS) {// Transport
				flag = TransportService.doExeute((ArrayList<MatchedTransport>) Matcheds);
			} else {
				flag = -2;
			}
		}
		return flag;
	}
}
