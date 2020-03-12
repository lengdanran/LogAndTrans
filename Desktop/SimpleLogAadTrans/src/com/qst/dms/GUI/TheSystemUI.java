package com.qst.dms.GUI;

import java.awt.Color;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.ArrayList;
import java.util.Date;

import javax.swing.ButtonGroup;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JRadioButton;
import javax.swing.JScrollPane;
import javax.swing.JTable;
//import javax.swing.JTabbedPane;
import javax.swing.JTextField;
import javax.swing.table.DefaultTableCellRenderer;

import com.qst.dms.entity.DataBase;
import com.qst.dms.entity.LogRec;
import com.qst.dms.entity.MatchedLogRec;
import com.qst.dms.entity.MatchedTransport;
import com.qst.dms.entity.SocketClient;
import com.qst.dms.entity.Transport;
import com.qst.dms.gather.LogRecAnalyse;
import com.qst.dms.gather.TransportAnalyse;
import com.qst.dms.service.LogRecService;
import com.qst.dms.service.TransportService;
import com.qst.dms.util.BaseUI;

public class TheSystemUI extends BaseUI {
	private static final long serialVersionUID = 2927537709601797410L;
	
	SocketClient socketClient = new SocketClient();
	
//	 创建一个泛型ArrayList集合存储日志数据
	ArrayList<LogRec> logRecList = new ArrayList<LogRec>();
//	 创建一个泛型ArrrayList集合存储物流数据
	ArrayList<Transport> transportList = new ArrayList<Transport>();
//	 日志数据匹配集合
	ArrayList<MatchedLogRec> matchedLogs = new ArrayList<MatchedLogRec>();
//	 物流数据匹配集合
	ArrayList<MatchedTransport> matchedTrans = new ArrayList<MatchedTransport>();
//	 创建一个日志业务类
	LogRecService logService = new LogRecService();
//	创建一个物流业务类
	TransportService tranService = new TransportService();
	
//	从数据库中下载最新的日志数据的线程类（内部类）
	 class loadLogThread extends Thread{
			public volatile boolean exit = false;
			public void setExit(boolean exit) {
				this.exit = exit;
			}
			public void run() {
				while (exit==false) {
					try {
						String[] columnNames = {"日志ID","用户名", "登录时间", "登录地点","登录IP","是否匹配","登出时间","登出地点", "登出IP", "是否匹配"};
//						System.out.println(logService.readMatchedLog());
//						logService.getTable(matchedLogs);
						table = new JTable(logService.getTableFromDataBase(logService.loadMatchedLogRecs()), columnNames);
						scrollPaneLogs.setViewportView(table);
//						设置表格的样式
						TheSystemUI.this.setTable(table);
//						睡眠60s
						sleep(60000);
					} catch (InterruptedException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
			}
		}
//	建立一个下载线程
	 loadLogThread loadLogs = new loadLogThread();
//		从数据库中下载最新的物流数据的线程类（内部类）
	 class loadTransThread extends Thread{
		public volatile boolean exit = false;
		public void setExit(boolean exit) {
			this.exit = exit;
		}
		public void run() {
			while (exit==false) {
				try {
					String[] columnNames = { "ID标识", "收货人", "地址", "发货时间", "送货时间", "签收时间", "货物经手人", "是否匹配" };
//				System.out.println(tranService.readMatchedTransports());
//				logService.getTable(matchedLogs);
					table = new JTable(tranService.getTableFromDataBase(tranService.loadMatchedTransRecs()),columnNames);
					scrollPaneTrans.setViewportView(table);
//				设置表格的样式
					TheSystemUI.this.setTable(table, matchedTrans);
//					睡眠60s
					sleep(60000); 
				} catch (InterruptedException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
	}
//		建立一个下载线程
	 loadTransThread loadTrans = new loadTransThread();
	
	
	
	/**
	 * @author ASUS
	 * @以下是面板的设计内容
	 */
	
	private JTextField textField = new JTextField();
	private JTextField textField_1 = new JTextField();
	private JTextField textField_2 = new JTextField();
	private JTextField textField_3 = new JTextField();
	private JTextField textFieldtr = new JTextField();
	private JTextField textFieldtr_1 = new JTextField();
	private JTextField textFieldtr_2 = new JTextField();
	private JTextField textFieldtr_3 = new JTextField();
//	JPanel panel_3 = new JPanel();
//	这个容器是用来显示数据的空间的
//	需要动态的进行添加组件来完成界面的控制
	private JPanel panel = new JPanel();
	private JPanel panel_1 = new JPanel();
	private JPanel panel_2 = new JPanel();
	private JPanel panel_3 = new JPanel();
	private JPanel panel_4 = new JPanel();
//	JTabbedPane tabbedPane = new JTabbedPane();
//	tabbedPane.add
	
	
	
	private ButtonGroup logTypeButtonGroup = new ButtonGroup();// @用于添加单选框，单选框必须加入到 ButtonGroup
	private ButtonGroup transTypeButtonGroup = new ButtonGroup();// @用于添加单选框，单选框必须加入到 ButtonGroup
	
	private JButton btnNewButton = new JButton("操作");
	private JButton btnNewButton_1 = new JButton("帮助");
	private JButton btnNewButton_2 = new JButton("采集数据");
	private JButton btnNewButton_3 = new JButton("匹配日志数据");
	private JButton btnNewButton_4 = new JButton("匹配物流数据");
	private JButton btnNewButton_5 = new JButton("保存数据");
	private JButton btnNewButton_6 = new JButton("发送数据");
	private JButton btnNewButton_7 = new JButton("显示数据");
	private JButton selectButton = new JButton("数据筛选");
	
//	采集数据的界面组件
	private JButton LogButton = new JButton("日志");
	private JButton btnNewButton_9 = new JButton("物流");
	private JButton btnNewButton_10 = new JButton("确定");
	private JButton btnNewButton_11 = new JButton("重置");
	private JRadioButton rdbtnNewRadioButton = new JRadioButton("登录");
	private JRadioButton rdbtnNewRadioButton_1 = new JRadioButton("登出");
	private JLabel lblNewLabel = new JLabel("日志ID:");
	private JLabel lblNewLabel_1 = new JLabel("用户名：");
	private JLabel lblNewLabel_2 = new JLabel("登录地点：");
	private JLabel lblNewLabel_3 = new JLabel("登录IP：");
	private JLabel lblNewLabel_4 = new JLabel("登录状态：");

	private JRadioButton presending = new JRadioButton("发货中");
	private JRadioButton sending = new JRadioButton("送货中");
	private JRadioButton rdbtnG_1 = new JRadioButton("已签收");
	private JButton conform = new JButton("确定");
	private JButton reset = new JButton("重置");
	
	private JScrollPane scrollPaneTrans = new JScrollPane();
	private JScrollPane scrollPaneLogs = new JScrollPane();
	private JTable table;
	
//	数据显示面板
	private JPanel panel_5 = new JPanel();
	private JButton btnNewButton_8 = new JButton("日志");
	private JButton btnNewButton_17 = new JButton("物流");
	
	
//	private JTextField textField_3;
	public TheSystemUI() {
		this.setStyle();
		this.addToWindow();
		this.addListener();
		this.setFrame();
	}
	
	@Override
	protected void setStyle() {
		// TODO Auto-generated method stub
//		数据筛选按钮
		selectButton.setFont(new Font("华文楷体", Font.BOLD, 15));
		selectButton.setBounds(776, 1, 125, 33);
//		panel_1.add(selectButton);
		
		panel_5.setBounds(10, 118, 998, 437);
		this.getContentPane().add(panel_5);
		panel_5.setLayout(null);
		panel_5.setVisible(false);
		
		
		btnNewButton_8.setBounds(35, 10, 97, 33);
		btnNewButton_8.setFont(new Font("华文楷体", Font.BOLD, 15));
		panel_5.add(btnNewButton_8);
		
		
		btnNewButton_17.setBounds(133, 10, 97, 33);
		btnNewButton_17.setFont(new Font("华文楷体", Font.BOLD, 15));
		panel_5.add(btnNewButton_17);   
		
		
		
		scrollPaneTrans.setBounds(33, 72, 955, 340);
		scrollPaneLogs.setBounds(33, 72, 955, 340);
		panel_4.setBounds(41, 69, 916, 327);
		panel_4.setLayout(null);
		panel_4.setVisible(false);
		JLabel idLabel = new JLabel("ID标识:");
		idLabel.setFont(new Font("华文楷体", Font.BOLD, 15));
		idLabel.setBounds(259, 25, 83, 23);
		panel_4.add(idLabel);
		
		JLabel address = new JLabel("地址：");
		address.setFont(new Font("华文楷体", Font.BOLD, 15));
		address.setBounds(259, 68, 83, 15);
		panel_4.add(address);
		
		JLabel hander = new JLabel("货物经手人：");
		hander.setFont(new Font("华文楷体", Font.BOLD, 15));
		hander.setBounds(259, 115, 97, 15);
		panel_4.add(hander);
		
		JLabel receiver = new JLabel("收货人:");
		receiver.setFont(new Font("华文楷体", Font.BOLD, 15));
		receiver.setBounds(259, 166, 83, 15);
		panel_4.add(receiver);
		
		JLabel zhuangtai = new JLabel("物流状态:");
		zhuangtai.setFont(new Font("华文楷体", Font.BOLD, 15));
		zhuangtai.setBounds(259, 218, 83, 15);
		panel_4.add(zhuangtai);
		
//		JRadioButton presending = new JRadioButton("发货中");
		presending.setFont(new Font("华文楷体", Font.BOLD, 15));
		presending.setBounds(370, 214, 83, 23);
		panel_4.add(presending);
		
//		JRadioButton sending = new JRadioButton("送货中");
		sending.setFont(new Font("华文楷体", Font.BOLD, 15));
		sending.setBounds(455, 214, 74, 23);
		panel_4.add(sending);
		
//		JRadioButton rdbtnG_1 = new JRadioButton("已签收");
		rdbtnG_1.setFont(new Font("华文楷体", Font.BOLD, 16));
		rdbtnG_1.setBounds(536, 215, 83, 23);
		panel_4.add(rdbtnG_1);
		
//		JButton conform = new JButton("确定");
		conform.setFont(new Font("华文楷体", Font.BOLD, 18));
		conform.setBounds(289, 257, 97, 37);
		panel_4.add(conform);
		
//		JButton reset = new JButton("重置");
		reset.setFont(new Font("华文楷体", Font.BOLD, 18));
		reset.setBounds(445, 257, 97, 37);
		panel_4.add(reset);
		
		textFieldtr = new JTextField();
		textFieldtr.setFont(new Font("华文楷体", Font.BOLD, 18));
		textFieldtr.setBounds(371, 27, 219, 21);
		panel_4.add(textFieldtr);
		textFieldtr.setColumns(10);
		
		textFieldtr_1 = new JTextField();
		textFieldtr_1.setFont(new Font("华文楷体", Font.BOLD, 18));
		textFieldtr_1.setBounds(370, 66, 220, 21);
		panel_4.add(textFieldtr_1);
		textFieldtr_1.setColumns(10);
		
		textFieldtr_2 = new JTextField();
		textFieldtr_2.setFont(new Font("华文楷体", Font.BOLD, 18));
		textFieldtr_2.setBounds(371, 113, 219, 21);
		panel_4.add(textFieldtr_2);
		textFieldtr_2.setColumns(10);
		
		textFieldtr_3 = new JTextField();
		textFieldtr_3.setFont(new Font("华文楷体", Font.BOLD, 18));
		textFieldtr_3.setBounds(371, 164, 219, 21);
		panel_4.add(textFieldtr_3);
		textFieldtr_3.setColumns(10);
		
		
		
		
		panel.setBounds(10, 10, 998, 43);
		this.getContentPane().add(panel);
		panel.setLayout(null);
		
		btnNewButton.setFont(new Font("华文楷体", Font.BOLD, 15));
		btnNewButton.setBounds(10, 10, 121, 29);
		
		btnNewButton_1.setFont(new Font("华文楷体", Font.BOLD, 15));
		btnNewButton_1.setBounds(131, 10, 121, 29);
		
		panel_1.setBounds(10, 63, 998, 43);
		this.getContentPane().add(panel_1);
		panel_1.setLayout(null);
		
		btnNewButton_2.setFont(new Font("华文楷体", Font.BOLD, 15));
		btnNewButton_2.setBounds(10, 0, 129, 33);
		
		btnNewButton_3.setFont(new Font("华文楷体", Font.BOLD, 15));
		btnNewButton_3.setBounds(138, 0, 129, 33);
		
		btnNewButton_4.setFont(new Font("华文楷体", Font.BOLD, 15));
		btnNewButton_4.setBounds(267, 0, 129, 33);
		
		btnNewButton_5.setFont(new Font("华文楷体", Font.BOLD, 15));
		btnNewButton_5.setBounds(395, 0, 129, 33);
		
		btnNewButton_6.setFont(new Font("华文楷体", Font.BOLD, 15));
		btnNewButton_6.setBounds(522, 0, 129, 33);
		
		btnNewButton_7.setFont(new Font("华文楷体", Font.BOLD, 15));
		btnNewButton_7.setBounds(647, 0, 129, 33);
		
		panel_2.setBounds(10, 118, 998, 437);
		this.getContentPane().add(panel_2);
		panel_2.setLayout(null);
		panel_2.setVisible(false);
		
		panel_3.setBounds(41, 69, 916, 327);
		panel_3.setLayout(null);
		
		lblNewLabel.setFont(new Font("华文楷体", Font.BOLD, 15));
		lblNewLabel.setBounds(259, 25, 83, 23);
		
		
		lblNewLabel_1.setFont(new Font("华文楷体", Font.BOLD, 15));
		lblNewLabel_1.setBounds(259, 68, 83, 15);
		
		lblNewLabel_2.setFont(new Font("华文楷体", Font.BOLD, 15));
		lblNewLabel_2.setBounds(259, 115, 83, 15);
		
		lblNewLabel_3.setFont(new Font("华文楷体", Font.BOLD, 15));
		lblNewLabel_3.setBounds(259, 166, 83, 15);
		
		lblNewLabel_4.setFont(new Font("华文楷体", Font.BOLD, 15));
		lblNewLabel_4.setBounds(259, 218, 83, 15);
		
		rdbtnNewRadioButton.setFont(new Font("华文楷体", Font.BOLD, 15));
		rdbtnNewRadioButton.setBounds(370, 214, 127, 23);
		
		rdbtnNewRadioButton_1.setFont(new Font("华文楷体", Font.BOLD, 15));
		rdbtnNewRadioButton_1.setBounds(499, 214, 127, 23);
		
		btnNewButton_10.setFont(new Font("华文楷体", Font.BOLD, 18));
		btnNewButton_10.setBounds(289, 257, 97, 37);
		
		btnNewButton_11.setFont(new Font("华文楷体", Font.BOLD, 18));
		btnNewButton_11.setBounds(445, 257, 97, 37);
		
		LogButton.setFont(new Font("华文楷体", Font.BOLD, 15));
		LogButton.setBounds(35, 10, 97, 33);
		btnNewButton_9.setFont(new Font("华文楷体", Font.BOLD, 15));
		btnNewButton_9.setBounds(133, 10, 97, 33);
		
		textField.setFont(new Font("华文楷体", Font.BOLD, 18));
		textField.setBounds(371, 27, 219, 21);
		textField.setColumns(10);
		
		textField_1.setFont(new Font("华文楷体", Font.BOLD, 18));
		textField_1.setBounds(370, 66, 220, 21);
		textField_1.setColumns(10);
		
		textField_2.setFont(new Font("华文楷体", Font.BOLD, 18));
		textField_2.setBounds(371, 113, 219, 21);
		textField_2.setColumns(10);
		
		textField_3.setFont(new Font("华文楷体", Font.BOLD, 18));
		textField_3.setBounds(371, 164, 219, 21);
		textField_3.setColumns(10);
		
		logTypeButtonGroup.add(rdbtnNewRadioButton);
		logTypeButtonGroup.add(rdbtnNewRadioButton_1);
		transTypeButtonGroup.add(presending);
		transTypeButtonGroup.add(sending);
		transTypeButtonGroup.add(rdbtnG_1);
	}

	@Override
	protected void addToWindow() {
		// TODO Auto-generated method stub
		panel_2.add(panel_3);
		panel_2.add(panel_4);
		
		panel_2.setVisible(false);
		panel_3.setVisible(false);
		panel_4.setVisible(false);
		panel.add(btnNewButton);
		panel.add(btnNewButton_1);
		panel_1.add(btnNewButton_2);
		panel_1.add(btnNewButton_3);
		panel_1.add(btnNewButton_4);
		panel_1.add(btnNewButton_5);
		panel_1.add(btnNewButton_6);
		panel_1.add(btnNewButton_7);
		panel_3.add(lblNewLabel);
		panel_3.add(lblNewLabel_1);
		panel_3.add(lblNewLabel_2);
		panel_3.add(lblNewLabel_3);
		panel_3.add(lblNewLabel_4);
		panel_3.add(rdbtnNewRadioButton);
		panel_3.add(rdbtnNewRadioButton_1);
		panel_3.add(btnNewButton_10);
		panel_3.add(btnNewButton_11);
		panel_3.add(textField);
		panel_3.add(textField_1);
		panel_3.add(textField_2);
		panel_3.add(textField_3);
		
		panel_2.add(LogButton);
		panel_2.add(btnNewButton_9);
	}

	@Override
	protected void addListener() {
		// TODO Auto-generated method stub
//		采集信息按钮
		btnNewButton_2.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				// TODO Auto-generated method stub
				scrollPaneTrans.setVisible(false);
				panel_5.setVisible(false);
				panel_2.setVisible(true);
			}
		});
		
		
//		日志按钮、展示日志录入窗口
		LogButton.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				// TODO Auto-generated method stub
//				panel_2.remove(scrollPane);
//				scrollPane.setVisible(false);
				panel_2.setVisible(true);
				panel_3.setVisible(true);
			}
		});
//		日志录入确定按钮
		btnNewButton_10.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				// TODO Auto-generated method stub
				String idString = textField.getText();//@日志Id----int
				int ID = Integer.parseInt(idString);
				String nameString = textField_1.getText();//@用户名
				String addressString = textField_2.getText();//@地址
				String IP = textField_3.getText();//@IP
				String logtypeString;//@int
				if (rdbtnNewRadioButton.isSelected()==true) {
					logtypeString = "1";
				}else {
					logtypeString = "0";
				}
				if (textField.getText().equals("") || textField_3.getText().equals("")
						|| textField_2.getText().equals("") || textField_1.getText().equals("")) {
					JOptionPane.showMessageDialog(TheSystemUI.this, "注册失败！\n信息项目未填全！");
					return;
				}
				int type = DataBase.GATHER;// 数据状态是“采集”
				int logType = Integer.parseInt(logtypeString);
				Date nowDate = new Date();//@获取当前时间
				LogRec log = new LogRec(ID, nowDate, addressString, type, nameString, IP, logType);
				logRecList.add(log);// 将采集的日志数据添加到logRecList集合中
				System.out.println("采集完成"+logRecList.toString());
			}
		});
