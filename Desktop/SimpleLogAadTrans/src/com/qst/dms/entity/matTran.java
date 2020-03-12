package com.qst.dms.entity;

import java.io.Serializable;
import java.util.ArrayList;

public class matTran implements Serializable{
	/**
	 * 该类用于向服务器端发送物流数据的功能
	 * 是一个实现了Serializable接口的类，可用于序列化和反序列读取
	 */
	private static final long serialVersionUID = -6786057261355611980L;
	private ArrayList<MatchedTransport> matchedTransports;

	public ArrayList<MatchedTransport> getMatchedTransports() {
		return matchedTransports;
	}

	public void setMatchedTransports(ArrayList<MatchedTransport> matchedTransports) {
		this.matchedTransports = matchedTransports;
	}
	
}
