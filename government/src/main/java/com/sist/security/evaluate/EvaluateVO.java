/**
 * 
 */
package com.sist.security.evaluate;

import com.sist.security.cmn.DTO;

/**
 * @author 82104
 *
 */
public class EvaluateVO extends DTO {
	private int assetNum			;
	private String evaluateMethod   ;
	private String evaluateResult   ;
	private String evaluatePerformer;
	private String regulateNum      ;
	
	public EvaluateVO() {}

	public EvaluateVO(int assetNum, String evaluateMethod, String evaluateResult, String evaluatePerformer,
			String regulateNum) {
		super();
		this.assetNum = assetNum;
		this.evaluateMethod = evaluateMethod;
		this.evaluateResult = evaluateResult;
		this.evaluatePerformer = evaluatePerformer;
		this.regulateNum = regulateNum;
	}

	/**
	 * @return the assetNum
	 */
	public int getAssetNum() {
		return assetNum;
	}

	/**
	 * @param assetNum the assetNum to set
	 */
	public void setAssetNum(int assetNum) {
		this.assetNum = assetNum;
	}

	/**
	 * @return the evaluateMethod
	 */
	public String getEvaluateMethod() {
		return evaluateMethod;
	}

	/**
	 * @param evaluateMethod the evaluateMethod to set
	 */
	public void setEvaluateMethod(String evaluateMethod) {
		this.evaluateMethod = evaluateMethod;
	}

	/**
	 * @return the evaluateResult
	 */
	public String getEvaluateResult() {
		return evaluateResult;
	}

	/**
	 * @param evaluateResult the evaluateResult to set
	 */
	public void setEvaluateResult(String evaluateResult) {
		this.evaluateResult = evaluateResult;
	}

	/**
	 * @return the evaluatePerformer
	 */
	public String getEvaluatePerformer() {
		return evaluatePerformer;
	}

	/**
	 * @param evaluatePerformer the evaluatePerformer to set
	 */
	public void setEvaluatePerformer(String evaluatePerformer) {
		this.evaluatePerformer = evaluatePerformer;
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

	@Override
	public String toString() {
		return "EvaluateVO [assetNum=" + assetNum + ", evaluateMethod=" + evaluateMethod + ", evaluateResult="
				+ evaluateResult + ", evaluatePerformer=" + evaluatePerformer + ", regulateNum=" + regulateNum
				+ ", toString()=" + super.toString() + "]";
	}
	
	
	
}
