package indi.utils;

import org.apache.commons.beanutils.Converter;

import java.math.BigDecimal;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class BigDecimalConvert implements Converter {
	public Object convert(Class clazz, Object value) {
		// class 要装成的类型
		try {
			BigDecimal bigDecimal = new BigDecimal((String) value);
			return  bigDecimal;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

}