//		日志重置按钮
		btnNewButton_11.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				// TODO Auto-generated method stub
				textField.setText("");
				textField_1.setText("");
				textField_2.setText("");
				textField_3.setText("");
				rdbtnNewRadioButton.setSelected(false);
				rdbtnNewRadioButton_1.setSelected(false);
			}
		});

		
		
//		物流按钮、展示物流录入窗口
		btnNewButton_9.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				// TODO Auto-generated method stub
				panel_3.setVisible(false);
				panel_4.setVisible(true);
			}
		});
//		物流确认按钮 返回的是一个集合
		conform.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				// TODO Auto-generated method stub
				String idString = textFieldtr.getText();
				int id = Integer.parseInt(idString);
				Date nowDate = new Date();
				String address = textFieldtr_1.getText();
				int type = DataBase.GATHER;
				String handler = textFieldtr_2.getText();
				String reciver = textFieldtr_3.getText();
				String tranString ;
				if (presending.isSelected()==true) {
					tranString = "1";
				}else if (sending.isSelected()==true) {
					tranString = "2";
				}else {
					tranString = "3";
				}
				if (textFieldtr.getText().equals("") || textFieldtr_3.getText().equals("")
						|| textFieldtr_2.getText().equals("") || textFieldtr_1.getText().equals("")) {
					JOptionPane.showMessageDialog(TheSystemUI.this, "信息录入失败！\n信息项目未填全！");
					return;
				}
				int transportType = Integer.parseInt(tranString);
				Transport trans = new Transport(id, nowDate, address, type, handler, reciver, transportType);
				transportList.add(trans);
				JOptionPane.showMessageDialog(TheSystemUI.this, "信息录入成功！");
				textFieldtr.setText("");
				textFieldtr_1.setText("");
				textFieldtr_2.setText("");
				textFieldtr_3.setText("");
				System.out.println("物流采集完成"+transportList.toString());
			}
		});
