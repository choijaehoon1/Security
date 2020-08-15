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

/**
 * @author 82104
 *
 */
@Controller
public class AssetController {
	private final Logger LOG = LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	AssetService assetService;
	
	@RequestMapping(value = "security/asset/do_retrieve",method = RequestMethod.GET)
	public String doRetrieve(HttpServletRequest req, AssetVO vo, Model model) {
		String url = "security/assetList";
		
		AssetVO assetVO = new AssetVO();
		// 나중에 세션 id 지정
		List<AssetVO> list = (List<AssetVO>) assetService.doRetrieve(assetVO);
		
		model.addAttribute("list", list);
		
		
		return url;
	}
	
	
}
