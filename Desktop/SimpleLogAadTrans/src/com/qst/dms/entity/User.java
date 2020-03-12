package com.qst.dms.entity;

import java.io.Serializable;
import java.util.ArrayList;

@SuppressWarnings("serial")
public class User implements Serializable{
	private String accountString;
	private String passwordString;
	private String sexString;
	private String addressString;
	private ArrayList<String> habitStrings = new ArrayList<String>();
	private String educationString;
	
	public User() {
		
	}
	public User(String accountString,String passwordString,String sexString,String addressString,ArrayList<String> habitStrings,String educationString) {
		this.accountString = accountString;
		this.passwordString = passwordString;
		this.sexString = sexString;
		this.addressString = addressString;
		this.habitStrings = habitStrings;
		this.educationString =educationString;
	}
	
	
	public String getAccountString() {
		return accountString;
	}
	public void setAccountString(String accountString) {
		this.accountString = accountString;
	}
	public String getPasswordString() {
		return passwordString;
	}
	public void setPasswordString(String passwordString) {
		this.passwordString = passwordString;
	}
	public String getSexString() {
		return sexString;
	}
	public void setSexString(String sexString) {
		this.sexString = sexString;
	}
	public String getAddressString() {
		return addressString;
	}
	public void setAddressString(String addressString) {
		this.addressString = addressString;
	}
	public ArrayList<String> getHabitStrings() {
		return habitStrings;
	}
	public void setHabitStrings(ArrayList<String> habitStrings) {
		this.habitStrings = habitStrings;
	}
	public String getEducationString() {
		return educationString;
	}
	public void setEducationString(String educationString) {
		this.educationString = educationString;
	}
//		用户登录的功能实现
	public String toString() {
		return new String("======<@" + "用户名：" + accountString + "\t性别：" + sexString + "\t地址：" + addressString + "\t学历：" + educationString + "\t爱好：" +habitStrings.toString() + ">=====");
	}
//	用户登录的功能实现
	public boolean login(String accountString,String passwordString) {
		if (accountString.equals(this.accountString)&&passwordString.equals(this.passwordString)) {
			return true;
		}else return false;
	}
}
