package com.qst.dms.entity;

import java.io.Serializable;
import java.util.ArrayList;

public class DataLogList implements Serializable {
	private static final long serialVersionUID = 1L;
	private ArrayList<MatchedLogRec> logList;
	public ArrayList<MatchedLogRec> getlogList(){
		return logList;
	}
	public void setloglist(ArrayList<MatchedLogRec> logList) {
		this.logList = logList;
	}
}
