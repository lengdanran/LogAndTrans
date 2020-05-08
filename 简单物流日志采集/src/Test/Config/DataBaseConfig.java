package Test.Config;

import java.io.FileInputStream;
//import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.Serializable;
import java.util.Properties;
/**
 * 加载配置文件
 * @author ASUS
 *
 */
public class DataBaseConfig implements Serializable {
	private static final long serialVersionUID = -1519337388072461721L;
	private static Properties p = null;
	static {
		try {
			p = new Properties();
//			加载配置文件内容
			p.load(new FileInputStream("F:\\EEworkspace\\LogAndTrans\\src\\config\\mysql.properties"));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	public static String getValue(String key) {
		return p.getProperty(key);
	}
}
