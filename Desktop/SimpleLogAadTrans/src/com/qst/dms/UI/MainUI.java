package com.qst.dms.UI;



import java.awt.BorderLayout;
import java.awt.CardLayout;
import java.awt.Color;
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Date;

import javax.swing.BoxLayout;
import javax.swing.ButtonGroup;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JMenu;
import javax.swing.JMenuBar;
import javax.swing.JMenuItem;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JRadioButton;
import javax.swing.JScrollPane;
import javax.swing.JTabbedPane;
import javax.swing.JTable;
import javax.swing.JTextField;
import javax.swing.JToolBar;
import javax.swing.table.DefaultTableCellRenderer;

import com.qst.dms.entity.DataBase;
import com.qst.dms.entity.LogRec;
import com.qst.dms.entity.MatchedLogRec;
import com.qst.dms.entity.MatchedTransport;
import com.qst.dms.entity.SocketClient;
import com.qst.dms.entity.Transport;
import com.qst.dms.entity.matTran;
import com.qst.dms.entity.matlog;
import com.qst.dms.gather.LogRecAnalyse;
import com.qst.dms.gather.TransportAnalyse;
import com.qst.dms.service.LogRecService;
import com.qst.dms.service.TransportService;

//主窗口
public class MainUI extends JFrame {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	
	// 声明界面组件
	private JMenuBar menuBar;
	private JMenu menuOperate, menuHelp, menuMatch;
	private JMenuItem miGather, miSave, miSend,
			miShow, miExit, miCheck, miAbout;
	private JTabbedPane tpGather, showPane;
	private JPanel p, pLog, pTran, pLogId, pName, pLocation, pIP, pLogStatus,
			pLogButton, pTransId, pAdress, pHandler, pReceiver, pTranStatus,
			pTranButton;
	private JLabel lblLogId, lblName, lblLocation, lblIP, lblLogStatus,
			lblTransId, lblAdress, lblHandler, lblReceiver, lblTranStatus;
	private JTextField txtLogId, txtName, txtLocation, txtIP, txtTransId,
			txtAdress, txtHandler, txtReceiver;
	private JRadioButton rbLogin,rbLogout, Send,Tran,Receive;
	private JButton btnLogConfirm, btnLogReset, btnTranConfirm, btnTranReset,
			btnGather, btnMatchLog, btnMatchTrans, btnSave, btnSend, btnShow;
//	private JComboBox<String> cmbTanStatus;
	private JToolBar toolBar;
	private JScrollPane scrollPaneLog = new JScrollPane(),scrollPanetranScrollPane = new JScrollPane();
	private CardLayout card;
	// 声明日志对象
//	private LogRec log;
	// 声明物流对象
//	private Transport Trans;
	// 声明日志列表
	private ArrayList<LogRec> logList;
	// 声明物流列表
	private ArrayList<Transport> transList;
//	 声明匹配日志列表
	private ArrayList<MatchedLogRec> matchedLogs;
	// 声明匹配物流列表
	private ArrayList<MatchedTransport> matchedTrans;
	// 声明日志业务对象
	private LogRecService logRecService;
	// 声明物流业务对象
	private TransportService transportService;
	
	private JTable table;
	 
	 class Load  extends Thread{
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
						table = new JTable(logRecService.getTableFromDataBase(logRecService.loadMatchedLogRecs()), columnNames);
//						设置表格的样式
						MainUI.this.setTable(table);
						scrollPaneLog.setViewportView(table);
//						添加日志到面板上
						showPane.addTab("日志", scrollPaneLog);
						