//		物流重置按钮
		reset.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				// TODO Auto-generated method stub
				textFieldtr.setText("");
				textFieldtr_1.setText("");
				textFieldtr_2.setText("");
				textFieldtr_3.setText("");
				presending.setSelected(false);
				sending.setSelected(false);
				rdbtnG_1.setSelected(false);
			}
		});
		
//		匹配日志数据
		btnNewButton_3.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				// TODO Auto-generated method stub
				panel_2.setVisible(false);
				System.out.println("正在日志数据过滤匹配...");
				JOptionPane.showMessageDialog(TheSystemUI.this, "正在日志数据过滤匹配...");
				// 创建日志数据分析对象
				LogRecAnalyse logAnalyse = new LogRecAnalyse(logRecList);
				// 日志数据过滤、分析
				logAnalyse.doFilter();
				matchedLogs = logAnalyse.matchData();
				JOptionPane.showMessageDialog(TheSystemUI.this, "日志数据过滤匹配完成！");
			}
		});
//		物流数据匹配
		btnNewButton_4.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				// TODO Auto-generated method stub
				panel_2.setVisible(false);
				System.out.println("物流数据正在匹配。。。");
				
				// 创建物流数据分析对象
				TransportAnalyse transAn = new TransportAnalyse(transportList);
				// 物流数据过滤
				transAn.doFilter();
				// 物流数据分析
				matchedTrans = transAn.matchData();
				JOptionPane.showMessageDialog(TheSystemUI.this, "物流数据匹配完成！");
				System.out.println("物流数据过滤匹配完成！");
			}
		});
