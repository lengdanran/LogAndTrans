package Test.Entity;

import java.text.SimpleDateFormat;
import java.util.Date;


public class UserLog {
	private String nameString;
	private Date time;
	public UserLog() {
	}
	public UserLog(String nameString, Date time) {
		super();
		this.nameString = nameString;
		this.time = time;
	}
	public String getNameString() {
		return nameString;
	}
	public void setNameString(String nameString) {
		this.nameString = nameString;
	}
	public Date getTime() {
		return time;
	}
	public String getTimeF() {
		return new SimpleDateFormat("yyyy年MM月dd日kk:mm:ss").format(this.time);
	}
	public void setTime(Date time) {
		this.time = time;
	}
	
}
