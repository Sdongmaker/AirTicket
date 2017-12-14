package indi.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.commons.beanutils.Converter;

public class DataConvert implements Converter {

	public Object convert(Class clazz, Object value) {
		// class 要装成的类型
				// object 页面上传入的值
				
				//将object 转成 date
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-mm-dd");
		try {
			Date date=sdf.parse((String)value);
			return new java.sql.Date(date.getTime());
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return null;
	}

}