//		数据的保存
		btnNewButton_5.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				// TODO Auto-generated method stub
				panel_2.setVisible(false);
				System.out.println("数据正在保存。。。");
				JOptionPane.showMessageDialog(TheSystemUI.this, "数据正在保存...");
//				日志数据的存储
				logService.saveMatchedLog(matchedLogs);
//				物流信息的存储
				tranService.saveMacthedTransport(matchedTrans);
				System.out.println("数据保存成功！");
				JOptionPane.showMessageDialog(TheSystemUI.this, "数据保存成功！");
			}
		});
//		@将数据显示的面板设置好
		btnNewButton_7.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				// TODO Auto-generated method stub
				panel_2.setVisible(false);
				panel_3.setVisible(false);
				panel_4.setVisible(false);
				panel_5.setVisible(true);
			}
		});
//		日志数据显示按钮
		btnNewButton_8.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				panel_5.remove(scrollPaneTrans);//@移除物流的显示面板
				scrollPaneTrans.setVisible(false);
				panel_5.add(scrollPaneLogs);//@添加日志的显示面板
				scrollPaneLogs.setVisible(true);//@设置为可见
//				String[] columnNames = {"日志ID","用户名", "登录时间", "登录地点","登录IP","是否匹配","登出时间","登出地点", "登出IP", "是否匹配"};
////				System.out.println(logService.readMatchedLog());
////				logService.getTable(matchedLogs);
//				table = new JTable(logService.getTableFromDataBase(logService.loadMatchedLogRecs()), columnNames);
//				scrollPaneLogs.setViewportView(table);
////				设置表格的样式
//				TheSystemUI.this.setTable(table);
//				增加一个判断，线程如果已经开启就不再执行start()方法
				if (loadLogs.isAlive()==false) {
					loadLogs.start();
				}
			}
		});
