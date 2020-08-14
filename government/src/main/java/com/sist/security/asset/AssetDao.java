/**
 * 
 */
package com.sist.security.asset;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sist.security.cmn.DTO;
import com.sist.security.cmn.Dao;

/**
 * @author 82104
 *
 */
@Repository
public class AssetDao implements Dao {

	private final Logger LOG = LoggerFactory.getLogger(this.getClass());
	
	public AssetDao() {}
	
	private final String NAMESPACE = "com.sist.government.security";
	
	@Autowired
	SqlSessionTemplate sqlSessionTemplate; 
	
	
	
	
	@Override
	public int doInsert(DTO dto) {
		AssetVO inVO = (AssetVO) dto;
		LOG.debug("===============");
		LOG.debug("1.==============" + inVO);
		LOG.debug("===============");
		
		String statement = NAMESPACE + ".doInsert";
		LOG.debug("===============");
		LOG.debug("2.==============" + statement);
		LOG.debug("===============");
		
		int flag = this.sqlSessionTemplate.insert(statement,inVO);
		LOG.debug("===============");
		LOG.debug("3.==============" + flag);
		LOG.debug("===============");
		
		return flag;
	}

	@Override
	public int doUpdate(DTO dto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int doDelete(DTO dto) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public DTO doSelectOne(DTO dto) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<?> doRetrieve(DTO dto) {
		// TODO Auto-generated method stub
		return null;
	}

}
