/**
 * 
 */
package com.sist.security.asset;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * @author 82104
 *
 */
public class StringUtil {
	private final Logger LOG = LoggerFactory.getLogger(this.getClass());
	
	public static String nvl(String val) {
		return nvl(val,"");
	}
	
	
	public static String nvl(String val, String rep) {
		if(null == val || "".equals(rep)) {
			val = rep;
		}
		
		return val;
	}
}