//		显示物流数据按钮
		btnNewButton_17.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				// TODO Auto-generated method stub
//				String[] columnNames = {"ID标识","收货人","地址","发货时间","送货时间","签收时间","货物经手人","是否匹配"};
////				System.out.println(tranService.readMatchedTransports());
////				logService.getTable(matchedLogs);
//				table = new JTable(tranService.getTableFromDataBase(tranService.loadMatchedTransRecs()), columnNames);
//				scrollPane.setViewportView(table);
////				设置表格的样式
//				TheSystemUI.this.setTable(table,matchedTrans);
				panel_5.remove(scrollPaneLogs);//@移除日志的显示面板
				scrollPaneLogs.setVisible(false);
				panel_5.add(scrollPaneTrans);//@添加物流的显示面板
				scrollPaneTrans.setVisible(true);//@设置为可见
//				增加一个判断，线程如果已经开启就不再执行start()方法
				if (loadTrans.isAlive()==false) {
					loadTrans.start();
				}
			}
		});
//		发送数据按钮
		btnNewButton_6.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				// TODO Auto-generated method stub
				
//				logService.sendMatchedLog(logService.getSQLString(matchedLogs));
//				tranService.sendMatchedTrans(tranService.getSQLString(matchedTrans));
//				JOptionPane.showMessageDialog(TheSystemUI.this, "数据发送成功！");
//				String string = SocketClient.doService();
				
