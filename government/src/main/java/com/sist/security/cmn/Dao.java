package com.sist.security.cmn;

import java.util.List;

public interface Dao {
	
	public int doInsert(DTO dto);
	public int doUpdate(DTO dto);
	public int doDelete(DTO dto);
	public DTO doSelectOne(DTO dto);
	public List<?> doRetrieve(DTO dto);
	
}
