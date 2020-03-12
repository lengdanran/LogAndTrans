package com.qst.dms.entity;

import java.io.Serializable;
import java.util.ArrayList;

public class DataTranList implements Serializable {
	private static final long serialVersionUID = 1L;
	private ArrayList<MatchedTransport> transList;
	public ArrayList<MatchedTransport> geTransports(){
		return transList;
	}
	public void setTranlist(ArrayList<MatchedTransport> transList) {
		this.transList = transList;
	}
}
