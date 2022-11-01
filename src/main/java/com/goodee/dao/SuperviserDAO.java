package com.goodee.dao;

import org.apache.ibatis.annotations.Mapper;

import com.goodee.vo.BoardVO;
import com.goodee.vo.ShopVO;

@Mapper
public interface SuperviserDAO {
	
	
	public int addproc(ShopVO vo);

	public void godelete(int productId);
	
	public int updateInfo(ShopVO vo);
	public int deleteBoard(BoardVO vo);
}