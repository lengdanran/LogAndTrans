package Test.gather;


import java.util.ArrayList;

import Test.Entity.Record;


//数据过滤抽象类
public abstract class DataFilter {
	// 数据集合,使用泛型集合
	private ArrayList<? extends Record> datas;

	public ArrayList<? extends Record> getDatas() {
		return datas;
	}

	public void setDatas(ArrayList<? extends Record> datas) {
		this.datas = datas;
	}

	// 构造方法
	public DataFilter() {

	}

	public DataFilter(ArrayList<? extends Record> datas) {
		this.datas = datas;
	}

	// 数据过滤抽象方法
	public abstract void doFilter();
}
