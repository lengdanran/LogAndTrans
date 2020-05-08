package Test.Entity;

import java.io.Serializable;
import java.util.Date;

public class Transport extends Record implements Serializable {
	private static final long serialVersionUID = 1L;
	/**
	 * 经手人
	 */
	private String handler;
	/**
	 * 收货人
	 */
	private String reciver;
	/**
	 * 物流状态
	 */
	private int transportType;
	/**
	 * 物流状态常量:发货中, 送货中, 已签收
	 */
	public static final int SENDDING = 1;// 发货中
	public static final int TRANSPORTING = 2;// 送货中
	public static final int RECIEVED = 3;// 已签收

	public String getHandler() {
		return handler;
	}

	public void setHandler(String handler) {
		this.handler = handler;
	}

	public String getReciver() {
		return reciver;
	}

	public void setReciver(String reciver) {
		this.reciver = reciver;
	}

	public int getTransportType() {
		return transportType;
	}

	public void setTransportType(int transportType) {
		this.transportType = transportType;
	}

	public Transport() {

	}

	public Transport(int id, Date time, String address, int type,
			String handler, String reciver, int transportType) {
		super(id, time, address, type);
		this.handler = handler;
		this.reciver = reciver;
		this.transportType = transportType;
	}

	public String toString() {
		return "ID:"+this.getId() + "," + "时间:"+ this.getTimeF() + "," + "地址:"+this.getAddress()
				+ "," + this.getType() + "," +"送货人:"+ handler + "," + transportType;
	}
}