						String[] columnNames1 = { "ID标识", "收货人", "地址", "发货时间", "送货时间", "签收时间", "货物经手人", "是否匹配" };
//					System.out.println(tranService.readMatchedTransports());
//					logService.getTable(matchedLogs);
						table = new JTable(transportService.getTableFromDataBase(transportService.loadMatchedTransRecs()),columnNames1);
						scrollPanetranScrollPane.setViewportView(table);
//					设置表格的样式
						MainUI.this.setTransTable(table, matchedTrans);
						showPane.addTab("物流", scrollPanetranScrollPane);
//						线程睡眠30s
						sleep(30000); 
					} catch (InterruptedException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
			}
		}
	 Load load = new Load();
	 

	// 构造方法
	public MainUI() {
		// 调用父类的构造方法
		super("Q-DMS系统客户端");

		// 设置窗体的icon
		ImageIcon icon = new ImageIcon("images\\dms.png");
		this.setIconImage(icon.getImage());

		// 列表、业务对象初始化
		logList = new ArrayList<LogRec>();
		transList = new ArrayList<Transport>();
		matchedLogs = new ArrayList<MatchedLogRec>();
		matchedTrans = new ArrayList<MatchedTransport>();
		logRecService = new LogRecService();
		transportService = new TransportService();

		// 初始化菜单
		initMenu();
		// 初始化工具栏
		initToolBar();

		// 设置主面板为CardLayout卡片布局
		card = new CardLayout();
		p = new JPanel();
		p.setLayout(card);
		// 数据采集的选项卡面板
		tpGather = new JTabbedPane(JTabbedPane.TOP);
		// 数据显示的选项卡面板
		showPane = new JTabbedPane(JTabbedPane.TOP);
		// 将两个选项卡面板添加到卡片面板中
		p.add(tpGather, "gather");
		p.add(showPane, "show");

		// 将主面板添加到窗体中
		getContentPane().add(p, BorderLayout.CENTER);

		// 初始化日志数据采集界面
		initLogGatherGUI();
		// 初始化物流数据采集界面
		initTransGatherGUI();

		// 设置窗体初始可见
		this.setVisible(true);
		// 设置窗体初始最大化
//		this.setSize(800, 450);
		this.setBounds(100, 100, 1032, 616);
		// 设置窗口初始化居中
		this.setLocationRelativeTo(null);
		// 设置默认的关闭按钮操作为退出程序
		this.setDefaultCloseOperation(EXIT_ON_CLOSE);
	}

	// 初始化菜单的方法
	private void initMenu() {
		// 初始化菜单组件
		menuBar = new JMenuBar();
		this.setJMenuBar(menuBar);
		menuOperate = new JMenu("操作");
		menuOperate.setFont(new Font("华文楷体", Font.BOLD, 15));
		menuBar.add(menuOperate);

		miGather = new JMenuItem("采集数据");
//		 注册监听
		miGather.addActionListener(new GatherListener());
		menuOperate.add(miGather);

//		 二级菜单
		menuMatch = new JMenu("匹配数据");
		JMenuItem Log = new JMenuItem("匹配日志数据");
		Log.addActionListener(new MatchLogListener());
		JMenuItem transItem  = new JMenuItem("匹配物流数据");
		transItem.addActionListener(new MatchTransListener());
//		添加二级菜单
		menuMatch.add(Log);
		menuMatch.add(transItem);
		menuOperate.add(menuMatch);

		miSave = new JMenuItem("保存数据");
		miSave.addActionListener(new SaveDataListener());
		menuOperate.add(miSave);

		miSend = new JMenuItem("发送数据");
		menuOperate.add(miSend);
//		数据发送操作
		miSend.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				// TODO Auto-generated method stub
//				构造可序列化包装类，用于数据的发送
				matlog matchedloglist = new matlog();
				matchedloglist.setMatchedLogRecs(matchedLogs);
				matTran matchedTran = new matTran();
				matchedTran.setMatchedTransports(matchedTrans);
				SocketClient.doService(matchedloglist);
				String string = SocketClient.doService(matchedTran);
				if (string.equals("数据发送成功！")) {
//					弹出提示框，提示用户
					JOptionPane.showMessageDialog(MainUI.this, string);
//					清空集合内容
					matchedLogs.clear();
					matchedTrans.clear();
					matchedloglist = null;
					matchedTran = null;
				}else {
					JOptionPane.showMessageDialog(MainUI.this, "数据发送失败！");
				}
			}
		});

		miShow = new JMenuItem("显示数据");
//		 注册监听
		miShow.addActionListener(new ShowDataListener());
		menuOperate.add(miShow);

