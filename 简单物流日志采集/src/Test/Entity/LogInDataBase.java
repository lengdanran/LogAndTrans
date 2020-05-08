package Test.Entity;

public class LogInDataBase {
	private String id;
	private String name;
	private String LogInTime;
	private String LogInAddress;
	private String LogInIP;
	private String INMatched;
	private String LogOutTime;
	private String LogOutAddress;
	private String LogOutIP;
	private String OutMatched;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getLogInTime() {
		return LogInTime;
	}
	public void setLogInTime(String logInTime) {
		LogInTime = logInTime;
	}
	public String getLogInAddress() {
		return LogInAddress;
	}
	public void setLogInAddress(String logInAddress) {
		LogInAddress = logInAddress;
	}
	public String getLogInIP() {
		return LogInIP;
	}
	public void setLogInIP(String logInIP) {
		LogInIP = logInIP;
	}
	public String getINMatched() {
		return INMatched;
	}
	public void setINMatched(String iNMatched) {
		INMatched = iNMatched;
	}
	public String getLogOutTime() {
		return LogOutTime;
	}
	public void setLogOutTime(String logOutTime) {
		LogOutTime = logOutTime;
	}
	public String getLogOutAddress() {
		return LogOutAddress;
	}
	public void setLogOutAddress(String logOutAddress) {
		LogOutAddress = logOutAddress;
	}
	public String getLogOutIP() {
		return LogOutIP;
	}
	public void setLogOutIP(String logOutIP) {
		LogOutIP = logOutIP;
	}
	public String getOutMatched() {
		return OutMatched;
	}
	public void setOutMatched(String outMatched) {
		OutMatched = outMatched;
	}
	public String tosString() {
		return "id:"+id+"\tname:"+name+"\tintime:"+LogInTime;
	}
	
}

