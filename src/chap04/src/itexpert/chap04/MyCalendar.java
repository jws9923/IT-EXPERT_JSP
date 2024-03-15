package itexpert.chap04;

/**
 * IT Expert JSP 4�� 
 * MyCalendar.java
 */

import java.util.*;
import java.text.*;

public class MyCalendar {

	/**
	 * ��, ��, �� ������ ������. �⺻���� / �̴�.
	 */
	private String delimiter = "/";

	/**
	 * ��, ��, �� ������ �����ڸ� �����Ѵ�.
	 */
	public void setDelimiter(String delimiter){
		this.delimiter = delimiter;
	}

	/**
	 * ���� ���ڸ� �����´�.  ��, ��, �� ������ �����ڴ� setDelimiter() �� �̸� �����ؾ� �Ѵ�. �⺻���� / �̴�.
	 * @return ������ ����
	 */
	public String getToday(){
		GregorianCalendar calendar = new GregorianCalendar();
		StringBuffer today = new StringBuffer();

		DecimalFormat df = new DecimalFormat("00"); 

		today.append(calendar.get(Calendar.YEAR));
		today.append(this.delimiter);
		today.append(df.format(calendar.get(Calendar.MONTH) + 1));
		today.append(this.delimiter);
		today.append(df.format(calendar.get(Calendar.DATE)));
		
		return today.toString();

	} 
}