//		 添加分割线
		menuOperate.addSeparator();

		miExit = new JMenuItem("退出系统");
//		 注册监听
		miExit.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
//				 显示确认对话框，当选择YES_OPTION时退出系统
				if (JOptionPane.showConfirmDialog(null, "您确定要退出系统吗？", "退出系统",
						JOptionPane.YES_NO_OPTION) == JOptionPane.YES_OPTION) {
//					 退出系统
					System.exit(0);
				}
			}
		});
		menuOperate.add(miExit);

		menuHelp = new JMenu("帮助");
		menuHelp.setFont(new Font("华文楷体", Font.BOLD, 15));
		menuBar.add(menuHelp);

		miCheck = new JMenuItem("查看帮助");
//		 注册监听
		miCheck.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
//				 显示消息对话框
				JOptionPane.showMessageDialog(null,
						"本系统实现数据的采集、过滤分析匹配、保存、发送及显示功能", "帮助",
						JOptionPane.QUESTION_MESSAGE);
			}
		});
		menuHelp.add(miCheck);

		miAbout = new JMenuItem("关于系统");
//		 注册监听
		miAbout.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
//				 显示消息对话框
				JOptionPane.showMessageDialog(null,"开发人：张仕华", "2019-12-20版",JOptionPane.WARNING_MESSAGE);
			}
		});
		menuHelp.add(miAbout);
	}

//	 初始化工具栏的方法
	private void initToolBar() {
//		 创建工具栏
		toolBar = new JToolBar();
//		 将工具栏添加到窗体北部（上面）
		getContentPane().add(toolBar, BorderLayout.NORTH);
		
//		 添加带有图标的工具栏按钮
//		ImageIcon gatherIcon = new ImageIcon("images\\gatherData.png");
		btnGather = new JButton("采集数据");//, gatherIcon);
		btnGather.setFont(new Font("华文楷体", Font.BOLD, 15));
//		 注册监听
		btnGather.addActionListener(new GatherListener());
		toolBar.add(btnGather);

//		ImageIcon matchIcon = new ImageIcon("images\\matchData.png");
		btnMatchLog = new JButton("匹配日志数据");//, matchIcon);
		btnMatchLog.setFont(new Font("华文楷体", Font.BOLD, 15));
//		 注册监听
		btnMatchLog.addActionListener(new MatchLogListener());
		toolBar.add(btnMatchLog);

		btnMatchTrans = new JButton("匹配物流数据");
		btnMatchTrans.setFont(new Font("华文楷体", Font.BOLD, 15));
//		注册监听
		btnMatchTrans.addActionListener(new MatchTransListener());
		toolBar.add(btnMatchTrans);		

//		ImageIcon saveIcon = new ImageIcon("images\\save.jpg");
		btnSave = new JButton("保存数据");//, saveIcon);
		btnSave.setFont(new Font("华文楷体", Font.BOLD, 15));
		btnSave.setBounds(410, 0, 200, 33);
//		 注册监听,实现保存的功能
		btnSave.addActionListener(new SaveDataListener());
		toolBar.add(btnSave);

//		ImageIcon sendIcon = new ImageIcon("images\\sendData.png");
		btnSend = new JButton("发送数据");//, sendIcon);
		btnSend.setFont(new Font("华文楷体", Font.BOLD, 15));
//		数据发送操作
		btnSend.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				// TODO Auto-generated method stub
//				构造可序列化包装类，用于数据的发送
				matlog matchedloglist = new matlog();
				matchedloglist.setMatchedLogRecs(matchedLogs);
				matTran matchedTran = new matTran();
				matchedTran.setMatchedTransports(matchedTrans);
				SocketClient.doService(matchedloglist);
				String string = SocketClient.doService(matchedTran);
				if (string.equals("数据发送成功！")) {
//					弹出提示框，提示用户
					JOptionPane.showMessageDialog(MainUI.this, string);
//					清空集合内容
					matchedLogs.clear();
					matchedTrans.clear();
					matchedloglist = null;
					matchedTran = null;
				}else {
					JOptionPane.showMessageDialog(MainUI.this, "数据发送失败！");
				}
			}
		});
		toolBar.add(btnSend);

