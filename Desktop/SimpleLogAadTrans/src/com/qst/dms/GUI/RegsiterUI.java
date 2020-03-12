package com.qst.dms.GUI;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Font;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.ArrayList;

import javax.swing.ButtonGroup;
import javax.swing.JButton;
import javax.swing.JCheckBox;
import javax.swing.JComboBox;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JPasswordField;
import javax.swing.JRadioButton;
import javax.swing.JTextField;

import com.qst.dms.entity.User;
import com.qst.dms.service.UserServise;
import com.qst.dms.util.BaseUI;

@SuppressWarnings("serial")
public class RegsiterUI extends BaseUI {
	private JPanel panel = new JPanel();
	private JLabel lblNewLabel = new JLabel("用户名");
	private JLabel label = new JLabel("密码");
	private JLabel label_1 = new JLabel("确认密码");
	private JLabel label_2 = new JLabel("性别");
	private JLabel label_3 = new JLabel("爱好");
	private JLabel label_4 = new JLabel("地址");
	private JLabel label_5 = new JLabel("学历");

	private JTextField textField = new JTextField();
	private JPasswordField passwordField_1 = new JPasswordField();
	private JPasswordField passwordField_2 = new JPasswordField();
	private JTextField textField_3 = new JTextField();

	private JButton regsiterButton = new JButton("注册");
	private JButton exitButton = new JButton("退出");
	private JButton resetButton = new JButton("重置");
	private JRadioButton manButton = new JRadioButton("男");
	private JRadioButton womanButton = new JRadioButton("女");
	private JCheckBox chckbxNewCheckBox = new JCheckBox("阅读");
	private JCheckBox checkBox = new JCheckBox("上网");
	private JCheckBox checkBox_1 = new JCheckBox("旅游");
	private JCheckBox checkBox_2 = new JCheckBox("游泳");

	private ButtonGroup sex = new ButtonGroup();// @用于添加单选框，单选框必须加入到 ButtonGroup 中才能完成单选的功能

	String educationString[] = { "小学", "初中", "高中", "本科", "硕士", "博士" };
	JComboBox<String> comboBox = new JComboBox<String>(educationString);

	public RegsiterUI() {
		this.setStyle();
		this.addToWindow();
		this.addListener();
		this.setFrame();
	}

	public RegsiterUI(String title) {
		super(title);
		this.setStyle();
		this.addToWindow();
		this.addListener();
		this.setFrame();
	}

	@Override
	protected void setStyle() {
		// TODO Auto-generated method stub
		lblNewLabel.setFont(new Font("华文楷体", Font.BOLD, 20));
		lblNewLabel.setBounds(58, 31, 69, 27);

		label.setFont(new Font("华文楷体", Font.BOLD, 20));
		label.setBounds(58, 89, 69, 27);
		label_1.setFont(new Font("华文楷体", Font.BOLD, 20));
		label_1.setBounds(58, 155, 101, 27);
		label_2.setFont(new Font("华文楷体", Font.BOLD, 20));
		label_2.setBounds(58, 229, 58, 27);
		label_3.setFont(new Font("华文楷体", Font.BOLD, 20));
		label_3.setBounds(58, 311, 58, 27);
		label_4.setFont(new Font("华文楷体", Font.BOLD, 20));
		label_4.setBounds(58, 399, 69, 27);
		label_5.setFont(new Font("华文楷体", Font.BOLD, 20));
		label_5.setBounds(58, 484, 58, 27);

		textField.setBounds(181, 37, 312, 27);
		textField.setFont(new Font("华文楷体", Font.BOLD, 18));
		textField.setColumns(10);
		passwordField_1.setBounds(181, 95, 312, 27);
		passwordField_1.setFont(new Font("华文楷体", Font.BOLD, 18));
		passwordField_1.setColumns(10);
		passwordField_2.setBounds(181, 161, 312, 27);
		passwordField_2.setFont(new Font("华文楷体", Font.BOLD, 18));
		passwordField_2.setColumns(10);
		textField_3.setBounds(181, 405, 312, 35);
		textField_3.setFont(new Font("华文楷体", Font.BOLD, 18));
		textField_3.setColumns(10);

		regsiterButton.setFont(new Font("华文楷体", Font.BOLD, 20));
		regsiterButton.setBounds(115, 546, 97, 35);
		exitButton.setForeground(Color.RED);
		exitButton.setFont(new Font("华文楷体", Font.BOLD, 20));
		exitButton.setBounds(259, 546, 97, 35);
		resetButton.setFont(new Font("华文楷体", Font.BOLD, 20));
		resetButton.setBounds(398, 546, 97, 35);
		manButton.setFont(new Font("华文楷体", Font.BOLD, 20));
		manButton.setSelected(true);
		manButton.setBounds(181, 234, 127, 23);
		womanButton.setFont(new Font("华文楷体", Font.BOLD, 20));
		womanButton.setBounds(366, 234, 127, 23);

		checkBox.setFont(new Font("华文楷体", Font.BOLD, 15));
		checkBox.setBounds(259, 315, 69, 23);
		comboBox.setFont(new Font("华文楷体", Font.BOLD, 15));
		comboBox.setBounds(178, 489, 142, 23);
		chckbxNewCheckBox.setFont(new Font("华文楷体", Font.BOLD, 15));
		chckbxNewCheckBox.setForeground(new Color(0, 0, 0));
		chckbxNewCheckBox.setBounds(181, 316, 69, 23);
		checkBox.setFont(new Font("华文楷体", Font.BOLD, 15));
		checkBox.setBounds(259, 315, 69, 23);
		checkBox_1.setFont(new Font("华文楷体", Font.BOLD, 15));
		checkBox_1.setBounds(344, 316, 69, 23);
		checkBox_2.setFont(new Font("华文楷体", Font.BOLD, 15));
		checkBox_2.setBounds(429, 316, 109, 23);
		sex.add(manButton);
		sex.add(womanButton);
	}

