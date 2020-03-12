package com.qst.dms.util;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Properties;
/**
 * @加载配置文件
 * @author ASUS
 *
 */
public class Config {
	private static Properties p = null;
	static {
		try {
			p = new Properties();
//			加载配置文件内容
			p.load(new FileInputStream("config/mysql.properties"));
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public static String getValue(String key) {
		return p.getProperty(key).toString();
	}
}
