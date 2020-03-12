package com.qst.dms.dos;

import java.util.ArrayList;
import java.util.Scanner;

import com.qst.dms.entity.LogInDataBase;
import com.qst.dms.entity.LogRec;
import com.qst.dms.entity.MatchedLogRec;
import com.qst.dms.entity.MatchedTransport;
import com.qst.dms.entity.TransInDataBase;
import com.qst.dms.entity.Transport;
import com.qst.dms.gather.LogRecAnalyse;
import com.qst.dms.gather.TransportAnalyse;
import com.qst.dms.service.LogRecService;
import com.qst.dms.service.TransportService;

public class MenuDriver {
	public static void main(String[] args) {
		// 建立一个从键盘接收数据的扫描器
		Scanner scanner = new Scanner(System.in);

		// 创建一个泛型ArrayList集合存储日志数据
		ArrayList<LogRec> logRecList = new ArrayList<LogRec>();
		// 创建一个泛型ArrrayList集合存储物流数据
		ArrayList<Transport> transportList = new ArrayList<Transport>();

		// 创建一个日志业务类
		LogRecService logService = new LogRecService();
		// 创建一个物流业务类
		TransportService tranService = new TransportService();

		// 日志数据匹配集合
		ArrayList<MatchedLogRec> matchedLogs = null;
		// 物流数据匹配集合
		ArrayList<MatchedTransport> matchedTrans = null;

		try {
			while (true) {
				// 输出菜单界面

//				 提示用户输入要操作的菜单项
				
				System.out.println("**************************");
				System.out.println("==欢迎进入日志物流信息数据系统==");
				System.out.println("* 1.数据采集\t2.数据匹配 *");
				System.out.println("* 3.数据记录\t4.数据显示 *");
				System.out.println("* 5.数据发送\t0.退出系统 *");
				System.out.println("请输入菜单项（0~5）：");
				
//				 接收键盘输入的选项
				int choice = scanner.nextInt();
				switch (choice) {
				case 1: {
					System.out.println("请输入采集数据类型：1.日志    2.物流");
//					 接收键盘输入的选项
					int type = scanner.nextInt();
					if (type == 1) {
						System.out.println("正在采集日志数据，请输入正确信息，确保数据的正常采集！");
						// 采集日志数据，待补充
						// 将采集的日志数据添加到logRecList集合中
						logRecList.add(logService.inputLog());
						
					} else if (type == 2) {
						System.out.println("正在采集物流数据，请输入正确信息，确保数据的正常采集！");
						// 采集物流数据
						Transport tran = tranService.inputTransport();
						// 将采集的物流数据添加到transportList集合中
						transportList.add(tran);
					}
				}
					break;
				case 2: {
					System.out.println("请输入匹配数据类型：1.日志    2.物流");
					// 接收键盘输入的选项
					int type = scanner.nextInt();
					if (type == 1) {
						System.out.println("正在日志数据过滤匹配...");
						// 创建日志数据分析对象
						LogRecAnalyse logAnalyse = new LogRecAnalyse(logRecList);
//						 日志数据过滤、分析
						logAnalyse.doFilter();
						matchedLogs = logAnalyse.matchData();
						System.out.println("日志数据过滤匹配完成！");
					} else if (type == 2) {
						System.out.println("正在物流数据过滤匹配...");
						// 创建物流数据分析对象
						TransportAnalyse transAn = new TransportAnalyse(transportList);
						// 物流数据过滤
						transAn.doFilter();
						// 物流数据分析
						matchedTrans = transAn.matchData();
						System.out.println("物流数据过滤匹配完成！");
					}
				}
					break;
				case 3:
					System.out.println("请输入数据类型：1.日志\t2.物流");
					System.out.println("数据记录 中...");
//					日志数据的存储
					if (scanner.nextInt()==1) {
//						logService.saveMatchedLog(matchedLogs);
						logService.sendMatchedLog(logService.getSQLString(matchedLogs));
					}
//					物流信息的存储
					System.out.println("********");
					if (scanner.nextInt()==2) {
//						tranService.saveMacthedTransport(matchedTrans);
						tranService.sendMatchedTrans(tranService.getSQLString(matchedTrans));
					}
					break;
				case 4: {
					System.out.println("显示匹配的数据：");
//					ArrayList<LogInDataBase> logInDataBases = logService.loadMatchedLogRecs();
//					
//					for (LogInDataBase logInDataBase : logInDataBases) {
//						System.out.println(logInDataBase.tosString());
//					}
//					ArrayList<TransInDataBase> transInDataBases = tranService.loadMatchedTransRecs();
//					for (TransInDataBase transInDataBase : transInDataBases) {
//						System.out.println(transInDataBase.tosString());
//					}
					
//					从日志匹配集合中判断匹配的日志记录，并输出匹配的日志信息，待补充
//					从物流匹配集合中判断匹配的物流记录
//						logService.showMatchLog(matchedLogs);
//						文件里的对象反序列化，得到匹配的集合
					matchedLogs = logService.readMatchedLog();
					if (matchedLogs == null || matchedLogs.size() == 0) {
							System.out.println("匹配的日志记录是0条！");
					}else {
//						显示信息在控制台
						for (MatchedLogRec matchedLogRec : matchedLogs) {
							System.out.println(matchedLogRec.toString());
						}
					}
					
					matchedTrans = tranService.readMatchedTransports();
					if (matchedTrans == null || matchedTrans.size() == 0) {
						System.out.println("匹配的物流记录是0条！");
					} else {
//						 输出匹配的物流信息
//						tranService.showMatchTransport(matchedTrans);
						for (MatchedTransport matchedTransport : matchedTrans) {
							System.out.println(matchedTransport.toString());
						}
					}
				}
					break;
				case 5:
					System.out.println("数据发送 中...");
					matchedLogs = logService.readMatchedLog();
					logService.sendMatchedLog(logService.getSQLString(matchedLogs));
					logService.loadMatchedLogRecs();
					matchedTrans = tranService.readMatchedTransports();
					tranService.sendMatchedTrans(tranService.getSQLString(matchedTrans));
					break;
				case 0:
					// 应用程序退出
					System.exit(0);
				default:
					System.out.println("请输入正确的菜单项（0~5）！");
				}

			}
		} catch (Exception e) {
//			System.out.println("输入的数据不合法！");
			e.printStackTrace();
		}
		scanner.close();
	}
}
