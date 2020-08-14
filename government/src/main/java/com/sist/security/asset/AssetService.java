/**
 * 
 */
package com.sist.security.asset;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.sist.security.cmn.DTO;
import com.sist.security.cmn.Service;

/**
 * @author 82104
 *
 */
@org.springframework.stereotype.Service
public class AssetService implements Service {
	private final Logger LOG = LoggerFactory.getLogger(this.getClass());
	
	public AssetService() {}
	
	@Autowired
	private AssetDao assetDao; 
	
	@Override
	public int doInsert(DTO dto) {
		return assetDao.doInsert(dto);
	}

	@Override
	public int doUpdate(DTO dto) {
		return assetDao.doUpdate(dto);
	}

	@Override
	public int doDelete(DTO dto) {
		return assetDao.doDelete(dto);
	}

	@Override
	public DTO doSelectOne(DTO dto) {
		return assetDao.doSelectOne(dto);
	}

	@Override
	public List<?> doRetrieve(DTO dto) {
		return assetDao.doRetrieve(dto);
	}

}
