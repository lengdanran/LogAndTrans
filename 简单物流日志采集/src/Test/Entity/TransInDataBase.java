package Test.Entity;


public class TransInDataBase {
	private String id;
	private String receiver;
	private String Address;
	private String sendTime;
	private String transTime;
	private String signTime;
	private String handler;
	private String Matched;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getReceiver() {
		return receiver;
	}
	public void setReceiver(String receiver) {
		this.receiver = receiver;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	public String getSendTime() {
		return sendTime;
	}
	public void setSendTime(String sendTime) {
		this.sendTime = sendTime;
	}
	public String getTransTime() {
		return transTime;
	}
	public void setTransTime(String transTime) {
		this.transTime = transTime;
	}
	public String getSignTime() {
		return signTime;
	}
	public void setSignTime(String signTime) {
		this.signTime = signTime;
	}
	public String getHandler() {
		return handler;
	}
	public void setHandler(String handler) {
		this.handler = handler;
	}
	public String getMatched() {
		return Matched;
	}
	public void setMatched(String matched) {
		Matched = matched;
	}
	public String tosString() {
		return "id:"+id+"\treceiver:"+receiver;
	}
}
