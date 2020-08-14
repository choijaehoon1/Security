/**
 * 
 */
package com.sist.security.regulate;

import com.sist.security.cmn.DTO;

/**
 * @author 82104
 *
 */
public class RegulateVO extends DTO {
	private String regulateNum			;
	private String regulateContents     ;
	private String regulateType         ;
	private String regulateMethod       ;
	private String organization         ;
	
	public RegulateVO() {}

	public RegulateVO(String regulateNum, String regulateContents, String regulateType, String regulateMethod,
			String organization) {
		super();
		this.regulateNum = regulateNum;
		this.regulateContents = regulateContents;
		this.regulateType = regulateType;
		this.regulateMethod = regulateMethod;
		this.organization = organization;
	}

	/**
	 * @return the regulateNum
	 */
	public String getRegulateNum() {
		return regulateNum;
	}

	/**
	 * @param regulateNum the regulateNum to set
	 */
	public void setRegulateNum(String regulateNum) {
		this.regulateNum = regulateNum;
	}

	/**
	 * @return the regulateContents
	 */
	public String getRegulateContents() {
		return regulateContents;
	}

	/**
	 * @param regulateContents the regulateContents to set
	 */
	public void setRegulateContents(String regulateContents) {
		this.regulateContents = regulateContents;
	}

	/**
	 * @return the regulateType
	 */
	public String getRegulateType() {
		return regulateType;
	}

	/**
	 * @param regulateType the regulateType to set
	 */
	public void setRegulateType(String regulateType) {
		this.regulateType = regulateType;
	}

	/**
	 * @return the regulateMethod
	 */
	public String getRegulateMethod() {
		return regulateMethod;
	}

	/**
	 * @param regulateMethod the regulateMethod to set
	 */
	public void setRegulateMethod(String regulateMethod) {
		this.regulateMethod = regulateMethod;
	}

	/**
	 * @return the organization
	 */
	public String getOrganization() {
		return organization;
	}

	/**
	 * @param organization the organization to set
	 */
	public void setOrganization(String organization) {
		this.organization = organization;
	}

	@Override
	public String toString() {
		return "RegulateVO [regulateNum=" + regulateNum + ", regulateContents=" + regulateContents + ", regulateType="
				+ regulateType + ", regulateMethod=" + regulateMethod + ", organization=" + organization
				+ ", toString()=" + super.toString() + "]";
	}
	
	
}