//				JOptionPane.showMessageDialog(TheSystemUI.this, string);
			}
		});
		
	}

	@Override
	protected void setFrame() {
		// TODO Auto-generated method stub
		this.setResizable(false);
		this.setTitle("欢迎进入数据挖掘客户端");
		this.setBounds(100, 100, 1032, 616);
		this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		this.getContentPane().setLayout(null);
		this.setVisible(true);
	}
	public void setTable(JTable table) {
//		 设置表格内容颜色
        table.setForeground(Color.BLACK);                   // 字体颜色
        table.setFont(new Font("华文楷体", Font.BOLD, 15));   // 字体样式
        table.setSelectionForeground(Color.DARK_GRAY);      // 选中后字体颜色
        table.setSelectionBackground(Color.LIGHT_GRAY);     // 选中后字体背景
        table.setGridColor(Color.GRAY);                     // 网格颜色

//        a设置表头
        table.getTableHeader().setFont(new Font("华文楷体", Font.BOLD, 17));  // 设置表头名称字体样式
        table.getTableHeader().setForeground(Color.RED);                // 设置表头名称字体颜色
        table.getTableHeader().setResizingAllowed(true);               // 设置允许手动改变列宽
        table.getTableHeader().setReorderingAllowed(false);             // 设置不允许拖动重新排序各列
//		a 设置行高
		table.setRowHeight(30);

//		a 第一列列宽设置为40
		table.getColumnModel().getColumn(0).setPreferredWidth(60);
		table.getColumnModel().getColumn(2).setPreferredWidth(150);
		table.getColumnModel().getColumn(6).setPreferredWidth(150);
		DefaultTableCellRenderer r = new DefaultTableCellRenderer();   
		r.setHorizontalAlignment(JLabel.CENTER);   
		table.setDefaultRenderer(Object.class, r);
	}
