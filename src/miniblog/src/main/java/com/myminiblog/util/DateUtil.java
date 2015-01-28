package com.myminiblog.util;

import java.sql.Date;
import java.text.SimpleDateFormat;

public class DateUtil {
	
	public String convertStringTimestampToStringDate(String input , String format){
		long timestamp =Long.parseLong(input); //Example -> in ms
		Date date = new Date(timestamp);
		SimpleDateFormat sdf = new SimpleDateFormat(format);
		return sdf.format(date);
	}
}
