/**
 * 
 */
package com.sist.security.asset;

import com.sist.security.cmn.DTO;

/**
 * @author 82104
 *
 */
public class AssetVO extends DTO {
	private int assetNum			;
	private String assetType        ;
	private String featureHw        ;
	private String featureSw        ;
	private String interfaceType    ;
	private String assetPerformer   ;
	
	public AssetVO() {}

	public AssetVO(int assetNum, String assetType, String featureHw, String featureSw, String interfaceType,
			String assetPerformer) {
		super();
		this.assetNum = assetNum;
		this.assetType = assetType;
		this.featureHw = featureHw;
		this.featureSw = featureSw;
		this.interfaceType = interfaceType;
		this.assetPerformer = assetPerformer;
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
	 * @return the assetType
	 */
	public String getAssetType() {
		return assetType;
	}

	/**
	 * @param assetType the assetType to set
	 */
	public void setAssetType(String assetType) {
		this.assetType = assetType;
	}

	/**
	 * @return the featureHw
	 */
	public String getFeatureHw() {
		return featureHw;
	}

	/**
	 * @param featureHw the featureHw to set
	 */
	public void setFeatureHw(String featureHw) {
		this.featureHw = featureHw;
	}

	/**
	 * @return the featureSw
	 */
	public String getFeatureSw() {
		return featureSw;
	}

	/**
	 * @param featureSw the featureSw to set
	 */
	public void setFeatureSw(String featureSw) {
		this.featureSw = featureSw;
	}

	/**
	 * @return the interfaceType
	 */
	public String getInterfaceType() {
		return interfaceType;
	}

	/**
	 * @param interfaceType the interfaceType to set
	 */
	public void setInterfaceType(String interfaceType) {
		this.interfaceType = interfaceType;
	}

	/**
	 * @return the assetPerformer
	 */
	public String getAssetPerformer() {
		return assetPerformer;
	}

	/**
	 * @param assetPerformer the assetPerformer to set
	 */
	public void setAssetPerformer(String assetPerformer) {
		this.assetPerformer = assetPerformer;
	}

	@Override
	public String toString() {
		return "AssetVO [assetNum=" + assetNum + ", assetType=" + assetType + ", featureHw=" + featureHw
				+ ", featureSw=" + featureSw + ", interfaceType=" + interfaceType + ", assetPerformer=" + assetPerformer
				+ ", toString()=" + super.toString() + "]";
	}
	
	
	
}