//		ImageIcon showIcon = new ImageIcon("images\\showData.png");
		btnShow = new JButton("显示数据");//, showIcon);
		btnShow.setFont(new Font("华文楷体", Font.BOLD, 15));
		btnShow.setBounds(810, 0, 200, 33);
		btnShow.addActionListener(new ShowDataListener());
		toolBar.add(btnShow);
	}

//	 初始化日志数据采集界面的方法
	private void initLogGatherGUI() {
			pLog = new JPanel();
			tpGather.addTab("日志", pLog);
			pLog.setLayout(new BoxLayout(pLog, BoxLayout.Y_AXIS));

			pLogId = new JPanel();
			pLog.add(pLogId);
			pLogId.setLayout(new FlowLayout(FlowLayout.CENTER, 5, 5));

			lblLogId = new JLabel("日志ID：");
			lblLogId.setFont(new Font("华文楷体", Font.BOLD, 15));
			pLogId.add(lblLogId);

			txtLogId = new JTextField();
			txtLogId.setPreferredSize(new Dimension(200, 25));
			txtLogId.setFont(new Font("华文楷体", Font.BOLD, 18));
			pLogId.add(txtLogId);
			txtLogId.setText(String.valueOf(logRecService.MaxIdInDB()+1));

			pName = new JPanel();
			pLog.add(pName);
			pName.setLayout(new FlowLayout(FlowLayout.CENTER, 5, 5));

			lblName = new JLabel("用户名：");
			lblName.setFont(new Font("华文楷体", Font.BOLD, 15));
			pName.add(lblName);

			txtName = new JTextField();
			txtName.setPreferredSize(new Dimension(200, 25));
			txtName.setFont(new Font("华文楷体", Font.BOLD, 18));
			pName.add(txtName);

			pLocation = new JPanel();
			pLog.add(pLocation);

			lblLocation = new JLabel("登录地点：");
			lblLocation.setFont(new Font("华文楷体", Font.BOLD, 15));
			pLocation.add(lblLocation);

			txtLocation = new JTextField();
			txtLocation.setPreferredSize(new Dimension(200, 25));
			txtLocation.setFont(new Font("华文楷体", Font.BOLD, 18));
			pLocation.add(txtLocation);

			pIP = new JPanel();
			pLog.add(pIP);

			lblIP = new JLabel("登录IP：");
			lblIP.setFont(new Font("华文楷体", Font.BOLD, 15));
			pIP.add(lblIP);

			txtIP = new JTextField();
			txtIP.setPreferredSize(new Dimension(200, 25));
			txtIP.setFont(new Font("华文楷体", Font.BOLD, 18));
			try {
//				获取本地的localhost和IP地址
				InetAddress inetAddress = InetAddress.getLocalHost();
//				截取IP地址字符串
				String string = inetAddress.toString().substring(inetAddress.toString().indexOf("/")+1);
//				设置默认的IP地址
				txtIP.setText(string);
			} catch (UnknownHostException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			pIP.add(txtIP);

			pLogStatus = new JPanel();
			pLog.add(pLogStatus);

			lblLogStatus = new JLabel("登录状态：");
			lblLogStatus.setFont(new Font("华文楷体", Font.BOLD, 15));
			pLogStatus.add(lblLogStatus);

			rbLogin = new JRadioButton("登录");
			rbLogin.setFont(new Font("华文楷体", Font.BOLD, 15));
			pLogStatus.add(rbLogin);
			rbLogin.setSelected(true);

			rbLogout = new JRadioButton("登出");
			rbLogout.setFont(new Font("华文楷体", Font.BOLD, 15));
			pLogStatus.add(rbLogout);

			ButtonGroup bg = new ButtonGroup();
			bg.add(rbLogin);
			bg.add(rbLogout);

			pLogButton = new JPanel();
			pLog.add(pLogButton);

//			日志确定按钮
			btnLogConfirm = new JButton("确认");
			btnLogConfirm.setFont(new Font("华文楷体", Font.BOLD, 18));
			btnLogConfirm.setBounds(289, 257, 97, 37);
//			 添加确认按钮监听
			btnLogConfirm.addActionListener(new ActionListener() {
				
				@Override
				public void actionPerformed(ActionEvent e) {
					// TODO Auto-generated method stub
					String idString = txtLogId.getText();//@日志Id----int
					int ID = Integer.parseInt(idString);//@String -->  int 
					String nameString = txtName.getText();//@用户名
					String addressString = txtLocation.getText();//@地址
					String IP = txtIP.getText();//@IP
					String logtypeString;//@int
					if (rbLogin.isSelected()==true) {
						logtypeString = "1";
					}else {
						logtypeString = "0";
					}
					if (txtLogId.getText().equals("") || txtIP.getText().equals("")
							|| txtLocation.getText().equals("") || txtName.getText().equals("")) {
						JOptionPane.showMessageDialog(MainUI.this, "录入失败！\n信息项目未填全！");
						return;
					}
					int type = DataBase.GATHER;// 数据状态是“采集”
					int logType = Integer.parseInt(logtypeString);
					Date nowDate = new Date();//@获取当前时间
					LogRec log = new LogRec(ID,nowDate, addressString, type, nameString, IP, logType);

					logList.add(log);// 将采集的日志数据添加到logList集合中
					System.out.println("采集完成"+logList.toString());
					JOptionPane.showMessageDialog(MainUI.this, "日志信息录入成功！");
				}
			});
//			btnLogConfirm.addActionListener(new GatherLogListener());
			pLogButton.add(btnLogConfirm);

//			日志重置按钮
			btnLogReset = new JButton("重置");
			btnLogReset.setFont(new Font("华文楷体", Font.BOLD, 18));
			btnLogReset.setBounds(445, 257, 97, 37);
			// 添加重置按钮监听
			btnLogReset.addActionListener(new ActionListener() {
				
				@Override
				public void actionPerformed(ActionEvent e) {
					// TODO Auto-generated method stub
					txtLogId.setText(String.valueOf(logRecService.MaxIdInDB()+1));
					txtName.setText("");
					txtLocation.setText("");
					try {
//						获取本地的localhost和IP地址
						InetAddress inetAddress = InetAddress.getLocalHost();
//						截取IP地址字符串
						String string = inetAddress.toString().substring(inetAddress.toString().indexOf("/")+1);
//						设置默认的IP地址
						txtIP.setText(string);
					} catch (UnknownHostException e1) {
						// TODO Auto-generated catch block
						e1.printStackTrace();
					}
				}
			});
			pLogButton.add(btnLogReset);
		}

//	 初始化物流数据采集界面的方法
	private void initTransGatherGUI() {
		pTran = new JPanel();
		tpGather.addTab("物流", pTran);
		pTran.setLayout(new BoxLayout(pTran, BoxLayout.Y_AXIS));

		pTransId = new JPanel();
		pTran.add(pTransId);

		lblTransId = new JLabel("物流ID：");
		lblTransId.setFont(new Font("华文楷体", Font.BOLD, 15));
		pTransId.add(lblTransId);

		txtTransId = new JTextField();
		txtTransId.setPreferredSize(new Dimension(200, 25));
		txtTransId.setFont(new Font("华文楷体", Font.BOLD, 18));
		pTransId.add(txtTransId);
		txtTransId.setText(String.valueOf(transportService.MaxInDB()+1));

		pAdress = new JPanel();
		pTran.add(pAdress);

		lblAdress = new JLabel("目的地：");
		lblAdress.setFont(new Font("华文楷体", Font.BOLD, 15));
		pAdress.add(lblAdress);

		txtAdress = new JTextField();
		txtAdress.setPreferredSize(new Dimension(200, 25));
		txtAdress.setFont(new Font("华文楷体", Font.BOLD, 18));
		pAdress.add(txtAdress);

		pHandler = new JPanel();
		pTran.add(pHandler);

		lblHandler = new JLabel("经手人：");
		lblHandler.setFont(new Font("华文楷体", Font.BOLD, 15));
		pHandler.add(lblHandler);

		txtHandler = new JTextField();
		txtHandler.setPreferredSize(new Dimension(200, 25));
		txtHandler.setFont(new Font("华文楷体", Font.BOLD, 18));
		pHandler.add(txtHandler);

		pReceiver = new JPanel();
		pTran.add(pReceiver);

		lblReceiver = new JLabel("收货人：");
		lblReceiver.setFont(new Font("华文楷体", Font.BOLD, 15));
		pReceiver.add(lblReceiver);

		txtReceiver = new JTextField();
		txtReceiver.setPreferredSize(new Dimension(200, 25));
		txtReceiver.setFont(new Font("华文楷体", Font.BOLD, 18));
		pReceiver.add(txtReceiver);

		pTranStatus = new JPanel();
		pTran.add(pTranStatus);

		lblTranStatus = new JLabel("物流状态：");
		lblTranStatus.setFont(new Font("华文楷体", Font.BOLD, 15));
		pTranStatus.add(lblTranStatus);

//		String[] tranStatus = new String[] { "发货中", "送货中", "已签收" };
		ButtonGroup bg = new ButtonGroup();
		Send = new JRadioButton("发货中");
		Send.setFont(new Font("华文楷体", Font.BOLD, 15));
		Tran = new JRadioButton("送货中");
		Tran.setFont(new Font("华文楷体", Font.BOLD, 15));
		Receive = new JRadioButton("已签收");
		Receive.setFont(new Font("华文楷体", Font.BOLD, 15));
		pTranStatus.add(Send);
		pTranStatus.add(Tran);
		pTranStatus.add(Receive);
		bg.add(Send);bg.add(Tran);bg.add(Receive);
		
		
		pTranButton = new JPanel();
		pTran.add(pTranButton);

		btnTranConfirm = new JButton("确认");
		btnTranConfirm.setFont(new Font("华文楷体", Font.BOLD, 18));
		btnTranConfirm.setBounds(289, 257, 97, 37);
//		物流信息录入确认按钮
		btnTranConfirm.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				// TODO Auto-generated method stub
				String idString = txtTransId.getText();
				int id = Integer.parseInt(idString);
				Date nowDate = new Date();
				String address = txtAdress.getText();
				int type = DataBase.GATHER;
				String handler = txtHandler.getText();
				String reciver = txtReceiver.getText();
				String tranString ;
				if (Send.isSelected()==true) {
					tranString = "1";
				}else if (Tran.isSelected()==true) {
					tranString = "2";
				}else {
					tranString = "3";
				}
				if (txtTransId.getText().equals("") || txtReceiver.getText().equals("")
						|| txtHandler.getText().equals("") || txtAdress.getText().equals("")) {
					JOptionPane.showMessageDialog(MainUI.this, "信息录入失败！\n信息项目未填全！");
					return;
				}
				int transportType = Integer.parseInt(tranString);
				Transport trans = new Transport(id, nowDate, address, type, handler, reciver, transportType);
				transList.add(trans);
				JOptionPane.showMessageDialog(MainUI.this, "信息录入成功！");
				System.out.println("物流采集完成"+transList.toString());
			}
		});
		
