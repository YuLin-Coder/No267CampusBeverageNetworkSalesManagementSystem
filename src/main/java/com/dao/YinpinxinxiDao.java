package com.dao;

import com.entity.YinpinxinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.YinpinxinxiVO;
import com.entity.view.YinpinxinxiView;


/**
 * 饮品信息
 * 
 * @author 
 * @email 
 * @date 2022-03-31 18:00:31
 */
public interface YinpinxinxiDao extends BaseMapper<YinpinxinxiEntity> {
	
	List<YinpinxinxiVO> selectListVO(@Param("ew") Wrapper<YinpinxinxiEntity> wrapper);
	
	YinpinxinxiVO selectVO(@Param("ew") Wrapper<YinpinxinxiEntity> wrapper);
	
	List<YinpinxinxiView> selectListView(@Param("ew") Wrapper<YinpinxinxiEntity> wrapper);

	List<YinpinxinxiView> selectListView(Pagination page,@Param("ew") Wrapper<YinpinxinxiEntity> wrapper);
	
	YinpinxinxiView selectView(@Param("ew") Wrapper<YinpinxinxiEntity> wrapper);
	

}
