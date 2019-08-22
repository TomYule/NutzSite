package io.nutz.nutzsite.common.utils;

import org.nutz.log.Log;
import org.nutz.log.Logs;


public class Toolkit {

	public static final Log log = Logs.get();

	public static String captcha_attr = "nutz_captcha";

	public static boolean checkCaptcha(String expected, String actual) {
		if (expected == null || actual == null || actual.length() == 0
				|| actual.length() > 24|| expected.length() != actual.length()) {
			return false;
		}
		return actual.equalsIgnoreCase(expected);
	}

}