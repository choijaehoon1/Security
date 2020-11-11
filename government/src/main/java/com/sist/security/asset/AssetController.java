/**
 * 
 */
package com.sist.security.asset;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.sist.security.cmn.MessageVO;
import com.sist.security.cmn.SearchVO;
import com.sist.security.cmn.StringUtil;
import com.sist.security.measure.MeasureVO;

/**
 * @author 82104
 *
 */
@Controller
public class AssetController {
	private final Logger LOG = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	AssetService assetService;
	
	@RequestMapping(value = "security/asset/do_update", method = RequestMethod.POST, produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String doUpdate(AssetVO assetVO) {
		int flag = this.assetService.doUpdate(assetVO);
		
		MessageVO messageVO = new MessageVO();
		if(flag>0) {
			messageVO.setMsgId(String.valueOf(flag));
			messageVO.setMsgMsg("수정 성공");
		} else {
			messageVO.setMsgId(String.valueOf(flag));
			messageVO.setMsgMsg("수정 실패");
		}
		
		Gson gson = new Gson();
		String jsonStr = gson.toJson(messageVO);
		return jsonStr;
	}
	
	@RequestMapping(value = "security/asset/do_delete", method = RequestMethod.POST, produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String doDelete(AssetVO assetVO) {
		int flag = this.assetService.doDelete(assetVO);
		
		MessageVO messageVO = new MessageVO();
		if(flag>0) {
			messageVO.setMsgId(String.valueOf(flag));
			messageVO.setMsgMsg("삭제 성공");
		} else {
			messageVO.setMsgId(String.valueOf(flag));
			messageVO.setMsgMsg("삭제 실패");
		}
		
		Gson gson = new Gson();
		String jsonStr = gson.toJson(messageVO);
		return jsonStr;
	}
	
	@RequestMapping(value = "security/asset/do_select_one",method = RequestMethod.GET)
	public String doSelectOne(AssetVO assetVO, Model model) {
		String url = "security/assetMng";
		AssetVO outVO = (AssetVO) assetService.doSelectOne(assetVO);
		
		model.addAttribute("vo", outVO);
		
		return url;
	}
	
	
	@RequestMapping(value = "security/asset/do_insert", method = RequestMethod.POST, produces = "application/json; charset=UTF-8")
	@ResponseBody
	public String doInert(AssetVO assetVO) {
		int flag = this.assetService.doInsert(assetVO);
		
		MessageVO messageVO = new MessageVO();
		if(flag>0) {
			messageVO.setMsgId(String.valueOf(flag));
			messageVO.setMsgMsg("등록 성공");
		} else {
			messageVO.setMsgId(String.valueOf(flag));
			messageVO.setMsgMsg("등록 실패");
		}
		
		Gson gson = new Gson();
		String jsonStr = gson.toJson(messageVO);
		return jsonStr;
	}
	
	
	@RequestMapping(value = "security/asset/do_retrieve",method = RequestMethod.GET)
	public String doRetrieve(HttpServletRequest req, SearchVO searchVO, Model model) {
		String url = "security/assetList";
		if(searchVO.getPageSize() == 0) {
			searchVO.setPageSize(10);
		}
		
		if(searchVO.getPageNum() == 0) {
			searchVO.setPageNum(1);
		}
		searchVO.setSearchWord(req.getParameter("searchWord"));
		searchVO.setSearchDiv(req.getParameter("searchDiv"));
//		searchVO.setSearchDiv(StringUtil.nvl(searchVO.getSearchDiv()));
//		searchVO.setSearchWord(StringUtil.nvl(searchVO.getSearchWord().trim()));
		
		model.addAttribute("searchVO", searchVO);
		LOG.debug("ssssssss:" +searchVO );
		List<AssetVO> list = (List<AssetVO>) assetService.doRetrieve(searchVO);
		int totalCnt = 0;
		if(list != null & list.size()>0) {
			totalCnt = list.get(0).getTotalCnt();
		}
		int maxPageNum = ((totalCnt-1)/10) +1;
		int pageNum = searchVO.getPageNum();
		model.addAttribute("pageNum", pageNum);
		model.addAttribute("maxPageNum", maxPageNum);
		model.addAttribute("list", list);
		model.addAttribute("totalCnt", totalCnt);
		
		return url;
	}
	
	
}
