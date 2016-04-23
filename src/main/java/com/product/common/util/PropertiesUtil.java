package com.product.common.util;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import org.apache.log4j.Logger;
/**
 * 
 * <p>Title: PropertiesUtil</p>
 * <p>Description: �ù����ฺ��ʹ����Ŀ�е������ļ�����ȡ�����ļ���һЩ����</p>
 * @author xie
 * @date 2016-4-22 ����8:14:12
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
			logger.error("webapp�������ļ�δ�ҵ���webapp.properties����!");
			e.printStackTrace();
			return null;
		} catch (IOException e) {
			logger.error("webapp�������ļ���ȡ����webapp.properties����!");
			e.printStackTrace();
			return null;
		}
	}
}
