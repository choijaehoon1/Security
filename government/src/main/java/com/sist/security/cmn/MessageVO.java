/**
 * 
 */
package com.sist.security.cmn;

/**
 * @author 82104
 *
 */
public class MessageVO extends DTO {
	private String msgId;
	private String msgMsg;
	
	public MessageVO() {}

	public MessageVO(String msgId, String msgMsg) {
		super();
		this.msgId = msgId;
		this.msgMsg = msgMsg;
	}

	/**
	 * @return the msgId
	 */
	public String getMsgId() {
		return msgId;
	}

	/**
	 * @param msgId the msgId to set
	 */
	public void setMsgId(String msgId) {
		this.msgId = msgId;
	}

	/**
	 * @return the msgMsg
	 */
	public String getMsgMsg() {
		return msgMsg;
	}

	/**
	 * @param msgMsg the msgMsg to set
	 */
	public void setMsgMsg(String msgMsg) {
		this.msgMsg = msgMsg;
	}

	@Override
	public String toString() {
		return "MessageVO [msgId=" + msgId + ", msgMsg=" + msgMsg + ", toString()=" + super.toString() + "]";
	}
	
	
}