//	setTable 方法的重载、设置不同的数据表格样式
	public void setTable(JTable table,ArrayList<MatchedTransport> matchedTrans) {
//		 设置表格内容颜色
        table.setForeground(Color.BLACK);                   // 字体颜色
        table.setFont(new Font("华文楷体", Font.BOLD, 15));   // 字体样式
        table.setSelectionForeground(Color.DARK_GRAY);      // 选中后字体颜色
        table.setSelectionBackground(Color.LIGHT_GRAY);     // 选中后字体背景
        table.setGridColor(Color.GRAY);                     // 网格颜色

//       a设置表头
        table.getTableHeader().setFont(new Font("华文楷体", Font.BOLD, 17));  // 设置表头名称字体样式
        table.getTableHeader().setForeground(Color.RED);                // 设置表头名称字体颜色
        table.getTableHeader().setResizingAllowed(true);               // 设置允许手动改变列宽
        table.getTableHeader().setReorderingAllowed(false);             // 设置不允许拖动重新排序各列
//		 设置行高
		table.setRowHeight(30);

//		 第一列列宽设置为40
		table.getColumnModel().getColumn(0).setPreferredWidth(60);
		table.getColumnModel().getColumn(3).setPreferredWidth(150);
		table.getColumnModel().getColumn(4).setPreferredWidth(150);
		table.getColumnModel().getColumn(5).setPreferredWidth(150);
		DefaultTableCellRenderer r = new DefaultTableCellRenderer();   
		r.setHorizontalAlignment(JLabel.CENTER);   
		table.setDefaultRenderer(Object.class, r);
	}
}

















