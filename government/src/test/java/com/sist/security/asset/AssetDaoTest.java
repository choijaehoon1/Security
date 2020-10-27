package com.sist.security.asset;

import static org.hamcrest.CoreMatchers.is;
import static org.junit.Assert.*;

import java.util.List;

import org.junit.After;
import org.junit.Before;
import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.web.context.WebApplicationContext;

@WebAppConfiguration
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml",
								   "file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"
									})

public class AssetDaoTest {
	private final Logger LOG = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	WebApplicationContext webApplicationContext;
	
	@Autowired
	AssetDao assetDao;
	
	AssetVO assetVO01;
	AssetVO assetVO02;
	AssetVO assetVO03;
	
	
	@Before
	public void setUp() throws Exception {
		LOG.debug("---------------------");
		LOG.debug("webApplicationContext" + webApplicationContext);
		LOG.debug("---------------------");
		
		assetVO01 = new AssetVO(1009, "기록계", "RAM", "계정관리", "시리얼", "자산담당자");
		assetVO02 = new AssetVO(1010, "전송계", "ROM", "암호관리", "TCP/IP", "자산담당자");
		assetVO03 = new AssetVO(1011, "제어시스템", "Flash M/M", "계정잠금", "시리얼", "자산담당자");
		
	}
	
	@Test
	@Ignore
	public void doInsert() {
		int flag = assetDao.doInsert(assetVO01);
		flag += assetDao.doInsert(assetVO02);
		flag += assetDao.doInsert(assetVO03);
		
		assertThat(flag, is(3));
	}
	
	@Test
	@Ignore
	public void doDelete() {
		int flag = assetDao.doDelete(assetVO01);
		flag += assetDao.doDelete(assetVO02);
		flag += assetDao.doDelete(assetVO03);
		
		assertThat(flag, is(3));
	}
	
	@Test
	@Ignore
	public void doUpdate() {
		AssetVO checkVO = (AssetVO) assetDao.doSelectOne(assetVO03); 
		checkVO.setAssetType("type");
		checkVO.setAssetPerformer("performer");
		checkVO.setFeatureHw("HW");
		checkVO.setFeatureSw("SW");
		checkVO.setInterfaceType("interface");
		
		int flag =assetDao.doUpdate(checkVO);
		assertThat(flag, is(1));
		
	}
	
	@Test
	@Ignore
	public void doSelectOne() {
		AssetVO checkVO = (AssetVO) assetDao.doSelectOne(assetVO01);

		assertTrue(assetVO01.getAssetNum() == checkVO.getAssetNum());
	}
	
	@Test
	@Ignore
	public void doRetrieve() {
		List<AssetVO> list = (List<AssetVO>) assetDao.doRetrieve(assetVO01);
		
		for(AssetVO vo: list) {
			LOG.debug("vo=" + vo);
		}
		
		assertThat(list.size(), is(3));
		
		
	}
	
	
	
	@After
	public void tearDown() throws Exception {
	}

	@Test
//	@Ignore
	public void test() {
		LOG.debug("test");
	}

}
