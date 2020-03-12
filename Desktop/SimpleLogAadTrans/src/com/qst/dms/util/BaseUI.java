package com.qst.dms.util;

import javax.swing.JFrame;

@SuppressWarnings("serial")
public abstract class BaseUI extends JFrame {
//	各个组件的属性.......
//	构造方法的重载
	public BaseUI() {
		
	}
	public BaseUI(String title) {
		super(title);
		
	}
//	下面是各种的抽象的方法
//	设置各个组件的形态和布局等信息方法
	protected abstract void setStyle();
//	将各个组件添加到窗体中去
	protected abstract void addToWindow();
//	绑定各种的事件的监听程序
	protected abstract void addListener();
//	设置窗体的本身的样式等
	protected abstract void setFrame();
}