//		btnTranConfirm.addActionListener(new GatherTransListener());
		pTranButton.add(btnTranConfirm);

		btnTranReset = new JButton("重置");
		btnTranReset.setFont(new Font("华文楷体", Font.BOLD, 18));
		btnTranReset.setBounds(445, 257, 97, 37);
//		物流重置按钮
		btnTranReset.addActionListener(new ActionListener() {
			
			@Override
			public void actionPerformed(ActionEvent e) {
				// TODO Auto-generated method stub
				txtTransId.setText(String.valueOf(transportService.MaxInDB()+1));	
				txtAdress.setText("");
				txtHandler.setText("");
				txtReceiver.setText("");
			}
		});
		pTranButton.add(btnTranReset);
	}

//	 数据采集监听类
	private class GatherListener implements ActionListener {
		public void actionPerformed(ActionEvent e) {
//			 切换主面板的卡片为采集面板
			card.show(p, "gather");
			txtLogId.setText(String.valueOf(logRecService.MaxIdInDB()+1));
			txtTransId.setText(String.valueOf(transportService.MaxInDB()+1));
			try {
//				获取本地的localhost和IP地址
				InetAddress inetAddress = InetAddress.getLocalHost();
//				截取IP地址字符串
				String string = inetAddress.toString().substring(inetAddress.toString().indexOf("/")+1);
//				设置默认的IP地址
				txtIP.setText(string);
			} catch (UnknownHostException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
	}


//	 匹配日志信息监听类
	private class MatchLogListener implements ActionListener {
//		 数据匹配的事件处理方法
		public void actionPerformed(ActionEvent e) {
			System.out.println("正在日志数据过滤匹配...");
			JOptionPane.showMessageDialog(MainUI.this, "正在日志数据过滤匹配...");
//			 创建日志数据分析对象
			LogRecAnalyse logAnalyse = new LogRecAnalyse(logList);
//			 日志数据过滤、分析
			logAnalyse.doFilter();
			matchedLogs = logAnalyse.matchData();
//			JOptionPane.showMessageDialog(TheSystemUI.this, "日志数据过滤匹配完成！");
			JOptionPane.showMessageDialog(MainUI.this, "日志数据过滤、分析匹配成功！", "提示",
					JOptionPane.INFORMATION_MESSAGE);
		}
	}

//	 匹配物流信息监听类
	private class MatchTransListener implements ActionListener {
//		 数据匹配的事件处理方法
		public void actionPerformed(ActionEvent e) {
			// TODO Auto-generated method stub
			System.out.println("物流数据正在匹配。。。");
			
//			 创建物流数据分析对象
			TransportAnalyse transAn = new TransportAnalyse(transList);
//			 物流数据过滤
			transAn.doFilter();
//			 物流数据分析
			matchedTrans = transAn.matchData();
			JOptionPane.showMessageDialog(MainUI.this, "物流数据匹配完成！");
			System.out.println("物流数据过滤匹配完成！");
		}
	}

//	 保存数据监听类
	private class SaveDataListener implements ActionListener {
//		 数据保存的事件处理方法
		public void actionPerformed(ActionEvent e) {
			// TODO Auto-generated method stub
			System.out.println("数据正在保存。。。");
			JOptionPane.showMessageDialog(MainUI.this, "数据正在保存...");
//			日志数据的存储
			logRecService.saveMatchedLog(matchedLogs);
//			物流信息的存储
			transportService.saveMacthedTransport(matchedTrans);
			System.out.println("数据保存成功！");
			JOptionPane.showMessageDialog(MainUI.this, "数据保存成功！");
		}
	}


	
//	数据显示监听类
	private class ShowDataListener implements ActionListener {
//		 数据显示的事件处理方法
		public void actionPerformed(ActionEvent e) {
//			 切换主面板的卡片为显示数据的面板
			card.show(p, "show");
//			 移除显示数据面板中的所有的选项卡
			showPane.removeAll();
//			显示数据
			FlishDataFromDataBase();
		}
	}

	
	
//	从数据库中刷新数据并且显示在窗体中
	private void FlishDataFromDataBase() {
//		线程没有启动，则启动
		if (load.isAlive()==false) {
			load.start();
		}else {
			showPane.addTab("日志", scrollPaneLog);
			showPane.addTab("物流", scrollPanetranScrollPane);
		}
	}
	public void setTable(JTable table) {
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
//	设置不同的数据表格样式
	public void setTransTable(JTable table,ArrayList<MatchedTransport> matchedTrans) {
//		 设置表格内容颜色
       table.setForeground(Color.BLACK);                   // 字体颜色
       table.setFont(new Font("华文楷体", Font.BOLD, 15));   // 字体样式
       table.setSelectionForeground(Color.DARK_GRAY);      // 选中后字体颜色
       table.setSelectionBackground(Color.LIGHT_GRAY);     // 选中后字体背景
       table.setGridColor(Color.GRAY);                     // 网格颜色

//      a设置表头
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
//		table.setEnabled(false);
	}
//	用作测试页面
	public static void main(String[] args) {
		new MainUI();

	}
}
