package com.goodee.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.web.multipart.MultipartFile;

import com.goodee.vo.BoardVO;
import com.goodee.vo.OrderjoinVO;
import com.goodee.vo.ShopVO;

@Mapper
public interface SuperviserDAO {
	
	
//	public int addproc(ShopVO vo, MultipartFile thumnail, MultipartFile contImage);
//	public int addproc(ShopVO vo);

	public void godelete(int productId);
	
	public int updateInfo(ShopVO vo);
	public int deleteBoard(BoardVO vo);
	public List<BoardVO> getList(@Param("boardCategory")String boardCategory);
	public int createboard(BoardVO vo);
	public List<OrderjoinVO> getCSOrder(OrderjoinVO vo);
	
}
