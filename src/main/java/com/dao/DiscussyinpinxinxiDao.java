package com.dao;

import com.entity.DiscussyinpinxinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DiscussyinpinxinxiVO;
import com.entity.view.DiscussyinpinxinxiView;


/**
 * 饮品信息评论表
 * 
 * @author 
 * @email 
 * @date 2022-03-31 18:00:31
 */
public interface DiscussyinpinxinxiDao extends BaseMapper<DiscussyinpinxinxiEntity> {
	
	List<DiscussyinpinxinxiVO> selectListVO(@Param("ew") Wrapper<DiscussyinpinxinxiEntity> wrapper);
	
	DiscussyinpinxinxiVO selectVO(@Param("ew") Wrapper<DiscussyinpinxinxiEntity> wrapper);
	
	List<DiscussyinpinxinxiView> selectListView(@Param("ew") Wrapper<DiscussyinpinxinxiEntity> wrapper);

	List<DiscussyinpinxinxiView> selectListView(Pagination page,@Param("ew") Wrapper<DiscussyinpinxinxiEntity> wrapper);
	
	DiscussyinpinxinxiView selectView(@Param("ew") Wrapper<DiscussyinpinxinxiEntity> wrapper);
	

}
