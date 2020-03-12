package com.qst.dms.entity;

import java.io.Serializable;
import java.util.ArrayList;

public class matlog implements Serializable{
	/**
	 * 该类用于向服务器端发送日志数据的功能
	 * 是一个实现了Serializable接口的类，可用于序列化和反序列读取
	 */
	private static final long serialVersionUID = 1L;
	private ArrayList<MatchedLogRec> matchedLogRecs ;

	public ArrayList<MatchedLogRec> getMatchedLogRecs() {
		return matchedLogRecs;
	}

	public void setMatchedLogRecs(ArrayList<MatchedLogRec> matchedLogRecs) {
		this.matchedLogRecs = matchedLogRecs;
	}
	
}
