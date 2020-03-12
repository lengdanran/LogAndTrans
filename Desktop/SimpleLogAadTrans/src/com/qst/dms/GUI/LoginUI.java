package com.qst.dms.GUI;

import java.awt.Color;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import java.util.ArrayList;

//import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPasswordField;
import javax.swing.JTextField;

import com.qst.dms.UI.MainUI;
import com.qst.dms.entity.User;
import com.qst.dms.service.UserServise;
import com.qst.dms.util.BaseUI;

@SuppressWarnings("serial")
public class LoginUI extends BaseUI {
	
	private JLabel label = new JLabel("欢迎进入日志物流信息数据系统");
	private JLabel label_1 = new JLabel("用户名");
	private JLabel label_2 = new JLabel("密码");
	private JTextField userText = new JTextField();
	private JPasswordField passwordText = new JPasswordField();
	private JButton loginButton = new JButton("登录");
	private JButton resetButton = new JButton("重置");
	private JButton registerButton = new JButton("注册");
	private JButton exitButton = new JButton("退出");
	
	public LoginUI() {
		this.setStyle();
		this.addToWindow();
		this.addListener();
		this.setFrame();
	}
	public LoginUI(String title) {
		super(title);
		this.setStyle();
		this.addToWindow();
		this.addListener();
		this.setFrame();
	}
	
	
	@Override
	protected void setStyle() {
		// TODO Auto-generated method stub
		label.setFont(new Font("华文楷体", Font.BOLD, 27));
		label.setBounds(208, 41, 410, 69);
		
		label_1.setFont(new Font("华文楷体", Font.BOLD, 20));
		label_1.setBounds(215, 149, 62, 27);
		
		label_2.setFont(new Font("华文楷体", Font.BOLD, 20));
		label_2.setBounds(215, 206, 58, 27);
		
		userText.setBounds(289, 149, 225, 27);
		userText.setFont(new Font("华文楷体", Font.BOLD, 18));
		userText.setColumns(10);
		
		passwordText.setEchoChar('*');
		passwordText.setFont(new Font("华文楷体", Font.BOLD, 18));
		passwordText.setBounds(289, 206, 225, 27);
		passwordText.setColumns(10);
		
		loginButton.setFont(new Font("华文楷体", Font.BOLD, 20));
		loginButton.setBounds(180, 274, 126, 27);
		
		resetButton.setFont(new Font("华文楷体", Font.BOLD, 20));
		resetButton.setBounds(331, 274, 125, 27);
		
		registerButton.setFont(new Font("华文楷体", Font.BOLD, 20));
		registerButton.setBounds(492, 274, 126, 27);
		
		exitButton.setFont(new Font("华文楷体", Font.BOLD, 20));
		exitButton.setBackground(Color.RED);
		exitButton.setBounds(331, 340, 125, 27);
	}

	@Override
	protected void addToWindow() {
		// TODO Auto-generated method stub
		this.getContentPane().add(label);
		this.getContentPane().add(label_1);
		this.getContentPane().add(label_2);
		this.getContentPane().add(userText);
		this.getContentPane().add(passwordText);
		this.getContentPane().add(loginButton);
		this.getContentPane().add(resetButton);
		this.getContentPane().add(registerButton);
		this.getContentPane().add(exitButton);
	}

	@Override
	protected void addListener() {
		// TODO Auto-generated method stub
		loginButton.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent event) {
				
				String accountString = userText.getText();
				
				String passwordString = new String(passwordText.getPassword());
				if (accountString.equals("")||passwordString.equals("")) {
					JOptionPane.showMessageDialog(LoginUI.this,"请输入用户名和密码！","输入错误",JOptionPane.ERROR_MESSAGE,null);
				}
				User user = new User();
				UserServise userServise = new UserServise();
				passwordString = userServise.CodePassword(passwordString);
				ArrayList<User> users = userServise.readUserDataInDatabase();
				for (User theUser : users) {
					if (theUser.getAccountString().equals(accountString)) {
						user = theUser;
						break;
					}
				}
				System.out.println(user.getPasswordString()+"---->"+passwordString);
				if (user.login(accountString, passwordString)) {
					System.out.println("登录成功！！");
//					弹出新的窗口
//					new TheSystemUI();
					
					new MainUI();
					LoginUI.this.setVisible(false);
					
					
				}else {
					JOptionPane.showMessageDialog(LoginUI.this, "登录失败！\n用户名或者密码错误！");
					System.out.println("登录失败！！");
				}
//				弹出警告框
			}
		});
		resetButton.addMouseListener(new MouseAdapter() {
			@Override
			public void mouseClicked(MouseEvent event) {
				userText.setText("");
				passwordText.setText("");
				System.out.println("rset");
			}
		});
		registerButton.addMouseListener(new MouseAdapter() {
			public void mouseClicked(MouseEvent event) {
				new RegsiterUI();
				LoginUI.this.setVisible(false);
			}
		});
		exitButton.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				// TODO Auto-generated method stub
				System.exit(0);
			}
		});
	}
	@Override
	protected void setFrame() {
		// TODO Auto-generated method stub
		this.setTitle("欢迎进入日志物流信息数据系统");
		this.getContentPane().setLayout(null);
		this.setSize(825, 477);
		this.setResizable(false);
		this.setVisible(true);
	}

}
