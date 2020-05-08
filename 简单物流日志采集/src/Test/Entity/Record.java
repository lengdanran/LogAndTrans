package Test.Entity;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;

//数据基础类

public class Record implements Serializable{
	private static final long serialVersionUID = -150422885304770342L;//序列化id
	// ID标识
	private int id;
	// 时间
	private Date time;
	// 地点
	private String address;
	// 状态
	private int type;
	// 状态常量
	public static final int GATHER=1;//"采集"
	public static final int MATHCH=2;//"匹配";
	public static final int RECORD=3;//"记录";
	public static final int SEND=4;//"发送";
	public static final int RECIVE=5;//"接收";
	public static final int WRITE=6;//"归档"、“写入”;
	public static final int SAVE=7;//"保存";

	public int getId() {
		return id;
	}

	
	public void setId(int id) {
		this.id = id;
	}


	public Date getTime() {
		return time;
	}
	public String getTimeF() {
		Date time = this.getTime();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日kk:mm:ss");
		String format = sdf.format(time);
		return format;
	}
	
	public void setTime(Date time) {
		this.time = time;
	}


	public String getAddress() {
		return address;
	}

	
	public void setAddress(String address) {
		this.address = address;
	}

	public int getType() {
		return type;
	}
	public String getTypeF() {
		int type = this.getType();
		if (type==MATHCH) {
			return "是";
		}else return "否";
	}

	public void setType(int type) {
		this.type = type;
	}

	public Record() {
	}

	public Record(int id, Date time, String address, int type) {
		this.id = id;
		this.time = time;
		this.address = address;
		this.type = type;
	}
	public Record( Date time, String address, int type) {
//		this.id = id;
		this.time = time;
		this.address = address;
		this.type = type;
	}


	public String toString() {
		return id + "," + time + "," + address + "," + type;
	}

}
