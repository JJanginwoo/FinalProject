package com.goodee.controller;

import java.util.HashMap;
import java.util.Map;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.goodee.service.BoardService;
import com.goodee.service.ShopService;
import com.goodee.service.SuperviserService;
import com.goodee.vo.BoardVO;
import com.goodee.vo.ShopVO;

@Controller
public class SuperviserController {

	private SuperviserService superservice;
	private ShopService spservice;
	private BoardService bdservice;
	
	public SuperviserController(SuperviserService superservice, ShopService spservice,BoardService bdservice) {
		super();
		this.superservice = superservice;
		this.spservice = spservice;
		this.bdservice = bdservice;
	}

	
	@GetMapping("viser/main")
	public String viserMain(Model model) {
		spservice.getProductList(model);
		return"superviser/viser-main";
	}
	
	// 상품 추가 
	@GetMapping("viser/shop-add")
	public String addPage() {
		return"/superviser/viser-shop-add";
	}
	
	@GetMapping("viser/add-success")
	public String success(ShopVO vo) {
		superservice.viseradd(vo);
		return "/superviser/viser-main";
	}
	
	// 상품 수정
	@GetMapping("viser/modify/{category}")
	public String modCategory(@PathVariable("category")String category,Model model) {
		spservice.getCateList(category, model);
		return "/superviser/viser-shop-modify";
	}
	
	@PostMapping("getList")
	@ResponseBody
	public Map<String,Object> getPdList(@RequestBody String inParam) {
		JSONParser parser = new JSONParser();
		Map<String,Object> map=new HashMap<String,Object>();
		try {
			JSONObject jsonObject = (JSONObject) parser.parse(inParam);
			map=spservice.getPdList(jsonObject);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return map;
	}
	
	//상품 삭제
	@GetMapping("viser/delete/{category}")
	public String viserDelete(@PathVariable("category")String category,Model model) {
		spservice.getCateList2(category, model);
		return "/superviser/viser-shop-delete";
	}
	@GetMapping("viser/update/id/{id}")
	public String updateshowid(@PathVariable("id")String id,Model model) {
		spservice.getListById(id, model);
		return "superviser/viser-shop-updateinfo";
	}
	

	@GetMapping("shop/delete/main/{id}")
	   public String deletePage(@PathVariable("id") String id,Model model) {
	      spservice.getListById(id, model);
	      return "/superviser/viser-shop-delete-main";
	      }
	   
	   @GetMapping("delete/success/{productId}")
	   public String deleteProc(@PathVariable int productId) {
	      System.out.println("오나보까");
	      superservice.godelete(productId);
	      return "/superviser/viser-main";
	   }
	

	//상품 수정
	@GetMapping("viser/update")
	public String updateInfo(ShopVO vo) {
		superservice.updateInfo(vo);
		return "superviser/viser-main";
	}
	@GetMapping("viser/notice/delete/{boardCategory}")
	public String noticeDelete(@PathVariable("boardCategory") String boardCategory,Model model) {
		bdservice.getList(model, boardCategory);
		return "superviser/viser-notice-delete";
	}
	
}