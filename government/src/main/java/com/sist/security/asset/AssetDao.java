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
	
	private final String NAMESPACE = "com.sist.government.security.asset";
	
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
		AssetVO inVO = (AssetVO) dto;
		LOG.debug("===============");
		LOG.debug("=inVO=" + inVO);
		LOG.debug("===============");
		
		String statement = NAMESPACE + ".doUpdate"; 
		LOG.debug("===============");
		LOG.debug("2.==============" + statement);
		LOG.debug("===============");
		
		int flag = this.sqlSessionTemplate.update(statement, inVO);
		LOG.debug("===============");
		LOG.debug("3.==============" + flag);
		LOG.debug("===============");
		
		return flag;
	}

	@Override
	public int doDelete(DTO dto) {
		AssetVO inVO = (AssetVO) dto;
		LOG.debug("===============");
		LOG.debug("=inVO=" + inVO);
		LOG.debug("===============");
		
		String statement = NAMESPACE + ".doDelete"; 
		LOG.debug("===============");
		LOG.debug("2.==============" + statement);
		LOG.debug("===============");
		
		int flag = this.sqlSessionTemplate.delete(statement, inVO);
		LOG.debug("===============");
		LOG.debug("3.==============" + flag);
		LOG.debug("===============");
		
		return flag;
	}

	@Override
	public DTO doSelectOne(DTO dto) {
		AssetVO inVO = (AssetVO) dto;
		LOG.debug("===============");
		LOG.debug("=inVO=" + inVO);
		LOG.debug("===============");
		
		String statement = NAMESPACE + ".doSelectOne"; 
		LOG.debug("===============");
		LOG.debug("2.==============" + statement);
		LOG.debug("===============");
		
		AssetVO outVO = this.sqlSessionTemplate.selectOne(statement, inVO);
		LOG.debug("===============");
		LOG.debug("3.==============" + outVO);
		LOG.debug("===============");
		
		return outVO;
	}

	@Override
	public List<?> doRetrieve(DTO dto) {
		AssetVO inVO = (AssetVO) dto;
		LOG.debug("===============");
		LOG.debug("=inVO=" + inVO);
		LOG.debug("===============");
		
		String statement = NAMESPACE + ".doRetrieve"; 
		LOG.debug("===============");
		LOG.debug("2.==============" + statement);
		LOG.debug("===============");
		
		List<AssetVO> list = this.sqlSessionTemplate.selectList(statement, inVO);
		LOG.debug("===============");
		LOG.debug("3.==============" + list);
		LOG.debug("===============");
		
		return list;
	}

}
