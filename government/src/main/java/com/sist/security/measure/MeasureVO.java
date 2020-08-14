/**
 * 
 */
package com.sist.security.measure;

import com.sist.security.cmn.DTO;

/**
 * @author 82104
 *
 */
public class MeasureVO extends DTO {
	private int assetNum			;
	private String measureType      ;
	private String measureResult    ;
	private String measurePerformer ;
	private String regulateNum      ;
	
	public MeasureVO() {}

	public MeasureVO(int assetNum, String measureType, String measureResult, String measurePerformer,
			String regulateNum) {
		super();
		this.assetNum = assetNum;
		this.measureType = measureType;
		this.measureResult = measureResult;
		this.measurePerformer = measurePerformer;
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
	 * @return the measureType
	 */
	public String getMeasureType() {
		return measureType;
	}

	/**
	 * @param measureType the measureType to set
	 */
	public void setMeasureType(String measureType) {
		this.measureType = measureType;
	}

	/**
	 * @return the measureResult
	 */
	public String getMeasureResult() {
		return measureResult;
	}

	/**
	 * @param measureResult the measureResult to set
	 */
	public void setMeasureResult(String measureResult) {
		this.measureResult = measureResult;
	}

	/**
	 * @return the measurePerformer
	 */
	public String getMeasurePerformer() {
		return measurePerformer;
	}

	/**
	 * @param measurePerformer the measurePerformer to set
	 */
	public void setMeasurePerformer(String measurePerformer) {
		this.measurePerformer = measurePerformer;
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
		return "MeasureVO [assetNum=" + assetNum + ", measureType=" + measureType + ", measureResult=" + measureResult
				+ ", measurePerformer=" + measurePerformer + ", regulateNum=" + regulateNum + ", toString()="
				+ super.toString() + "]";
	}
	
	
	
}