	@Override
	protected void addToWindow() {
		// TODO Auto-generated method stub
		this.getContentPane().add(panel, BorderLayout.CENTER);
		panel.setLayout(null);
		panel.add(lblNewLabel);
		panel.add(label);
		panel.add(label_1);
		panel.add(label_2);
		panel.add(label_3);
		panel.add(label_4);
		panel.add(label_5);
		panel.add(textField);
		panel.add(passwordField_1);
		panel.add(passwordField_2);
		panel.add(textField_3);
		panel.add(regsiterButton);
		panel.add(exitButton);
		panel.add(resetButton);
		panel.add(manButton);
		panel.add(womanButton);
		panel.add(chckbxNewCheckBox);
		panel.add(checkBox);
		panel.add(checkBox_1);
		panel.add(checkBox_2);
		panel.add(comboBox);
	}

	@Override
	protected void addListener() {
		// TODO Auto-generated method stub
		/**
		 * restButton的重置事件监听
		 */
		resetButton.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				// TODO Auto-generated method stub
				textField.setText("");
				passwordField_1.setText("");
				passwordField_2.setText("");
				textField_3.setText("");
				manButton.setSelected(true);
				womanButton.setSelected(false);
				comboBox.setSelectedIndex(1);
				chckbxNewCheckBox.setSelected(false);
				checkBox.setSelected(false);
				checkBox_1.setSelected(false);
				checkBox_2.setSelected(false);
			}
		});

		/**
		 * @author ASUS
		 * @注册
		 */
		regsiterButton.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				// TODO Auto-generated method stub
				String accountString = textField.getText();
				String passwordString = new String(passwordField_1.getPassword());
				
				String p2 = new String(passwordField_2.getPassword());
				if (passwordString.equals(p2) == false) {
					JOptionPane.showMessageDialog(RegsiterUI.this, "注册失败！\n两次密码输入不一致！");
					return;
				}
				if (textField.getText().equals("") || textField_3.getText().equals("")) {
					JOptionPane.showMessageDialog(RegsiterUI.this, "注册失败！\n信息项目未填全！");
					return;
				}
				String sexString;
				if (manButton.isSelected()) {
					sexString = "男";
				} else
					sexString = "女";
				System.out.println(sexString);
				ArrayList<String> habitStrings = new ArrayList<String>();
				if (chckbxNewCheckBox.isSelected()) {
					habitStrings.add("阅读");
				}
				if (checkBox.isSelected()) {
					habitStrings.add("上网");
				}
				if (checkBox_1.isSelected()) {
					habitStrings.add("旅游");
				}
				if (checkBox_2.isSelected()) {
					habitStrings.add("游泳");
				}
				System.out.println(habitStrings.toString());
				String addressString = textField_3.getText();
				System.out.println(addressString);
				String educationString = comboBox.getSelectedItem().toString();
				System.out.println(educationString);
				
				UserServise userServise = new UserServise();
				passwordString = userServise.CodePassword(passwordString);
				User user = new User(accountString, passwordString, sexString, addressString, habitStrings,
						educationString);
				
				userServise.saveUserData(user);
				userServise.sendUserDataToDatabase(user);
				JOptionPane.showMessageDialog(RegsiterUI.this, "注册成功！\n即将返回登录界面！");
//				线程睡眠2.5秒钟
//				try {
//					Thread.sleep(2500);
//				} catch (Exception e1) {
//					// TODO: handle exception
//					e1.printStackTrace();
//				}
				RegsiterUI.this.setVisible(false);
				new LoginUI();
			}
		});

		exitButton.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent e) {
				// TODO Auto-generated method stub
				RegsiterUI.this.setVisible(false);
				new LoginUI();
			}
		});
	}

	@Override
	protected void setFrame() {
		// TODO Auto-generated method stub
		this.setTitle("欢迎注册");
		this.setBounds(100, 100, 598, 643);
		this.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		this.setResizable(false);
		this.setVisible(true);
	}

}
