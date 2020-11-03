/**
 * 
 */
package com.sist.security.cmn;

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
	
	/**
	   * Paging처리 
	   * @param maxNum_i
	   * @param currPageNoIn_i
	   * @param rowsPerPage_i
	   * @param bottomCount_i
	   * @param url_i
	   * @param scriptName_i
	   * @return
	   */
	  public static String renderPaging(int maxNum, int currPageNo, int rowPerPage, int bottomCount,
	   String url, String scriptName) {

	   /**
	    * 총글수: 21
	    * 현재페이지: 1
	    * 한페이지에 보여질 행수: 10
	    * 바닥에 보여질 페이지 수: 10
	    * << < 1 2 3 4 5 6 7 8 9 10 > >>
	    */


	   int maxPageNo = ((maxNum - 1) / rowPerPage) + 1;//3
	   int startPageNo = ((currPageNo - 1) / bottomCount) * bottomCount + 1;//1
	   int endPageNo = ((currPageNo - 1) / bottomCount + 1) * bottomCount;//10
	   
	   int nowBlockNo = ((currPageNo - 1) / bottomCount) + 1;//1
	   int maxBlockNo = ((maxNum - 1) / bottomCount) + 1;//3

	   int inx = 0;
	   StringBuilder html = new StringBuilder();
	   if (currPageNo > maxPageNo) {
	    return "";
	   }

	   html.append("<div class=\"col text-center\">			\n");
	   html.append("<div class=\"block-27\">			   \n");
	   html.append("<ul>                             \n");
	   
	   // <<
	   html.append("<li> <a href=\"javascript:" + scriptName + "( '" + url+ "', 1 );\">  \n");
	   html.append("<<   \n");
	   html.append("</a></li> \n");
	   


	   // 1 2 3 ... 10 (숫자보여주기)
	   for (inx = startPageNo; inx <= maxPageNo && inx <= endPageNo; inx++) {
			if (inx == currPageNo) {// 현재 page
				html.append("<li  class=\"active\" 	>");
				html.append("<a  href=\"javascript:#\"  > ");
				html.append(inx);
				html.append("</a> \n");
				html.append("</li>");
			} else {
				html.append("<li  class=\"disabled\">");
				html.append("<a  href=\"javascript:" + scriptName + "('" + url + "'," + inx + ");\"  > ");
				html.append(inx);
				html.append("</a> \n");
				html.append("</li>");
			}
	   }
	   
	   //>>
	   html.append("<li><a href=\"javascript:" + scriptName + "('" + url + "'," + maxPageNo+ ");\">      \n");
	   html.append(">>     \n");
	   html.append("</a></li>    \n");
	   
	   

	   html.append("</ul>   \n");
	   html.append("</div>   \n");
	   html.append("</div>   \n");

	   return html.toString();
	  }
	
	
}
