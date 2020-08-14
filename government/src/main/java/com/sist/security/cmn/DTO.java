/**
 * 
 */
package com.sist.security.cmn;

/**
 * @author 82104
 *
 */
public class DTO {
	private int num;
	private int totalCnt;
	
	public DTO() {}

	public DTO(int num, int totalCnt) {
		super();
		this.num = num;
		this.totalCnt = totalCnt;
	}

	/**
	 * @return the num
	 */
	public int getNum() {
		return num;
	}

	/**
	 * @param num the num to set
	 */
	public void setNum(int num) {
		this.num = num;
	}

	/**
	 * @return the totalCnt
	 */
	public int getTotalCnt() {
		return totalCnt;
	}

	/**
	 * @param totalCnt the totalCnt to set
	 */
	public void setTotalCnt(int totalCnt) {
		this.totalCnt = totalCnt;
	}

	@Override
	public String toString() {
		return "DTO [num=" + num + ", totalCnt=" + totalCnt + "]";
	}
	
	
	
}
