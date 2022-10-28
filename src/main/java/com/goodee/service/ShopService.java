package com.goodee.service;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.goodee.dao.MemberDAO;
import com.goodee.dao.ShopDAO;
import com.goodee.vo.BoardVO;
import com.goodee.vo.MemberVO;
import com.goodee.vo.ProductboardVO;
import com.goodee.vo.ShopVO;
import com.goodee.vo.WishVO;

@Service
public class ShopService {
	private ShopDAO dao;
	private MemberDAO mbdao;
	
	public ShopService(ShopDAO dao, MemberDAO mbdao) {
		super();
		this.dao = dao;
		this.mbdao = mbdao;
	}
	public void getProductList(Model model) {
		model.addAttribute("list", dao.getProductList());
	}
	public void getCateList(String category, Model model) {
		model.addAttribute("list", dao.getCateList(category));
	}
	public void getListById(String id, Model model) {
		
		model.addAttribute("qna", dao.getQna(id));
		model.addAttribute("reviews", dao.getReview(id));
		model.addAttribute("list", dao.getListById(id));
	}
	public void getListByIdS(String id, Model model,HttpSession session) {
		MemberVO vo1 = (MemberVO)session.getAttribute("user");
		MemberVO vo2 = mbdao.getmemberinfo(vo1);
		
		model.addAttribute("separateVO",mbdao.separate(vo2)); 
		model.addAttribute("user", vo2);
		model.addAttribute("list", dao.getListById(id));
	}
	public void insertReview(ProductboardVO vo) {
		vo.setProboardCategory("review");
		dao.insertBoard(vo);
	}
	public void insertQna(ProductboardVO vo) {
		vo.setProboardCategory("qna");
		dao.insertBoard(vo);
	}
	
	public void insertWish(WishVO vo) {
		//
		MemberVO mbvo = new MemberVO();
		mbvo.setMemId(vo.getMemId());
		vo.setId( mbdao.getmemberinfo(mbvo).getId());
		
		dao.insertWish(vo);
	}
	public void getWishList(Model model, HttpSession session) {
		//장바구니에는 상품 정보와 위시 정보가 들어있어야 하기때문에 두개를 불러오는것
		// 세션에 저장된 아이디를 통해 memId로 -> id를 불러오는 로직
		MemberVO vo = (MemberVO)session.getAttribute("user");
		int id = mbdao.getmemberinfo(vo).getId();
		
		
		// 위시리스트에 저장된 상품id를 통해 한줄 한줄 상품 정보를 배열형태로 새로 만든 list에 담는 로직
		List<ShopVO> list = new ArrayList<ShopVO>();
		for (int j = 0; j < dao.getWishList(id).size(); j++) {
			String a = Integer.toString(dao.getWishList(id).get(j).getProductId());
       		 	list.add(dao.getListById(a));
		}
		// 배열형태로 담긴 상품 정보를 model로 뿌려줌
		model.addAttribute("wish",dao.getWishList(id));
		model.addAttribute("item", list);
		/*
		 * for(ShopVO a :list) { System.out.println(a.getProductName()); } for(WishVO b
		 * : dao.getWishList(id)) { System.out.println(b.getCount()); }
		 */
	}
	
	public void deletewish(int wishId) {
		dao.deletewish(wishId);
	}
	
}
