package com.product.common.util;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import org.apache.log4j.Logger;
/**
 * 
 * <p>Title: PropertiesUtil</p>
 * <p>Description: 该工具类负责使用项目中的配置文件，读取配置文件的一些属性</p>
 * @author xie
 * @date 2016-4-22 下午8:14:12
 */
public class PropertiesUtil {
	
	private static Logger logger = Logger.getLogger(PropertiesUtil.class);
	
	public static String getValueFromProperties(String key){
		Properties prop = new Properties();
		try {
			InputStream in = PropertiesUtil.class.getResourceAsStream("/webapp.properties");
			prop.load(in);
			return prop.getProperty(key);
		} catch (FileNotFoundException e) {
			logger.error("webapp的配置文件未找到！webapp.properties请检查!");
			e.printStackTrace();
			return null;
		} catch (IOException e) {
			logger.error("webapp的配置文件读取出错！webapp.properties请检查!");
			e.printStackTrace();
			return null;
		}
	}
}
